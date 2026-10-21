local ns = {}
assert(loadfile("src/Pairing.lua"))("NameplateSCT_Reforged", ns)
assert(loadfile("src/LogFilter.lua"))("NameplateSCT_Reforged", ns)
local LogFilter = ns.LogFilter

local MY_ACTIONS = "My actions"
local ME, MY_PET, PARTY = 0x4511, 0x3111, 0x0518

-- Blizzard_CombatLog_Filters as a new character has it: "My actions" picked,
-- your and your pet's damage on, misses off.
local function savedFilters()
	return {
		currentFilter = 1,
		filters = {
			{
				name = MY_ACTIONS,
				hasQuickButton = true,
				filters = {
					{
						sourceFlags = { [ME] = true, [MY_PET] = true },
						eventList = {
							SWING_DAMAGE = true, RANGE_DAMAGE = true, SPELL_DAMAGE = true, SPELL_PERIODIC_DAMAGE = true,
							SWING_MISSED = false, RANGE_MISSED = false, SPELL_MISSED = false, SPELL_PERIODIC_MISSED = false,
							SPELL_HEAL = true, UNIT_DIED = false,
						},
					},
					{ destFlags = { [ME] = false, [MY_PET] = false }, eventList = {} },
				},
			},
			{ name = "What happened to me?", filters = { { eventList = {} } } },
		},
	}
end

describe("LogFilter", function()
	it("finds a filter that sends no misses fixable, and the fix turns them on", function()
		local saved = savedFilters()
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
		assert.is_true(LogFilter.Fix(saved, MY_ACTIONS))
		assert.are.equal("ok", LogFilter.Check(saved, MY_ACTIONS))
	end)

	it("adds Done By you and your pet, and picks My actions", function()
		local saved = savedFilters()
		saved.currentFilter = 2
		saved.filters[1].filters[1].sourceFlags = { [ME] = true }
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
		LogFilter.Fix(saved, MY_ACTIONS)
		assert.are.equal(1, saved.currentFilter)
		assert.is_true(saved.filters[1].filters[1].sourceFlags[MY_PET])
	end)

	it("keeps the player's other message types, and leaves only you and your pet under Done By", function()
		local saved = savedFilters()
		local part = saved.filters[1].filters[1]
		part.sourceFlags[PARTY] = true
		LogFilter.Fix(saved, MY_ACTIONS)
		assert.are.same({ [ME] = true, [MY_PET] = true }, saved.filters[1].filters[1].sourceFlags)
		assert.is_true(part.eventList.SPELL_HEAL)
		assert.is_false(part.eventList.UNIT_DIED)
		assert.are.same({ destFlags = { [ME] = false, [MY_PET] = false }, eventList = {} }, saved.filters[1].filters[2])
	end)

	-- A picked filter that sends everything, named "Raid", with the given
	-- Done By sources and line colours by source when byColour is set.
	local function raidFilter(sources, byColour)
		local saved = savedFilters()
		local events = {}
		for _, event in ipairs({ "SWING_DAMAGE", "RANGE_DAMAGE", "SPELL_DAMAGE", "SPELL_PERIODIC_DAMAGE",
			"SWING_MISSED", "RANGE_MISSED", "SPELL_MISSED", "SPELL_PERIODIC_MISSED" }) do
			events[event] = true
		end
		saved.filters[3] = {
			name = "Raid",
			filters = { { sourceFlags = sources, eventList = events } },
			settings = { lineColoring = byColour, lineColorPriority = 1 },
			colors = { unitColoring = { [ME] = { r = 0.7, g = 0.7, b = 0.7 }, [MY_PET] = { r = 0.7, g = 0.7, b = 0.7 } } },
		}
		saved.currentFilter = 3
		return saved
	end

	it("accepts a picked filter of any name that sends everything and only your lines", function()
		local renamed = savedFilters()
		LogFilter.Fix(renamed, MY_ACTIONS)
		renamed.filters[1].name = "Mine"
		assert.are.equal("ok", LogFilter.Check(renamed, MY_ACTIONS))
		assert.are.equal("ok", LogFilter.Check(raidFilter({ [ME] = true, [MY_PET] = true }, false), MY_ACTIONS))
	end)

	it("accepts other players' lines only when their colour tells them apart", function()
		local sources = { [ME] = true, [MY_PET] = true, [PARTY] = true }
		assert.are.equal("ok", LogFilter.Check(raidFilter(sources, true), MY_ACTIONS))
		assert.are.equal("fixable", LogFilter.Check(raidFilter(sources, false), MY_ACTIONS))
	end)

	it("cannot fix a combat log that has no My actions filter, and changes nothing", function()
		local saved = savedFilters()
		table.remove(saved.filters, 1)
		saved.currentFilter = 1
		assert.are.equal("gone", LogFilter.Check(saved, MY_ACTIONS))
		local before = savedFilters()
		table.remove(before.filters, 1)
		before.currentFilter = 1
		assert.is_false(LogFilter.Fix(saved, MY_ACTIONS))
		assert.are.same(before, saved)
	end)

	it("says nothing when the game has not loaded its Log Filters", function()
		assert.is_nil(LogFilter.Check(nil, MY_ACTIONS))
		assert.is_nil(LogFilter.Check({ currentFilter = 1 }, MY_ACTIONS))
	end)
end)
