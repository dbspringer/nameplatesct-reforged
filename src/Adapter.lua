local _, ns = ...

local Adapter = {}
ns.Adapter = Adapter

-- Enemy tokens that can report a unit with no nameplate. With no plate to tell
-- units apart, their reports in one frame are taken to name one unit, so they
-- merge like the repeats on a plate. The Hit is named by the first token here.
local ENEMY_TOKEN_RANK = { target = 1, softenemy = 2, softinteract = 3 }
local NO_PLATE = "<no plate>"

-- Hits on the player and the pet stay, so Pairing can give the Log Lines for
-- heals and self-damage to them, not to an enemy's Hit. Events.lua records
-- `own` on any report that names one of them; Traces from before that field
-- name them only by these tokens.
local OWN_TOKENS = { player = true, pet = true }

-- UNIT_SPELLCAST_SENT has its own branch in Push, since its arguments differ.
local CAST_STAGES = {
	UNIT_SPELLCAST_START = "START",
	UNIT_SPELLCAST_SUCCEEDED = "SUCCEEDED",
	UNIT_SPELLCAST_INTERRUPTED = "INTERRUPTED",
	UNIT_SPELLCAST_CHANNEL_START = "CHANNEL_START",
	UNIT_SPELLCAST_CHANNEL_STOP = "CHANNEL_STOP",
}

-- The unit a report names: player or pet, or else the nameplate token that
-- Events.lua recorded with it. Returns nil for a token whose reports only
-- repeat others, such as targettarget, and for a nameplate that Events.lua
-- never saw added: in a dungeon a friendly plate reports combat without
-- NAME_PLATE_UNIT_ADDED, and Plate Text is for enemies only.
local function unitOf(entry)
	local token = entry[3]
	if entry.own then
		return entry.own
	end
	if OWN_TOKENS[token] then
		return token
	end
	if entry.plate then
		return entry.plate
	end
	if ENEMY_TOKEN_RANK[token] then
		return NO_PLATE
	end
end

-- When a chat frame opens, the game sends old lines again to fill it; they are
-- not new combat. A secret order cannot be compared, so such a line is kept.
local function isRefill(order)
	local orders = Enum and Enum.CombatLogMessageOrder
	return orders ~= nil and not issecretvalue(order) and order == orders.Oldest
end

local function byEntry(a, b)
	return a.entry < b.entry
end

-- The game sends one report of a Hit for each token that names the unit. So,
-- for one unit and action in a frame, the token with the most reports gives
-- the number of Hits, and the Nth report of each token is a repeat of the Nth
-- Hit. A Hit's entry number is that of its earliest repeat. Reports on two
-- plate lives of one token, as when it hides and shows a new unit in one
-- frame, are two units.
local function addHits(reports, records)
	local groups, order = {}, {}
	for _, report in ipairs(reports) do
		local key = report.unit .. "\0" .. report.action .. "\0" .. tostring(report.life)
		local group = groups[key]
		if not group then
			group = { unit = report.unit, life = report.life, byToken = {}, tokens = {} }
			groups[key] = group
			order[#order + 1] = group
		end
		local token = report.token
		if not group.byToken[token] then
			group.byToken[token] = {}
			group.tokens[#group.tokens + 1] = token
		end
		table.insert(group.byToken[token], report)
	end

	for _, group in ipairs(order) do
		local most = group.byToken[group.tokens[1]]
		for _, token in ipairs(group.tokens) do
			if #group.byToken[token] > #most then
				most = group.byToken[token]
			end
		end
		local unit = group.unit
		if unit == NO_PLATE then
			for _, token in ipairs(group.tokens) do
				if unit == NO_PLATE or ENEMY_TOKEN_RANK[token] < ENEMY_TOKEN_RANK[unit] then
					unit = token
				end
			end
		end
		for n, report in ipairs(most) do
			local first = report.index
			for _, token in ipairs(group.tokens) do
				local repeated = group.byToken[token][n]
				if repeated and repeated.index < first then
					first = repeated.index
				end
			end
			records[#records + 1] = {
				kind = "hit",
				time = report.time,
				entry = first,
				unit = unit,
				life = group.life,
				action = report.action,
				descriptor = report.descriptor,
				amount = report.amount,
				school = report.school,
			}
		end
	end
end

-- Turns raw events, in the shape of Trace entries, into Hits, Log Lines (with
-- their Line Kind, read by the colouring that Events.lua records), casts, and
-- swings. All events of one frame share a GetTime(), so a frame's records
-- leave together through onRecord, in entry order, once a later event or
-- tick shows that the frame is over.
function Adapter.New(onRecord)
	local count = 0
	local frameTime
	local records, reports = {}, {}

	local function closeFrame()
		-- Other records arrive in entry order, so only Hits need a sort.
		if #reports > 0 then
			addHits(reports, records)
			table.sort(records, byEntry)
		end
		local closed = records
		records, reports, frameTime = {}, {}, nil
		for _, record in ipairs(closed) do
			onRecord(record)
		end
	end

	-- Each Nameplate token's current plate life: one unit's time on the token.
	-- A Hit keeps the life that its reports came in, so Flow knows whether its
	-- Nameplate hid, and which one, however often the token moves on before
	-- Pairing decides the Hit. At the hide, hid is the Nameplate as it hid
	-- (see Flow.New); reused says that its frame has shown a unit since.
	local lives, lifeOnFrame = {}, {}

	-- A token that showed before the first event, as after a /reload, starts
	-- its life when the adapter first sees it.
	local function lifeOf(token)
		lives[token] = lives[token] or {}
		return lives[token]
	end

	local function add(entry, record)
		record.time = entry[1]
		record.entry = count
		records[#records + 1] = record
	end

	local adapter = {}

	-- Entry numbers count every pushed event, so they match the Trace. Returns
	-- the entry's number.
	function adapter.Push(entry)
		count = count + 1
		local time, event = entry[1], entry[2]
		if frameTime and time ~= frameTime then
			closeFrame()
		end
		frameTime = time

		if event == "NAME_PLATE_UNIT_ADDED" then
			local life = {}
			lives[entry[3]] = life
			if entry.frame then
				if lifeOnFrame[entry.frame] then
					lifeOnFrame[entry.frame].reused = true
				end
				lifeOnFrame[entry.frame] = life
			end
		elseif event == "NAME_PLATE_UNIT_REMOVED" then
			local life = lifeOf(entry[3])
			life.hid = { frame = entry.frame, wasTarget = entry.wasTarget, classification = entry.classification,
				isBoss = entry.isBoss, isPlayer = entry.isPlayer }
			if entry.frame then
				lifeOnFrame[entry.frame] = life
			end
			lives[entry[3]] = nil
		elseif event == "UNIT_COMBAT" then
			local unit = unitOf(entry)
			if unit then
				reports[#reports + 1] = {
					index = count,
					unit = unit,
					life = unit:match("^nameplate%d+$") and lifeOf(unit) or nil,
					token = entry[3],
					time = time,
					action = entry[4],
					descriptor = entry[5],
					amount = entry[6],
					school = entry[7],
				}
			end
		elseif event == "COMBAT_LOG_MESSAGE" then
			if not isRefill(entry[7]) then
				add(entry, { kind = "line", lineKind = ns.LineKind.Of(entry[4], entry[5], entry[6], entry.colouring) })
			end
		elseif event == "UNIT_SPELLCAST_SENT" then
			-- entry[4] is the target's name, which can be secret.
			add(entry, { kind = "cast", stage = "SENT", unit = entry[3], castGUID = entry[5], spellID = entry[6] })
		elseif CAST_STAGES[event] then
			add(entry, { kind = "cast", stage = CAST_STAGES[event], unit = entry[3], castGUID = entry[4], spellID = entry[5] })
		elseif event == "PLAYER_SWING" then
			add(entry, { kind = "swing", duration = entry[3], swingType = entry[4] })
		end
		return count
	end

	function adapter.Tick(now)
		if frameTime and now > frameTime then
			closeFrame()
		end
	end

	return adapter
end
