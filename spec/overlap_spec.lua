local ns = {}
assert(loadfile("src/Overlap.lua"))("NameplateSCT_Reforged", ns)
local Overlap = ns.Overlap

-- A text as the renderer keeps it: the frame it shows on, its animation,
-- and the y offset it glides to. Its path and Y Variance put it at y now
-- (0 when not given), moving speed per second, and it ends after life
-- seconds (1 when not given).
local function text(frame, animation, y, speed, life)
	return { anchorFrame = frame, animation = animation, pushTarget = 0, y = y or 0, speed = speed or 0, life = life or 1 }
end

-- Where a text is dt seconds from now without its push, or nil once it ends.
local function yOf(t, dt)
	if dt > t.life then
		return nil
	end
	return t.y + t.speed * dt
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
		for animation, sign in pairs({ verticalUp = 1, verticalDown = -1, rainfall = -1 }) do
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

	-- A newer Rainfall text can fall faster than an older one and catch it.
	it("keeps older text a line past the new text for as long as both show", function()
		local older = text("plate1", "rainfall", -30, -20, 0.4)
		local new = text("plate1", "rainfall", 0, -100)
		Overlap.Push(set(older, new), new, 24, yOf)
		-- At 0.4 s the older text is at -38 and the new one at -40.
		assert.is_true(math.abs(older.pushTarget + 26) < 1e-9)
	end)

	it("lets a text that has ended, but is not yet recycled, neither move nor push", function()
		local live, ended = text("plate1", "verticalUp", 30), text("plate1", "verticalUp", 0, 0, -0.001)
		local new = text("plate1", "verticalUp", 0)
		Overlap.Push(set(live, ended, new), new, 24, yOf)
		assert.are.equal(0, live.pushTarget)
		assert.are.equal(0, ended.pushTarget)
	end)

	it("leaves text on another frame, with another animation, or on Fountain or Fireworks where it is", function()
		local otherFrame = text("plate2", "verticalUp")
		local otherAnimation = text("plate1", "rainfall")
		local fountain, fireworks = text("plate1", "fountain"), text("plate1", "fireworks")
		Overlap.Push(set(otherFrame, otherAnimation, fountain, fireworks), text("plate1", "verticalUp"), 24, yOf)
		Overlap.Push(set(fountain), text("plate1", "fountain"), 24, yOf)
		Overlap.Push(set(fireworks), text("plate1", "fireworks"), 24, yOf)
		assert.are.equal(0, otherFrame.pushTarget)
		assert.are.equal(0, otherAnimation.pushTarget)
		assert.are.equal(0, fountain.pushTarget)
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
