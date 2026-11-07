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
-- formatters, which accept one and return a secret string: "NONE" keeps
-- every digit, with separators even when commaSeperate is off, and every
-- other setting gives the game's own abbreviation.
function Amount.Format(amount, settings, eastAsiaLetter)
	if issecretvalue(amount) then
		if settings.truncateMethod == 'NONE' then
			return BreakUpLargeNumbers(amount)
		end
		return AbbreviateNumbers(amount)
	end

	local method = settings.truncateMethod
	if method == 'NONE' and settings.commaSeperate then
		return commaSeperate(amount)
	elseif method == 'WESTERN' then
		local letter = settings.truncateLetter and 'k' or ''
		if amount >= 1000000 and settings.truncateLetter then
			return string.format("%.1fM", amount / 1000000)
		elseif amount >= 10000 then
			return string.format("%.0f%s", amount / 1000, letter)
		elseif amount >= 1000 then
			return string.format("%.1f%s", amount / 1000, letter)
		end
	elseif method == 'EASTASIA' then
		local letter = settings.truncateLetter and eastAsiaLetter or ''
		if amount >= 100000 then
			return string.format("%.0f%s", amount / 10000, letter)
		elseif amount >= 10000 then
			return string.format("%.1f%s", amount / 10000, letter)
		end
	end
	return tostring(amount)
end
