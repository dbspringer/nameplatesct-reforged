local _, ns = ...

local Pairing = {}
ns.Pairing = Pairing

-- How long before its Hit a Log Line can come. Spells and wands came up to
-- 0.066 s early in the Warlock Traces; melee came one Swing Delay early:
-- 0.37 s (the player) and 0.52 to 0.98 s (the pet).
local SHORT_WINDOW = 0.1
local MELEE_FROM, MELEE_TO = 0.25, 1.1
-- How long a Hit with no Log Line waits for a late one. No Trace has a late
-- line, but Forever Combat Text waits this long for a late spell line.
local HOLD = 0.15
-- Log Line colours arrive as floats, such as 0.70196 for a 0.7 setting.
local COLOUR_TOLERANCE = 0.01
local SCHOOL_PHYSICAL = 1

-- In the Warlock Traces, a Hit on the player or the pet had a Log Line only
-- for a heal or damage in its own frame (Drain Life, Health Funnel); a mob's
-- attack on them must not take the player's waiting lines.
local OWN_UNITS = { player = true, pet = true }
local OWN_ACTIONS = { WOUND = true, HEAL = true }

-- The Log Filter's unit colour keys for the player and the pet
-- (COMBATLOG_FILTER_MINE and COMBATLOG_FILTER_MY_PET).
local FILTER_MINE, FILTER_MY_PET = 0x4511, 0x3111

-- Heals also report school 1, so a physical Hit is a school 1 Hit that is
-- not a heal.
local function isPhysical(hit)
	return hit.action ~= "HEAL" and not issecretvalue(hit.school) and hit.school == SCHOOL_PHYSICAL
end

-- A WOUND of 0, such as the one right after a pet's Torment, has no event
-- in the Combat Log File and shows nothing, so it takes no line.
local function isZeroWound(hit)
	return hit.action == "WOUND" and not issecretvalue(hit.amount) and hit.amount == 0
end

-- Whether a waiting line, from an earlier frame, fits an enemy Hit.
local function fits(hit, line)
	local age = hit.time - line.time
	if age >= 0 and age <= SHORT_WINDOW then
		return true
	end
	return age >= MELEE_FROM and age <= MELEE_TO and isPhysical(hit)
end

-- The colours of the player's and the pet's Log Lines under a Log Filter, as
-- Blizzard_CombatLog_Filters stores one: keyed { r =, g =, b = } tables. They
-- tell only when lines take their source's colour (lineColorPriority 1), so
-- any other setting gives nil, and Pairing then accepts every colour.
function Pairing.ColoursOf(filter)
	local colors, settings = type(filter) == "table" and filter.colors, type(filter) == "table" and filter.settings
	if type(colors) ~= "table" or type(colors.unitColoring) ~= "table" or type(settings) ~= "table"
		or not settings.lineColoring or settings.lineColorPriority ~= 1 then
		return nil
	end
	local colours = {}
	for _, key in ipairs({ FILTER_MINE, FILTER_MY_PET }) do
		if type(colors.unitColoring[key]) == "table" then
			colours[#colours + 1] = colors.unitColoring[key]
		end
	end
	return colours[1] and colours or nil
end

-- Pairs each Hit from the adapter with the Log Line that proves it is the
-- player's or the pet's, or decides that it is someone else's. Records go in
-- through Push in the adapter's order. Tick(now) closes the open frame and
-- ends the holds that are over; call it often, or the last Hits wait for the
-- next record. onDecision(hit, line) runs once for every Hit, with a nil line
-- when the Hit is not yours. colours comes from Pairing.ColoursOf; nil
-- accepts lines of every colour.
function Pairing.New(options)
	local colours, onDecision = options.colours, options.onDecision
	local frameTime
	local frameHits, frameLines = {}, {}
	-- Unpaired Log Lines and Hits that wait for a late line, oldest first.
	local waitingLines, heldHits = {}, {}

	local function isOwnColour(line)
		if not colours then
			return true
		end
		local r, g, b = line.r, line.g, line.b
		-- A secret colour cannot be compared, so such a line is kept.
		if issecretvalue(r) or issecretvalue(g) or issecretvalue(b) then
			return true
		end
		for _, colour in ipairs(colours) do
			if math.abs(r - colour.r) <= COLOUR_TOLERANCE and math.abs(g - colour.g) <= COLOUR_TOLERANCE
				and math.abs(b - colour.b) <= COLOUR_TOLERANCE then
				return true
			end
		end
		return false
	end

	-- Ends the holds and drops the lines that are over by this time. A held
	-- Hit takes the oldest waiting line that came after it within the hold,
	-- but only once that line is too old to be a newer Hit's early line: in
	-- the Traces a line always came before its Hit, so a newer Hit wins it.
	-- Waiting this out also makes the result the same at any frame rate.
	local function advance(now)
		while heldHits[1] and heldHits[1].time + HOLD < now do
			local hit = heldHits[1]
			local index
			for i, line in ipairs(waitingLines) do
				if line.time > hit.time and line.time <= hit.time + HOLD then
					index = i
					break
				end
			end
			if index and now - waitingLines[index].time <= SHORT_WINDOW then
				break
			end
			table.remove(heldHits, 1)
			onDecision(hit, index and table.remove(waitingLines, index))
		end
		while waitingLines[1] and now - waitingLines[1].time > MELEE_TO do
			table.remove(waitingLines, 1)
		end
	end

	local function decide(hit)
		if isZeroWound(hit) then
			onDecision(hit, nil)
		elseif OWN_UNITS[hit.unit] then
			onDecision(hit, OWN_ACTIONS[hit.action] and table.remove(frameLines, 1) or nil)
		else
			local found = table.remove(frameLines, 1)
			if not found then
				for i, line in ipairs(waitingLines) do
					if fits(hit, line) then
						found = table.remove(waitingLines, i)
						break
					end
				end
			end
			if found then
				onDecision(hit, found)
			else
				heldHits[#heldHits + 1] = hit
			end
		end
	end

	-- Ends the holds that are over before this frame, then decides its Hits.
	-- Enemy Hits take the frame's lines first, so a mob's attack on the player
	-- or the pet in the same frame cannot take the line of the player's Hit.
	local function endFrame()
		advance(frameTime)
		for _, hit in ipairs(frameHits) do
			if not OWN_UNITS[hit.unit] then
				decide(hit)
			end
		end
		for _, hit in ipairs(frameHits) do
			if OWN_UNITS[hit.unit] then
				decide(hit)
			end
		end
		for _, line in ipairs(frameLines) do
			waitingLines[#waitingLines + 1] = line
		end
		frameTime, frameHits, frameLines = nil, {}, {}
	end

	local pairing = {}

	-- Casts and Swings pass by: no rule uses them yet, and they do not open a
	-- frame.
	function pairing.Push(record)
		if frameTime and record.time ~= frameTime then
			endFrame()
		end
		if record.kind == "hit" then
			frameTime = record.time
			frameHits[#frameHits + 1] = record
		elseif record.kind == "line" then
			frameTime = record.time
			if isOwnColour(record) then
				frameLines[#frameLines + 1] = record
			end
		end
	end

	function pairing.Tick(now)
		if frameTime and now > frameTime then
			endFrame()
		end
		advance(now)
	end

	return pairing
end
