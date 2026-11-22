local ns = {}
assert(loadfile("src/Overlap.lua"))("NameplateSCT_Reforged", ns)
local Overlap = ns.Overlap

-- A text as the renderer keeps it: the frame it shows on, its animation,
-- and the y offset it glides to.
local function text(frame, animation)
	return { anchorFrame = frame, animation = animation, pushTarget = 0 }
end

-- The renderer's animating table: a set of texts, the new one among them.
local function set(...)
	local texts = {}
	for _, t in ipairs({ ... }) do
		texts[t] = true
	end
	return texts
end

describe("Overlap", function()
	it("moves older text with the same animation on the same frame one line per new text", function()
		local older = text("plate1", "verticalUp")
		local first, second = text("plate1", "verticalUp"), text("plate1", "verticalUp")
		Overlap.Push(set(older, first), first, 24)
		Overlap.Push(set(older, first, second), second, 24)
		assert.are.equal(48, older.pushTarget)
		assert.are.equal(24, first.pushTarget)
		assert.are.equal(0, second.pushTarget)
	end)

	it("moves older text away from where new text starts: up on rising paths, down on falling ones", function()
		for animation, sign in pairs({ verticalUp = 1, fountain = 1, verticalDown = -1, rainfall = -1 }) do
			local older, new = text("plate1", animation), text("plate1", animation)
			Overlap.Push(set(older, new), new, 24)
			assert.are.equal(sign * 24, older.pushTarget, animation)
		end
	end)

	it("leaves text on another frame, with another animation, or on Fireworks where it is", function()
		local otherFrame = text("plate2", "verticalUp")
		local otherAnimation = text("plate1", "fountain")
		local fireworks = text("plate1", "fireworks")
		Overlap.Push(set(otherFrame, otherAnimation, fireworks), text("plate1", "verticalUp"), 24)
		Overlap.Push(set(fireworks), text("plate1", "fireworks"), 24)
		assert.are.equal(0, otherFrame.pushTarget)
		assert.are.equal(0, otherAnimation.pushTarget)
		assert.are.equal(0, fireworks.pushTarget)
	end)

	-- The renderer turns Y Variance off for these, so two opposite rolls
	-- cannot cancel the move.
	it("names the animations it moves, which take no Y Variance", function()
		for _, animation in ipairs({ "verticalUp", "verticalDown", "fountain", "rainfall" }) do
			assert.is_true(Overlap.Moves(animation), animation)
		end
		assert.is_false(Overlap.Moves("fireworks"))
	end)

	it("takes a line from the icon when it is larger than the text, plus the gap", function()
		assert.are.equal(24, Overlap.Line(20, 16, 4))
		assert.are.equal(34, Overlap.Line(20, 30, 4))
		assert.are.equal(20, Overlap.Line(20, nil, 0))
	end)

	it("glides toward the target and stops on it after a long frame", function()
		local push = Overlap.Glide(0, 30, 1 / 60)
		assert.is_true(push > 0 and push < 30)
		assert.are.equal(30, Overlap.Glide(push, 30, 2))
	end)
end)
