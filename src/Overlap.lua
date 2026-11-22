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

-- Whether Prevent Overlap moves text with this animation.
function Overlap.Moves(animation)
	return DIRECTIONS[animation] ~= nil
end

-- Moves each older text out of the new text's way, by one line. texts is a
-- set of texts, each with anchorFrame, animation, and pushTarget (the y
-- offset it glides to); new can be in it. Only text on the new text's frame
-- with its animation moves, so text in the Grace Period moves too.
function Overlap.Push(texts, new, line)
	local direction = DIRECTIONS[new.animation]
	if not direction then
		return
	end
	for text in pairs(texts) do
		if text ~= new and text.anchorFrame == new.anchorFrame and text.animation == new.animation then
			text.pushTarget = text.pushTarget + direction * line
		end
	end
end

-- The y offset a text has after it glides from push toward target for
-- elapsed seconds. A long frame ends on the target, not past it.
function Overlap.Glide(push, target, elapsed)
	return push + (target - push) * math.min(elapsed * GLIDE_RATE, 1)
end
