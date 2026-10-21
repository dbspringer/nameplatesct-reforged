local ns = {}
for _, file in ipairs({ "src/LineKind.lua", "src/Filter.lua" }) do
	assert(loadfile(file))("NameplateSCT_Reforged", ns)
end
local Filter = ns.Filter

-- Two rank IDs of Shadow Bolt, and Corruption; any other ID is no spell.
local NAMES = { [686] = "Shadow Bolt", [695] = "Shadow Bolt", [172] = "Corruption" }
-- Errors for a number that cannot be a spell ID, as a modern client's API
-- does for one outside its integer range (unverified on Forever).
local function nameOf(spellID)
	assert(spellID % 1 == 0 and spellID > 0 and spellID < 2 ^ 31, "not a spell ID")
	return NAMES[spellID]
end

-- Whether a hide list (or a show-only list, when inverse) lets the Hit
-- through. A hit is a WOUND that paired in its own frame unless it says
-- otherwise.
local function shows(text, inverse, hit)
	return Filter.SpellShows(Filter.ReadSpells(text, nameOf), inverse, hit.spell, hit.action or "WOUND",
		hit.how or "frame", hit.kind)
end

local BOLT = { spell = "Shadow Bolt", kind = "direct" }
local BOLT_MISS = { spell = "Shadow Bolt", action = "RESIST", kind = "directMiss" }
local SWING = { kind = "swing" }
local SWING_MISS = { action = "DODGE", kind = "swingMiss" }

describe("Filter.SpellShows", function()
	it("matches a spell by any rank's ID or by its name in any case", function()
		assert.is_false(shows("686", false, BOLT))
		assert.is_false(shows("  shadow BOLT  ", false, BOLT))
		assert.is_true(shows("686", false, { spell = "Corruption", kind = "tick" }))
		assert.is_true(shows("686", true, BOLT))
		assert.is_false(shows("Corruption", true, BOLT))
	end)

	it("reads every line of the list", function()
		local both = "Corruption\r\n695"
		assert.is_false(shows(both, false, BOLT))
		assert.is_false(shows(both, false, { spell = "Corruption", kind = "tick" }))
	end)

	it("counts a Hit with no Spell Identity as not listed, unless unknown is listed", function()
		local unsure = { kind = "direct" }
		assert.is_true(shows("Shadow Bolt", false, unsure))
		assert.is_false(shows("Shadow Bolt", true, unsure))
		assert.is_false(shows("unknown", false, unsure))
		assert.is_true(shows("Unknown", true, unsure))
		assert.is_true(shows("unknown", false, BOLT))
	end)

	it("matches swings and swing misses with melee, never with unknown", function()
		assert.is_true(shows("unknown", false, SWING))
		assert.is_false(shows("melee", false, SWING))
		assert.is_false(shows("melee", false, SWING_MISS))
		assert.is_true(shows("melee", false, BOLT))
		assert.is_true(shows("missed", false, SWING))
	end)

	it("takes a Hit with no Line Kind for a swing only when it paired as melee", function()
		assert.is_false(shows("melee", false, { how = "melee" }))
		assert.is_true(shows("unknown", false, { how = "melee" }))
		assert.is_true(shows("melee", false, {}))
		assert.is_false(shows("unknown", false, {}))
	end)

	it("matches every miss with missed, and a miss of a listed spell by its spell", function()
		assert.is_false(shows("missed", false, BOLT_MISS))
		assert.is_false(shows("missed", false, SWING_MISS))
		assert.is_true(shows("Shadow Bolt", true, BOLT_MISS))
		assert.is_false(shows("Shadow Bolt", true, SWING_MISS))
		assert.is_true(shows("missed", false, BOLT))
	end)

	it("lets everything through when the list has no entries, also inverted", function()
		for _, text in ipairs({ "", "\n  \n", "12345", "1.5\n-1\n12345678901\n1e999" }) do
			assert.is_true(shows(text, true, BOLT))
			assert.is_true(shows(text, false, { kind = "direct" }))
		end
	end)
end)
