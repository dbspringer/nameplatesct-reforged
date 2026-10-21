local _, ns = ...

-- The damage spells that tick, by the spell ID of their cast: for each, the
-- time between ticks in seconds, the school its ticks report, and whether it
-- travels to its target first, so its first tick comes one interval after it
-- lands. Spell Identity reads ticks only from this table (ADR 0004).
--
-- From the Classic Era spell data (wago.tools DB2: SpellEffect periodic
-- damage and leech auras, SpellMisc school and missile speed), for every rank
-- that Forever's trainers teach (WhatsTraining's Camelot tables) and the
-- later ranks of 1.11, each name checked on the Forever client. Left out:
-- ticks with no cast of their own (Ignite, Deep Wounds, Deadly Poison),
-- traps, totems (the totem is the source), Hellfire and Arcane Missiles (their
-- damage hits rather than ticks), Wyvern Sting, and Curse of Doom (one tick at
-- 60 s). Corruption, Bane of Agony, Immolate, Drain Life and Drain Soul are
-- checked against the Warlock Traces.

local PHYSICAL, HOLY, FIRE, NATURE, FROST, SHADOW, ARCANE = 1, 2, 4, 8, 16, 32, 64

local spells = {}
ns.TickSpells = spells

local function ticks(interval, school, travels, ids)
	for _, id in ipairs(ids) do
		spells[id] = { interval = interval, school = school, travels = travels }
	end
end

do
	-- Druid
	ticks(3, NATURE, false, { 339, 1062, 5195, 5196, 9852, 9853 }) -- Entangling Roots
	ticks(2, PHYSICAL, false, { 1079, 9492, 9493, 9752, 9894, 9896 }) -- Rip
	ticks(3, PHYSICAL, false, { 1822, 1823, 1824, 9904 }) -- Rake
	ticks(2, NATURE, false, { 5570, 24974, 24975, 24976, 24977 }) -- Insect Swarm
	ticks(3, ARCANE, false, { 8921, 8924, 8925, 8926, 8927, 8928, 8929, 9833, 9834, 9835 }) -- Moonfire
	ticks(1, NATURE, false, { 16914, 17401, 17402 }) -- Hurricane
	ticks(3, PHYSICAL, false, { 414644 }) -- Lacerate
	ticks(3, PHYSICAL, false, { 9005, 9823, 9827 }) -- Pounce; its ticks are Pounce Bleed's
	ticks(3, PHYSICAL, false, { 1235826, 1235827 }) -- Lacerate, Forever's ranks (interval untested)

	-- Hunter
	ticks(1, ARCANE, true, { 1510, 14294, 14295 }) -- Volley
	ticks(3, NATURE, true, { 1978, 13549, 13550, 13551, 13552, 13553, 13554, 13555, 25295 }) -- Serpent Sting

	-- Mage
	ticks(1, FROST, false, { 10, 6141, 8427, 10185, 10186, 10187 }) -- Blizzard
	ticks(2, FIRE, true, { 133, 143, 145, 3140, 8400, 8401, 8402, 10148, 10149, 10150, 10151, 25306 }) -- Fireball
	ticks(2, FIRE, false, { 2120, 2121, 8422, 8423, 10215, 10216 }) -- Flamestrike
	ticks(3, FIRE, true, { 11366, 12505, 12522, 12523, 12524, 12525, 12526, 18809 }) -- Pyroblast
	ticks(3, FIRE + FROST, true, { 401502 }) -- Frostfire Bolt
	ticks(3, FIRE + FROST, true, { 1237312, 1237313 }) -- Frostfire Bolt, Forever's ranks (interval untested)

	-- Paladin
	ticks(1, HOLY, false, { 20116, 20922, 20923, 20924, 26573 }) -- Consecration

	-- Priest
	ticks(3, SHADOW, false, { 589, 594, 970, 992, 2767, 10892, 10893, 10894 }) -- Shadow Word: Pain
	ticks(3, SHADOW, false, { 2944, 19276, 19277, 19278, 19279, 19280 }) -- Devouring Plague
	ticks(1, ARCANE, false, { 10797, 19296, 19299, 19302, 19303, 19304, 19305 }) -- Starshards
	ticks(2, HOLY, false, { 14914, 15261, 15262, 15263, 15264, 15265, 15266, 15267 }) -- Holy Fire
	ticks(1, SHADOW, false, { 15407, 17311, 17312, 17313, 17314, 18807 }) -- Mind Flay
	ticks(1, HOLY, false, { 1240720, 1240721, 1316995 }) -- Penance, Forever only (untested; may hit, not tick)

	-- Rogue
	ticks(3, PHYSICAL, false, { 703, 8631, 8632, 8633, 11289, 11290 }) -- Garrote
	ticks(2, PHYSICAL, false, { 1943, 8639, 8640, 11273, 11274, 11275 }) -- Rupture

	-- Shaman
	ticks(3, FIRE, false, { 8050, 8052, 8053, 10447, 10448, 29228 }) -- Flame Shock

	-- Warlock
	ticks(3, SHADOW, false, { 172, 6222, 6223, 7648, 11671, 11672, 25311 }) -- Corruption
	ticks(3, FIRE, false, { 348, 707, 1094, 2941, 11665, 11667, 11668, 25309 }) -- Immolate
	ticks(1, SHADOW, false, { 689, 699, 709, 7651, 11699, 11700 }) -- Drain Life
	ticks(2, SHADOW, false, { 980, 1014, 6217, 11711, 11712, 11713 }) -- Curse of Agony; Bane of Agony on Forever
	ticks(3, SHADOW, false, { 1120, 8288, 8289, 11675 }) -- Drain Soul
	ticks(2, FIRE, false, { 5740, 6219, 11677, 11678 }) -- Rain of Fire
	ticks(3, SHADOW, false, { 18265, 18879, 18880, 18881 }) -- Siphon Life

	-- Warrior
	ticks(3, PHYSICAL, false, { 772, 6546, 6547, 6548, 11572, 11573, 11574 }) -- Rend
end
