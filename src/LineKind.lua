local _, ns = ...

local LineKind = {}
ns.LineKind = LineKind

-- A Log Line reaches addons with no words, so its colour is the only thing
-- in it that tells its Line Kind. The Log Filter fix makes Blizzard colour
-- each line by its event type (settings.lineColorPriority 3), with the colour
-- of its kind here in colors.eventColoring (see ADR 0003). Each colour is at
-- least 0.1 apart in some channel from every other one and from the colours
-- Blizzard gives lines on its own (0.70 and 0.75 grey by source, 0.5 grey for
-- an event with no colour), so a line within TOLERANCE of one is that kind.
-- reports is the sort of Hit the kind comes with: "damage" (a WOUND), "miss"
-- (an avoid action), or "heal". A killing blow line comes with no Hit of its
-- own; its white is also what Blizzard gives it under colours by source.
local KINDS = {
	direct = { r = 1.00, g = 0.85, b = 0.25, reports = "damage" },
	tick = { r = 0.75, g = 0.55, b = 1.00, reports = "damage" },
	swing = { r = 0.85, g = 0.85, b = 0.85, reports = "damage", melee = true },
	shot = { r = 0.90, g = 0.70, b = 0.45, reports = "damage" },
	directMiss = { r = 0.55, g = 0.65, b = 0.85, reports = "miss" },
	tickMiss = { r = 0.65, g = 0.50, b = 0.85, reports = "miss" },
	swingMiss = { r = 0.60, g = 0.60, b = 0.60, reports = "miss", melee = true },
	shotMiss = { r = 0.75, g = 0.60, b = 0.50, reports = "miss" },
	heal = { r = 0.30, g = 1.00, b = 0.40, reports = "heal" },
	hot = { r = 0.55, g = 0.85, b = 0.55, reports = "heal" },
	kill = { r = 1.00, g = 1.00, b = 1.00 },
}

-- Colours arrive as 8-bit floats, such as 0.70196 for a 0.7 setting.
local TOLERANCE = 0.02

-- The event names Blizzard colours a line by. SPELL_MISSED always has its
-- miss type added (SPELL_MISSED_RESIST), and with Blizzard's "full text" on
-- the other misses have it too (Forever Combat Text's Setup.lua, from
-- Blizzard_CombatLogProcessor.lua).
local MISS_TYPES = { "ABSORB", "BLOCK", "DEFLECT", "DODGE", "EVADE", "IMMUNE", "MISS", "PARRY", "REFLECT", "RESIST" }
local EVENT_KINDS = {
	SPELL_DAMAGE = "direct",
	SPELL_PERIODIC_DAMAGE = "tick",
	SWING_DAMAGE = "swing",
	RANGE_DAMAGE = "shot",
	SPELL_MISSED = "directMiss",
	SPELL_PERIODIC_MISSED = "tickMiss",
	SWING_MISSED = "swingMiss",
	RANGE_MISSED = "shotMiss",
	SPELL_HEAL = "heal",
	SPELL_PERIODIC_HEAL = "hot",
	PARTY_KILL = "kill",
}
for _, event in ipairs({ "SPELL_MISSED", "SPELL_PERIODIC_MISSED", "SWING_MISSED", "RANGE_MISSED" }) do
	for _, missType in ipairs(MISS_TYPES) do
		EVENT_KINDS[event .. "_" .. missType] = EVENT_KINDS[event]
	end
end

-- The Line Kind of a Log Line in this colour, or nil when the colour is no
-- kind's: the Log Filter does not colour lines by event type, the line's event
-- has no colour here, or the colour is secret.
function LineKind.Of(r, g, b)
	if issecretvalue(r) or issecretvalue(g) or issecretvalue(b) then
		return nil
	end
	for kind, colour in pairs(KINDS) do
		if math.abs(r - colour.r) <= TOLERANCE and math.abs(g - colour.g) <= TOLERANCE
			and math.abs(b - colour.b) <= TOLERANCE then
			return kind
		end
	end
end

-- The sort of Hit that a line of this kind comes with: "damage", "miss",
-- "heal", or nil for a kind that comes with no Hit.
function LineKind.Reports(kind)
	return KINDS[kind].reports
end

-- Whether a line of this kind is melee, so it comes one Swing Delay early.
function LineKind.IsMelee(kind)
	return KINDS[kind].melee == true
end

-- Calls each(event, colour) for every event the Log Filter colours, with its
-- kind's colour as Blizzard_CombatLog_Filters stores one.
function LineKind.EachEventColour(each)
	for event, kind in pairs(EVENT_KINDS) do
		local colour = KINDS[kind]
		each(event, { r = colour.r, g = colour.g, b = colour.b, a = 1 })
	end
end
