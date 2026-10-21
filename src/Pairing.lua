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
local SCHOOL_PHYSICAL = 1

-- In the Warlock Traces, a Hit on the player or the pet had a Log Line only
-- for a heal or damage in its own frame (Drain Life, Health Funnel); a mob's
-- attack on them must not take the player's waiting lines.
local OWN_UNITS = { player = true, pet = true }
local OWN_ACTIONS = { WOUND = true, HEAL = true }

-- The player cannot heal an enemy, and Plate Text shows no heal, so a heal on
-- a unit other than the player or the pet takes no line: an enemy's heal must
-- not take the line of the player's Hit. The player's heal on a friendly
-- Nameplate then leaves its line waiting, as a heal on a party member with no
-- Nameplate already does.
local function isOthersHeal(hit)
	return hit.action == "HEAL" and not OWN_UNITS[hit.unit]
end

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

-- The sort of Hit a UNIT_COMBAT action is, in the terms of
-- LineKind.Reports: a WOUND is damage, a HEAL a heal, the rest are avoids.
local function reportOf(hit)
	if hit.action == "WOUND" then
		return "damage"
	end
	return hit.action == "HEAL" and "heal" or "miss"
end

-- Whether a Log Line can be the Hit's by its Line Kind: a line reports the
-- same sort of Hit, and a melee line only a physical Hit on an enemy, as the
-- player and the pet never swing at themselves. A mob's swing at either can
-- come in the frame of their own swing's line, whose Hit comes one Swing
-- Delay later. A line whose colour tells nothing (see LineKind.Of) can be any
-- Hit's.
local function suits(hit, line)
	local lineKind = line.lineKind
	if not lineKind then
		return true
	end
	return ns.LineKind.Reports(lineKind) == reportOf(hit)
		and (not ns.LineKind.IsMelee(lineKind) or (isPhysical(hit) and not OWN_UNITS[hit.unit]))
end

-- How a waiting line, from an earlier frame, fits an enemy Hit: "short" or
-- "melee", or nil when it does not fit. Only a melee line, or one of unknown
-- kind, comes one Swing Delay early.
local function fits(hit, line)
	if not suits(hit, line) then
		return nil
	end
	local age = hit.time - line.time
	if age >= 0 and age <= SHORT_WINDOW then
		return "short"
	end
	if age >= MELEE_FROM and age <= MELEE_TO and isPhysical(hit)
		and (not line.lineKind or ns.LineKind.IsMelee(line.lineKind)) then
		return "melee"
	end
end

-- Takes from lines the first one that suits the Hit.
local function takeSuited(hit, lines)
	for i, line in ipairs(lines) do
		if suits(hit, line) then
			return table.remove(lines, i)
		end
	end
end

-- Pairs each Hit from the adapter with the Log Line that proves it is the
-- player's or the pet's, or decides that it is someone else's. Records go in
-- through Push in the adapter's order. Tick(now) closes the open frame and
-- ends the holds that are over; call it often, or the last Hits wait for the
-- next record. onDecision(hit, line, how) runs once for every Hit, with a nil
-- line when the Hit is not yours; an error in it drops the rest of that
-- frame, but never decides a Hit twice. how tells which rule paired it: "frame" (a
-- line in the Hit's frame), "short" (a line up to SHORT_WINDOW earlier),
-- "melee" (a line one Swing Delay earlier), or "late" (a line after the Hit).
-- A line pairs only with a Hit that its Line Kind suits; a killing blow line,
-- or one in a colour that is never the player's, pairs with none.
function Pairing.New(options)
	local onDecision = options.onDecision
	local frameTime
	local frameHits, frameLines = {}, {}
	-- Unpaired Log Lines and Hits that wait for a late line, oldest first.
	local waitingLines, heldHits = {}, {}

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
				if line.time > hit.time and line.time <= hit.time + HOLD and suits(hit, line) then
					index = i
					break
				end
			end
			if index and now - waitingLines[index].time <= SHORT_WINDOW then
				break
			end
			table.remove(heldHits, 1)
			local found = index and table.remove(waitingLines, index) or nil
			onDecision(hit, found, found and "late")
		end
		while waitingLines[1] and now - waitingLines[1].time > MELEE_TO do
			table.remove(waitingLines, 1)
		end
	end

	local function decide(hit, lines)
		if isZeroWound(hit) or isOthersHeal(hit) then
			onDecision(hit, nil)
		elseif OWN_UNITS[hit.unit] then
			local found = OWN_ACTIONS[hit.action] and takeSuited(hit, lines) or nil
			onDecision(hit, found, found and "frame")
		else
			local found, how = takeSuited(hit, lines), "frame"
			if not found then
				for i, line in ipairs(waitingLines) do
					how = fits(hit, line)
					if how then
						found = table.remove(waitingLines, i)
						break
					end
				end
			end
			if found then
				onDecision(hit, found, how)
			else
				heldHits[#heldHits + 1] = hit
			end
		end
	end

	-- Ends the holds that are over before this frame, then decides its Hits.
	-- Enemy Hits take the frame's lines first, so a mob's attack on the player
	-- or the pet in the same frame cannot take the line of the player's Hit.
	-- The frame closes before any decision, so an error in onDecision cannot
	-- make the next call decide the same Hits again.
	local function endFrame()
		local time, hits, lines = frameTime, frameHits, frameLines
		frameTime, frameHits, frameLines = nil, {}, {}
		advance(time)
		for _, hit in ipairs(hits) do
			if not OWN_UNITS[hit.unit] then
				decide(hit, lines)
			end
		end
		for _, hit in ipairs(hits) do
			if OWN_UNITS[hit.unit] then
				decide(hit, lines)
			end
		end
		for _, line in ipairs(lines) do
			waitingLines[#waitingLines + 1] = line
		end
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
			frameLines[#frameLines + 1] = record
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
