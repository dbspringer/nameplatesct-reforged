_G.issecretvalue = function(value)
	return value == "<secret>"
end

local ns = {}
assert(loadfile("src/LineKind.lua"))("NameplateSCT_Reforged", ns)
assert(loadfile("src/LogFilter.lua"))("NameplateSCT_Reforged", ns)
local LogFilter, LineKind = ns.LogFilter, ns.LineKind

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

	it("accepts a picked filter of any name once it is fixed", function()
		local renamed = savedFilters()
		LogFilter.Fix(renamed, MY_ACTIONS)
		renamed.filters[1].name = "Mine"
		assert.are.equal("ok", LogFilter.Check(renamed, MY_ACTIONS))
	end)

	it("finds a filter that sends other players' lines fixable, since they would look like yours", function()
		local saved = savedFilters()
		LogFilter.Fix(saved, MY_ACTIONS)
		saved.filters[1].filters[1].sourceFlags[PARTY] = true
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
	end)

	-- A colour as it reaches an addon: 8 bits a channel.
	local function arrived(colour)
		local function channel(value)
			return math.floor(value * 255 + 0.5) / 255
		end
		return channel(colour.r), channel(colour.g), channel(colour.b)
	end

	it("finds a filter that does not colour lines by kind fixable, and the fix colours each line so its kind reads back", function()
		local saved = savedFilters()
		LogFilter.Fix(saved, MY_ACTIONS)
		saved.filters[1].settings.lineColorPriority = 1
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
		LogFilter.Fix(saved, MY_ACTIONS)
		assert.are.equal("ok", LogFilter.Check(saved, MY_ACTIONS))

		local colouring = saved.filters[1].colors.eventColoring
		local expected = {
			SPELL_DAMAGE = "direct", SPELL_PERIODIC_DAMAGE = "tick", SWING_DAMAGE = "swing", RANGE_DAMAGE = "shot",
			SPELL_MISSED_RESIST = "directMiss", SPELL_PERIODIC_MISSED_IMMUNE = "tickMiss", SWING_MISSED = "swingMiss",
			SWING_MISSED_DODGE = "swingMiss", RANGE_MISSED = "shotMiss", SPELL_HEAL = "heal",
			SPELL_PERIODIC_HEAL = "hot", PARTY_KILL = "kill",
		}
		for event, kind in pairs(expected) do
			assert.are.equal(kind, LineKind.Of(arrived(colouring[event])), event)
		end
	end)

	it("finds a filter whose lines of yours are brightened by highlighting fixable", function()
		local saved = savedFilters()
		LogFilter.Fix(saved, MY_ACTIONS)
		saved.filters[1].settings.lineHighlighting = true
		saved.filters[1].colors.highlightedEvents.SPELL_DAMAGE = true
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
		LogFilter.Fix(saved, MY_ACTIONS)
		assert.are.equal("ok", LogFilter.Check(saved, MY_ACTIONS))
	end)

	it("keeps the colours and highlights of events it does not colour", function()
		local saved = savedFilters()
		local blue = { r = 0, g = 0, b = 1, a = 1 }
		saved.filters[1].colors = { eventColoring = { UNIT_DIED = blue }, highlightedEvents = { UNIT_DIED = true } }
		LogFilter.Fix(saved, MY_ACTIONS)
		assert.are.same(blue, saved.filters[1].colors.eventColoring.UNIT_DIED)
		assert.is_true(saved.filters[1].colors.highlightedEvents.UNIT_DIED)
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
