local _, ns = ...

local Identity = {}
ns.Identity = Identity

-- Spell Identity: which spell made Your Hit, from the player's casts, the
-- Hit's time and school, and its Log Line's Line Kind. A tick's spell comes
-- from the Tick Rhythm on its Nameplate and the table of spells that tick
-- (TickSpells.lua); a direct hit's or a shot's from the one cast that fits
-- it, with the school that the table gives or that Spell Facts have learned
-- (ADR 0004). When it is not sure, it gives none.

-- How long after its cast a direct hit or a shot can come. A Shadow Bolt
-- came up to 0.55 s and a Shoot up to 0.63 s after the cast in the Warlock
-- Traces; a cast at long range flies longer.
local DIRECT_WINDOW = 1.5
-- How far a tick can be from its Tick Rhythm. Ticks came within 0.07 s of it
-- in the Warlock Traces. A wider window lets another spell's tick that comes
-- just before fit too, which moves the rhythm off its own next tick.
local TICK_TOLERANCE = 0.1
-- A school counts once this many Hits agree on it.
local AGREEING_HITS = 2

-- A direct hit and a shot learn their school separately, as a spell's shot
-- and hit need not share one. A miss reports school 1 whatever the spell, so
-- it teaches nothing and uses the school of its spell's hits.
local GROUPS = { direct = "direct", directMiss = "direct", shot = "shot", shotMiss = "shot" }
local IS_TICK = { tick = true, tickMiss = true }
local IS_MISS = { directMiss = true, shotMiss = true, tickMiss = true }

-- saved holds the Spell Facts by spell ID, and changes in place, so the
-- caller can keep it in SavedVariables: { [spellID] = { [group] = { school,
-- hits } } }. Cast(record) takes the adapter's cast records; Of(hit, line)
-- gives the spell ID of Your Hit on a Nameplate, or nil, and must see Your
-- Hits in the order of their time; PlateHidden(unit) ends the Tick Rhythms of
-- a Nameplate that hid, as its token can then show another unit.
function Identity.New(saved)
	-- Recent casts of the player and the pet: { time, spellID, unit, used }.
	local casts = {}
	-- The player's last cast of each spell that ticks.
	local lastCast = {}
	-- The time of the last tick of each spell on each Nameplate.
	local rhythms = {}

	-- The school of the spell's hits in a group, from the table or from the
	-- Spell Facts that count, or nil while it is not known.
	local function schoolOf(spellID, group)
		local ticking = ns.TickSpells[spellID]
		if ticking then
			return ticking.school
		end
		local facts = saved[spellID] and saved[spellID][group]
		return facts and facts.hits >= AGREEING_HITS and facts.school or nil
	end

	-- A Hit teaches its spell's school; one that disagrees starts it again.
	local function teach(spellID, group, school)
		saved[spellID] = saved[spellID] or {}
		local facts = saved[spellID][group]
		if facts and facts.school == school then
			facts.hits = facts.hits + 1
		else
			saved[spellID][group] = { school = school, hits = 1 }
		end
	end

	-- The one cast that fits a direct hit or a shot by time, or else the one
	-- of those whose known school fits. A cast that fits alone by time is the
	-- only one that can explain the Hit, even with another school, as a new
	-- wand changes Shoot's.
	local function castOf(hit, group, school)
		local timely, fitting = {}, {}
		for _, cast in ipairs(casts) do
			local age = hit.time - cast.time
			if not cast.used and age >= 0 and age <= DIRECT_WINDOW then
				timely[#timely + 1] = cast
				local known = schoolOf(cast.spellID, group)
				if not (school and known and known ~= school) then
					fitting[#fitting + 1] = cast
				end
			end
		end
		if #timely == 1 then
			return timely[1]
		end
		return #fitting == 1 and fitting[1] or nil
	end

	local function ofDirect(hit, group, school)
		local found = castOf(hit, group, school)
		-- The pet's casts compete but never win (ADR 0004).
		if not found then
			return nil
		end
		found.used = true
		if found.unit ~= "player" then
			return nil
		end
		if school and not ns.TickSpells[found.spellID] then
			teach(found.spellID, group, school)
		end
		local known = schoolOf(found.spellID, group)
		return known and (not school or known == school) and found.spellID or nil
	end

	-- A tick fits a spell from the table by the spell's Tick Rhythm on the
	-- Nameplate, or by the time since the spell's cast: one interval, or for a
	-- spell that travels, one interval after it lands. A refresh keeps the
	-- rhythm it had.
	local function ofTick(hit, school)
		local plate = rhythms[hit.unit] or {}
		rhythms[hit.unit] = plate
		-- A Tick Rhythm fits only one interval after its last tick, so one with
		-- a missed tick fits no more.
		local spellIDs = {}
		for spellID in pairs(plate) do
			spellIDs[spellID] = true
		end
		for spellID in pairs(lastCast) do
			spellIDs[spellID] = true
		end

		local fits, found = 0, nil
		for spellID in pairs(spellIDs) do
			local spell = ns.TickSpells[spellID]
			local last, cast = plate[spellID], lastCast[spellID]
			local sinceCast = cast and hit.time - cast
			local travel = spell.travels and DIRECT_WINDOW or 0
			if (not school or spell.school == school) and (
				(last and math.abs(hit.time - last - spell.interval) <= TICK_TOLERANCE)
				or (sinceCast and sinceCast >= spell.interval - TICK_TOLERANCE
					and sinceCast <= spell.interval + TICK_TOLERANCE + travel)) then
				-- Every spell that fits keeps its Tick Rhythm, so a tie does not
				-- end the rhythm of the one that ticked.
				plate[spellID] = hit.time
				fits, found = fits + 1, spellID
			end
		end
		return fits == 1 and found or nil
	end

	local identity = {}

	function identity.Cast(record)
		if record.stage ~= "SUCCEEDED" or (record.unit ~= "player" and record.unit ~= "pet") then
			return
		end
		while casts[1] and record.time - casts[1].time > DIRECT_WINDOW do
			table.remove(casts, 1)
		end
		casts[#casts + 1] = { time = record.time, spellID = record.spellID, unit = record.unit }
		if record.unit == "player" and ns.TickSpells[record.spellID] then
			lastCast[record.spellID] = record.time
		end
	end

	function identity.Of(hit, line)
		local school = not IS_MISS[line.lineKind] and not issecretvalue(hit.school) and hit.school or nil
		if IS_TICK[line.lineKind] then
			return ofTick(hit, school)
		end
		local group = GROUPS[line.lineKind]
		return group and ofDirect(hit, group, school) or nil
	end

	function identity.PlateHidden(unit)
		rhythms[unit] = nil
	end

	return identity
end
