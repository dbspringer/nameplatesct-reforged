local _, ns = ...

local Overlap = {}
ns.Overlap = Overlap

-- The way older text moves for each animation, away from where new text
-- starts: 1 up, -1 down. Fireworks has none, as it spreads its text from the
-- center on its own.
local DIRECTIONS = { verticalUp = 1, fountain = 1, verticalDown = -1, rainfall = -1 }

-- How fast a text glides to its target: the share of the way left that it
-- moves in one second, as Better Damage Text does. Most of the move is done
-- in about 0.2 s.
local GLIDE_RATE = 15

-- How far older text moves for new text: one line of the new text, the font
-- size or the icon size when that is larger, plus the gap. A text's drawn
-- height can be secret, so the line comes from the size. iconSize is nil for
-- text with no icon.
function Overlap.Line(size, iconSize, gap)
	return math.max(size, iconSize or 0) + gap
end

-- Moves the older texts out of the new text's way, so each one ends at least
-- one line past it, away from where new text starts. texts is a set of texts,
-- each with anchorFrame, animation, and pushTarget (the y offset it glides
-- to); new can be in it. yOf gives a text's y offset now without its push:
-- its path and its Y Variance, which can put older text below the new text.
-- Only text on the new text's frame with its animation moves, so text in the
-- Grace Period moves too. All of it moves by the same amount, which keeps the
-- space that earlier pushes made between the older texts; text already a
-- line or more away does not move.
function Overlap.Push(texts, new, line, yOf)
	local direction = DIRECTIONS[new.animation]
	if not direction then
		return
	end
	local newY = yOf(new)
	local older, shortfall = {}, 0
	for text in pairs(texts) do
		if text ~= new and text.anchorFrame == new.anchorFrame and text.animation == new.animation then
			older[#older + 1] = text
			local space = (yOf(text) + text.pushTarget - newY) * direction
			shortfall = math.max(shortfall, line - space)
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
