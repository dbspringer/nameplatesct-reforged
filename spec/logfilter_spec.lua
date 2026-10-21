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
	-- A Blizzard_CombatLog_Filters that the fix has made "ok", for the specs
	-- that then break one thing.
	local function fixedFilters()
		local saved = savedFilters()
		assert.is_true(LogFilter.Fix(saved, MY_ACTIONS))
		assert.are.equal("ok", LogFilter.Check(saved, MY_ACTIONS))
		return saved
	end

	it("finds a filter that sends no misses fixable, and the fix turns them on", function()
		local saved = fixedFilters()
		saved.filters[1].filters[1].eventList.SPELL_MISSED = false
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
		LogFilter.Fix(saved, MY_ACTIONS)
		assert.are.equal("ok", LogFilter.Check(saved, MY_ACTIONS))
	end)

	it("adds Done By you and your pet, and picks My actions", function()
		local saved = fixedFilters()
		saved.filters[1].filters[1].sourceFlags = { [ME] = true }
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
		local picked = fixedFilters()
		picked.currentFilter = 2
		assert.are.equal("fixable", LogFilter.Check(picked, MY_ACTIONS))
		LogFilter.Fix(saved, MY_ACTIONS)
		LogFilter.Fix(picked, MY_ACTIONS)
		assert.are.same({ "ok", "ok" }, { LogFilter.Check(saved, MY_ACTIONS), LogFilter.Check(picked, MY_ACTIONS) })
	end)

	it("finds a first part that asks for lines done to no one fixable, as it sends nothing", function()
		local saved = fixedFilters()
		saved.filters[1].filters[1].destFlags = { [ME] = false }
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
		LogFilter.Fix(saved, MY_ACTIONS)
		assert.are.equal("ok", LogFilter.Check(saved, MY_ACTIONS))
	end)

	it("finds a part that asks for one unit's lines by its GUID fixable", function()
		local saved = fixedFilters()
		saved.filters[1].filters[2] = { sourceFlags = { ["Player-1-0001"] = true }, destFlags = { [ME] = false } }
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
		saved.filters[1].filters[2] = { sourceFlags = { [ME] = false }, destFlags = { ["Creature-0-1"] = true } }
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
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
		local renamed = fixedFilters()
		renamed.filters[1].name = "Mine"
		assert.are.equal("ok", LogFilter.Check(renamed, MY_ACTIONS))
	end)

	it("finds a filter that sends other players' lines fixable, since they would look like yours", function()
		local saved = fixedFilters()
		saved.filters[1].filters[1].sourceFlags[PARTY] = true
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
	end)

	it("finds a filter with another part that asks for other units' lines fixable, and the fix makes it ask for none", function()
		local saved = fixedFilters()
		-- Done To "Me": every unit's lines done to the player.
		saved.filters[1].filters[2].destFlags[ME] = true
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
		LogFilter.Fix(saved, MY_ACTIONS)
		assert.are.equal("ok", LogFilter.Check(saved, MY_ACTIONS))
		assert.are.same({ destFlags = {}, eventList = {} }, saved.filters[1].filters[2])

		-- A part with no flags at all asks for every line.
		saved.filters[1].filters[3] = { eventList = {} }
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
		local saved = fixedFilters()
		saved.filters[1].settings.lineColorPriority = 1
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
		LogFilter.Fix(saved, MY_ACTIONS)
		assert.are.equal("ok", LogFilter.Check(saved, MY_ACTIONS))

		local colouring = saved.filters[1].colors.eventColoring
		local expected = {
			SPELL_DAMAGE = "direct", SPELL_PERIODIC_DAMAGE = "tick", SWING_DAMAGE = "swing", RANGE_DAMAGE = "shot",
			SPELL_MISSED_RESIST = "directMiss", SPELL_PERIODIC_MISSED_IMMUNE = "tickMiss", SWING_MISSED = "swingMiss",
			SWING_MISSED_DODGE = "swingMiss", RANGE_MISSED = "shotMiss", SPELL_HEAL = "heal",
			SPELL_PERIODIC_HEAL = "hot", PARTY_KILL = "kill", DAMAGE_SHIELD = "shield",
			DAMAGE_SHIELD_MISSED_RESIST = "shieldMiss", SPELL_LEECH = "direct", SPELL_PERIODIC_LEECH = "tick",
		}
		for event, kind in pairs(expected) do
			local r, g, b = arrived(colouring[event])
			assert.are.equal(kind, LineKind.Of(r, g, b, "kind"), event)
		end
	end)

	it("finds a filter whose lines of yours are brightened by highlighting fixable", function()
		local saved = fixedFilters()
		saved.filters[1].settings.lineHighlighting = true
		saved.filters[1].colors.highlightedEvents.SPELL_DAMAGE = true
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
		LogFilter.Fix(saved, MY_ACTIONS)
		assert.are.equal("ok", LogFilter.Check(saved, MY_ACTIONS))
	end)

	it("finds a filter whose event colours are not the Line Kinds' fixable, and accepts them as 8-bit values", function()
		local saved = fixedFilters()
		local colouring = saved.filters[1].colors.eventColoring
		for _, colour in pairs(colouring) do
			colour.r, colour.g, colour.b = arrived(colour)
		end
		assert.are.equal("ok", LogFilter.Check(saved, MY_ACTIONS))

		for _, channel in ipairs({ "r", "g", "b" }) do
			local before = colouring.SPELL_DAMAGE[channel]
			colouring.SPELL_DAMAGE[channel] = before - 0.1
			assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS), channel)
			colouring.SPELL_DAMAGE[channel] = before
		end
		saved.filters[1].settings.lineColoring = false
		assert.are.equal("fixable", LogFilter.Check(saved, MY_ACTIONS))
	end)

	it("keeps the player's other settings, and the colours and highlights of events it does not colour", function()
		local saved = savedFilters()
		local blue = { r = 0, g = 0, b = 1, a = 1 }
		saved.filters[1].settings = { fullText = true }
		saved.filters[1].colors = { eventColoring = { UNIT_DIED = blue }, highlightedEvents = { UNIT_DIED = true } }
		LogFilter.Fix(saved, MY_ACTIONS)
		assert.is_true(saved.filters[1].settings.fullText)
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
