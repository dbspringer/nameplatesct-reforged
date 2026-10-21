_G.issecretvalue = function(value)
	return value == "<secret>"
end

local ns = {}
assert(loadfile("src/LineKind.lua"))("NameplateSCT_Reforged", ns)
local LineKind = ns.LineKind

describe("LineKind", function()
	it("gives no kind to the colours Blizzard gives lines on its own, or to a secret colour", function()
		-- By source, the player's and pet's 0.70 grey and the 0.75 grey of others;
		-- an event with no colour of its own; friendly blue and hostile red.
		for _, colour in ipairs({ { 0.70196, 0.70196, 0.70196 }, { 0.74902, 0.74902, 0.74902 },
			{ 0.50196, 0.50196, 0.50196 }, { 0.34118, 0.63922, 1 }, { 0.74902, 0.05098, 0.05098 } }) do
			assert.is_nil(LineKind.Of(colour[1], colour[2], colour[3]))
		end
		assert.is_nil(LineKind.Of("<secret>", "<secret>", "<secret>"))
	end)

	it("reads a white killing blow line as a kind that comes with no Hit", function()
		assert.are.equal("kill", LineKind.Of(1, 1, 1))
		assert.is_nil(LineKind.Reports("kill"))
	end)
end)
