local ns = {}
assert(loadfile("src/Overlap.lua"))("NameplateSCT_Reforged", ns)
local Overlap = ns.Overlap

-- A text as the renderer keeps it: the frame it shows on, its animation,
-- and the y offset it glides to. y is where its path and Y Variance put it
-- now, without the push; 0 when not given.
local function text(frame, animation, y)
	return { anchorFrame = frame, animation = animation, pushTarget = 0, y = y or 0 }
end

local function yOf(t)
	return t.y
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
		Overlap.Push(set(older, first), first, 24, yOf)
		Overlap.Push(set(older, first, second), second, 24, yOf)
		assert.are.equal(48, older.pushTarget)
		assert.are.equal(24, first.pushTarget)
		assert.are.equal(0, second.pushTarget)
	end)

	it("moves older text away from where new text starts: up on rising paths, down on falling ones", function()
		for animation, sign in pairs({ verticalUp = 1, fountain = 1, verticalDown = -1, rainfall = -1 }) do
			local older, new = text("plate1", animation), text("plate1", animation)
			Overlap.Push(set(older, new), new, 24, yOf)
			assert.are.equal(sign * 24, older.pushTarget, animation)
		end
	end)

	-- Opposite Y Variance rolls: the older text starts 24 below the new one.
	-- A plain one-line push would put both on the same spot.
	it("moves older text a full line past the new text from where it really is", function()
		local older, new = text("plate1", "verticalUp", -12), text("plate1", "verticalUp", 12)
		Overlap.Push(set(older, new), new, 24, yOf)
		assert.are.equal(12 + 24, older.y + older.pushTarget)
	end)

	it("leaves older text that is a line or more away where it is, and keeps the space between older texts", function()
		local far, nearer = text("plate1", "verticalUp", 100), text("plate1", "verticalUp", 10)
		local farNew = text("plate1", "verticalUp", 50)
		Overlap.Push(set(far, farNew), farNew, 24, yOf)
		assert.are.equal(0, far.pushTarget)
		local new = text("plate1", "verticalUp", 0)
		Overlap.Push(set(far, nearer, new), new, 24, yOf)
		assert.are.equal(14, nearer.pushTarget)
		assert.are.equal(14, far.pushTarget)
	end)

	it("leaves text on another frame, with another animation, or on Fireworks where it is", function()
		local otherFrame = text("plate2", "verticalUp")
		local otherAnimation = text("plate1", "fountain")
		local fireworks = text("plate1", "fireworks")
		Overlap.Push(set(otherFrame, otherAnimation, fireworks), text("plate1", "verticalUp"), 24, yOf)
		Overlap.Push(set(fireworks), text("plate1", "fireworks"), 24, yOf)
		assert.are.equal(0, otherFrame.pushTarget)
		assert.are.equal(0, otherAnimation.pushTarget)
		assert.are.equal(0, fireworks.pushTarget)
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
