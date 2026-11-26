local ns = {}
assert(loadfile("src/TickSpells.lua"))("NameplateSCT_Reforged", ns)
assert(loadfile("src/DirectSpells.lua"))("NameplateSCT_Reforged", ns)

describe("IsPhysicalShot", function()
	it("is true for ranged weapon attacks that are not a wand's", function()
		for _, spellID in ipairs({ 75, 2480, 7918, 7919, 2764 }) do -- Auto Shot, Shoot Bow, Gun, Crossbow, Throw
			assert.is_true(ns.IsPhysicalShot(spellID), spellID)
		end
	end)

	it("is false for the wand's Shoot, a shot ability, and a melee ability", function()
		for _, spellID in ipairs({ 5019, 2643, 78 }) do -- Shoot, Multi-Shot, Heroic Strike
			assert.is_false(ns.IsPhysicalShot(spellID), spellID)
		end
	end)
end)
