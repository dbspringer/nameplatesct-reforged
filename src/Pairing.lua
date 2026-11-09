local _, ns = ...

local Pairing = {}
ns.Pairing = Pairing

-- How long before its Hit a Log Line can come. Spells came up to 0.066 s early
-- in the Warlock Traces, and a Druid's Wrath 0.117 s early, a frame apart (live,
-- 2026-11-07). A Weapon Proc's Hit can come from 0.143 s (see PROC_AFTER_SWING),
-- which this must stay under, or that Hit pairs as a spell's and loses its swing
-- look. A wand's shot came up to 0.034 s early on the beta and
-- up to 0.334 s early on the live client, at 2.3 yd (warlock-wand-overlap, 41
-- shots at 2 to 37 yd). Most of a shot's flight comes before its line, and the
-- gap after it has no clear tie to distance. Melee came one Swing Delay
-- early: 0.28 s or more in the Traces, with no clean sample under MELEE_FROM,
-- so a Hit before that is another unit's.
local SHORT_WINDOW = 0.125
local SHOT_WINDOW = 0.35
-- How long a shot can fly, so how long its cast's target can still take its
-- Hit. A wand's Shoot landed up to 1.72 s after its cast at 32 yd
-- (warlock-wand-range), about 0.05 s per yard. This leaves room for a Hunter's
-- longer range, an estimate from wand data. Spell Identity uses it too.
local SHOT_FLIGHT = 2.5
Pairing.SHOT_FLIGHT = SHOT_FLIGHT
local MELEE_FROM, MELEE_TO = 0.25, ns.LineKind.LONGEST_SWING_DELAY
-- How long a Hit with no Log Line waits for a late one. No Trace has a late
-- line, but Forever Combat Text waits this long for a late spell line.
local HOLD = 0.15
-- How much later than its time a held Hit can be decided, at the next Tick.
Pairing.LATEST_DECISION = HOLD + SHOT_WINDOW
local SCHOOL_PHYSICAL = 1
-- A Weapon Proc's Log Line is a spell's, but its Hit comes late like a swing's.
-- A Shaman's Windfury lines (Trace from issue #48, 9 procs) came 0 to 0.122 s
-- after the swing or Stormstrike that made them, and their Hits 0.143 to 1.41 s
-- after the lines, with one more at 2.3 s that this leaves out. Those lines have
-- no words, so that they are Windfury's comes from the issue and this pattern.
-- Nothing tells such a line from a physical ability's or a Seal Proc's, so one
-- whose Hit does not come stays for any physical Hit. Another player's can take
-- it, which also loses the real Hit if the proc's own line is the one it took,
-- and no Trace has a Shaman in a group to show how often that happens.
local PROC_AFTER_SWING = 0.15
local PROC_TO = ns.LineKind.LONGEST_PROC_DELAY
-- How long after its longest duration a DoT still counts as active, for a
-- cast that travels or a tick that drifts late.
local DOT_SLACK = 1

-- In the Warlock Traces, a Hit on the player or the pet had a Log Line only
-- for a heal or damage in its own frame (Drain Life, Health Funnel); a mob's
-- attack on them must not take the player's waiting lines.
local OWN_UNITS = ns.Adapter.OWN_UNITS
local OWN_ACTIONS = { WOUND = true, HEAL = true }

local function isShotLine(line)
	return ns.LineKind.Group(line.lineKind) == "shot"
end

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

-- The spell that a cast record of the player's makes take effect, when it is
-- one that hits and its ID is public, or nil.
local function spellTakingEffect(record)
	if record.stage ~= "SUCCEEDED" or record.unit ~= "player" or issecretvalue(record.spellID) then
		return nil
	end
	return ns.DirectSpells[record.spellID]
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
	return isShotLine(line) and SHOT_WINDOW or SHORT_WINDOW
end

-- How a waiting line, from an earlier frame, fits an enemy Hit: "short" or
-- "melee", or nil when it does not fit. Only a melee line, one of unknown kind,
-- or a Weapon Proc's comes one Swing Delay early. A shot line past SHORT_WINDOW fits only a
-- Hit on a recent shot's target, as all live shots' Hits in the Traces were, so another
-- unit's Hit cannot take it. Another player's Hit on that unit still can.
local function fits(hit, line, isShotTarget)
	if not suits(hit, line) then
		return nil
	end
	local age = hit.time - line.time
	if age >= 0 and age <= SHORT_WINDOW and not ns.LineKind.IsMelee(line.lineKind) then
		return "short"
	end
	if age >= 0 and age <= SHOT_WINDOW and isShotLine(line) and isShotTarget(hit) then
		return "short"
	end
	if line.mayBeProc and age >= 0 and age <= PROC_TO and isPhysical(hit) then
		return "melee"
	end
	if age >= MELEE_FROM and age <= MELEE_TO and isPhysical(hit)
		and (not line.lineKind or ns.LineKind.IsMelee(line.lineKind)) then
		return "melee"
	end
end

-- Takes from the lines of the Hit's frame the first one that suits the Hit, a
-- shot line last: it can wait for its own Hit, and another line in the frame
-- cannot. A melee line stays, as its Hit comes one Swing Delay later.
-- accepts(hit, line), which is optional, can refuse a line that suits.
local function takeSuited(hit, lines, accepts)
	for i, line in ipairs(lines) do
		if suits(hit, line) and not isShotLine(line) and not ns.LineKind.IsMelee(line.lineKind)
			and (not accepts or accepts(hit, line)) then
			return table.remove(lines, i)
		end
	end
	for i, line in ipairs(lines) do
		if suits(hit, line) and not ns.LineKind.IsMelee(line.lineKind) and (not accepts or accepts(hit, line)) then
			return table.remove(lines, i)
		end
	end
end

-- The first melee line in list that this Hit came too early for, and that no
-- other early Hit waits on. Events are timed when the addon gets them, so a
-- frame hitch could bring a swing's line and Hit close together (no Trace shows
-- this). So the Hit waits: a later Hit that fits takes the line, as the real
-- Hit's Swing Delay is still to come, and if none does, this Hit gets the line
-- once the line is over.
local function earlyMeleeLine(hit, list)
	for _, line in ipairs(list) do
		local age = hit.time - line.time
		if ns.LineKind.IsMelee(line.lineKind) and not line.early and suits(hit, line)
			and age >= 0 and age <= SHORT_WINDOW then
			return line
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
-- "melee" (a line one Swing Delay earlier, a melee line that its early Hit
-- waited on, or a Weapon Proc's line), or "late" (a line after the Hit).
-- A line pairs only with a Hit that its Line Kind suits; a killing blow line,
-- or one in a colour that is never the player's, pairs with none. A tick or
-- shot line goes first to a Hit of the right school (see takesFromFrame and
-- secondChoiceLine).
-- options.schoolOf(spellID), which is optional, gives the known school of a
-- spell's hits, such as a wand's from the Spell Facts.
function Pairing.New(options)
	local onDecision = options.onDecision
	local schoolOf = options.schoolOf or function() end
	local frameTime
	local frameHits, frameLines = {}, {}
	-- The cast of the player's latest Next-Swing Ability.
	local nextSwing
	-- When the player last swung or used a physical ability, which can make a
	-- Weapon Proc.
	local lastStrike
	-- The player's ranged attacks that can still be in flight, oldest first.
	local shots = {}
	-- When the player's and the pet's DoTs of each school end, from their
	-- casts. A cast does not say which Nameplate it was on.
	local dotEnds = {}

	-- The schools that the spell of a tick or shot line can have at this
	-- time, as a set, or nil when none is known: for a tick line, those of the
	-- DoTs that are active, and for a shot line, those of the shots that can
	-- still fly.
	local function knownSchools(line, time)
		local group, schools = ns.LineKind.Group(line.lineKind), nil
		if group == "tick" then
			for school, ends in pairs(dotEnds) do
				if time <= ends then
					schools = schools or {}
					schools[school] = true
				end
			end
		elseif group == "shot" then
			for _, shot in ipairs(shots) do
				local school = time - shot.time <= SHOT_FLIGHT and schoolOf(shot.spellID)
				if school then
					schools = schools or {}
					schools[school] = true
				end
			end
		end
		return schools
	end

	-- Whether the Hit's school is known to be, or known not to be, one that
	-- the line's spell can have. Only a WOUND's school counts, as misses and
	-- heals report school 1.
	local function schoolIs(hit, line, right)
		if hit.action ~= "WOUND" or issecretvalue(hit.school) then
			return false
		end
		local schools = knownSchools(line, hit.time)
		return schools ~= nil and (schools[hit.school] == true) == right
	end

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

	-- Takes a line for a Hit. The Hits that waited on it are not Your Hits.
	local function claim(line)
		if line.early then
			onDecision(line.early, nil)
		end
		if line.second then
			onDecision(line.second, nil)
		end
		return line
	end

	-- Whether an enemy Hit can take a line of its frame. Another player's Hit
	-- can come in the same frame as a tick, so a tick line goes first to a Hit
	-- of this frame with a DoT's school; with none, any Hit can take it at
	-- once, as a tick with no cast of its own (Deadly Poison, Ignite) has a
	-- school that no cast tells. A shot line with the wrong school waits (see
	-- secondChoiceLine). later lists the frame's Hits from first on that are
	-- still to be decided.
	local function takesFromFrame(hit, line, later, first)
		if not schoolIs(hit, line, false) then
			return true
		end
		if isShotLine(line) then
			return false
		end
		for i = first, #later do
			local other = later[i]
			if not OWN_UNITS[other.unit] and suits(other, line) and schoolIs(other, line, true) then
				return false
			end
		end
		return true
	end

	-- A shot line that fits the Hit but for its school, and that no other Hit
	-- waits on, and how it fits. Most shots' Hits come after their line, and
	-- another player's Hit can come first. So the Hit is the line's second
	-- choice: it gets the line once the line's window is over, unless a Hit
	-- of the right school takes it first. A new wand's Hits still pair this
	-- way, and teach Spell Identity the new school.
	local function secondChoiceLine(hit, lines)
		for _, line in ipairs(lines) do
			if not line.second and isShotLine(line) and suits(hit, line) then
				return line, "frame"
			end
		end
		for _, line in ipairs(waitingLines) do
			local how = not line.second and isShotLine(line) and fits(hit, line, isShotTarget)
			if how then
				return line, how
			end
		end
	end

	-- Ends the holds and drops the lines that are over by this time. A held
	-- Hit takes the oldest waiting line that came after it within the hold,
	-- but only once that line is too old to be a newer Hit's early line: in
	-- the Traces a line always came before its Hit, so a newer Hit wins it.
	-- Waiting this out also makes the result the same at any frame rate. A
	-- melee line never pairs here: its Hit comes one Swing Delay after it, so
	-- a Hit just before the line is another unit's (warrior-retest).
	local function advance(now)
		local at = 1
		while waitingLines[at] do
			local line = waitingLines[at]
			if line.second and now - line.time > earlyWindow(line) then
				table.remove(waitingLines, at)
				onDecision(line.second, line, line.secondHow)
			else
				at = at + 1
			end
		end
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
			local found = index and claim(table.remove(waitingLines, index)) or nil
			onDecision(hit, found, found and "late")
		end
		while waitingLines[1] and now - waitingLines[1].time > (waitingLines[1].mayBeProc and PROC_TO or MELEE_TO) do
			local line = table.remove(waitingLines, 1)
			if line.early then
				onDecision(line.early, line, "melee")
			end
		end
	end

	local function decide(hit, lines, later, first)
		if isZeroWound(hit) or isOthersHeal(hit) then
			onDecision(hit, nil)
		elseif OWN_UNITS[hit.unit] then
			local found = OWN_ACTIONS[hit.action] and takeSuited(hit, lines) or nil
			if found then
				claim(found)
			end
			onDecision(hit, found, found and "frame")
		else
			local found, how = takeSuited(hit, lines, function(_, line)
				return takesFromFrame(hit, line, later, first)
			end), "frame"
			if not found then
				-- The oldest line that fits. When the player's and the pet's swing
				-- lines wait at once, a Hit can take the other's: the Swing Delay
				-- of each varies too much to tell them apart, and a line's pet
				-- mark (see Adapter.New) then goes with the wrong Hit.
				for i, line in ipairs(waitingLines) do
					how = fits(hit, line, isShotTarget)
					if how and not (isShotLine(line) and schoolIs(hit, line, false)) then
						found = table.remove(waitingLines, i)
						break
					end
				end
			end
			if found then
				onDecision(hit, claim(found), how)
			else
				local line = earlyMeleeLine(hit, waitingLines) or earlyMeleeLine(hit, lines)
				if line then
					line.early = hit
				else
					local second, secondHow = secondChoiceLine(hit, lines)
					if second then
						second.second, second.secondHow = hit, secondHow
					else
						heldHits[#heldHits + 1] = hit
					end
				end
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
		for i, hit in ipairs(hits) do
			if hit == empty then
				onDecision(hit, nil)
			elseif not OWN_UNITS[hit.unit] then
				decide(hit, lines, hits, i + 1)
			end
		end
		for _, hit in ipairs(hits) do
			if OWN_UNITS[hit.unit] then
				decide(hit, lines)
			end
		end
		-- Only here is every swing and cast of the frame in, as a line can come
		-- before its strike in one frame (5 direct lines in the Warrior and Paladin
		-- Traces). A swing or cast of a later frame ends this frame first.
		for _, line in ipairs(lines) do
			line.mayBeProc = lastStrike ~= nil and line.time - lastStrike <= PROC_AFTER_SWING
				and ns.LineKind.Group(line.lineKind) == "direct"
			waitingLines[#waitingLines + 1] = line
		end
	end

	local pairing = {}

	-- Casts and Swings do not open a frame, though a later one closes the open
	-- frame, which Flow relies on. Of the swings Pairing notes only the time of a
	-- melee one, and of the casts only a physical ability, a Next-Swing Ability,
	-- and a ranged attack (Flow gives all casts to Spell Identity).
	function pairing.Push(record)
		if frameTime and record.time ~= frameTime then
			endFrame()
		end
		if record.kind == "cast" then
			local dot = record.stage == "SUCCEEDED" and not issecretvalue(record.spellID) and ns.TickSpells[record.spellID]
			if dot and not dot.area then
				dotEnds[dot.school] = math.max(dotEnds[dot.school] or 0, record.time + dot.duration + DOT_SLACK)
			end
			local spell = spellTakingEffect(record)
			if spell and spell.school == SCHOOL_PHYSICAL and not spell.shot then
				lastStrike = record.time
			end
			if spell and spell.nextSwing then
				nextSwing = record
			elseif spell and spell.shot and record.target then
				while shots[1] and record.time - shots[1].time > SHOT_FLIGHT do
					table.remove(shots, 1)
				end
				shots[#shots + 1] = record
			end
		elseif record.kind == "hit" then
			frameTime = record.time
			frameHits[#frameHits + 1] = record
		elseif record.kind == "line" then
			frameTime = record.time
			frameLines[#frameLines + 1] = record
		elseif record.kind == "swing" and record.swingType ~= ns.Adapter.RANGED_SWING then
			lastStrike = record.time
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
