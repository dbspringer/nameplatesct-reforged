local _, ns = ...

local Adapter = {}
ns.Adapter = Adapter

-- Enemy tokens that can report a unit with no nameplate. Their reports in one
-- frame merge into one Hit per action, named by the first token here.
local ENEMY_TOKEN_RANK = { target = 1, softenemy = 2, softinteract = 3 }
local NO_PLATE = "<no plate>"

-- Hits on the player and the pet stay, so Pairing can give the Log Lines for
-- heals and self-damage to them, not to an enemy's Hit.
local OWN_TOKENS = { player = true, pet = true }

local CAST_STAGES = {
	UNIT_SPELLCAST_SENT = "SENT",
	UNIT_SPELLCAST_START = "START",
	UNIT_SPELLCAST_SUCCEEDED = "SUCCEEDED",
	UNIT_SPELLCAST_INTERRUPTED = "INTERRUPTED",
}

-- The unit a report names: a nameplate token when the unit has one. Returns
-- nil for a token whose reports only repeat others, such as targettarget.
local function unitOf(entry)
	local token = entry[3]
	if OWN_TOKENS[token] then
		return token
	end
	if entry.plate then
		return entry.plate
	end
	if token:find("^nameplate%d+$") then
		return token
	end
	if ENEMY_TOKEN_RANK[token] then
		return NO_PLATE
	end
end

local function isRefill(order)
	local orders = Enum and Enum.CombatLogMessageOrder
	return orders ~= nil and not issecretvalue(order) and order == orders.Oldest
end

-- The game repeats one Hit for each token that names the unit. A token never
-- repeats, so the token with the most reports for an action gives the number
-- of Hits, and the Nth report of each token belongs to the Nth Hit.
local function hitsOf(reports)
	local groups, order = {}, {}
	for _, report in ipairs(reports) do
		local entry = report.entry
		local key = report.unit .. "\0" .. entry[4]
		local group = groups[key]
		if not group then
			group = { unit = report.unit, byToken = {}, tokens = {} }
			groups[key] = group
			order[#order + 1] = group
		end
		local token = entry[3]
		if not group.byToken[token] then
			group.byToken[token] = {}
			group.tokens[#group.tokens + 1] = token
		end
		table.insert(group.byToken[token], report)
	end

	local hits = {}
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
			local entry = report.entry
			hits[#hits + 1] = {
				kind = "hit",
				time = entry[1],
				entry = first,
				unit = unit,
				action = entry[4],
				descriptor = entry[5],
				amount = entry[6],
				school = entry[7],
			}
		end
	end
	return hits
end

-- Turns raw events, in the shape of Trace entries, into Hits, Log Lines,
-- Casts, and Swings. All events of one frame share a GetTime(), so a frame's
-- records leave together through onRecord, in entry order, once a later event
-- or tick shows that the frame is over.
function Adapter.New(onRecord)
	local count = 0
	local frameTime
	local records, reports = {}, {}

	local function closeFrame()
		for _, hit in ipairs(hitsOf(reports)) do
			records[#records + 1] = hit
		end
		table.sort(records, function(a, b)
			return a.entry < b.entry
		end)
		local closed = records
		records, reports, frameTime = {}, {}, nil
		for _, record in ipairs(closed) do
			onRecord(record)
		end
	end

	local function add(entry, record)
		record.time = entry[1]
		record.entry = count
		records[#records + 1] = record
	end

	local adapter = {}

	-- Entry numbers count every pushed event, so they match the Trace.
	function adapter.Push(entry)
		count = count + 1
		local time, event = entry[1], entry[2]
		if frameTime and time ~= frameTime then
			closeFrame()
		end
		frameTime = time

		if event == "UNIT_COMBAT" then
			local unit = unitOf(entry)
			if unit then
				reports[#reports + 1] = { index = count, unit = unit, entry = entry }
			end
		elseif event == "COMBAT_LOG_MESSAGE" then
			if not isRefill(entry[7]) then
				add(entry, { kind = "line", r = entry[4], g = entry[5], b = entry[6] })
			end
		elseif event == "UNIT_SPELLCAST_SENT" then
			-- entry[4] is the target's name, which can be secret.
			add(entry, { kind = "cast", stage = "SENT", unit = entry[3], castGUID = entry[5], spellID = entry[6] })
		elseif CAST_STAGES[event] then
			add(entry, { kind = "cast", stage = CAST_STAGES[event], unit = entry[3], castGUID = entry[4], spellID = entry[5] })
		elseif event == "PLAYER_SWING" then
			add(entry, { kind = "swing", duration = entry[3], swingType = entry[4] })
		end
	end

	function adapter.Tick(now)
		if frameTime and now > frameTime then
			closeFrame()
		end
	end

	return adapter
end
