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
-- How long after its cast a spell can land: a direct hit, or a travelling
-- spell that then ticks. A Shadow Bolt came up to 0.55 s and a Shoot up to
-- 0.63 s after the cast in the Warlock Traces; a cast at long range flies
-- longer. Spell Identity uses it too.
local DIRECT_WINDOW = 1.5
Pairing.DIRECT_WINDOW = DIRECT_WINDOW
-- A Brand Proc's Log Line comes just after the pet's landed swing line that
-- set it off: 284 of the 288 that a swing set off in warlock-zf came within
-- this, and no Shadow line of the player's did in the Warlock Traces. Spell
-- Identity uses it too.
local BRAND_PROC_WINDOW = 0.06
Pairing.BRAND_PROC_WINDOW = BRAND_PROC_WINDOW
-- A Seal Proc comes just after the swing that landed it: 302 of 307 of
-- Righteousness and all 7 of Command in the Traces, of all players, came within
-- this of their swing's event, and 1 of 2 of Fury (no swing in the file for the
-- other). A live Paladin's 49 came up to 0.117 s after their swing line. Spell
-- Identity uses it too.
local SEAL_PROC_WINDOW = 0.15
Pairing.SEAL_PROC_WINDOW = SEAL_PROC_WINDOW
-- A Seal's aura lasted its full 30.0 s in the Paladin Trace. Spell Identity
-- uses it too.
local SEAL_DURATION = 30
Pairing.SEAL_DURATION = SEAL_DURATION
local MELEE_FROM, MELEE_TO = 0.25, ns.LineKind.LONGEST_SWING_DELAY
-- The Swing Delays of the player and of the pet, learned in the session from
-- their clean swings: a melee line with one Hit in its window and no other
-- melee line near. Each unit's delays sit in clusters 10 to 30 ms wide, one or
-- two per unit (warlock-bfd-group: an Incubus at 0.95 s, a Protection Warrior
-- at 0.46 and 0.99 s), so in a group a melee line prefers a Hit at one of its
-- owner's delays to another player's Hit in its window. A Hit is at one of
-- them when at least SWING_DELAY_PAIR of the SWING_DELAY_KEEP latest samples,
-- and SWING_DELAY_SHARE of them, are within SWING_DELAY_NEAR of its delay.
-- Until SWING_DELAY_MIN samples are in, any Hit in the window is. These are
-- first guesses, not tuned. Replayed on all Traces, they cut the wrong numbers
-- in warlock-bfd-group from 123 to 52 and kept 494 of 496 right on the checked
-- solo Traces, as before.
local SWING_DELAY_KEEP = 20
local SWING_DELAY_MIN = 4
local SWING_DELAY_NEAR = 0.02
local SWING_DELAY_PAIR = 2
local SWING_DELAY_SHARE = 0.1
-- How long Pairing remembers that a Nameplate hid: longer than any melee
-- line waits.
local HIDE_KEEP = 5
-- How long a Hit with no Log Line waits for a late one. No Trace has a late
-- line, but Forever Combat Text waits this long for a late spell line.
local HOLD = 0.15
-- How much later than its time a held Hit can be decided, at the next Tick.
Pairing.LATEST_DECISION = HOLD + SHOT_WINDOW
local SCHOOL_PHYSICAL, SCHOOL_HOLY, SCHOOL_SHADOW = 1, 2, 32
-- The Proc of each class that has a hint. A Proc has no cast of its own, so a
-- landed Hit that can set it off is a hint of it: the Proc's school, how soon
-- after that Hit's line the Proc's line comes, and what sets it off. swing is
-- the player's landed swing line and petSwing the pet's; petSpell is the Hit
-- that is surely the pet's spell's, which hints only on its own mob. With
-- seal, a hint needs a Seal that procs on the player, as their casts tell it
-- (see ns.Seals): with none, or with one not known, as after a /reload, a
-- Holy Hit after a swing is no more the player's than another Hit, which can
-- be a Proc of theirs of another school. Nothing tells whether the pet has
-- Demonic Brand. No Trace has a Paladin player in a group, so that hint is
-- untested there. A Rogue's Instant Poison has none: no cast tells the poison
-- on a weapon, and Touch of the Grave is a Shadow Proc of the same swings. A
-- Weapon Proc's Hit comes too late for such a window.
local PROC_HINTS = {
	WARLOCK = { school = SCHOOL_SHADOW, window = BRAND_PROC_WINDOW, petSwing = true, petSpell = true },
	PALADIN = { school = SCHOOL_HOLY, window = SEAL_PROC_WINDOW, swing = true, seal = true },
}
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
-- How far a tick can be from its interval, as in Spell Identity.
local TICK_TOLERANCE = 0.1

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

-- For a cast of the player's or the pet's, the school of the direct Hits it
-- can make, how long after the cast they can come, and whether they can be on
-- any unit; nil for a cast that makes none. These are the casts that Spell
-- Identity can give a direct Hit: a spell that hits, in its window; a DoT that
-- also hits; and an area spell, whose ticks come with direct lines, until its
-- duration ends. A shot has lines of its own.
local function directHitsOf(record)
	if record.stage ~= "SUCCEEDED" or (record.unit ~= "player" and record.unit ~= "pet")
		or issecretvalue(record.spellID) then
		return nil
	end
	local direct = ns.DirectSpells[record.spellID]
	if direct then
		if direct.shot then
			return nil
		end
		return direct.school, direct.window or DIRECT_WINDOW, false
	end
	local ticking = ns.TickSpells[record.spellID]
	if ticking and ticking.area then
		return ticking.school, ticking.duration + DOT_SLACK, true
	elseif ticking and ticking.hits then
		return ticking.school, DIRECT_WINDOW, false
	end
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
-- unit's Hit cannot take it. Another player's Hit on that unit still can. A
-- melee line fits only a Hit at one of its owner's Swing Delays, which
-- atSwingDelay(line, age) tells.
local function fits(hit, line, isShotTarget, atSwingDelay)
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
		and (not line.lineKind or (ns.LineKind.IsMelee(line.lineKind) and atSwingDelay(line, age))) then
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
-- or a Hit off its Swing Delays waited on, or a Weapon Proc's line), or
-- "late" (a line after the Hit).
-- A line pairs only with a Hit that its Line Kind suits; a killing blow line,
-- or one in a colour that is never the player's, pairs with none. A tick or
-- shot line goes first to a Hit of the right school (see takesFromFrame and
-- secondChoiceLine).
-- options.schoolOf(spellID), which is optional, gives the known school of a
-- spell's hits, such as a wand's from the Spell Facts. options.class is the
-- player's class.
function Pairing.New(options)
	-- The player's and the pet's recent casts that can make a direct Hit, each
	-- with its school, when its Hits can come until, the plate life of the
	-- player's target for it, when its Hits must be there, and whether it makes
	-- many Hits (see directHitsOf). A landed Hit that can set off the class's
	-- Proc adds a hint of it (see PROC_HINTS): a hint is weaker than a cast. The
	-- hint of the pet's spell Hit is only on its plate life, and only after its
	-- line's frame (see Identity's newBrandTracker).
	local directCasts = {}
	local procHint = PROC_HINTS[options.class]
	-- Until when the player's last Seal can proc, or nil when it has no proc
	-- or a cast with a secret spell could have replaced it.
	local sealProcsUntil

	-- Adds the cast (time, school, and the optional life, many, hint, pet,
	-- after, and for the player's area channel spellID, burnsSelf and interval)
	-- for lasts seconds.
	local function addDirectCast(cast, lasts)
		for i = #directCasts, 1, -1 do
			if directCasts[i].ends < cast.time then
				table.remove(directCasts, i)
			end
		end
		cast.ends = cast.time + lasts
		directCasts[#directCasts + 1] = cast
	end

	-- The index of the cast that can best have made the Hit, when the Hit is an
	-- enemy's WOUND of its school, and its rank: 2 for a cast, 1 for a hint.
	-- With single, only of a cast or hint of one Hit. A pet's cast says nothing
	-- of its target, so it counts on any unit.
	local function castOf(hit, single)
		if hit.action ~= "WOUND" or OWN_UNITS[hit.unit] or isZeroWound(hit) or issecretvalue(hit.school) then
			return nil, 0
		end
		local hintAt
		for i, cast in ipairs(directCasts) do
			if cast.school == hit.school and (hit.time > cast.time or hit.time == cast.time and not cast.after)
				and hit.time <= cast.ends
				and (not cast.life or cast.life == hit.life) and not (single and cast.many) then
				if not cast.hint then
					return i, 2
				end
				hintAt = hintAt or i
			end
		end
		return hintAt, hintAt and 1 or 0
	end

	local function castRank(hit)
		local _, rank = castOf(hit)
		return rank
	end

	-- A Hit that took a Log Line other than a melee one is that line's, so no
	-- swing learns its delay from it (see learnSwingDelays). A Hit that took a
	-- direct line uses up the cast or hint of one Hit that can best have made
	-- it (see castOf), so a later Hit of a group mate's with that school cannot
	-- take the direct line of another spell of the player's. A Hit that used
	-- up the pet's cast, when no other cast fits it, is surely the pet's, so it
	-- can add a hint of a Proc.
	local function onDecision(hit, line, how)
		if line and not ns.LineKind.IsMelee(line.lineKind) then
			hit.tookOtherLine = true
		end
		if line and line.lineKind == "direct" then
			local used = castOf(hit, true)
			local cast = used and table.remove(directCasts, used)
			if cast and cast.pet and procHint and procHint.petSpell and castRank(hit) < 2 then
				addDirectCast({ time = line.time, school = procHint.school, life = hit.life, hint = true, after = true },
					procHint.window)
			end
		end
		options.onDecision(hit, line, how)
	end
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

	-- The school of the player's channel that burns the player too, such as
	-- Hellfire, when one of its ticks is due at this time, or nil: on its
	-- interval after the cast, or in its stop's frame (a Stop Tick). Of 147
	-- Hellfire burns in the Traces, 141 came within 0.05 s of the interval and
	-- 6 in a stop's frame. A mob's Hit on the player off the ticks then cannot
	-- take a DoT's tick line.
	local function burnAt(time)
		for _, cast in ipairs(directCasts) do
			if cast.burnsSelf and time > cast.time and time <= cast.ends then
				local steps = math.floor((time - cast.time) / cast.interval + 0.5)
				if steps >= 1 and math.abs(time - cast.time - steps * cast.interval) <= TICK_TOLERANCE
					or cast.stopped and time == cast.ends then
					return cast.school
				end
			end
		end
	end

	-- A channel's Hits end with it, though its last tick can come in the stop's
	-- frame (a Stop Tick). The stop ends the oldest of the spell's channels that
	-- still runs, so a recast whose cast comes before the old channel's stop
	-- keeps its own, as in Spell Identity.
	local function stopChannel(record)
		local oldest
		for _, cast in ipairs(directCasts) do
			if cast.spellID == record.spellID and not cast.stopped and record.time <= cast.ends
				and not (oldest and oldest.time <= cast.time) then
				oldest = cast
			end
		end
		if oldest then
			oldest.stopped, oldest.ends = true, math.min(oldest.ends, record.time)
		end
	end

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

	-- The delays of the latest clean swings of the player and of the pet,
	-- oldest first, and the melee lines whose window is still open, to learn
	-- from (see SWING_DELAY_KEEP). They last for the session.
	local swingDelays = { player = {}, pet = {} }
	local openSwings = {}
	-- When Nameplates hid of late, oldest first.
	local hides = {}

	local function delaysOf(line)
		return swingDelays[line.pet and "pet" or "player"]
	end

	local function atSwingDelay(line, age)
		local delays = delaysOf(line)
		if #delays < SWING_DELAY_MIN then
			return true
		end
		local near = 0
		for _, delay in ipairs(delays) do
			if math.abs(delay - age) <= SWING_DELAY_NEAR then
				near = near + 1
			end
		end
		return near >= SWING_DELAY_PAIR and near >= SWING_DELAY_SHARE * #delays
	end

	-- Learns from the melee lines whose window ended by this frame, counts the
	-- frame's Hits in the windows still open, and opens a window for each of
	-- the frame's melee lines. Any physical Hit or avoid on an enemy counts,
	-- paired or not, as another player's Hit makes a swing unclean. A swing's
	-- one Hit teaches nothing when it took another kind of line by the time
	-- the window ends: the swing's own Hit did not come. Two melee
	-- lines of one sort whose windows overlap are both unclean: the Hits cannot
	-- tell which is whose. The frame's Empty Report, empty, does not count.
	local function learnSwingDelays(time, hits, lines, empty)
		while openSwings[1] and time - openSwings[1].line.time > MELEE_TO do
			local swing = table.remove(openSwings, 1)
			if swing.hits == 1 and not swing.crowded and not swing.hit.tookOtherLine then
				local delays = delaysOf(swing.line)
				delays[#delays + 1] = swing.delay
				if #delays > SWING_DELAY_KEEP then
					table.remove(delays, 1)
				end
			end
		end
		for _, hit in ipairs(hits) do
			if hit ~= empty and not OWN_UNITS[hit.unit] and hit.action ~= "HEAL"
				and (hit.action ~= "WOUND" or isPhysical(hit)) then
				for _, swing in ipairs(openSwings) do
					local age = hit.time - swing.line.time
					if age >= MELEE_FROM and age <= MELEE_TO and swing.reports == reportOf(hit) then
						swing.hits, swing.hit, swing.delay = swing.hits + 1, hit, age
					end
				end
			end
		end
		for _, line in ipairs(lines) do
			if ns.LineKind.IsMelee(line.lineKind) then
				local swing = { line = line, reports = ns.LineKind.Reports(line.lineKind), hits = 0 }
				for _, other in ipairs(openSwings) do
					if other.reports == swing.reports and line.time - other.line.time <= MELEE_TO then
						other.crowded, swing.crowded = true, true
						break
					end
				end
				openSwings[#openSwings + 1] = swing
			end
		end
	end

	-- Unpaired Log Lines and Hits that wait for a late line, oldest first.
	local waitingLines, heldHits = {}, {}

	-- Whether the line's swing likely lost its Hit: a Nameplate hid in the
	-- line's window, and the owner's latest SWING_DELAY_MIN samples lie within
	-- SWING_DELAY_NEAR, so a Hit off them is not a new delay. The game sends no
	-- Hit for a swing whose target dies before the Hit's time (warlock-rfk: 44
	-- of 44 pet swings whose target died within 0.7 s), and the Hit in the
	-- window is then another player's. Either sign alone is common in solo
	-- play. Replayed on all Traces, the two together took 16 of 27 such wrong
	-- numbers from warlock-rfk and 5 of 11 from warlock-bfd-group, and 2 right
	-- ones from the 25 other Traces.
	local function lostItsHit(line)
		local delays = delaysOf(line)
		if #delays < SWING_DELAY_MIN then
			return false
		end
		local least, most = math.huge, -math.huge
		for i = #delays - SWING_DELAY_MIN + 1, #delays do
			least, most = math.min(least, delays[i]), math.max(most, delays[i])
		end
		if most - least > SWING_DELAY_NEAR then
			return false
		end
		for _, time in ipairs(hides) do
			if time >= line.time and time <= line.time + MELEE_TO then
				return true
			end
		end
		return false
	end

	-- Takes a line for a Hit. The Hits that waited on it are not Your Hits.
	local function claim(line)
		if line.early then
			onDecision(line.early, nil)
		end
		if line.second then
			onDecision(line.second, nil)
		end
		if line.offDelay then
			onDecision(line.offDelay, nil)
		end
		return line
	end

	-- The oldest waiting melee line whose window the Hit is in, though not at
	-- one of the line's Swing Delays, and that no other such Hit waits on. The
	-- Hit waits on it: a Hit at a Swing Delay takes the line, and if none
	-- comes, this Hit gets the line once the line is over. Without this, a
	-- swing whose delay the addon has not learned yet, or that came off it,
	-- would show nothing when no other player is near.
	local function offDelayLine(hit)
		for _, line in ipairs(waitingLines) do
			local age = hit.time - line.time
			if not line.offDelay and ns.LineKind.IsMelee(line.lineKind) and suits(hit, line)
				and age >= MELEE_FROM and age <= MELEE_TO then
				return line
			end
		end
	end

	-- Whether an enemy Hit can take a line of its frame. Another player's Hit
	-- can come in the same frame as a tick, so a tick line goes first to a Hit
	-- of this frame with a DoT's school; with none, any Hit can take it at
	-- once, as a tick with no cast of its own (Deadly Poison, Ignite) has a
	-- school that no cast tells. When the frame also has a line of another
	-- kind that the Hit suits, such as a direct line, the Hit can be one of
	-- several of the player's, so no line goes past it. A shot line with the
	-- wrong school waits (see secondChoiceLine). later lists the frame's Hits
	-- from first on that are still to be decided.
	-- In a group, another player's Hit can come first in the frame of the
	-- player's or the pet's direct spell, too (a Drain Life tick before a
	-- Hunter pet's Bite, in Mimiche28's Trace). So a direct line goes first to a
	-- Hit with the school of a cast that can have made it, and then to one with
	-- the school of a hint (see castOf). A Hit with a lower rank still takes
	-- one when the frame's later Hits of a higher rank are fewer than its
	-- direct lines left: both of a frame's Hits can be the player's (a Seal
	-- Proc and a Judgement).
	local function leavesDirectLine(hit, line, lines, later, first)
		if line.lineKind ~= "direct" then
			return false
		end
		local rank, waiting = castRank(hit), 0
		for i = first, #later do
			if castRank(later[i]) > rank and suits(later[i], line) then
				waiting = waiting + 1
			end
		end
		if waiting == 0 then
			return false
		end
		local left = 0
		for _, other in ipairs(lines) do
			if other.lineKind == "direct" then
				left = left + 1
			end
		end
		return waiting >= left
	end

	-- In a frame, the player's Hit comes after its own direct or shield line:
	-- 392 of 392 direct and 18 of 18 shield lines over the Traces, where the
	-- Combat Log File told the Hit. So a Hit before such a line leaves it to a
	-- later Hit of the frame that suits it (warlock-zf Retribution Aura and
	-- Brand Procs, warlock-maraudon hits 32528 and 32530). Not for shot
	-- lines: there the same rule made 13 of 16 changed Hits worse.
	local function leavesLineToHitAfter(hit, line, later, first)
		if (line.lineKind ~= "direct" and line.lineKind ~= "shield") or hit.entry > line.entry then
			return false
		end
		for i = first, #later do
			local other = later[i]
			if other.entry > line.entry and not OWN_UNITS[other.unit] and suits(other, line) then
				return true
			end
		end
		return false
	end

	local function takesFromFrame(hit, line, lines, later, first)
		if leavesLineToHitAfter(hit, line, later, first) or leavesDirectLine(hit, line, lines, later, first) then
			return false
		end
		if not schoolIs(hit, line, false) then
			return true
		end
		if isShotLine(line) then
			return false
		end
		-- A direct line that the Hit leaves to a Hit with a fitting cast is not
		-- one it could take (warlock-zf hit 37310).
		for _, other in ipairs(lines) do
			if ns.LineKind.Group(other.lineKind) ~= "tick" and not isShotLine(other)
				and not ns.LineKind.IsMelee(other.lineKind) and suits(hit, other)
				and not leavesDirectLine(hit, other, lines, later, first) then
				return true
			end
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
			local how = not line.second and isShotLine(line) and fits(hit, line, isShotTarget, atSwingDelay)
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
			-- A Hit in the line's window is likelier the line's than one that
			-- came too early for it, unless the swing lost its Hit. Until now
			-- the Hit waited on the line, so it took no other line.
			if line.offDelay then
				if line.early then
					onDecision(line.early, nil)
				end
				if lostItsHit(line) then
					onDecision(line.offDelay, nil)
				else
					onDecision(line.offDelay, line, "melee")
				end
			elseif line.early then
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
				return takesFromFrame(hit, line, lines, later, first)
			end), "frame"
			local offDelay
			if not found then
				-- The oldest line that fits. When the player's and the pet's swing
				-- lines wait at once, a Hit can take the other's: until one of them
				-- has SWING_DELAY_MIN samples, its line takes any Hit in the window,
				-- and a line's pet mark (see Adapter.New) then goes with the wrong
				-- Hit. A Weapon Proc's line comes after its swing's, so a Hit in an
				-- older swing line's window, though off its Swing Delay, waits on
				-- that line and leaves the proc's line for the proc's own Hit.
				offDelay = offDelayLine(hit)
				for i, line in ipairs(waitingLines) do
					how = fits(hit, line, isShotTarget, atSwingDelay)
					if how and not (isShotLine(line) and schoolIs(hit, line, false)) then
						if not (line.mayBeProc and offDelay and offDelay.time < line.time) then
							found = table.remove(waitingLines, i)
						end
						break
					end
				end
			end
			if found then
				onDecision(hit, claim(found), how)
			elseif offDelay then
				offDelay.offDelay = hit
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
		learnSwingDelays(time, hits, lines, empty)
		-- Each tick of a channel that burns the player comes with a tick line
		-- for the burn in the frame of its Hits on the mobs (warlock-sm-armory,
		-- warlock-zf: Hellfire), so the burn takes its line before the enemy
		-- Hits can. Only one, as a mob's Hit on the player can share the school.
		local burned
		local burnSchool = burnAt(time)
		if burnSchool then
			for _, hit in ipairs(hits) do
				if hit.unit == "player" and hit.action == "WOUND" and not issecretvalue(hit.school)
					and hit.school == burnSchool then
					local found = takeSuited(hit, lines, function(_, line)
						return ns.LineKind.Group(line.lineKind) == "tick"
					end)
					if found then
						burned = hit
						onDecision(hit, claim(found), "frame")
						break
					end
				end
			end
		end
		for i, hit in ipairs(hits) do
			if hit == empty then
				onDecision(hit, nil)
			elseif not OWN_UNITS[hit.unit] then
				decide(hit, lines, hits, i + 1)
			end
		end
		for _, hit in ipairs(hits) do
			if OWN_UNITS[hit.unit] and hit ~= burned then
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
			if record.stage == "SUCCEEDED" and record.unit == "player" then
				local procs
				if not issecretvalue(record.spellID) then
					procs = ns.Seals[record.spellID]
				end
				if procs ~= nil or issecretvalue(record.spellID) then
					sealProcsUntil = procs and record.time + SEAL_DURATION or nil
				end
			end
			local dot = record.stage == "SUCCEEDED" and not issecretvalue(record.spellID) and ns.TickSpells[record.spellID]
			if dot and not dot.area then
				dotEnds[dot.school] = math.max(dotEnds[dot.school] or 0, record.time + dot.duration + DOT_SLACK)
			end
			local school, lasts, anyUnit = directHitsOf(record)
			if school then
				local life = record.unit == "player" and not anyUnit and (record.startTargetLife or record.targetLife) or nil
				local channel = anyUnit and record.unit == "player"
				addDirectCast({ time = record.time, school = school, life = life, many = anyUnit, pet = record.unit == "pet",
					spellID = channel and record.spellID or nil, burnsSelf = channel and dot.burnsSelf or nil,
					interval = channel and dot.interval or nil }, lasts)
			elseif record.stage == "CHANNEL_STOP" and record.unit == "player" and not issecretvalue(record.spellID) then
				stopChannel(record)
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
			local sealed = not (procHint and procHint.seal) or sealProcsUntil and record.time <= sealProcsUntil
			if record.lineKind == "swing" and procHint and sealed and (record.pet and procHint.petSwing
				or not record.pet and procHint.swing) then
				addDirectCast({ time = record.time, school = procHint.school, hint = true }, procHint.window)
			end
		elseif record.kind == "hide" then
			while hides[1] and record.time - hides[1] > HIDE_KEEP do
				table.remove(hides, 1)
			end
			hides[#hides + 1] = record.time
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
