local _, ns = ...

local LineKind = {}
ns.LineKind = LineKind

-- A Log Line reaches addons with no words, so its colour is the only thing
-- in it that tells its Line Kind. The Log Filter fix makes Blizzard colour
-- each line by its event type (settings.lineColorPriority 3), with the colour
-- of its kind here in colors.eventColoring (see ADR 0003). Each colour is
-- about 0.1 or more apart in some channel (0.098 as 8-bit values) from every
-- other one here and from the 0.5 grey that Blizzard gives an event with no
-- colour, more than twice TOLERANCE, so a line within TOLERANCE of one is
-- that kind.
-- reports is the sort of Hit the kind comes with: "damage" (a WOUND), "miss"
-- (an avoid action), or "heal". A killing blow line comes with no Hit of its
-- own.
local KINDS = {
	direct = { r = 1.00, g = 0.85, b = 0.25, reports = "damage" },
	tick = { r = 0.75, g = 0.55, b = 1.00, reports = "damage" },
	swing = { r = 0.85, g = 0.85, b = 0.85, reports = "damage", melee = true },
	shot = { r = 0.90, g = 0.70, b = 0.45, reports = "damage" },
	shield = { r = 1.00, g = 0.55, b = 0.20, reports = "damage" },
	directMiss = { r = 0.55, g = 0.65, b = 0.85, reports = "miss" },
	tickMiss = { r = 0.65, g = 0.50, b = 0.85, reports = "miss" },
	swingMiss = { r = 0.60, g = 0.60, b = 0.60, reports = "miss", melee = true },
	shotMiss = { r = 0.75, g = 0.60, b = 0.50, reports = "miss" },
	shieldMiss = { r = 0.70, g = 0.55, b = 0.35, reports = "miss" },
	heal = { r = 0.30, g = 1.00, b = 0.40, reports = "heal" },
	hot = { r = 0.55, g = 0.85, b = 0.55, reports = "heal" },
	kill = { r = 1.00, g = 1.00, b = 1.00 },
}

-- Under colours by source, Blizzard gives the player's and the pet's lines
-- 0.70 grey (COMBATLOG_DEFAULT_COLORS unitColoring), so a line in any other
-- colour is another unit's, or the player's highlighted killing blow.
local OWN_BY_SOURCE = { r = 0.70, g = 0.70, b = 0.70 }
-- Blizzard's lineColorPriority values, and the colouring each one gives.
local BY_SOURCE, BY_EVENT_TYPE = 1, 3
local COLOURINGS = { [BY_SOURCE] = "source", [BY_EVENT_TYPE] = "kind" }

-- Colours arrive as 8-bit floats, such as 0.70196 for a 0.7 setting.
local TOLERANCE = 0.02

-- The event names Blizzard colours a line by. SPELL_MISSED always has its
-- miss type added (SPELL_MISSED_RESIST), and with Blizzard's "full text" on
-- the other misses have it too (Blizzard_CombatLogProcessor.lua).
local MISS_TYPES = { "ABSORB", "BLOCK", "DEFLECT", "DODGE", "EVADE", "IMMUNE", "MISS", "PARRY", "REFLECT", "RESIST" }
local EVENT_KINDS = {
	SPELL_DAMAGE = "direct",
	SPELL_LEECH = "direct",
	SPELL_PERIODIC_DAMAGE = "tick",
	SPELL_PERIODIC_LEECH = "tick",
	SWING_DAMAGE = "swing",
	RANGE_DAMAGE = "shot",
	DAMAGE_SHIELD = "shield",
	SPELL_MISSED = "directMiss",
	SPELL_PERIODIC_MISSED = "tickMiss",
	SWING_MISSED = "swingMiss",
	RANGE_MISSED = "shotMiss",
	DAMAGE_SHIELD_MISSED = "shieldMiss",
	SPELL_HEAL = "heal",
	SPELL_PERIODIC_HEAL = "hot",
	PARTY_KILL = "kill",
}
for _, event in ipairs({ "SPELL_MISSED", "SPELL_PERIODIC_MISSED", "SWING_MISSED", "RANGE_MISSED",
	"DAMAGE_SHIELD_MISSED" }) do
	for _, missType in ipairs(MISS_TYPES) do
		EVENT_KINDS[event .. "_" .. missType] = EVENT_KINDS[event]
	end
end

local function near(r, g, b, colour)
	return math.abs(r - colour.r) <= TOLERANCE and math.abs(g - colour.g) <= TOLERANCE
		and math.abs(b - colour.b) <= TOLERANCE
end

-- How a Log Filter, as Blizzard_CombatLog_Filters stores one, colours whole
-- lines: "kind" (by event type, as the fix sets), "source", or nil when the
-- colour of a line tells nothing about it, as when lines take their target's
-- colour or are not coloured (all white).
function LineKind.ColouringOf(filter)
	local settings = type(filter) == "table" and filter.settings
	if type(settings) ~= "table" or settings.lineColoring ~= true then
		return nil
	end
	return COLOURINGS[settings.lineColorPriority]
end

-- Makes a Log Filter's settings colour whole lines by kind.
function LineKind.ColourByKind(settings)
	settings.lineColoring = true
	settings.lineColorPriority = BY_EVENT_TYPE
end

-- The Line Kind of a Log Line in this colour, read by the colouring it came
-- under (see ColouringOf). By kind, it is one of KINDS, or "other" for any
-- other colour, such as Blizzard's grey for an event with no colour. By
-- source, it is nil (the colour tells nothing) for the player's and the
-- pet's grey, and "other" for any other colour. Under any other colouring, or
-- for a secret colour, it is nil.
function LineKind.Of(r, g, b, colouring)
	if not colouring or issecretvalue(r) or issecretvalue(g) or issecretvalue(b) then
		return nil
	end
	if colouring == "source" then
		return not near(r, g, b, OWN_BY_SOURCE) and "other" or nil
	end
	for kind, colour in pairs(KINDS) do
		if near(r, g, b, colour) then
			return kind
		end
	end
	return "other"
end

-- The sort of Hit that a line of this kind comes with: "damage", "miss",
-- "heal", or nil for a kind that comes with no Hit.
function LineKind.Reports(kind)
	return KINDS[kind] and KINDS[kind].reports
end

-- Whether a line of this kind is melee, so it comes one Swing Delay early.
-- A kind that tells nothing (nil) or no Hit ("other") is not.
function LineKind.IsMelee(kind)
	local known = KINDS[kind]
	return known ~= nil and known.melee == true
end

-- Every event the Log Filter colours, with its kind's colour as
-- Blizzard_CombatLog_Filters stores one: { [event] = { r, g, b, a } }.
function LineKind.EventColours()
	local colours = {}
	for event, kind in pairs(EVENT_KINDS) do
		local colour = KINDS[kind]
		colours[event] = { r = colour.r, g = colour.g, b = colour.b, a = 1 }
	end
	return colours
end
