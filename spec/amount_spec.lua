-- Stand-in for a Secret Amount: it errors when code orders it, calculates
-- with it, joins it, or turns it into a string. Lua 5.1 runs __eq only
-- between two tables, so `secret == 0` passes quietly.
local function refuse()
	error("used a secret")
end
local SECRET = {
	__eq = refuse, __lt = refuse, __le = refuse,
	__add = refuse, __sub = refuse, __mul = refuse, __div = refuse, __mod = refuse, __pow = refuse, __unm = refuse,
	__concat = refuse, __len = refuse, __tostring = refuse, __index = refuse,
}
local secret = setmetatable({}, SECRET)
_G.issecretvalue = function(value)
	return getmetatable(value) == SECRET
end
_G.BreakUpLargeNumbers = function(value)
	return { broken = value }
end
_G.AbbreviateNumbers = function(value)
	return { abbreviated = value }
end

local ns = {}
assert(loadfile("src/Amount.lua"))("NameplateSCT_Reforged", ns)
local Amount = ns.Amount

local function settings(method, letter, comma)
	return { truncateMethod = method, truncateLetter = letter, commaSeperate = comma }
end

describe("Amount.Format", function()
	it("formats a public amount with every format option", function()
		local cases = {
			{ 1234567, settings("NONE", true, true), "1,234,567" },
			{ 1234567, settings("NONE", true, false), "1234567" },
			{ 1234567, settings("WESTERN", true, true), "1.2M" },
			{ 12345, settings("WESTERN", true, true), "12k" },
			{ 1234, settings("WESTERN", true, true), "1.2k" },
			{ 1234, settings("WESTERN", false, true), "1.2" },
			{ 1234567, settings("WESTERN", false, true), "1235" },
			{ 999, settings("WESTERN", true, true), "999" },
			{ 123456, settings("EASTASIA", true, true), "12x" },
			{ 12345, settings("EASTASIA", true, true), "1.2x" },
			{ 12345, settings("EASTASIA", false, true), "1.2" },
		}
		for _, case in ipairs(cases) do
			assert.are.equal(case[3], Amount.Format(case[1], case[2], "x"))
		end
	end)

	it("gives a Secret Amount to the game's formatters, and never compares or calculates with it", function()
		for _, method in ipairs({ "NONE", "WESTERN", "EASTASIA" }) do
			for _, letter in ipairs({ true, false }) do
				for _, comma in ipairs({ true, false }) do
					local text = Amount.Format(secret, settings(method, letter, comma), "w")
					if method == "NONE" and comma then
						assert.are.equal(secret, rawget(text, "broken"))
					else
						assert.are.equal(secret, rawget(text, "abbreviated"))
					end
				end
			end
		end
	end)
end)
