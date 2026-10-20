local _, ns = ...

local Amount = {}
ns.Amount = Amount

local function commaSeperate(number)
	-- https://stackoverflow.com/questions/10989788/lua-format-integer
	local _, _, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')
	int = int:reverse():gsub("(%d%d%d)", "%1,")
	return minus..int:reverse():gsub("^,", "")..fraction
end

-- The text of an amount, under the saved format options in settings:
-- truncateMethod ("NONE", "WESTERN", or "EASTASIA"), truncateLetter, and
-- commaSeperate. eastAsiaLetter is the unit letter for "EASTASIA". A Secret
-- Amount cannot be compared or calculated with, so it goes to the game's
-- formatters, which accept one and return a secret string: "NONE" with
-- commas keeps every digit, and every other setting gives the game's own
-- abbreviation.
function Amount.Format(amount, settings, eastAsiaLetter)
	if issecretvalue(amount) then
		if settings.truncateMethod == 'NONE' and settings.commaSeperate then
			return BreakUpLargeNumbers(amount)
		end
		return AbbreviateNumbers(amount)
	end

	local text
	if settings.truncateMethod == 'NONE' then
		if (settings.commaSeperate) then
			text = commaSeperate(amount)
		else
			text = tostring(amount)
		end

	elseif settings.truncateMethod == 'WESTERN' then
		local unitLetter = ''
		if settings.truncateLetter then
			unitLetter = 'k'
		end

		if amount >= 1000000 and settings.truncateLetter then
			text = string.format("%.1fM", amount / 1000000)
		elseif amount >= 10000 then
			text = string.format("%.0f%s", amount / 1000, unitLetter)
		elseif amount >= 1000 then
			text = string.format("%.1f%s", amount / 1000, unitLetter)
		else
			text = tostring(amount)
		end
	elseif settings.truncateMethod == 'EASTASIA' then
		local unitLetter = ''
		if settings.truncateLetter then
			unitLetter = eastAsiaLetter
		end

		if amount >= 100000 then
			text = string.format("%.0f%s", amount / 10000, unitLetter)
		elseif amount >= 10000 then
			text = string.format("%.1f%s", amount / 10000, unitLetter)
		else
			text = tostring(amount)
		end
	else
		-- Never reach
		text = tostring(amount)
	end

	return text
end
