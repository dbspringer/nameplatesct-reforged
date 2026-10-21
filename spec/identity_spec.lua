_G.issecretvalue = function(value)
	return value == "<secret>"
end
_G.Enum = { CombatLogMessageOrder = { Newest = 0, Oldest = 1 } }

local ns = {}
for _, file in ipairs({ "src/LineKind.lua", "src/Adapter.lua", "src/Pairing.lua", "src/TickSpells.lua", "src/Identity.lua",
	"src/Flow.lua" }) do
	assert(loadfile(file))("NameplateSCT_Reforged", ns)
end
local Identity = ns.Identity
local Trace = assert(loadfile("tools/trace.lua"))()

local SHADOW_BOLT, SHOOT, FIREBOLT = 705, 5019, 3110
local IMMOLATE, CORRUPTION, AGONY, DRAIN_LIFE, FIREBALL = 707, 6222, 1014, 689, 133
local FIRE, SHADOW = 4, 32

local function cast(identity, time, spellID, unit)
	identity.Cast({ kind = "cast", stage = "SUCCEEDED", time = time, spellID = spellID, unit = unit or "player" })
end

-- The spell of a Hit on nameplate1, or the given plate, with a line of this
-- Line Kind.
local function of(identity, time, lineKind, school, unit)
	return identity.Of({ time = time, unit = unit or "nameplate1", school = school }, { lineKind = lineKind })
end

describe("Spell Identity", function()
	describe("of a direct hit", function()
		it("gives the one cast's spell once two Hits agree on its school", function()
			local identity = Identity.New({})
			cast(identity, 1, SHADOW_BOLT)
			local first = of(identity, 1.5, "direct", SHADOW)
			cast(identity, 4, SHADOW_BOLT)
			assert.are.same({ nil, SHADOW_BOLT }, { first, of(identity, 4.5, "direct", SHADOW) })
		end)

		it("gives a spell from the table of ticking spells at once, with no Hits to learn from", function()
			local identity = Identity.New({})
			cast(identity, 1, IMMOLATE)
			assert.are.equal(IMMOLATE, of(identity, 1, "direct", FIRE))
		end)

		it("gives no spell to a Hit that the pet's cast explains, and learns nothing from it", function()
			local saved = {}
			local identity = Identity.New(saved)
			cast(identity, 1, FIREBOLT, "pet")
			local first = of(identity, 1.5, "direct", FIRE)
			cast(identity, 4, FIREBOLT, "pet")
			assert.are.same({ nil, nil }, { first, of(identity, 4.5, "direct", FIRE) })
			assert.are.same({}, saved)
		end)

		it("gives no spell when the pet's cast also fits", function()
			local identity = Identity.New({ [SHADOW_BOLT] = { direct = { school = SHADOW, hits = 2 } } })
			cast(identity, 1, SHADOW_BOLT)
			cast(identity, 1.1, FIREBOLT, "pet")
			assert.is_nil(of(identity, 1.5, "direct", SHADOW))
		end)

		it("gives each cast to one Hit only", function()
			local identity = Identity.New({ [SHADOW_BOLT] = { direct = { school = SHADOW, hits = 2 } } })
			cast(identity, 1, SHADOW_BOLT)
			assert.are.same({ SHADOW_BOLT, nil }, { of(identity, 1.5, "direct", SHADOW), of(identity, 1.8, "direct", SHADOW) })
		end)

		it("rules out a cast whose spell has another school, and gives none for a cast more than 1.5 s ago", function()
			local identity = Identity.New({ [SHADOW_BOLT] = { direct = { school = SHADOW, hits = 2 } } })
			cast(identity, 1, IMMOLATE)
			cast(identity, 1.2, SHADOW_BOLT)
			local fire = of(identity, 1.3, "direct", FIRE)
			cast(identity, 5, SHADOW_BOLT)
			assert.are.same({ IMMOLATE, nil }, { fire, of(identity, 6.6, "direct", SHADOW) })
		end)

		it("starts a school again when a Hit disagrees with it", function()
			local saved = { [SHOOT] = { shot = { school = FIRE, hits = 2 } } }
			local identity = Identity.New(saved)
			cast(identity, 1, SHOOT)
			assert.is_nil(of(identity, 1.3, "shot", SHADOW))
			assert.are.same({ school = SHADOW, hits = 1 }, saved[SHOOT].shot)
		end)

		it("gives a miss the spell whose school counts, and learns nothing from it", function()
			local saved = { [SHADOW_BOLT] = { direct = { school = SHADOW, hits = 2 } } }
			local identity = Identity.New(saved)
			cast(identity, 1, SHADOW_BOLT)
			local dodged = of(identity, 1.4, "directMiss", 1)
			cast(identity, 3, SHOOT)
			assert.are.same({ SHADOW_BOLT, nil }, { dodged, of(identity, 3.2, "shotMiss", 1) })
			assert.is_nil(saved[SHOOT])
		end)
	end)

	describe("of a tick", function()
		it("gives the spell whose first tick is due one interval after its cast, then follows its Tick Rhythm", function()
			local identity = Identity.New({})
			cast(identity, 1, CORRUPTION)
			cast(identity, 5, SHADOW_BOLT)
			assert.are.same({ CORRUPTION, CORRUPTION }, { of(identity, 4, "tick", SHADOW), of(identity, 7.05, "tick", SHADOW) })
		end)

		it("gives no spell when two spells' ticks are due, and keeps both Tick Rhythms", function()
			local identity = Identity.New({})
			cast(identity, 1, CORRUPTION)
			cast(identity, 2, AGONY)
			-- Corruption is due at 4, 7 and 10; Agony at 4, 6, 8 and 10.
			local tie = of(identity, 4, "tick", SHADOW)
			assert.are.same({ nil, AGONY, CORRUPTION }, { tie, of(identity, 6, "tick", SHADOW), of(identity, 7, "tick", SHADOW) })
		end)

		it("tells two ticking spells apart by school", function()
			local identity = Identity.New({})
			cast(identity, 1, CORRUPTION)
			cast(identity, 1, IMMOLATE)
			assert.are.same({ IMMOLATE, CORRUPTION }, { of(identity, 4, "tick", FIRE), of(identity, 4, "tick", SHADOW) })
		end)

		it("lets a spell that travels tick first one interval after it lands", function()
			local identity = Identity.New({})
			cast(identity, 1, FIREBALL)
			assert.are.equal(FIREBALL, of(identity, 4, "tick", FIRE))
		end)

		it("follows a Tick Rhythm on its own Nameplate only, and ends it when that Nameplate hides", function()
			local identity = Identity.New({})
			cast(identity, 1, DRAIN_LIFE)
			local first = of(identity, 2, "tick", SHADOW)
			local otherPlate = of(identity, 3, "tick", SHADOW, "nameplate2")
			identity.PlateHidden("nameplate1")
			assert.are.same({ DRAIN_LIFE, nil, nil }, { first, otherPlate, of(identity, 3, "tick", SHADOW) })
		end)

		it("gives no spell to a tick that no spell in the table explains", function()
			local identity = Identity.New({})
			cast(identity, 1, SHADOW_BOLT)
			assert.is_nil(of(identity, 4, "tick", SHADOW))
		end)
	end)

	it("gives no spell to a melee line", function()
		local identity = Identity.New({})
		cast(identity, 1, SHADOW_BOLT)
		assert.is_nil(of(identity, 1.4, "swing", 1))
	end)

	-- Every Warlock Trace through Flow, as the live addon runs, against the
	-- spell of each Label. Wrong is an icon of another spell, or any icon on
	-- a Hit that has none; Unknown is no icon on a Hit whose spell is known.
	describe("on the Warlock Traces", function()
		-- The Unknown count of the first build; a change that raises it loses
		-- icons.
		local UNKNOWN_FLOOR = 40

		local function replay(carryFacts)
			local wrong, unknown, perSpell = {}, 0, {}
			local facts = {}
			for _, name in ipairs(Trace.NAMES) do
				if not carryFacts then
					facts = {}
				end
				local trace = Trace.FillColouring(assert(Trace.Load("spec/traces/" .. name .. ".lua")), ns.LineKind.ColouringOf)
				local spellOf = {}
				for _, row in ipairs(assert(loadfile("spec/traces/" .. name .. ".labels.lua"))()) do
					spellOf[row.hit] = row.spell
				end
				local flow = ns.Flow.New({
					spellFacts = facts,
					show = function(hit, _, spellID)
						local want = spellOf[hit.entry]
						if spellID == nil and want then
							unknown = unknown + 1
							perSpell[want] = (perSpell[want] or 0) + 1
						elseif spellID ~= nil and spellID ~= want then
							wrong[#wrong + 1] = ("%s hit %d: %s, Label %s"):format(name, hit.entry, spellID, tostring(want))
						end
					end,
				})
				for _, entry in ipairs(trace.entries) do
					flow.Push(entry)
				end
				flow.Tick(math.huge)
			end
			return wrong, unknown, perSpell
		end

		it("gives no Wrong icon, with Spell Facts learned in each Trace alone", function()
			local wrong, unknown, perSpell = replay(false)
			local parts = {}
			for spellID, count in pairs(perSpell) do
				parts[#parts + 1] = spellID .. ": " .. count
			end
			table.sort(parts)
			print(("\nSpell Identity: %d Unknown (%s)"):format(unknown, table.concat(parts, ", ")))
			assert.are.same({}, wrong)
			assert.is_true(unknown <= UNKNOWN_FLOOR, ("%d Unknown, more than %d"):format(unknown, UNKNOWN_FLOOR))
		end)

		it("gives no Wrong icon, with Spell Facts carried from Trace to Trace", function()
			assert.are.same({}, (replay(true)))
		end)
	end)
end)
