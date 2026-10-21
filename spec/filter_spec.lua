local ns = {}
assert(loadfile("src/Filter.lua"))("NameplateSCT_Reforged", ns)
local Filter = ns.Filter

-- Rank IDs of Shadow Bolt, and one ID that is no spell.
local NAMES = { [686] = "Shadow Bolt", [695] = "Shadow Bolt", [172] = "Corruption" }
local function nameOf(spellID)
	return NAMES[spellID]
end

local function list(text)
	return Filter.ReadSpells(text, nameOf)
end

-- Whether a hide list (or a show-only list, when inverse) lets the Hit through.
local function shows(text, inverse, hit)
	return Filter.SpellShows(list(text), inverse, hit.spell, hit.miss == true, hit.swing == true)
end

describe("Filter.SpellShows", function()
	it("matches a spell by any rank's ID or by its name in any case", function()
		local bolt = { spell = "Shadow Bolt" }
		assert.is_false(shows("686", false, bolt))
		assert.is_false(shows("  shadow BOLT  ", false, bolt))
		assert.is_true(shows("686", false, { spell = "Corruption" }))
		assert.is_true(shows("686", true, bolt))
		assert.is_false(shows("Corruption", true, bolt))
	end)

	it("counts a Hit with no Spell Identity as not listed, unless unknown is listed", function()
		local unsure = {}
		assert.is_true(shows("Shadow Bolt", false, unsure))
		assert.is_false(shows("Shadow Bolt", true, unsure))
		assert.is_false(shows("unknown", false, unsure))
		assert.is_true(shows("Unknown", true, unsure))
	end)

	it("matches swings and swing misses only with melee", function()
		local swing, swingMiss = { swing = true }, { swing = true, miss = true }
		assert.is_true(shows("unknown", false, swing))
		assert.is_false(shows("melee", false, swing))
		assert.is_false(shows("melee", false, swingMiss))
		assert.is_true(shows("melee", false, { spell = "Shadow Bolt" }))
	end)

	it("matches every miss with missed, and a miss of a listed spell by its spell", function()
		assert.is_false(shows("missed", false, { spell = "Shadow Bolt", miss = true }))
		assert.is_false(shows("missed", false, { swing = true, miss = true }))
		assert.is_true(shows("Shadow Bolt", true, { spell = "Shadow Bolt", miss = true }))
		assert.is_false(shows("Shadow Bolt", true, { swing = true, miss = true }))
	end)

	it("lets everything through when the list has no entries, also inverted", function()
		for _, text in ipairs({ "", "\n  \n", "12345" }) do
			assert.is_true(shows(text, true, { spell = "Shadow Bolt" }))
			assert.is_true(shows(text, false, {}))
		end
	end)
end)
