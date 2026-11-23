local _, ns = ...

local Overlap = {}
ns.Overlap = Overlap

-- The way older text moves for each animation, away from where new text
-- starts: 1 up, -1 down. Fountain and Fireworks have none, as they spread
-- their text on their own: Fountain sends each new text to the other side
-- of its arc, and a move up would fight the arc as older text falls.
local DIRECTIONS = { verticalUp = 1, verticalDown = -1, rainfall = -1 }

-- How fast a text glides to its target: the share of the way left that it
-- moves in one second, as Better Damage Text does. Most of the move is done
-- in about 0.2 s.
local GLIDE_RATE = 15

-- How far older text moves for new text: one line of the new text, the font
-- size or the icon size when that is larger, plus the gap. A text's drawn
-- height can be secret, so the line comes from the size. A number is drawn
-- shorter than its font size, so a gap of 0 still shows space, and the gap
-- can be negative (down to -5 in the options). iconSize is nil for text with
-- no icon.
function Overlap.Line(size, iconSize, gap)
	return math.max(size, iconSize or 0) + gap
end

-- Push looks ahead in steps of this many seconds, up to the longest time
-- any text shows (Text Duration and Fireworks Duration end at 2 s).
local LOOK_STEP = 0.05
local LOOK_STEPS = 60

-- How far the older text is past the new text, in the push direction, at its
-- least while both show; nil when the older text has ended. Paths can come
-- together: a newer Rainfall text can fall farther and faster than an older
-- one.
local function leastSpace(text, new, direction, yAt)
	local least
	for step = 0, LOOK_STEPS do
		local dt = step * LOOK_STEP
		local y, newY = yAt(text, dt), yAt(new, dt)
		if not y or not newY then
			break
		end
		local space = (y + text.pushTarget - newY) * direction
		least = least and math.min(least, space) or space
	end
	return least
end

-- Moves the older texts out of the new text's way, so each one stays at
-- least one line past it, away from where new text starts, for as long as
-- both show. texts is a set of texts, each with anchorFrame, animation, and
-- pushTarget (the y offset it glides to); new can be in it. yAt(text, dt)
-- gives a text's y offset dt seconds from now without its push (its path and
-- its Y Variance, which can put older text below the new text), or nil once
-- the text has ended. Only text on the new text's frame with its animation
-- moves, so text in the Grace Period moves too; text that has ended but is
-- not yet recycled neither moves nor counts. All of it moves by the same
-- amount, which keeps the space that earlier pushes made between the older
-- texts; text already far enough away does not move.
function Overlap.Push(texts, new, line, yAt)
	local direction = DIRECTIONS[new.animation]
	if not direction then
		return
	end
	local older, shortfall = {}, 0
	for text in pairs(texts) do
		if text ~= new and text.anchorFrame == new.anchorFrame and text.animation == new.animation then
			local space = leastSpace(text, new, direction, yAt)
			if space then
				older[#older + 1] = text
				shortfall = math.max(shortfall, line - space)
			end
		end
	end
	for _, text in ipairs(older) do
		text.pushTarget = text.pushTarget + direction * shortfall
	end
end

-- The y offset a text has after it glides from push toward target for
-- elapsed seconds. A long frame ends on the target, not past it.
function Overlap.Glide(push, target, elapsed)
	return push + (target - push) * math.min(elapsed * GLIDE_RATE, 1)
end
