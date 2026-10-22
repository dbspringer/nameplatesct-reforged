local _, ns = ...

local Identity = {}
ns.Identity = Identity

-- Spell Identity: which spell made Your Hit, from the player's casts, the
-- Hit's time and school, and its Log Line's Line Kind. A tick takes its spell
-- from the table of spells that tick (TickSpells.lua): one interval after the
-- spell's cast or landing, then on its Tick Rhythm on that Nameplate. A direct
-- hit or a shot takes the one cast that fits it of a spell that can make it
-- (see canHit), from that table or the table of spells that hit
-- (DirectSpells.lua), with the school the table gives or, for a wand's Shoot,
-- that Spell Facts have learned (ADR 0004). On Forever an area spell's ticks
-- come as direct hits, so a direct hit can also take an area spell, each
-- interval after its cast, the first up to DIRECT_WINDOW later for one that
-- travels (see areaOf). When it is not sure, it gives none.

-- How long after its cast a spell can land: a direct hit, a shot, or a
-- travelling spell that then ticks. A Shadow Bolt came up to 0.55 s and a
-- Shoot up to 0.63 s after the cast in the Warlock Traces; a cast at long
-- range flies longer.
local DIRECT_WINDOW = 1.5
-- How much later than its time a Hit can be decided, with a margin: Pairing
-- decides a held Hit up to its HOLD plus SHORT_WINDOW (0.25 s) late, at the
-- next Tick. Casts stay this much longer.
local DECIDE_LATE = 0.5
-- How far a tick can be from its Tick Rhythm. Nearly all ticks came within
-- 0.07 s of it in the Warlock Traces; one batch came 0.18 s off and gets no
-- icon. A wider window lets another spell's tick that comes just before fit
-- too, which moves the rhythm off its own next tick.
local TICK_TOLERANCE = 0.1
-- A school counts once this many Hits agree on it.
local AGREEING_HITS = 2
-- How long after its cast the miss of a spell's application can come, for
-- a spell that does not travel: the Warlock Traces show these misses at the
-- cast's own time.
local MISS_WINDOW = 0.1

-- How long a cast can explain a Hit: a direct hit until DIRECT_WINDOW, a
-- first tick until one interval after it lands, an area spell's ticks until
-- its duration ends.
local CAST_AGE = DIRECT_WINDOW + DECIDE_LATE + TICK_TOLERANCE
for _, spell in pairs(ns.TickSpells) do
	local lasts = spell.area and spell.duration or spell.interval + DIRECT_WINDOW
	CAST_AGE = math.max(CAST_AGE, lasts + DECIDE_LATE + TICK_TOLERANCE)
end

-- A shot is a ranged attack's Hit, and only a ranged attack can make one, so
-- a known spell's cast is in one group only. A miss reports school 1 whatever
-- the spell, so it teaches nothing and uses the school of its spell's hits.
local GROUPS = { direct = "direct", directMiss = "direct", shot = "shot", shotMiss = "shot" }
local IS_TICK = { tick = true, tickMiss = true }

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

-- The key of a Hit's unit for its Tick Rhythms: its plate life (see
-- Adapter.New), as one token shows other units over time, or the unit.
local function plateOf(hit)
	return hit.life or hit.unit
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

-- saved holds the Spell Facts by spell ID, and changes in place, so the
-- caller can keep it in SavedVariables: { [spellID] = { school, hits } }.
-- Only a ranged attack learns, so its facts are always for shots.
-- Cast(record) takes the adapter's cast records. Of(hit, line, crowded)
-- gives the spell ID of Your Hit on an enemy, or nil; Hits come in about the
-- order of their time, a held Hit up to DECIDE_LATE late. crowded says that
-- another tick that could be the same spell's came at the same time on the
-- same unit.
function Identity.New(saved)
	clean(saved)
	-- Recent casts of the player and the pet: { time, spellID, unit, used,
	-- missed, secret, lastTick, stopped }. A cast whose spell ID is secret
	-- still competes, but never wins. lastTick is an area spell's last tick
	-- on any unit, and stopped when its channel stopped.
	local casts = {}
	-- For each unit and spell that ticks, its Tick Rhythm: { source, last,
	-- ends }. source is the cast or landing that started it, last its last
	-- tick (none yet after a landing), and ends when its duration ends.
	-- Weak keys, so a plate life's rhythms go with the life.
	local rhythms = setmetatable({}, { __mode = "k" })

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
	local function teach(spellID, school)
		local facts = saved[spellID]
		if facts and facts.school == school then
			facts.hits = facts.hits + 1
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

	-- The one cast that fits a direct hit or a shot by time and whose school
	-- is not known to differ from the Hit's, and how many casts fit. A cast of
	-- a spell that learns its school and that fits alone by time is taken even
	-- with another school, as a new wand changes Shoot's.
	local function castOf(hit, group, school, miss)
		local timely, lastTimely, fitting, lastFitting = 0, nil, 0, nil
		for _, cast in ipairs(casts) do
			local age = hit.time - cast.time
			if not cast.used and age >= 0 and age <= DIRECT_WINDOW and canHit(cast, group, miss, age) then
				timely, lastTimely = timely + 1, cast
				local known = not cast.secret and schoolOf(cast.spellID)
				if not (school and known and known ~= school) then
					fitting, lastFitting = fitting + 1, cast
				end
			end
		end
		if timely == 1 and learns(lastTimely) then
			return lastTimely, fitting
		end
		return fitting == 1 and lastFitting or nil, fitting
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
		local found = castOf(hit, group, school, miss)
		if not found then
			return nil
		end
		found.used = true
		-- The pet's casts, and casts whose spell ID is secret, compete but
		-- never win.
		if found.unit ~= "player" or found.secret then
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
			rhythms[plate][spellID] = { source = hit.time }
		end
		local known = schoolOf(spellID)
		return known and (not school or known == school) and spellID or nil
	end

	-- The cast or landing whose first tick on this unit this tick is: one
	-- interval after a landing for a spell that travels and hits, else after
	-- a cast, with up to DIRECT_WINDOW of flight for a spell that travels.
	-- Each one gives one first tick on each unit.
	local function firstTickSource(hit, spellID, spell, rhythm)
		if spell.travels and spell.hits then
			local landed = rhythm and not rhythm.last and rhythm.source
			return landed and firstTickFits(hit, spell, landed, 0) and landed or nil
		end
		local extra = spell.travels and DIRECT_WINDOW or 0
		local found
		for _, cast in ipairs(casts) do
			if cast.spellID == spellID and cast.unit == "player" and not cast.missed
				and not (rhythm and rhythm.source == cast.time) and firstTickFits(hit, spell, cast.time, extra) then
				found = cast.time
			end
		end
		return found
	end

	-- The Tick Rhythm that this tick gives the spell, or nil if it does not
	-- fit. A tick that fits a cast's or landing's first tick starts a new
	-- rhythm and duration, as a refresh does, even on the old rhythm. A rhythm
	-- fits only one interval after its last tick, and only until its duration
	-- ends, so one whose tick did not come, or one that ran out, fits no more;
	-- a resisted tick keeps it.
	local function rhythmOf(hit, spellID, spell, rhythm)
		local source = firstTickSource(hit, spellID, spell, rhythm)
		if source then
			return { source = source, last = hit.time, ends = hit.time - spell.interval + spell.duration }
		end
		if rhythm and rhythm.last and math.abs(hit.time - rhythm.last - spell.interval) <= TICK_TOLERANCE
			and hit.time <= rhythm.ends + TICK_TOLERANCE then
			return { source = rhythm.source, last = hit.time, ends = rhythm.ends }
		end
	end

	local function ofTick(hit, school, crowded, plate)
		local plateRhythms = rhythms[plate] or {}
		rhythms[plate] = plateRhythms
		local tried, fits, found = {}, 0, nil
		local function try(spellID)
			local spell = ns.TickSpells[spellID]
			-- An area spell's ticks come as direct hits.
			if tried[spellID] or not spell or spell.area or (school and spell.school ~= school) then
				return
			end
			tried[spellID] = true
			local rhythm = rhythmOf(hit, spellID, spell, plateRhythms[spellID])
			-- Every spell that fits keeps its Tick Rhythm, so a tie does not end
			-- the rhythm of the one that ticked.
			if rhythm then
				plateRhythms[spellID] = rhythm
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
		-- Two ticks of one school at one time on one unit cannot be told
		-- apart, such as Fireball's and an Ignite that its crit started.
		return fits == 1 and not crowded and found or nil
	end

	local identity = {}

	function identity.Cast(record)
		if record.stage == "CHANNEL_STOP" and record.unit == "player" and not issecretvalue(record.spellID) then
			-- A channelled area spell's ticks end with its channel. The stop
			-- marks the oldest open cast of the spell, so a recast whose cast
			-- comes before the old channel's stop keeps its own ticks.
			for _, cast in ipairs(casts) do
				if cast.unit == "player" and cast.spellID == record.spellID and not cast.stopped then
					cast.stopped = record.time
					break
				end
			end
			return
		end
		if record.stage ~= "SUCCEEDED" or (record.unit ~= "player" and record.unit ~= "pet") then
			return
		end
		while casts[1] and record.time - casts[1].time > CAST_AGE do
			table.remove(casts, 1)
		end
		local secret = issecretvalue(record.spellID)
		casts[#casts + 1] = { time = record.time, spellID = not secret and record.spellID or nil, unit = record.unit,
			secret = secret or nil }
	end

	function identity.Of(hit, line, crowded)
		local plate = plateOf(hit)
		local miss = isMiss(line.lineKind)
		local school = not miss and not issecretvalue(hit.school) and hit.school or nil
		if IS_TICK[line.lineKind] then
			return ofTick(hit, school, crowded, plate)
		end
		local group = GROUPS[line.lineKind]
		return group and ofDirect(hit, group, school, miss, plate) or nil
	end

	-- Of for each { hit, line } of decisions that came together, with
	-- whether each tick is crowded. A resisted tick reports school 1 whatever
	-- its spell, so only real ticks crowd.
	function identity.OfAll(decisions)
		local spellIDs = {}
		for i, decision in ipairs(decisions) do
			local crowded = false
			if decision.line.lineKind == "tick" then
				for j, other in ipairs(decisions) do
					if j ~= i and other.line.lineKind == "tick" and sameTick(decision, other) then
						crowded = true
						break
					end
				end
			end
			spellIDs[i] = identity.Of(decision.hit, decision.line, crowded)
		end
		return spellIDs
	end

	return identity
end
