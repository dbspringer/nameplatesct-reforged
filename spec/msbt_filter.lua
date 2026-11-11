-- The "MSBT combat" Log Filter that MikScrollingBattleText (New API) 12.047
-- writes into Blizzard_CombatLog_Filters (its CombatLogFilter.lua): whole
-- lines coloured by event type in its own colours, highlighting off, and one
-- part that asks for "Me" and "My pet" only.
local ME, MY_PET = 0x4511, 0x3111
local MISSES = { "ABSORB", "BLOCK", "DEFLECT", "DODGE", "EVADE", "IMMUNE", "MISS", "PARRY", "REFLECT", "RESIST" }

local COLOURS = {
	direct = { 1, 0.8, 0.3 }, tick = { 0.8, 0.6, 1 }, melee = { 0.9, 0.9, 0.9 }, ranged = { 0.85, 0.7, 0.5 },
	directMiss = { 0.6, 0.65, 0.8 }, tickMiss = { 0.65, 0.55, 0.8 }, meleeMiss = { 0.6, 0.6, 0.6 },
	rangedMiss = { 0.65, 0.6, 0.5 }, heal = { 0.35, 1, 0.45 }, hot = { 0.55, 0.88, 0.55 },
	shield = { 1, 0.6, 0.25 }, shieldMiss = { 0.72, 0.58, 0.45 }, interrupt = { 1, 0.45, 0.1 },
	purge = { 0.3, 0.85, 1 }, cleanse = { 0.4, 0.95, 0.8 }, steal = { 0.6, 0.8, 1 },
	dispelFailed = { 0.55, 0.72, 0.82 }, broke = { 1, 0.35, 0.35 }, extra = { 0.15, 0.85, 0.85 },
	kill = { 1, 1, 1 },
}

local EVENTS = {
	SPELL_DAMAGE = "direct", SPELL_BUILDING_DAMAGE = "direct", SPELL_PERIODIC_DAMAGE = "tick", SPELL_LEECH = "direct",
	SPELL_PERIODIC_LEECH = "tick", SWING_DAMAGE = "melee", RANGE_DAMAGE = "ranged", SPELL_MISSED = "directMiss",
	SPELL_PERIODIC_MISSED = "tickMiss", SWING_MISSED = "meleeMiss", RANGE_MISSED = "rangedMiss",
	SPELL_HEAL = "heal", SPELL_BUILDING_HEAL = "heal", SPELL_PERIODIC_HEAL = "hot", DAMAGE_SHIELD = "shield",
	DAMAGE_SHIELD_MISSED = "shieldMiss", SPELL_INTERRUPT = "interrupt", SPELL_DISPEL = "purge",
	SPELL_STOLEN = "steal", SPELL_DISPEL_FAILED = "dispelFailed", SPELL_AURA_BROKEN = "broke",
	SPELL_AURA_BROKEN_SPELL = "broke", PARTY_KILL = "kill", SPELL_EXTRA_ATTACKS = "extra",
}

for _, prefix in ipairs({ "SPELL", "SPELL_PERIODIC", "SWING", "RANGE", "DAMAGE_SHIELD" }) do
	for _, miss in ipairs(MISSES) do
		EVENTS[prefix .. "_MISSED_" .. miss] = EVENTS[prefix .. "_MISSED"]
	end
end
EVENTS.SPELL_DISPEL_BUFF, EVENTS.SPELL_DISPEL_DEBUFF = "purge", "cleanse"
for _, suffix in ipairs({ "BUFF", "DEBUFF" }) do
	EVENTS["SPELL_STOLEN_" .. suffix] = "steal"
	EVENTS["SPELL_AURA_BROKEN_" .. suffix] = "broke"
	EVENTS["SPELL_AURA_BROKEN_SPELL_" .. suffix] = "broke"
end

-- A new copy of the filter each call, so a spec can change it.
return function()
	local eventList, eventColoring = {}, {}
	for event in pairs(EVENTS) do
		if not event:find("_MISSED_") and not event:find("_BUFF$") and not event:find("_DEBUFF$") then
			eventList[event] = true
		end
	end
	for event, kind in pairs(EVENTS) do
		local rgb = COLOURS[kind]
		eventColoring[event] = { r = rgb[1], g = rgb[2], b = rgb[3], a = 1 }
	end
	return {
		name = "MSBT combat",
		settings = { lineColoring = true, lineColorPriority = 3, lineHighlighting = false },
		colors = { eventColoring = eventColoring, highlightedEvents = {} },
		filters = { { sourceFlags = { [ME] = true, [MY_PET] = true }, eventList = eventList } },
	}
end
