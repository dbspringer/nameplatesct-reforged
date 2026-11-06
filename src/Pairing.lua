local _, ns = ...

local Pairing = {}
ns.Pairing = Pairing

-- How long before its Hit a Log Line can come. Spells came up to 0.066 s early
-- in the Warlock Traces. A wand's shot came up to 0.034 s early on the beta and
-- up to 0.334 s early on the live client, at 2.3 yd (warlock-wand-overlap, 41
-- shots at 2 to 37 yd). Most of a shot's flight comes before its line, and the
-- gap after it has no clear tie to distance. Melee came one Swing Delay
-- early: 0.37 s (the player) and 0.52 to 0.98 s (the pet).
local SHORT_WINDOW = 0.1
local SHOT_WINDOW = 0.35
local SHOT_KINDS = { shot = true, shotMiss = true }
-- How long a shot can fly, so how long its cast's target can still take its
-- Hit. A wand's Shoot landed up to 1.72 s after its cast at 32 yd.
local SHOT_FLIGHT = 2.5
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

-- Whether a cast record is the player's ranged attack taking effect, with a
-- known target.
local function isShotAtTarget(record)
	if record.stage ~= "SUCCEEDED" or record.unit ~= "player" or issecretvalue(record.spellID) or not record.target then
		return false
	end
	local spell = ns.DirectSpells[record.spellID]
	return spell ~= nil and spell.shot == true
end

-- Whether a cast record is the player's Next-Swing Ability taking effect.
local function isNextSwing(record)
	if record.stage ~= "SUCCEEDED" or record.unit ~= "player" or issecretvalue(record.spellID) then
		return false
	end
	local spell = ns.DirectSpells[record.spellID]
	return spell ~= nil and spell.nextSwing == true
end

-- The Empty Report of a Next-Swing Ability's frame, or nil when none is clear.
-- Live amounts are secret, so isZeroWound cannot see one. On the cast's target,
-- the frame has this order in the Warrior Traces: the cast, a physical WOUND,
-- the ability's Log Line, then the real physical WOUND. Any other shape can be
-- other damage in the frame, so it keeps the usual Pairing. The plate life
-- matters as well as the token: a late Hit keeps the token of a Nameplate that
-- hid, and that token can show the cast's target by now. A second target of
-- Cleave is not covered (no Trace).
local function emptyReportIn(hits, lines, nextSwing)
	local lineEntry
	for _, line in ipairs(lines) do
		if line.lineKind == nil or line.lineKind == "direct" then
			lineEntry = line.entry
			break
		end
	end
	if not lineEntry then
		return nil
	end
	local before, hasAfter
	for _, hit in ipairs(hits) do
		if hit.unit == nextSwing.target and hit.life == nextSwing.targetLife and hit.entry > nextSwing.entry
			and hit.action == "WOUND" and isPhysical(hit) then
			if hit.entry > lineEntry then
				hasAfter = true
			elseif before then
				return nil
			else
				before = hit
			end
		end
	end
	if before and hasAfter and issecretvalue(before.amount) then
		return before
	end
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

-- How long a line of this kind can wait for its Hit, apart from a melee line.
local function earlyWindow(line)
	return SHOT_KINDS[line.lineKind] and SHOT_WINDOW or SHORT_WINDOW
end

-- How a waiting line, from an earlier frame, fits an enemy Hit: "short" or
-- "melee", or nil when it does not fit. Only a melee line, or one of unknown
-- kind, comes one Swing Delay early. A shot line past SHORT_WINDOW fits only a
-- Hit on a recent shot's target, as all live shots' Hits in the Traces were, so another
-- unit's Hit cannot take it. Another player's Hit on that unit still can.
local function fits(hit, line, isShotTarget)
	if not suits(hit, line) then
		return nil
	end
	local age = hit.time - line.time
	if age >= 0 and age <= SHORT_WINDOW then
		return "short"
	end
	if age >= 0 and age <= SHOT_WINDOW and SHOT_KINDS[line.lineKind] and isShotTarget(hit) then
		return "short"
	end
	if age >= MELEE_FROM and age <= MELEE_TO and isPhysical(hit)
		and (not line.lineKind or ns.LineKind.IsMelee(line.lineKind)) then
		return "melee"
	end
end

-- Takes from lines the first one that suits the Hit, a shot line last: it can
-- wait for its own Hit, and another line in the frame cannot.
local function takeSuited(hit, lines)
	for i, line in ipairs(lines) do
		if suits(hit, line) and not SHOT_KINDS[line.lineKind] then
			return table.remove(lines, i)
		end
	end
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
-- line in the Hit's frame), "short" (a line up to SHORT_WINDOW earlier, or SHOT_WINDOW for a shot),
-- "melee" (a line one Swing Delay earlier), or "late" (a line after the Hit).
-- A line pairs only with a Hit that its Line Kind suits; a killing blow line,
-- or one in a colour that is never the player's, pairs with none.
function Pairing.New(options)
	local onDecision = options.onDecision
	local frameTime
	local frameHits, frameLines = {}, {}
	-- The cast of the player's latest Next-Swing Ability.
	local nextSwing
	-- The player's ranged attacks that can still be in flight, oldest first.
	local shots = {}

	local function isShotTarget(hit)
		for _, shot in ipairs(shots) do
			if hit.unit == shot.target and hit.life == shot.targetLife and hit.time - shot.time <= SHOT_FLIGHT then
				return true
			end
		end
		return false
	end

	-- Unpaired Log Lines and Hits that wait for a late line, oldest first.
	local waitingLines, heldHits = {}, {}

	-- Ends the holds and drops the lines that are over by this time. A held
	-- Hit takes the oldest waiting line that came after it within the hold,
	-- but only once that line is too old to be a newer Hit's early line: in
	-- the Traces a line always came before its Hit, so a newer Hit wins it.
	-- Waiting this out also makes the result the same at any frame rate. A
	-- melee line never pairs here: its Hit comes one Swing Delay after it, so
	-- a Hit just before the line is another unit's (warrior-retest).
	local function advance(now)
		while heldHits[1] and heldHits[1].time + HOLD < now do
			local hit = heldHits[1]
			local index
			for i, line in ipairs(waitingLines) do
				if line.time > hit.time and line.time <= hit.time + HOLD and suits(hit, line)
					and not ns.LineKind.IsMelee(line.lineKind) then
					index = i
					break
				end
			end
			if index and now - waitingLines[index].time <= earlyWindow(waitingLines[index]) then
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
				-- The oldest line that fits. When the player's and the pet's swing
				-- lines wait at once, a Hit can take the other's: the Swing Delay
				-- of each varies too much to tell them apart, and a line's pet
				-- mark (see Adapter.New) then goes with the wrong Hit.
				for i, line in ipairs(waitingLines) do
					how = fits(hit, line, isShotTarget)
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
		local empty = nextSwing and nextSwing.time == time and emptyReportIn(hits, lines, nextSwing)
		for _, hit in ipairs(hits) do
			if hit == empty then
				onDecision(hit, nil)
			elseif not OWN_UNITS[hit.unit] then
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

	-- Casts and Swings do not open a frame, though a later one closes the open
	-- frame, which Flow relies on. Swings pass by, and of the casts Pairing notes
	-- only a Next-Swing Ability and a ranged attack (Flow gives all casts to Spell
	-- Identity).
	function pairing.Push(record)
		if frameTime and record.time ~= frameTime then
			endFrame()
		end
		if record.kind == "cast" and isNextSwing(record) then
			nextSwing = record
		elseif record.kind == "cast" and isShotAtTarget(record) then
			while shots[1] and record.time - shots[1].time > SHOT_FLIGHT do
				table.remove(shots, 1)
			end
			shots[#shots + 1] = record
		elseif record.kind == "hit" then
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
