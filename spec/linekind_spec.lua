_G.issecretvalue = function(value)
	return value == "<secret>"
end

local ns = {}
assert(loadfile("src/LineKind.lua"))("NameplateSCT_Reforged", ns)
local LineKind = ns.LineKind

local GREY_70 = { 0.70196, 0.70196, 0.70196 }
local GREY_50 = { 0.50196, 0.50196, 0.50196 }
local WHITE = { 1, 1, 1 }
-- By source, an unknown unit, friendly blue and hostile red, also highlighted
-- (1.5 times brighter).
local OTHER_UNITS = { { 0.74902, 0.74902, 0.74902 }, { 0.34118, 0.63922, 1 }, { 0.74902, 0.05098, 0.05098 },
	{ 0.50980, 0.96078, 1 }, { 1, 0.07451, 0.07451 } }

local function of(colour, reading)
	return LineKind.Of(colour[1], colour[2], colour[3], reading)
end

-- A Log Filter that colours lines by kind in the fix's colours.
local function kindFilter()
	return {
		settings = { lineColoring = true, lineColorPriority = 3 },
		colors = { eventColoring = LineKind.EventColours(), highlightedEvents = {} },
	}
end

describe("LineKind", function()
	it("tells how the picked Log Filter colours lines", function()
		local function filter(lineColoring, priority)
			return { settings = { lineColoring = lineColoring, lineColorPriority = priority } }
		end
		assert.are.equal("kind", LineKind.ColouringOf(filter(true, 3)))
		assert.are.equal("source", LineKind.ColouringOf(filter(true, 1)))
		assert.is_nil(LineKind.ColouringOf(filter(true, 2)))
		assert.is_nil(LineKind.ColouringOf(filter(false, 1)))
		assert.is_nil(LineKind.ColouringOf(nil))
	end)

	it("reads a colour that is no kind's as never yours when lines are coloured by kind", function()
		local palette = assert(LineKind.PaletteOf(kindFilter()))
		assert.are.equal("other", of(GREY_50, palette))
		assert.are.equal("other", of(GREY_70, palette))
		assert.are.equal("kill", of(WHITE, palette))
	end)

	it("reads each kind back from MikScrollingBattleText's colours", function()
		local palette = assert(LineKind.PaletteOf(dofile("spec/msbt_filter.lua")()))
		assert.are.equal("swing", of({ 0.90196, 0.90196, 0.90196 }, palette))
		assert.are.equal("direct", of({ 1, 0.8, 0.29804 }, palette))
		assert.are.equal("other", of({ 1, 0.85098, 0.25098 }, palette))
	end)

	it("finds no palette in colours that cannot tell every kind apart", function()
		local function broken(change)
			local filter = kindFilter()
			change(filter.colors.eventColoring, filter)
			return LineKind.PaletteOf(filter)
		end
		local function shade(r, g, b)
			return { r = r, g = g, b = b, a = 1 }
		end
		-- Gives every event of the kind this colour.
		local function recolour(colours, kind, colour)
			for event in pairs(colours) do
				if LineKind.OfEvent(event) == kind then
					colours[event] = colour
				end
			end
		end
		assert.is_nil(broken(function(colours) colours.SPELL_HEAL = nil end), "a kind with no colour")
		assert.is_nil(broken(function(colours) colours.SWING_MISSED_DODGE = shade(0.7, 0.7, 0.7) end),
			"two colours in one kind")
		assert.is_nil(broken(function(colours) recolour(colours, "tick", shade(1, 0.82, 0.25)) end),
			"two kinds 0.03 apart")
		assert.is_nil(broken(function(colours) colours.UNIT_DIED = shade(0.88, 0.85, 0.85) end),
			"another event 0.03 from a kind")
		assert.is_nil(broken(function(colours) recolour(colours, "swingMiss", shade(0.53, 0.53, 0.53)) end),
			"a kind 0.03 from Blizzard's grey")
		assert.is_nil(broken(function(_, filter)
			filter.settings.lineHighlighting = true
			filter.colors.highlightedEvents.SPELL_DAMAGE = true
		end), "a highlighted kind")
		assert.is_table(broken(function(colours) colours.SPELL_BUILDING_DAMAGE = colours.SPELL_DAMAGE end),
			"another event in a kind's own colour")
		assert.is_nil(LineKind.PaletteOf({ settings = { lineColoring = true, lineColorPriority = 1 } }))
	end)

	it("reads only your and your pet's grey as telling nothing when lines are coloured by source", function()
		for _, colour in ipairs(OTHER_UNITS) do
			assert.are.equal("other", of(colour, "source"))
		end
		assert.are.equal("other", of(WHITE, "source"))
		assert.is_nil(of(GREY_70, "source"))
	end)

	it("reads nothing from a colour under other colourings, where your lines take the target's colour or white", function()
		assert.is_nil(of({ 0.74902, 0.05098, 0.05098 }, nil))
		assert.is_nil(of(WHITE, nil))
		assert.is_nil(LineKind.Of("<secret>", "<secret>", "<secret>", assert(LineKind.PaletteOf(kindFilter()))))
	end)
end)
