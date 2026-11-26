local _, ns = ...

local Identity = {}
ns.Identity = Identity

-- Spell Identity: which spell made Your Hit, from the player's casts, the
-- Hit's time and school, and its Log Line's Line Kind. A tick takes its spell
-- from the table of spells that tick (TickSpells.lua): whole intervals after
-- the spell's cast on that unit or its landing there, then on its Tick
-- Rhythm there, from the mean of its ticks (see rhythmSource and rhythmOf),
-- or with its channel's stop (see
-- stopTickOf). At a Tick Tie each tied spell keeps every rhythm that can be
-- its own (see ofTick). A direct
-- hit or a shot takes the one cast that fits it of a spell that can make it
-- (see canHit), from that table or the table of spells that hit
-- (DirectSpells.lua), with the school the table gives or, for a wand's Shoot,
-- that Spell Facts have learned (ADR 0004). On Forever an area spell's ticks
-- come as direct hits, so a direct hit can also take an area spell, each
-- interval after its cast, the first up to DIRECT_WINDOW later for one that
-- travels (see areaOf). A Seal Proc, a Rogue's Poison Procs and a Warlock's
-- Brand Proc have no cast: a Seal Proc goes by the Active Seal and a landed
-- swing, a poison by its school and a landed melee hit, a Brand Proc by its
-- school and the pet's landed swing line (see newSealTracker,
-- newPoisonTracker and newBrandTracker). A Warrior's Deep Wounds and Sweeping
-- Strikes and a Rogue's Blade Flurry are Physical Hits with no cast: an
-- Extra Strike by its time after the player's Hit on another unit and a
-- recent cast of the buff, Deep Wounds by its rhythm (see
-- newPhysicalProcTracker).
-- When it is not sure, it gives none. A Hit that gets none can still get its
-- Possible Spells, when one of two or three known spells surely made it (see
-- ofTick and possibleOfCasts).

-- How long after its cast a spell can land (see Pairing).
local DIRECT_WINDOW = ns.Pairing.DIRECT_WINDOW
-- A ranged attack can fly longer.
local SHOT_FLIGHT = ns.Pairing.SHOT_FLIGHT
-- How much later than its time a Hit can be decided, with a margin. Casts stay
-- this much longer.
local DECIDE_LATE = ns.Pairing.LATEST_DECISION + 0.1
-- How far a tick can be from its Tick Rhythm. Nearly all ticks came within
-- 0.07 s of it in the Warlock Traces; one batch came 0.18 s off and gets no
-- icon. A wider window lets another spell's tick that comes just before fit
-- too, which moves the rhythm off its own next tick.
local TICK_TOLERANCE = 0.1
-- How near another DoT's due tick keeps a Stop Tick unsure: twice the
-- rhythm's tolerance, as a killing tick can come a little off its rhythm.
local STOP_RIVAL = 2 * TICK_TOLERANCE
-- DoTs that the tick table leaves out but whose tick can still kill the mob
-- in a channel's stop frame, so they count against a Stop Tick: Curse of Doom
-- (Bane of Doom on Forever), one Shadow tick at 60 s (Classic IDs, unverified
-- on Forever).
local RIVAL_ONLY = {}
for _, spellID in ipairs({ 603, 30910 }) do
	RIVAL_ONLY[spellID] = { interval = 60, duration = 60, school = 32 }
end
-- How long any DoT can run, for a cast whose spell ID is secret.
local LONGEST_DOT = ns.LONGEST_DOT
-- A school counts once this many Hits agree on it.
local AGREEING_HITS = 2
-- How long after its cast the miss of a spell's application can come, for
-- a spell that does not travel: the Warlock Traces show these misses at the
-- cast's own time.
local MISS_WINDOW = 0.1
-- How soon after the swing that landed it a Seal Proc comes (see Pairing).
local SEAL_PROC_WINDOW = ns.Pairing.SEAL_PROC_WINDOW
-- How long a Seal's aura lasts (see Pairing).
local SEAL_DURATION = ns.Pairing.SEAL_DURATION
-- Other players' Consecration ticked up to 8.1 s after its cast in the Traces.
local CONSECRATION_DURATION = 8.2
local SCHOOL_HOLY = 2
-- How long a Seal change stays for a Hit decided late: an early Hit's wait on a
-- melee line is the longest, and this is well past it.
local SEAL_CHANGE_AGE = 2
-- A Poison Proc's spells, by their first rank's damage spell ID, so that each
-- rank shows one icon and name: Instant Poison's direct hit and Deadly
-- Poison's tick (Forever's spell data, build 1.60.1.70888).
local INSTANT_POISON, DEADLY_POISON = 8680, 2818
-- Instant Poison comes just after the melee hit that landed it: 339 of 341 of
-- a party Rogue's in warlock-rfk came 1 to 100 ms after one of their swings
-- or strikes in the Combat Log File, on the same target. The same window as a
-- Seal Proc's.
local POISON_PROC_WINDOW = 0.15
local SCHOOL_PHYSICAL, SCHOOL_NATURE = 1, 8
-- A Brand Proc's spell: the damage spell of a Warlock's Demonic Brand
-- (Forever), which the pet's Hits set off.
local DEMONIC_BRAND = 1293697
-- How soon after the pet's landed swing line a Brand Proc's line comes (see
-- Pairing).
local BRAND_PROC_WINDOW = ns.Pairing.BRAND_PROC_WINDOW
local SCHOOL_SHADOW = 32

-- How long a cast can explain a Hit: a direct hit until DIRECT_WINDOW, a shot
-- until SHOT_FLIGHT, a first tick until one interval after it lands, an area
-- spell's ticks until its duration ends.
local CAST_AGE = SHOT_FLIGHT + DECIDE_LATE + TICK_TOLERANCE
for _, spell in pairs(ns.TickSpells) do
	local lasts = spell.area and spell.duration or spell.interval + DIRECT_WINDOW
	CAST_AGE = math.max(CAST_AGE, lasts + DECIDE_LATE + TICK_TOLERANCE)
end

local function isMiss(lineKind)
	return ns.LineKind.Reports(lineKind) == "miss"
end

-- Drops saved Spell Facts of spells that do not learn their school, and
-- facts that do not have the shape below, such as ones edited by hand or
-- kept by group before release 1, so that a bad entry costs its icon and
-- nothing more.
local function clean(saved)
	for spellID, facts in pairs(saved) do
		local direct = ns.DirectSpells[spellID]
		if not (direct and direct.learns) or type(facts) ~= "table" or type(facts.school) ~= "number"
			or type(facts.hits) ~= "number" then
			saved[spellID] = nil
		end
	end
end

-- Whether a tick comes one interval after from, with extra time for a spell
-- that travels.
local function firstTickFits(hit, spell, from, extra)
	local since = hit.time - from
	return since >= spell.interval - TICK_TOLERANCE and since <= spell.interval + TICK_TOLERANCE + extra
end

-- Whether a channel stopped before this Hit: its last tick can come with the
-- stop.
local function stoppedBefore(cast, hit)
	return cast.stopped ~= nil and hit.time > cast.stopped + TICK_TOLERANCE
end

-- How many whole intervals, one or more, a tick comes after from, or nil when
-- it comes more than TICK_TOLERANCE off them.
local function intervalsAfter(hit, spell, from)
	local since = hit.time - from
	local steps = math.floor(since / spell.interval + 0.5)
	if steps >= 1 and math.abs(since - steps * spell.interval) <= TICK_TOLERANCE then
		return steps
	end
end

-- Whether a cast came before a Hit: by time, and in one frame by entry number,
-- as they share a time.
local function cameBefore(record, hit)
	if record.time ~= hit.time then
		return record.time < hit.time
	end
	return not record.entry or not hit.entry or record.entry < hit.entry
end

-- The key of a plate life's unit for its Tick Rhythms and the casts on it: the
-- unit key that all plate lives of the unit share, or, when its GUID is secret,
-- the plate life itself (see Adapter.New).
local function keyOfLife(life)
	return life and life.unitKey or life
end

-- The key of a Hit's unit for its Tick Rhythms: its plate life's key, as one
-- token shows other units over time, or the unit.
local function plateOf(hit)
	return keyOfLife(hit.life) or hit.unit
end

-- Whether two tick decisions can be the same spell's: the same time on the
-- same unit, and the same school or a secret one.
local function sameTick(a, b)
	if plateOf(a.hit) ~= plateOf(b.hit) or a.hit.time ~= b.hit.time then
		return false
	end
	local schoolA, schoolB = a.hit.school, b.hit.school
	return issecretvalue(schoolA) or issecretvalue(schoolB) or schoolA == schoolB
end

-- The most Possible Spells a Hit can have: a stack of more icons tells the
-- player little.
local MAX_POSSIBLE = 3

local function firstRankOf(spellID)
	local spell = ns.TickSpells[spellID] or ns.DirectSpells[spellID]
	return spell and spell.firstRank or spellID
end

-- The Possible Spells from these spell IDs: each spell once, in the order of
-- its first rank, so a given set always shows the same stack. nil for fewer
-- than two spells, or more than MAX_POSSIBLE.
local function possibleOf(spellIDs)
	local seen, list = {}, {}
	for _, spellID in ipairs(spellIDs) do
		local first = firstRankOf(spellID)
		if not seen[first] then
			seen[first] = true
			list[#list + 1] = spellID
		end
	end
	if #list < 2 or #list > MAX_POSSIBLE then
		return nil
	end
	table.sort(list, function(a, b)
		return firstRankOf(a) < firstRankOf(b)
	end)
	return list
end

-- Follows the player's Active Seal, Consecration, and landed swings, which are
-- all that tie a Seal Proc or a Judgement to the player, as a proc has no cast.
local function newSealTracker()
	-- The changes of the Active Seal, from the player's casts, oldest first:
	-- { time, entry, spellID }, with no spellID when none is active or its Seal
	-- Proc gets no icon. A Hit can be decided after a later cast (Flow gives a
	-- frame's casts to Identity before its Hits), so a Hit looks up the Seal of
	-- its own moment.
	local sealChanges = {}
	-- The player's recent casts of Consecration, or ones that could be, oldest
	-- first. A late Hit can need an older one than the latest.
	local consecrations = {}
	-- The times of the player's latest swing lines that landed, oldest first.
	local swingLines = {}

	-- Keeps the changes of the Active Seal, which a late Hit can still need, and
	-- the change that was in force before them.
	local function changeSeal(record, spellID)
		while sealChanges[2] and record.time - sealChanges[2].time > SEAL_CHANGE_AGE do
			table.remove(sealChanges, 1)
		end
		sealChanges[#sealChanges + 1] = { time = record.time, entry = record.entry, spellID = spellID }
	end

	local function noteConsecration(record)
		while consecrations[1] and record.time - consecrations[1].time > CONSECRATION_DURATION + SEAL_CHANGE_AGE do
			table.remove(consecrations, 1)
		end
		consecrations[#consecrations + 1] = record
	end

	local tracker = {}

	-- Takes a cast of the player. A cast whose spell ID is secret could be another
	-- Seal or Consecration, so it counts as both. Judgement does not end a Seal on
	-- Forever: 26 of 77 Judgements in the Traces had a proc of the same Seal after
	-- them with no recast.
	function tracker.Cast(record, secret)
		if secret then
			changeSeal(record, nil)
			noteConsecration(record)
			return
		end
		local spellID = record.spellID
		local proc = ns.Seals[spellID]
		if proc ~= nil then
			changeSeal(record, proc and spellID or nil)
		elseif ns.ConsecrationSpells[spellID] then
			noteConsecration(record)
		end
	end

	-- A pet's swing line has no Seal Proc, and a swing that missed lands none.
	function tracker.Line(record)
		if record.lineKind ~= "swing" or record.pet then
			return
		end
		while swingLines[1] and record.time - swingLines[1] > SEAL_PROC_WINDOW + DECIDE_LATE do
			table.remove(swingLines, 1)
		end
		swingLines[#swingLines + 1] = record.time
	end

	-- Whether Consecration could be ticking at this Hit's moment. Its ticks are
	-- direct Holy Hits with no cast, so they look like a Seal Proc or a Judgement.
	function tracker.Consecrated(hit)
		for _, cast in ipairs(consecrations) do
			if cameBefore(cast, hit) and hit.time - cast.time <= CONSECRATION_DURATION then
				return true
			end
		end
		return false
	end

	-- The Active Seal's spell if this direct Hit could be its Seal Proc, or nil: a
	-- proc has no cast and no Tick Rhythm, so only the Seal being on the player and
	-- a landed swing just before tie it to the Seal. A miss has no school, and
	-- another on-hit proc's miss looks the same (Touch of the Grave's 21 and
	-- Windfury's 4 to Seal of Command's 4 in the Traces), so it gets none.
	function tracker.ProcSpell(hit, school)
		if school ~= SCHOOL_HOLY then
			return nil
		end
		local seal
		for _, change in ipairs(sealChanges) do
			if not cameBefore(change, hit) then
				break
			end
			seal = change
		end
		if not seal or not seal.spellID or hit.time - seal.time > SEAL_DURATION then
			return nil
		end
		if tracker.Consecrated(hit) then
			return nil
		end
		for _, time in ipairs(swingLines) do
			local sinceSwing = hit.time - time
			if sinceSwing >= 0 and sinceSwing <= SEAL_PROC_WINDOW then
				return seal.spellID
			end
		end
	end

	-- Whether a Holy Hit with no cast could have made this direct Hit: a
	-- Consecration tick, or a Seal Proc, whose miss reports no school.
	function tracker.CastlessCould(hit, school)
		if school ~= nil and school ~= SCHOOL_HOLY then
			return false
		end
		return tracker.Consecrated(hit) or tracker.ProcSpell(hit, SCHOOL_HOLY) ~= nil
	end

	return tracker
end

-- Follows the player's landed melee hits, which are all that tie Instant
-- Poison's Hit to the player, as a proc has no cast. A Rogue has no Nature
-- spell, so a Nature Hit with no cast is a poison's, or a rare item proc's,
-- which then shows a poison's icon: the poison on a weapon is not checked
-- (ADR 0004).
local function newPoisonTracker()
	-- The times of the player's latest landed swing lines and strike Hits.
	local landed = {}

	local function land(time)
		while landed[1] and time - landed[1] > POISON_PROC_WINDOW + DECIDE_LATE do
			table.remove(landed, 1)
		end
		landed[#landed + 1] = time
	end

	local tracker = {}

	-- A pet's swing line lands no poison, and a swing that missed lands none.
	function tracker.Line(record)
		if record.lineKind == "swing" and not record.pet then
			land(record.time)
		end
	end

	-- A strike's Hit: a Physical direct Hit of the player's.
	function tracker.Strike(hit)
		land(hit.time)
	end

	-- Instant Poison if this Nature direct Hit comes just after a landed melee
	-- hit, or nil.
	function tracker.ProcSpell(hit)
		for _, time in ipairs(landed) do
			local since = hit.time - time
			if since >= 0 and since <= POISON_PROC_WINDOW then
				return INSTANT_POISON
			end
		end
	end

	return tracker
end

-- Follows the lines of the pet's landed swings and spell Hits, which are all
-- that tie a Brand Proc to the player, as a proc has no cast. A Brand Proc is
-- Shadow, so a Warlock's Shadow Hit just after such a line is one, unless a
-- cast fits it that could be the pet's: the pet's Lash of Pain also comes just
-- after its swing line at times (ADR 0004).
local function newBrandTracker()
	-- The latest lines of the pet's landed swings, and of its spell Hits, each
	-- with its time and, for a spell Hit, its plate.
	local swings, spells = {}, {}

	local function add(list, time, plate)
		while list[1] and time - list[1].time > BRAND_PROC_WINDOW + DECIDE_LATE do
			table.remove(list, 1)
		end
		list[#list + 1] = { time = time, plate = plate }
	end

	local tracker = {}

	-- A swing that missed sets off no Brand Proc (none in warlock-zf).
	function tracker.Line(record)
		if record.lineKind == "swing" and record.pet then
			add(swings, record.time)
		end
	end

	-- The line of a Hit that is surely the pet's spell's, and not a miss, and
	-- the Hit's plate.
	function tracker.PetSpell(line, plate)
		if line.time then
			add(spells, line.time, plate)
		end
	end

	-- Demonic Brand if this direct Hit's Log Line came just after a landed
	-- pet swing line, or after the line of the pet's spell Hit on its plate,
	-- or nil. A Brand Proc hits the mob whose Brand the pet's Hit used. A line
	-- in the spell Hit's own frame does not count: in warlock-zf, 39 Brand
	-- Procs came 0.008 to 0.040 s after a Lash of Pain line, and the one Shadow
	-- line of the player's in that window came in its frame (hit 8342).
	function tracker.ProcSpell(line, plate)
		if not line.time then
			return nil
		end
		for _, swing in ipairs(swings) do
			local since = line.time - swing.time
			if since >= 0 and since <= BRAND_PROC_WINDOW then
				return DEMONIC_BRAND
			end
		end
		for _, spell in ipairs(spells) do
			local since = line.time - spell.time
			if spell.plate == plate and since > 0 and since <= BRAND_PROC_WINDOW then
				return DEMONIC_BRAND
			end
		end
	end

	return tracker
end

-- How soon after the player's Hit on one unit an Extra Strike lands on another:
-- in the Combat Log Files of the group Traces, all 234 of a party Rogue's
-- Blade Flurry Hits (1230700, direct lines) came 0 to 0.05 s after their own
-- Hit on another unit. Sweeping Strikes' Hits on Forever are unverified.
local EXTRA_STRIKE_WINDOW = 0.1
-- The buffs whose Extra Strikes get an icon, by the spell ID of their cast:
-- how long after the cast, and how many Hits at most. Blade Flurry lasted
-- 15.0 s in all 11 of the logged casts (13877), and its Forever tooltip says
-- 15 s. Sweeping Strikes' 10 s is Classic's (unverified on Forever); its
-- tooltip says 5 attacks.
local EXTRA_STRIKE_BUFFS = {
	WARRIOR = { [12292] = { duration = 10, hits = 5 } }, -- Sweeping Strikes
	ROGUE = { [13877] = { duration = 15 } }, -- Blade Flurry
}
-- Deep Wounds' talent, whose icon and name its Hits show, and its bleed's
-- tick interval (Forever's 412609: every 3 s for 12 s). On Forever the bleed
-- is a dummy aura with a separate damage spell (412613), so its Hits can come
-- on tick or direct lines (unverified); its tooltip says a crit sets it off.
local DEEP_WOUNDS, DEEP_WOUNDS_INTERVAL = 12834, 3

-- Follows the player's landed Hits and buff casts, which are all that tie a
-- Physical Hit with no cast to the player's Extra Strike or Deep Wounds. An
-- Extra Strike is a Physical direct Hit with no cast that lands just after the
-- player's Hit on another unit, so it is never Deep Wounds' tick. It shows the
-- buff of a recent cast (Sweeping Strikes, Blade Flurry), or none. Deep Wounds
-- has no cast and its first tick no anchor, so the first such Hit on a unit
-- starts a rhythm and gets none, and one an interval after the unit's last
-- such Hit gets Deep Wounds: a Weapon Proc or a late strike almost never
-- lands on that rhythm.
local function newPhysicalProcTracker(class)
	local buffSpells = EXTRA_STRIKE_BUFFS[class] or {}
	-- The player's latest landed Hits that can set off an Extra Strike, each
	-- with its time, plate, and whether the plate is a plate life's key.
	local landed = {}
	-- The buff casts that can still give a held Hit their spell, oldest
	-- first: { spellID, time, ends, left }. A held Hit is decided up to
	-- DECIDE_LATE late, so a cast after it can come first.
	local buffs = {}
	-- By plate, the time of the latest Physical Hit with no cast that was not
	-- an Extra Strike, for Deep Wounds' rhythm.
	local lastBleed = setmetatable({}, { __mode = "k" })

	local tracker = {}

	-- A Hit that can set off an Extra Strike: a swing, or a strike that a
	-- cast explains. A Physical Hit with no cast cannot, as it can be an
	-- Extra Strike itself: two in a frame would each be the other's.
	function tracker.Landed(time, plate, onLife)
		while landed[1] and time - landed[1].time > EXTRA_STRIKE_WINDOW + DECIDE_LATE do
			table.remove(landed, 1)
		end
		landed[#landed + 1] = { time = time, plate = plate, onLife = onLife }
	end

	function tracker.Cast(spellID, time)
		local spell = buffSpells[spellID]
		if spell then
			while buffs[1] and time - buffs[1].ends > DECIDE_LATE do
				table.remove(buffs, 1)
			end
			buffs[#buffs + 1] = { spellID = spellID, time = time, ends = time + spell.duration, left = spell.hits }
		end
	end

	-- A unit from a plate life's key and one from a bare unit token can be the
	-- same unit, as a Nameplate can show between two Hits, so only two keys of
	-- one kind can tell two units apart.
	local function extraStrike(hit, plate, onLife)
		for _, other in ipairs(landed) do
			local since = hit.time - other.time
			if other.onLife == onLife and other.plate ~= plate and since >= 0 and since <= EXTRA_STRIKE_WINDOW then
				return true
			end
		end
		return false
	end

	-- The buff of the newest cast at or before the Hit's time, while it lasts
	-- and has Hits left: a recast replaces the buff.
	local function buffAt(time)
		for i = #buffs, 1, -1 do
			local buff = buffs[i]
			if buff.time <= time then
				return time <= buff.ends and buff.left ~= 0 and buff or nil
			end
		end
	end

	-- The spell of a Physical Hit with no cast on this plate, or nil. direct
	-- says it came on a direct line, as an Extra Strike's does; a tick line
	-- can only be Deep Wounds'. onLife says the plate is a plate life's key.
	function tracker.ProcSpell(hit, plate, direct, onLife)
		if direct and extraStrike(hit, plate, onLife) then
			local buff = buffAt(hit.time)
			if buff then
				buff.left = buff.left and buff.left - 1
				return buff.spellID
			end
			return nil
		end
		if class ~= "WARRIOR" or plate == nil then
			return nil
		end
		-- A held Hit decided after a newer one on its plate keeps the rhythm
		-- on the newer one, and gets none.
		local last = lastBleed[plate]
		if last and hit.time < last then
			return nil
		end
		lastBleed[plate] = hit.time
		if last and math.abs(hit.time - last - DEEP_WOUNDS_INTERVAL) <= TICK_TOLERANCE then
			return DEEP_WOUNDS
		end
	end

	return tracker
end

-- saved holds the Spell Facts by spell ID, and changes in place, so the
-- caller can keep it in SavedVariables: { [spellID] = { school, hits } }.
-- Only a ranged attack learns, so its facts are always for shots.
-- Cast(record) takes the adapter's cast records, and Line(record) its Log
-- Lines. Of(hit, line, together, sure) gives two values for Your Hit on an
-- enemy: its spell ID or nil, and, when that is nil, its Possible Spells (a
-- list of spell IDs) or nil. Hits come in about the
-- order of their time, a held Hit up to DECIDE_LATE late. together, for a
-- tick, is how many ticks that could be the same spell's came at that time on
-- that unit, this one included, and sure how many of them surely have its
-- school; nil means 1. SchoolOf(spellID) gives the school of a spell's hits, from a
-- table or from the Spell Facts that count, or nil. class is the player's
-- class token from UnitClass, which turns on the Poison Procs for a Rogue,
-- the Brand Procs for a Warlock, and the Physical Procs for a Warrior or a
-- Rogue.
function Identity.New(saved, class)
	clean(saved)
	-- Recent casts of the player and the pet: { time, spellID, unit, used,
	-- hitFrom, hitTo, hitUnits, missed, secret, lastTick, stopped, plate,
	-- hidden, unitKnown }. hitFrom and hitTo are the earliest and latest Hits
	-- that took the cast, and hitUnits counts them by plate, for a multi-hit
	-- spell. A cast whose spell ID is secret still competes, but never wins. lastTick is an area spell's last
	-- tick on any unit, stopped when its channel stopped, and plate the key of
	-- the player's target when it started (see plateOf), or nil. hidden is the
	-- keys of the units that were hidden at a cast with no plate, and
	-- unitKnown says that plate is a unit key, so its unit is no other one.
	local casts = {}
	-- The player's casts of spells that tick, of RIVAL_ONLY spells, and of
	-- secret spells, kept while their DoT can run, longer than casts: what
	-- rivalDue reads.
	local dotCasts = {}
	-- The time of the first record: a DoT cast before it, as before a /reload
	-- or a Trace's start, is in no list, so rivalDue cannot see it until it has
	-- run out (warlock-drain-life replayed from entry 3919).
	local startedAt
	-- For each unit and spell that ticks, the Tick Rhythms it can have there:
	-- one, or after a Tick Tie each one that can be true (see ofTick). A rhythm
	-- is { source, cast, last, anchor, ticks, ends }: source is the time of the
	-- cast or landing that started it, cast that cast, last its last tick (none
	-- yet after a landing), anchor where its grid puts that tick (see
	-- rhythmOf), ticks how many ticks the anchor is the mean of, and ends when
	-- its duration ends. NO_RHYTHM stands for
	-- none yet, which a cast can still start. Weak keys, so a unit's rhythms
	-- go with its key.
	local rhythms = setmetatable({}, { __mode = "k" })
	local NO_RHYTHM = {}
	local seals = newSealTracker()
	local poisons = class == "ROGUE" and newPoisonTracker() or nil
	local brands = class == "WARLOCK" and newBrandTracker() or nil
	local physicalProcs = (class == "WARRIOR" or class == "ROGUE") and newPhysicalProcTracker(class) or nil

	-- The school of the spell's hits, from a table or from the Spell Facts
	-- that count, or nil while it is not known.
	local function schoolOf(spellID)
		local spell = ns.TickSpells[spellID] or ns.DirectSpells[spellID]
		if spell and not spell.learns then
			return spell.school
		end
		local facts = saved[spellID]
		return facts and facts.hits >= AGREEING_HITS and facts.school or nil
	end

	-- A Hit teaches its spell's school; one that disagrees starts it again.
	-- A fact that counts starts again only at the second Hit in a row of one
	-- other school (facts.other holds the first): a new wand's Hits all
	-- disagree, but one Hit that does can be another player's that took the
	-- shot's line (warlock-rfk: 4 such Hits in 55 min, each of which cost the
	-- wand's school for 14 s or more).
	local function teach(spellID, school)
		local facts = saved[spellID]
		if facts and facts.school == school then
			facts.hits = facts.hits + 1
			facts.other = nil
		elseif facts and facts.hits >= AGREEING_HITS and facts.other ~= school then
			facts.other = school
		else
			saved[spellID] = { school = school, hits = 1 }
		end
	end

	-- Whether a cast can be the spell of a direct hit or a shot: a spell of
	-- that group in the table of spells that hit (a ranged attack only for a
	-- shot), or, for a direct hit only, a ticking spell whose cast hits. For a
	-- direct miss, any ticking spell, as its application can miss, but within
	-- MISS_WINDOW of its cast unless it travels; an area spell's cast puts
	-- nothing on a target to miss, so its flight does not count (its resisted
	-- ticks are areaOf's). A cast whose spell ID is secret could be any spell.
	local function canHit(cast, group, miss, age)
		if cast.secret then
			return true
		end
		local direct = ns.DirectSpells[cast.spellID]
		if direct then
			return (direct.shot == true) == (group == "shot")
		end
		local ticking = ns.TickSpells[cast.spellID]
		if not ticking or group == "shot" then
			return false
		end
		if miss then
			return (ticking.travels and not ticking.area) or age <= MISS_WINDOW
		end
		return ticking.hits
	end

	-- Whether the cast's spell learns its school, as a wand sets Shoot's.
	local function learns(cast)
		local direct = not cast.secret and ns.DirectSpells[cast.spellID]
		return direct and direct.learns
	end

	-- Whether a cast can still explain this Hit: one that no Hit used up, or
	-- a multi-hit spell's, while its Hits with this one span no more than its
	-- spread, and it has Hits left on this unit. The span counts from the
	-- earliest Hit, as a held Hit is decided late.
	local function isOpen(cast, hit)
		if not cast.used then
			return true
		end
		local direct = not cast.secret and ns.DirectSpells[cast.spellID]
		if not (direct and direct.spread) or (cast.hitUnits[plateOf(hit)] or 0) >= (direct.perUnit or 1) then
			return false
		end
		return math.max(cast.hitTo, hit.time) - math.min(cast.hitFrom, hit.time) <= direct.spread
	end

	-- The one cast that fits a direct hit or a shot by time and whose school
	-- is not known to differ from the Hit's, how many casts fit, and those
	-- casts. A cast of
	-- a spell that learns its school and that fits alone by time is taken even
	-- with another school, as a new wand changes Shoot's. Shots can overlap, as a
	-- flight can outlast the time between casts, and a shot's Hit can go unpaired.
	-- So when every fitting cast is one ranged attack, the Hit takes the oldest:
	-- the spell is sure, and no cast stays to block the next shot.
	local function castOf(hit, group, school, miss)
		local timely, lastTimely, fitting, lastFitting = 0, nil, 0, nil
		local oldestFitting, oneSpell, fittingCasts = nil, true, {}
		local groupWindow = group == "shot" and SHOT_FLIGHT or DIRECT_WINDOW
		for _, cast in ipairs(casts) do
			local age = hit.time - cast.time
			local direct = not cast.secret and ns.DirectSpells[cast.spellID]
			local window = direct and direct.window or groupWindow
			if isOpen(cast, hit) and age >= 0 and age <= window and canHit(cast, group, miss, age) then
				timely, lastTimely = timely + 1, cast
				local known = not cast.secret and schoolOf(cast.spellID)
				if not (school and known and known ~= school) then
					fitting, lastFitting = fitting + 1, cast
					fittingCasts[#fittingCasts + 1] = cast
					if not oldestFitting then
						oldestFitting = cast
					elseif cast.secret or oldestFitting.secret or cast.spellID ~= oldestFitting.spellID then
						oneSpell = false
					end
				end
			end
		end
		if timely == 1 and learns(lastTimely) then
			return lastTimely, fitting, fittingCasts
		end
		if group == "shot" and fitting > 1 and oneSpell then
			return oldestFitting, fitting, fittingCasts
		end
		return fitting == 1 and lastFitting or nil, fitting, fittingCasts
	end

	-- The Possible Spells of a direct hit or a shot that these casts fit, or
	-- nil when one of them could be another spell: a cast whose spell ID is
	-- secret, or one of a spell whose school is not known (castOf already
	-- leaves out a cast whose school differs from the Hit's). The pet's casts
	-- count as the player's.
	local function possibleOfCasts(fittingCasts)
		if #fittingCasts < 2 then
			return nil
		end
		local spellIDs = {}
		for _, cast in ipairs(fittingCasts) do
			local known = not cast.secret and schoolOf(cast.spellID)
			if not known then
				return nil
			end
			spellIDs[#spellIDs + 1] = cast.spellID
		end
		return possibleOf(spellIDs)
	end

	-- The casts of the area spell whose tick this direct hit is, nil when none
	-- fits, or false when two area spells fit: one whose tick is due a whole
	-- number of
	-- intervals after the cast's last tick on any unit (zero for the same tick
	-- on another unit), or after the cast before its first, until its
	-- duration ends or its channel stops. Keeping to the last tick is meant
	-- for ticks that drift; the Rain of Fire Trace has two ticks on one unit,
	-- so drift and ticks on several units are untested.
	local function areaOf(hit, school)
		local fitting
		for _, cast in ipairs(casts) do
			local spell = cast.unit == "player" and not cast.secret and ns.TickSpells[cast.spellID]
			if spell and spell.area and (not school or spell.school == school)
				and hit.time - cast.time <= spell.duration + TICK_TOLERANCE
				and not (cast.stopped and hit.time > cast.stopped + TICK_TOLERANCE) then
				local from = cast.lastTick or cast.time
				local steps = math.floor((hit.time - from) / spell.interval + 0.5)
				local fits = (steps >= 1 or (steps == 0 and cast.lastTick))
					and math.abs(hit.time - from - steps * spell.interval) <= TICK_TOLERANCE
				-- A channel's last tick can come in its stop's frame, off the
				-- grid (a Stop Tick), as for the channels that tick.
				if not fits and cast.stopped == hit.time and cast.lastTick and hit.time > cast.lastTick
					and hit.time - cast.lastTick < spell.interval then
					fits = true
				end
				-- One that travels lands up to DIRECT_WINDOW later, so its first
				-- tick can too; later ticks, and a tick still in flight when the
				-- channel stops, get no such allowance.
				if not fits and not cast.lastTick and spell.travels then
					fits = firstTickFits(hit, spell, cast.time, DIRECT_WINDOW)
				end
				if fits then
					if fitting and fitting[1].spellID ~= cast.spellID then
						return false
					end
					fitting = fitting or {}
					fitting[#fitting + 1] = cast
				end
			end
		end
		return fitting
	end

	-- The unused casts that fit this Hit, and whether one of them is the
	-- pet's.
	local function castsFitting(hit, group, school)
		local _, _, fittingCasts = castOf(hit, group, school, false)
		for _, cast in ipairs(fittingCasts) do
			if cast.unit == "pet" then
				return fittingCasts, true
			end
		end
		return fittingCasts, false
	end

	local function ofDirect(hit, group, school, miss, plate)
		local areaCasts
		if group == "direct" then
			areaCasts = areaOf(hit, school)
		end
		if areaCasts == false then
			return nil
		elseif areaCasts then
			for _, cast in ipairs(areaCasts) do
				cast.lastTick = hit.time
			end
			-- Another cast that fits, such as one that hits or a DoT whose
			-- application can miss, could have made the Hit too, so it gets
			-- none, and that cast stays for its own Hit.
			local _, fitting = castOf(hit, group, school, miss)
			return fitting == 0 and areaCasts[1].spellID or nil
		end
		local found, fitting, fittingCasts = castOf(hit, group, school, miss)
		-- A cast that fits could have made the Hit too, so it goes on as any
		-- direct Hit, and uses that cast up.
		local poison = poisons and group == "direct" and school == SCHOOL_NATURE and fitting == 0
			and poisons.ProcSpell(hit)
		if poison then
			return poison
		end
		local seal = group == "direct" and seals.ProcSpell(hit, school)
		if seal then
			-- A cast that fits could have made the Hit too, so it gets none, and
			-- that cast stays for its own Hit.
			return fitting == 0 and seal or nil
		end
		if not found then
			-- A Consecration tick or a Seal Proc has no cast, so when one could
			-- have made the Hit, the casts that fit are not all its possible
			-- spells. A Seal or a Consecration from before Identity started, as
			-- before a /reload, is in no list, so a Holy Hit gets none until a
			-- Seal from then has run out.
			if seals.CastlessCould(hit, school)
				or (school == nil or school == SCHOOL_HOLY) and hit.time - startedAt <= SEAL_DURATION then
				return nil
			end
			return nil, possibleOfCasts(fittingCasts)
		end
		-- Judgement fits only by being near its cast, and so does a Consecration
		-- tick, so during Consecration the Hit gets none and the cast stays. So
		-- does a multi-hit spell's cast that a Hit already took, as its later
		-- Hits fit by nearness alone too.
		local direct = not found.secret and ns.DirectSpells[found.spellID]
		if direct and (direct.window or found.used) and seals.Consecrated(hit) then
			return nil
		end
		found.used = true
		found.hitFrom = math.min(found.hitFrom or hit.time, hit.time)
		found.hitTo = math.max(found.hitTo or hit.time, hit.time)
		found.hitUnits = found.hitUnits or {}
		found.hitUnits[plate] = (found.hitUnits[plate] or 0) + 1
		-- A cast whose spell ID is secret competes but never wins. The pet's
		-- casts win as the player's do, since Your Hit is the pet's too.
		if found.secret then
			return nil
		end
		local spellID = found.spellID
		if school and learns(found) then
			teach(spellID, school)
		end
		local ticking = ns.TickSpells[spellID]
		if ticking and miss then
			-- A missed application gives no ticks.
			found.missed = true
		elseif ticking and ticking.travels and ticking.hits then
			-- The new landing replaces the spell's DoT on this unit, so its old
			-- Tick Rhythm ends; another tick on it, such as an Ignite's, must
			-- not take the spell.
			rhythms[plate] = rhythms[plate] or {}
			rhythms[plate][spellID] = { { source = hit.time } }
		end
		local known = schoolOf(spellID)
		return known and (not school or known == school) and spellID or nil, nil, found.unit == "pet"
	end

	-- Whether a cast of the spell on this unit after since, and before this
	-- Hit, replaced the ticks from since: a refresh ends the old rhythm, and
	-- the older cast's grid, even before its own first tick fits. A cast with
	-- no target could be on any unit, and one that travels replaces the rhythm
	-- when it lands, so neither replaces anything here. But a cast with no
	-- target, made while this unit was hidden, counts as a refresh on it (see
	-- identity.Cast).
	local function refreshed(spellID, spell, plate, since, hit)
		if spell.travels then
			return false
		end
		for _, cast in ipairs(casts) do
			if cast.spellID == spellID and cast.unit == "player" and not cast.missed
				and (cast.plate == plate or cast.hidden and cast.hidden[plate])
				and cast.time > since and cast.time < hit.time then
				return true
			end
		end
		return false
	end

	-- The cast or landing whose Tick Rhythm on this unit this tick starts, and
	-- how many intervals after it the tick comes; nil when none fits. No spell
	-- drifts from its rhythm in the Traces, so a tick whose first tick came late
	-- still fits whole intervals after its source:
	-- - a spell that travels and hits: its landing on this unit;
	-- - another spell: a cast on this unit, the player's target when it started;
	-- - a cast with no target, as in Traces from before targets: its first tick
	--   only, on any unit, as a cast on one mob can fit the ticks of the same
	--   spell on another (warlock-rfk, warlock-bfd-group).
	-- A spell that travels without a hit lands up to DIRECT_WINDOW late, so it
	-- gets that much more time for its first tick and no later one. Each source
	-- starts one rhythm on each unit, and a cast no older than the rhythm's own
	-- source, whose ticks a refresh replaced, starts none. Returns the source's
	-- time, the intervals, and the cast.
	local function rhythmSource(hit, spellID, spell, rhythm, plate)
		if spell.travels and spell.hits then
			local landed = rhythm and not rhythm.last and rhythm.source
			local steps = landed and intervalsAfter(hit, spell, landed)
			if steps and hit.time - landed <= spell.duration + TICK_TOLERANCE then
				return landed, steps
			end
			return nil
		end
		local extra = spell.travels and DIRECT_WINDOW or 0
		local found, foundSteps
		for _, cast in ipairs(casts) do
			if cast.spellID == spellID and cast.unit == "player" and not cast.missed
				and not (rhythm and cast.time <= rhythm.source) and (cast.plate == nil or cast.plate == plate)
				and not stoppedBefore(cast, hit) and not refreshed(spellID, spell, plate, cast.time, hit) then
				if firstTickFits(hit, spell, cast.time, extra) then
					found, foundSteps = cast, 1
				elseif cast.plate and not spell.travels and hit.time - cast.time <= spell.duration + TICK_TOLERANCE then
					local steps = intervalsAfter(hit, spell, cast.time)
					if steps then
						found, foundSteps = cast, steps
					end
				end
			end
		end
		return found and found.time, foundSteps, found
	end

	-- The Tick Rhythm that this tick gives the spell, or nil if it does not
	-- fit. A tick that fits a cast or landing starts a new rhythm and duration,
	-- as a refresh does, even on the old rhythm. Otherwise a rhythm fits whole
	-- intervals after its anchor until its duration ends, so one tick that
	-- came late, or a resisted one, costs only its own icon; one that ran out
	-- fits no more, nor does a channel's after it stopped.
	-- The anchor is the mean of the rhythm's ticks, each moved by whole
	-- intervals onto the last one. A tick comes a little early or late around
	-- a grid that does not drift, so a late tick and an early one after it can
	-- be more than TICK_TOLERANCE apart though each is near the grid. Of 707
	-- labelled ticks after a rhythm's first in the checked Traces, 28 came
	-- more than 0.1 s off the last tick, and 18 off the mean.
	local function rhythmOf(hit, spellID, spell, rhythm, plate)
		local source, steps, cast = rhythmSource(hit, spellID, spell, rhythm, plate)
		if source then
			return { source = source, cast = cast, last = hit.time, anchor = hit.time, ticks = 1,
				ends = hit.time - steps * spell.interval + spell.duration }
		end
		local intervals = rhythm and rhythm.anchor and intervalsAfter(hit, spell, rhythm.anchor)
		if intervals and hit.time <= rhythm.ends + TICK_TOLERANCE and not (rhythm.cast and stoppedBefore(rhythm.cast, hit))
			and not refreshed(spellID, spell, plate, rhythm.source, hit) then
			local onGrid = rhythm.anchor + intervals * spell.interval
			return { source = rhythm.source, cast = rhythm.cast, last = hit.time, ends = rhythm.ends,
				anchor = onGrid + (hit.time - onGrid) / (rhythm.ticks + 1), ticks = rhythm.ticks + 1 }
		end
	end

	-- Whether a tick of another DoT of the school on this unit is due within
	-- STOP_RIVAL of this one, on a running rhythm's anchor, last tick, or
	-- source grid,
	-- or from a cast that no rhythm holds, while its DoT can run: its tick can
	-- kill the mob, which stops the channel in the same frame, and come a
	-- little off time.
	local function rivalDue(hit, school, plateRhythms, channelID)
		local function rival(spellID)
			local spell = ns.TickSpells[spellID] or RIVAL_ONLY[spellID]
			return spellID ~= channelID and spell and not spell.area and (not school or spell.school == school) and spell
		end
		-- GetTime() is large, so a difference exactly STOP_RIVAL away can come
		-- out a hair over it: the window gets a little slack.
		local window = STOP_RIVAL + 1e-6
		local function due(spell, from, extra)
			local since = hit.time - from
			if since > spell.duration + window then
				return false
			end
			if since >= spell.interval - window and since <= spell.interval + window + extra then
				return true
			end
			local steps = math.floor(since / spell.interval + 0.5)
			return steps >= 1 and math.abs(since - steps * spell.interval) <= window
		end
		for spellID, candidates in pairs(plateRhythms) do
			local spell = rival(spellID)
			for _, rhythm in ipairs(spell and candidates or {}) do
				if rhythm ~= NO_RHYTHM and not (rhythm.cast and stoppedBefore(rhythm.cast, hit))
					and (rhythm.last and hit.time <= rhythm.ends + window and (due(spell, rhythm.anchor, 0) or due(spell, rhythm.last, 0))
						or due(spell, rhythm.source, 0)) then
					return true
				end
			end
		end
		for _, cast in ipairs(dotCasts) do
			if cast.secret and hit.time - cast.time <= LONGEST_DOT + window then
				return true
			end
			-- On any unit: a mob whose GUID is secret gets a new key when its
			-- Nameplate shows again, so a cast's plate need not be its tick's.
			local spell = not cast.secret and not cast.missed and rival(cast.spellID)
			if spell and not stoppedBefore(cast, hit)
				and due(spell, cast.time, spell.travels and DIRECT_WINDOW or 0) then
				return true
			end
		end
		return false
	end

	-- The channel whose Stop Tick this tick is, and its rhythm: a tick in the
	-- frame of its channel's stop, which can come before the rhythm's next tick
	-- when the channel ends early (warlock-drain-life). It must come less than
	-- one interval after the channel's last tick on this unit: a Hit in the
	-- stop's frame long after it can be one whose kill stopped the channel
	-- (warlock-rfk). Any of the channel's rhythms counts, as its last tick can
	-- have been a Tick Tie. The stop is known in time, as Flow takes a frame's
	-- casts before Pairing decides that frame's Hits.
	local function stopTickOf(hit, school, plateRhythms)
		if not startedAt or hit.time - startedAt <= LONGEST_DOT + STOP_RIVAL then
			return nil
		end
		for spellID, candidates in pairs(plateRhythms) do
			local spell = ns.TickSpells[spellID]
			for _, rhythm in ipairs(candidates) do
				local cast = rhythm.cast
				if spell and not spell.area and (not school or spell.school == school) and cast and cast.stopped == hit.time
					and rhythm.last and hit.time > rhythm.last and hit.time - rhythm.last < spell.interval
					and not rivalDue(hit, school, plateRhythms, spellID) then
					return spellID, rhythm
				end
			end
		end
	end

	-- Whether a player's DoT cast whose spell ID is secret could still be
	-- running at this Hit.
	local function secretDotRuns(hit)
		for _, cast in ipairs(dotCasts) do
			if cast.secret and hit.time - cast.time <= LONGEST_DOT + TICK_TOLERANCE then
				return true
			end
		end
		return false
	end

	-- Whether a DoT of this school that none of the spells in fits can still
	-- run from a cast on a plate life that hid, whose unit's GUID is secret,
	-- or on no known one: such a unit can be back on another plate life,
	-- which has none of the old one's Tick Rhythms, so its ticks there fit no
	-- spell. A unit whose GUID is public keeps its key when it shows
	-- again, so a cast on such a unit is never on another unit's tick.
	local function hiddenDotRuns(hit, school, fits, plate)
		for _, cast in ipairs(dotCasts) do
			local spell = cast.spellID and ns.TickSpells[cast.spellID]
			if spell and not spell.area and spell.school == school and not cast.missed and not fits[cast.spellID]
				and (not cast.plate or cast.plate ~= plate and cast.plate.hid and not cast.unitKnown)
				and hit.time - cast.time <= spell.duration + TICK_TOLERANCE then
				return true
			end
		end
		return false
	end

	-- Whether a RIVAL_ONLY spell's tick, from a cast on any unit as in
	-- rivalDue, is due at this Hit.
	local function rivalOnlyDue(hit, school)
		for _, cast in ipairs(dotCasts) do
			local spell = cast.spellID and RIVAL_ONLY[cast.spellID]
			if spell and not cast.missed and (not school or spell.school == school)
				and math.abs(hit.time - cast.time - spell.interval) <= TICK_TOLERANCE then
				return true
			end
		end
		return false
	end

	-- Rhythms with one source that met the same tick are one rhythm, though
	-- their anchors can differ by a little: keeping both lets the spell fit
	-- more ticks than its own, as a Tick Tie does (warlock-drain-life 4664).
	-- The one rhythm keeps the anchor that is the mean of more ticks (see
	-- addRhythm).
	local function sameRhythm(a, b)
		return a.source == b.source and (a.cast and a.cast.time) == (b.cast and b.cast.time) and a.last == b.last
			and a.ends == b.ends
	end

	local function addRhythm(list, rhythm)
		for i, kept in ipairs(list) do
			if sameRhythm(kept, rhythm) then
				if rhythm.ticks and rhythm.ticks > (kept.ticks or 0) then
					list[i] = rhythm
				end
				return
			end
		end
		list[#list + 1] = rhythm
	end

	-- Whether a rhythm can still fit a later tick: it has not run out, its
	-- channel has not stopped, and no recast has replaced it.
	local function stillRuns(spellID, spell, rhythm, plate, hit)
		return rhythm == NO_RHYTHM or not rhythm.last
			or hit.time <= rhythm.ends + TICK_TOLERANCE and not (rhythm.cast and stoppedBefore(rhythm.cast, hit))
			and not refreshed(spellID, spell, plate, rhythm.source, hit)
	end

	local function ofTick(hit, school, together, sure, plate)
		local plateRhythms = rhythms[plate] or {}
		rhythms[plate] = plateRhythms
		local stopSpell, stopRhythm = stopTickOf(hit, school, plateRhythms)
		-- For each spell that fits, the rhythms that this tick continues.
		local tried, moved, fits, found = {}, {}, 0, nil
		local function try(spellID)
			local spell = ns.TickSpells[spellID]
			-- An area spell's ticks come as direct hits.
			if tried[spellID] or not spell or spell.area or (school and spell.school ~= school) then
				return
			end
			tried[spellID] = true
			local list = {}
			for _, old in ipairs(plateRhythms[spellID] or { NO_RHYTHM }) do
				local rhythm = rhythmOf(hit, spellID, spell, old ~= NO_RHYTHM and old or nil, plate)
				if rhythm then
					addRhythm(list, rhythm)
				end
			end
			if #list > 0 then
				moved[spellID] = list
				fits, found = fits + 1, spellID
			end
		end
		for spellID in pairs(plateRhythms) do
			try(spellID)
		end
		for _, cast in ipairs(casts) do
			if cast.unit == "player" and not cast.secret then
				try(cast.spellID)
			end
		end
		-- A Stop Tick that its rhythm does not fit competes like a rhythm. It is
		-- off the rhythm's grid, so it starts a new anchor.
		if stopSpell and not moved[stopSpell] then
			moved[stopSpell] = { { source = stopRhythm.source, cast = stopRhythm.cast, last = hit.time,
				anchor = hit.time, ticks = 1, ends = stopRhythm.ends } }
			fits, found = fits + 1, stopSpell
		end
		-- A due tick of a spell that the tick table leaves out, such as Curse of
		-- Doom's, competes too, but has no rhythm to move or keep.
		local rivalOnly = rivalOnlyDue(hit, school)
		if rivalOnly then
			fits = fits + 1
		end
		-- A tick that fits one spell alone is that spell's, so it keeps only the
		-- rhythms that the tick continues. So does each spell that fits n ticks
		-- of one school at once, when no more than n spells fit: each ticked. A
		-- tick whose school is secret counts in n only for the icon, as it can be
		-- of another school.
		-- A Tick Tie is one spell's tick, but nothing tells which: a rhythm
		-- moved onto it would miss the other spell's own tick, which can come
		-- just after it, and Drain Life's 1 s interval divides the other DoTs',
		-- so a moved rhythm kept meeting its ticks (warlock-drain-life). So each
		-- tied spell keeps its old rhythms and adds the moved ones, until a tick
		-- fits it alone. n ticks that more than n spells fit are a tie too: a
		-- spell that sat out the frame would lose its true rhythm there.
		-- A rhythm that ran out, stopped, or was replaced by a recast becomes
		-- NO_RHYTHM, so that the cast can still give the spell's first tick
		-- (warlock-rfk 2154, 19406). Each spell keeps its true rhythm only while
		-- every tick comes within TICK_TOLERANCE of its anchor's grid.
		-- A spell that still holds rhythms from a tie fits more ticks than its
		-- own. A DoT cast whose spell ID is secret has no rhythm, so such a
		-- spell could be the only one that fits that DoT's tick: while one can
		-- run, that tick gets no icon and, like a tie, narrows no rhythm.
		local unsettled = fits == 1 and #(plateRhythms[found] or {}) > 1
		local tie = fits > (sure or 1) or (unsettled and secretDotRuns(hit))
		for spellID, list in pairs(moved) do
			if tie then
				local spell = ns.TickSpells[spellID]
				local kept = {}
				for _, old in ipairs(plateRhythms[spellID] or { NO_RHYTHM }) do
					addRhythm(kept, stillRuns(spellID, spell, old, plate, hit) and old or NO_RHYTHM)
				end
				for _, rhythm in ipairs(list) do
					addRhythm(kept, rhythm)
				end
				plateRhythms[spellID] = kept
			else
				plateRhythms[spellID] = list
			end
		end
		-- A Rogue's Nature tick that no rhythm fits is Deadly Poison's, which
		-- has no cast. Its stacks tick as one, so crowding does not matter.
		if fits == 0 and poisons and school == SCHOOL_NATURE then
			return DEADLY_POISON
		end
		-- Two ticks of one school at one time on one unit cannot be told
		-- apart, such as Fireball's and an Ignite that its crit started.
		if fits == 1 and not together and not (unsettled and secretDotRuns(hit)) then
			return found
		end
		-- A tick that no spell surely made alone has the spells that fit it as
		-- its Possible Spells, but only when it can be no other spell's: its
		-- school is public, no tick of a spell that the tick table leaves out
		-- is due, at least as many spells fit as ticks came, and no DoT can run
		-- unseen, from a cast whose spell ID is secret, from before Identity
		-- started (as before a /reload), or on a unit that hid.
		if not school or rivalOnly or fits < (together or 1) or secretDotRuns(hit)
			or hit.time - startedAt <= LONGEST_DOT + TICK_TOLERANCE or hiddenDotRuns(hit, school, moved, plate) then
			return nil
		end
		local spellIDs = {}
		for spellID in pairs(moved) do
			spellIDs[#spellIDs + 1] = spellID
		end
		return nil, possibleOf(spellIDs)
	end

	local identity = {}

	function identity.Line(record)
		seals.Line(record)
		if poisons then
			poisons.Line(record)
		end
		if brands then
			brands.Line(record)
		end
	end
	identity.SchoolOf = schoolOf

	function identity.Cast(record)
		startedAt = startedAt or record.time
		if record.stage == "CHANNEL_STOP" and record.unit == "player" and not issecretvalue(record.spellID) then
			-- A channel's ticks end with it. The stop marks the oldest open cast
			-- of the spell, so a recast whose cast comes before the old channel's
			-- stop keeps its own ticks. A long channel's cast can leave casts
			-- before its stop, so the casts that Tick Rhythms hold count too.
			-- Only a cast whose channel can still run counts: a cast whose stop
			-- never came can stay in a Tick Rhythm on another mob (warlock-drain-life).
			local spell = ns.TickSpells[record.spellID]
			local runs = spell and spell.duration + TICK_TOLERANCE or math.huge
			local oldest
			local function consider(cast)
				if cast and cast.unit == "player" and cast.spellID == record.spellID and not cast.stopped
					and record.time - cast.time <= runs and not (oldest and oldest.time <= cast.time) then
					oldest = cast
				end
			end
			for _, cast in ipairs(casts) do
				consider(cast)
			end
			-- Of a spell's rhythms on a unit, only the newest cast counts: an
			-- older one that a Tick Tie kept is the cast of a channel that has
			-- ended, whose stop can have come with a secret spell ID.
			for _, plateRhythms in pairs(rhythms) do
				local newest
				for _, rhythm in ipairs(plateRhythms[record.spellID] or {}) do
					if rhythm.cast and not (newest and newest.time >= rhythm.cast.time) then
						newest = rhythm.cast
					end
				end
				consider(newest)
			end
			if oldest then
				oldest.stopped = record.time
			end
			return
		end
		if record.stage ~= "SUCCEEDED" or not ns.Adapter.OWN_UNITS[record.unit] then
			return
		end
		while casts[1] and record.time - casts[1].time > CAST_AGE do
			table.remove(casts, 1)
		end
		local secret = issecretvalue(record.spellID)
		if record.unit == "player" then
			seals.Cast(record, secret)
			if physicalProcs and not secret then
				physicalProcs.Cast(record.spellID, record.time)
			end
		end
		local cast = { time = record.time, spellID = not secret and record.spellID or nil, unit = record.unit,
			secret = secret or nil, plate = keyOfLife(record.startTargetLife),
			unitKnown = record.startTargetLife and record.startTargetLife.unitKey ~= nil or nil }
		casts[#casts + 1] = cast
		-- A cast with no known target can be a refresh on a unit that was hidden
		-- then. A refresh moves the spell's ticks off the old rhythm, which
		-- could then fit another spell's tick when the unit shows again. So
		-- such a unit loses the spell's rhythms, and the cast counts as a
		-- refresh there (see refreshed), which also ends an older cast's grid.
		if record.unit == "player" and cast.spellID and not cast.plate and record.hiddenUnits then
			cast.hidden = {}
			for _, key in ipairs(record.hiddenUnits) do
				cast.hidden[key] = true
				local unitRhythms = rhythms[key]
				if unitRhythms then
					unitRhythms[cast.spellID] = nil
				end
			end
		end
		local kept = {}
		for _, old in ipairs(dotCasts) do
			local spell = old.spellID and (ns.TickSpells[old.spellID] or RIVAL_ONLY[old.spellID])
			if record.time - old.time <= (spell and spell.duration or LONGEST_DOT) + DIRECT_WINDOW + STOP_RIVAL then
				kept[#kept + 1] = old
			end
		end
		dotCasts = kept
		local spell = cast.spellID and (ns.TickSpells[cast.spellID] or RIVAL_ONLY[cast.spellID])
		if record.unit == "player" and (secret or spell and not spell.area) then
			dotCasts[#dotCasts + 1] = cast
		end
	end

	-- Whether a Physical tick with no Tick Rhythm can still be a DoT's that
	-- the player cast, such as a Rend tick off its rhythm, so it is no Deep
	-- Wounds tick: a Physical DoT's cast, or one whose spell ID is secret,
	-- that can still run, or any from before Identity started, as before a
	-- /reload.
	local function physicalDotRuns(hit)
		if hit.time - startedAt <= LONGEST_DOT + TICK_TOLERANCE then
			return true
		end
		for _, cast in ipairs(dotCasts) do
			local spell = cast.spellID and ns.TickSpells[cast.spellID]
			local runs = spell and spell.duration or LONGEST_DOT
			if (cast.secret or spell and spell.school == SCHOOL_PHYSICAL)
				and hit.time - cast.time <= runs + DIRECT_WINDOW + TICK_TOLERANCE then
				return true
			end
		end
		return false
	end

	-- ofDirect, which also tells the Brand tracker of a Hit that is surely the
	-- pet's spell's, as it can set off a Brand Proc; a miss sets off none.
	local function petNoted(hit, line, group, school, miss, plate)
		local spellID, possible, byPet = ofDirect(hit, group, school, miss, plate)
		if byPet and spellID and not miss and brands then
			brands.PetSpell(line, plate)
		end
		return spellID, possible
	end

	-- A shot is a ranged attack's Hit, and only a ranged attack can make one, so
	-- a known spell's cast is in one group only. A miss reports school 1 whatever
	-- the spell, so it teaches nothing and uses the school of its spell's hits.
	function identity.Of(hit, line, together, sure)
		startedAt = startedAt or hit.time
		local plate = plateOf(hit)
		local miss = isMiss(line.lineKind)
		local school = not miss and not issecretvalue(hit.school) and hit.school or nil
		local group = ns.LineKind.Group(line.lineKind)
		if group == "tick" then
			local spellID, possible = ofTick(hit, school, together, sure, plate)
			if spellID or possible or not physicalProcs or school ~= SCHOOL_PHYSICAL or physicalDotRuns(hit) then
				return spellID, possible
			end
			return physicalProcs.ProcSpell(hit, plate, false, hit.life ~= nil)
		end
		if poisons and group == "direct" and school == SCHOOL_PHYSICAL then
			poisons.Strike(hit)
		end
		if not group then
			return nil
		end
		if physicalProcs and group == "direct" and not miss and school == SCHOOL_PHYSICAL then
			local fittingCasts = castsFitting(hit, group, school)
			if #fittingCasts == 0 then
				return physicalProcs.ProcSpell(hit, plate, true, hit.life ~= nil)
			end
		end
		if brands and group == "direct" and not miss and (school == nil or school == SCHOOL_SHADOW) then
			local brand = brands.ProcSpell(line, plate)
			local fittingCasts, petFits
			if brand then
				fittingCasts, petFits = castsFitting(hit, group, school)
			end
			-- A line names no unit, so the pet's swing can have been on
			-- another mob, and a cast of the player's that fits could have
			-- made the Hit. No Warlock Trace has a Shadow Hit of the player's
			-- in the window, so for a Shadow Hit the Brand Proc wins (ADR
			-- 0004). Fire Hits do come in it, so a Hit of secret school gets
			-- Possible Spells. The casts stay for their own Hits.
			if brand and (#fittingCasts == 0 or school == SCHOOL_SHADOW and not petFits) then
				return brand
			elseif brand and not petFits then
				local spellIDs = { brand }
				for _, cast in ipairs(fittingCasts) do
					if cast.secret or not schoolOf(cast.spellID) then
						return nil
					end
					spellIDs[#spellIDs + 1] = cast.spellID
				end
				return nil, possibleOf(spellIDs)
			elseif brand then
				-- The pet's cast or the Brand Proc made it, so a stack of the
				-- casts alone could miss its spell.
				local spellID, possible = petNoted(hit, line, group, school, miss, plate)
				if possible then
					possible[#possible + 1] = brand
					possible = possibleOf(possible)
				end
				return spellID, possible
			end
		end
		return petNoted(hit, line, group, school, miss, plate)
	end

	-- Of for each { hit, line } of decisions that came together, as a list of
	-- spell IDs and a list of Possible Spells by decision, with the
	-- number of ticks that came with each tick, and of those whose school is
	-- surely its own. A resisted tick reports school
	-- 1 whatever its spell, so only real ticks count. A Hit paired as melee has no spell. A
	-- Weapon Proc's line is a direct one, but its Hit must not use up a cast that
	-- it did not come from.
	function identity.OfAll(decisions)
		local spellIDs, possibles = {}, {}
		-- The player's landed swings and strikes that a cast explains can set
		-- off an Extra Strike, one later in this list too, as its Extra Strike
		-- can come in the same frame.
		if physicalProcs then
			for _, decision in ipairs(decisions) do
				local line, hit = decision.line, decision.hit
				if not isMiss(line.lineKind) and not line.pet and (decision.how == "melee"
					or ns.LineKind.Group(line.lineKind) == "direct" and #(castsFitting(hit, "direct",
						not issecretvalue(hit.school) and hit.school or nil)) > 0) then
					physicalProcs.Landed(hit.time, plateOf(hit), hit.life ~= nil)
				end
			end
		end
		for i, decision in ipairs(decisions) do
			local together, sure
			if decision.line.lineKind == "tick" then
				for j, other in ipairs(decisions) do
					if j ~= i and other.line.lineKind == "tick" and sameTick(decision, other) then
						together = (together or 1) + 1
						if not issecretvalue(decision.hit.school) and not issecretvalue(other.hit.school) then
							sure = (sure or 1) + 1
						end
					end
				end
			end
			if decision.how ~= "melee" then
				spellIDs[i], possibles[i] = identity.Of(decision.hit, decision.line, together, sure)
			end
		end
		-- When no more spells fit n ticks than n, the first tick moves their
		-- rhythms onto the frame, so the frame's other ticks fit none. They are
		-- ticks of the same spells, so each takes the first one's Possible
		-- Spells, unless its school is secret and so could be another.
		for i, decision in ipairs(decisions) do
			if possibles[i] and decision.line.lineKind == "tick" then
				for j, other in ipairs(decisions) do
					if j ~= i and other.line.lineKind == "tick" and spellIDs[j] == nil and possibles[j] == nil
						and other.how ~= "melee" and not issecretvalue(other.hit.school) and sameTick(decision, other) then
						possibles[j] = possibles[i]
					end
				end
			end
		end
		return spellIDs, possibles
	end

	return identity
end
