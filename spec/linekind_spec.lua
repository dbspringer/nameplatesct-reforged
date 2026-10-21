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

local function of(colour, colouring)
	return LineKind.Of(colour[1], colour[2], colour[3], colouring)
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
		assert.are.equal("other", of(GREY_50, "kind"))
		assert.are.equal("other", of(GREY_70, "kind"))
		assert.are.equal("kill", of(WHITE, "kind"))
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
		assert.is_nil(LineKind.Of("<secret>", "<secret>", "<secret>", "kind"))
	end)
end)
