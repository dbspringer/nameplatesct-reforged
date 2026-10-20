local _, ns = ...

local Pairing = {}
ns.Pairing = Pairing

-- How long before its Hit a Log Line can come. Spells and wands came up to
-- 0.066 s early in the Warlock Traces; melee came 0.37 s (the player) and
-- 0.52 to 0.98 s (the pet) early.
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

local function canTakeFrameLine(hit)
	if isZeroWound(hit) then
		return false
	end
	return not OWN_UNITS[hit.unit] or OWN_ACTIONS[hit.action] ~= nil
end

local function fits(hit, line)
	if OWN_UNITS[hit.unit] or isZeroWound(hit) then
		return false
	end
	local age = hit.time - line.time
	if age >= 0 and age <= SHORT_WINDOW then
		return true
	end
	return age >= MELEE_FROM and age <= MELEE_TO and isPhysical(hit)
end

-- Pairs each Hit from the adapter with the Log Line that proves it is the
-- player's or the pet's, or decides that it is someone else's. Records go in
-- through Push in the adapter's order; Tick(now) ends holds. onDecision(hit,
-- line) runs once for every Hit, with a nil line when the Hit is not yours.
-- colours lists the {r, g, b} of the player's and the pet's Log Lines, from
-- the Log Filter; nil accepts lines of every colour.
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
		for _, colour in ipairs(colours) do
			local r, g, b = line.r, line.g, line.b
			if issecretvalue(r) or issecretvalue(g) or issecretvalue(b) then
				return true
			end
			if math.abs(r - colour[1]) <= COLOUR_TOLERANCE and math.abs(g - colour[2]) <= COLOUR_TOLERANCE
				and math.abs(b - colour[3]) <= COLOUR_TOLERANCE then
				return true
			end
		end
		return false
	end

	local function take(lines, index)
		return table.remove(lines, index)
	end

	-- Ends the holds and drops the lines that are over by this time. A held
	-- Hit takes the oldest line that came after it within the hold and that
	-- no Hit of its own window took.
	local function advance(now)
		while heldHits[1] and heldHits[1].time + HOLD < now do
			local hit = table.remove(heldHits, 1)
			local found
			for i, line in ipairs(waitingLines) do
				if line.time > hit.time and line.time <= hit.time + HOLD then
					found = take(waitingLines, i)
					break
				end
			end
			onDecision(hit, found)
		end
		while waitingLines[1] and now - waitingLines[1].time > MELEE_TO do
			table.remove(waitingLines, 1)
		end
	end

	local function closeFrame()
		-- Enemy Hits take the frame's lines first.
		local ordered = {}
		for _, hit in ipairs(frameHits) do
			if not OWN_UNITS[hit.unit] then
				ordered[#ordered + 1] = hit
			end
		end
		for _, hit in ipairs(frameHits) do
			if OWN_UNITS[hit.unit] then
				ordered[#ordered + 1] = hit
			end
		end
		for _, hit in ipairs(ordered) do
			local found
			if frameLines[1] and canTakeFrameLine(hit) then
				found = take(frameLines, 1)
			else
				for i, line in ipairs(waitingLines) do
					if fits(hit, line) then
						found = take(waitingLines, i)
						break
					end
				end
			end
			if found or OWN_UNITS[hit.unit] or isZeroWound(hit) then
				onDecision(hit, found)
			else
				heldHits[#heldHits + 1] = hit
			end
		end
		for _, line in ipairs(frameLines) do
			waitingLines[#waitingLines + 1] = line
		end
		frameTime, frameHits, frameLines = nil, {}, {}
	end

	local pairing = {}

	function pairing.Push(record)
		if frameTime and record.time ~= frameTime then
			advance(frameTime)
			closeFrame()
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
			advance(frameTime)
			closeFrame()
		end
		advance(now)
	end

	return pairing
end
