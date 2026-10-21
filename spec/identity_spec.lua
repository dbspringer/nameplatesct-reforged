_G.issecretvalue = function(value)
	return value == "<secret>"
end
_G.Enum = { CombatLogMessageOrder = { Newest = 0, Oldest = 1 } }

local ns = {}
for _, file in ipairs({ "src/LineKind.lua", "src/Adapter.lua", "src/Pairing.lua", "src/TickSpells.lua", "src/DirectSpells.lua", "src/Identity.lua",
	"src/Flow.lua" }) do
	assert(loadfile(file))("NameplateSCT_Reforged", ns)
end
local Identity = ns.Identity
local Trace = assert(loadfile("tools/trace.lua"))()

local SHADOW_BOLT, SHOOT, FIREBOLT = 705, 5019, 3110
local IMMOLATE, CORRUPTION, AGONY, DRAIN_LIFE, FIREBALL, MIND_FLAY, SERPENT_STING = 707, 6222, 1014, 689, 133, 15407, 1978
local NATURE = 8
local FIRE, SHADOW = 4, 32

local function cast(identity, time, spellID, unit)
	identity.Cast({ kind = "cast", stage = "SUCCEEDED", time = time, spellID = spellID, unit = unit or "player" })
end

-- The spell of a Hit on nameplate1, or the given plate, with a line of this
-- Line Kind.
local function of(identity, time, lineKind, school, unit)
	return identity.Of({ time = time, unit = unit or "nameplate1", school = school }, { lineKind = lineKind })
end

-- The spells of Hits on nameplate1 that came together, each a school and a
-- Line Kind ("tick" when none is given).
local function together(identity, time, hits)
	local decisions = {}
	for i, hit in ipairs(hits) do
		local school, lineKind = hit, "tick"
		if type(hit) == "table" then
			school, lineKind = hit[1], hit[2]
		end
		decisions[i] = { hit = { time = time, unit = "nameplate1", school = school }, line = { lineKind = lineKind } }
	end
	return identity.OfAll(decisions)
end

-- Trace entries for Flow: a cast, a Hit, and a Log Line coloured by kind.
local function castEntry(time, spellID)
	return { time, "UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-" .. time, spellID, "<nil>" }
end
local function hitEntry(time, unit, school)
	return { time, "UNIT_COMBAT", unit, "WOUND", "", 10, school, plate = unit:match("^nameplate") and unit or nil }
end
local LINE_EVENTS = { direct = "SPELL_DAMAGE", tick = "SPELL_PERIODIC_DAMAGE" }
local function lineEntry(time, lineKind)
	local colour = ns.LineKind.EventColours()[LINE_EVENTS[lineKind]]
	return { time, "COMBAT_LOG_MESSAGE", "|Ky1|k", colour.r, colour.g, colour.b, 0, colouring = "kind" }
end

-- The spells that Flow shows with the Hits of these entries, "none" for none.
local function shownSpells(entries, saved)
	local spells = {}
	local flow = ns.Flow.New({
		spellFacts = saved or {},
		show = function(_, _, spellID)
			spells[#spells + 1] = spellID or "none"
		end,
	})
	for _, entry in ipairs(entries) do
		flow.Push(entry)
	end
	flow.Tick(math.huge)
	return spells
end

describe("Spell Identity", function()
	describe("of a direct hit", function()
		it("gives the one cast's spell at once, by the school from the table of spells that hit", function()
			local saved = {}
			local identity = Identity.New(saved)
			cast(identity, 1, SHADOW_BOLT)
			assert.are.equal(SHADOW_BOLT, of(identity, 1.5, "direct", SHADOW))
			assert.are.same({}, saved)
		end)

		it("gives a wand's Shoot once two shots agree on its school", function()
			local identity = Identity.New({})
			cast(identity, 1, SHOOT)
			local first = of(identity, 1.3, "shot", FIRE)
			cast(identity, 3, SHOOT)
			assert.are.same({ nil, SHOOT }, { first, of(identity, 3.3, "shot", FIRE) })
		end)

		it("gives no spell to a Hit that only a buff's cast could explain, and learns nothing from it", function()
			local SLICE_AND_DICE, NATURE_PROC = 5171, 8
			local saved = {}
			local identity = Identity.New(saved)
			local spells = {}
			for i, time in ipairs({ 0, 20, 40 }) do
				cast(identity, time, SLICE_AND_DICE)
				spells[i] = of(identity, time + 0.8, "direct", NATURE_PROC) or "none"
			end
			assert.are.same({ "none", "none", "none" }, spells)
			assert.are.same({}, saved)
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

		it("gives no spell when the pet's cast also fits, and rules out a pet's spell of another school", function()
			local LASH_OF_PAIN = 7814
			local identity = Identity.New({})
			cast(identity, 1, SHADOW_BOLT)
			cast(identity, 1.1, LASH_OF_PAIN, "pet")
			local sameSchool = of(identity, 1.5, "direct", SHADOW)
			cast(identity, 4, SHADOW_BOLT)
			cast(identity, 4.1, FIREBOLT, "pet")
			assert.are.same({ nil, SHADOW_BOLT }, { sameSchool, of(identity, 4.5, "direct", SHADOW) })
		end)

		it("leaves out casts of spells that cannot hit: a buff, the Voidwalker's Torment, a DoT that only ticks", function()
			local LIFE_TAP, TORMENT = 1454, 3716
			local identity = Identity.New({})
			cast(identity, 1, SHADOW_BOLT)
			cast(identity, 1.05, CORRUPTION)
			cast(identity, 1.1, LIFE_TAP)
			cast(identity, 1.2, TORMENT, "pet")
			assert.are.equal(SHADOW_BOLT, of(identity, 1.5, "direct", SHADOW))
		end)

		it("lets a DoT that only ticks compete for a miss, as its application can miss", function()
			local identity = Identity.New({})
			cast(identity, 1, SHADOW_BOLT)
			cast(identity, 1.05, CORRUPTION)
			assert.is_nil(of(identity, 1.5, "directMiss", 1))
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

		it("checks the school of a lone cast's spell from the table", function()
			local identity = Identity.New({})
			cast(identity, 1, IMMOLATE)
			assert.is_nil(of(identity, 1.2, "direct", SHADOW))
		end)

		it("learns nothing from a Hit whose school is secret, and gives its tick the spell all the same", function()
			local saved = {}
			local identity = Identity.New(saved)
			cast(identity, 1, SHADOW_BOLT)
			of(identity, 1.5, "direct", "<secret>")
			cast(identity, 2, CORRUPTION)
			assert.are.same({}, saved)
			assert.are.equal(CORRUPTION, of(identity, 5, "tick", "<secret>"))
		end)

		it("lets a cast whose spell ID is secret compete, but never win or learn", function()
			local saved = {}
			local identity = Identity.New(saved)
			cast(identity, 1, SHADOW_BOLT)
			cast(identity, 1.2, "<secret>")
			local both = of(identity, 1.25, "direct", SHADOW)
			cast(identity, 5, "<secret>")
			assert.are.same({ nil, nil }, { both, of(identity, 5.5, "direct", SHADOW) })
			assert.are.same({}, saved)
		end)

		it("drops saved Spell Facts of the wrong shape, or of a spell that does not learn, and still learns", function()
			local saved = { [SHOOT] = { shot = { school = FIRE } }, [SHADOW_BOLT] = { direct = { school = SHADOW, hits = 2 } },
				[FIREBOLT] = true }
			local identity = Identity.New(saved)
			cast(identity, 1, SHOOT)
			of(identity, 1.3, "shot", FIRE)
			assert.are.same({ [SHOOT] = { shot = { school = FIRE, hits = 1 } } }, saved)
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

		it("lets a spell that travels and hits tick first one interval after it lands, and at no other time", function()
			local identity = Identity.New({})
			cast(identity, 1, FIREBALL)
			local landed = of(identity, 1.8, "direct", FIRE)
			local early = of(identity, 3.2, "tick", FIRE)
			assert.are.same({ FIREBALL, nil, FIREBALL }, { landed, early, of(identity, 3.8, "tick", FIRE) })
		end)

		it("gives no spell to two ticks of one school at once, as Fireball's and Ignite's", function()
			local identity = Identity.New({})
			cast(identity, 1, FIREBALL)
			of(identity, 1.8, "direct", FIRE)
			assert.are.same({}, together(identity, 3.8, { FIRE, FIRE }))
		end)

		it("ends the old Tick Rhythm when the spell lands again, so another tick on it takes none", function()
			local identity = Identity.New({})
			cast(identity, 0, FIREBALL)
			of(identity, 1, "direct", FIRE)
			local first = of(identity, 3, "tick", FIRE)
			cast(identity, 3, FIREBALL)
			of(identity, 3.8, "direct", FIRE)
			-- An Ignite from the first Fireball's crit ticks on the old rhythm.
			local ignite = of(identity, 5, "tick", FIRE)
			assert.are.same({ FIREBALL, nil, FIREBALL }, { first, ignite, of(identity, 5.8, "tick", FIRE) })
		end)

		it("lets a spell that travels without a hit tick for its whole duration after it lands", function()
			local identity = Identity.New({})
			cast(identity, 0, SERPENT_STING)
			local spells = {}
			for i = 0, 4 do
				spells[i + 1] = of(identity, 3.8 + 3 * i, "tick", NATURE)
			end
			assert.are.same({ SERPENT_STING, SERPENT_STING, SERPENT_STING, SERPENT_STING, SERPENT_STING }, spells)
		end)

		it("starts the duration again at a refresh whose ticks come on the old Tick Rhythm", function()
			local identity = Identity.New({})
			cast(identity, 0, CORRUPTION)
			of(identity, 3, "tick", SHADOW)
			cast(identity, 3, CORRUPTION)
			for time = 6, 18, 3 do
				of(identity, time, "tick", SHADOW)
			end
			-- 21 s after the first cast, past its duration.
			assert.are.equal(CORRUPTION, of(identity, 21, "tick", SHADOW))
		end)

		it("counts only real ticks in a crowd: not a resisted tick, nor a direct hit", function()
			local identity = Identity.New({ [SHADOW_BOLT] = { direct = { school = SHADOW, hits = 2 } } })
			cast(identity, 1, CORRUPTION)
			cast(identity, 3.5, SHADOW_BOLT)
			local spells = together(identity, 4, { { SHADOW, "direct" }, SHADOW, { 1, "tickMiss" } })
			assert.are.equal(CORRUPTION, spells[2])
		end)

		it("counts ticks with a secret school in every crowd at their time", function()
			local identity = Identity.New({})
			cast(identity, 1, CORRUPTION)
			assert.are.same({}, together(identity, 4, { "<secret>", SHADOW }))
		end)

		it("gives each cast one first tick on a Nameplate", function()
			local identity = Identity.New({})
			cast(identity, 1, CORRUPTION)
			local first = of(identity, 4, "tick", SHADOW)
			assert.are.same({ CORRUPTION, nil }, { first, of(identity, 4.05, "tick", SHADOW) })
		end)

		it("keeps every recent cast of a spell, so a cast on another Nameplate leaves a tie", function()
			local identity = Identity.New({})
			cast(identity, 0, CORRUPTION)
			cast(identity, 1, AGONY)
			cast(identity, 1.5, CORRUPTION)
			-- The first Corruption and the Agony are both due at 3.
			assert.is_nil(of(identity, 3, "tick", SHADOW))
		end)

		it("gives no ticks to a cast whose application missed, and keeps the other casts", function()
			local identity = Identity.New({})
			cast(identity, 1, CORRUPTION)
			local resisted = of(identity, 1, "directMiss", 1)
			assert.are.same({ CORRUPTION, nil }, { resisted, of(identity, 4, "tick", SHADOW) })
			cast(identity, 10, CORRUPTION)
			cast(identity, 11.6, CORRUPTION)
			of(identity, 11.6, "directMiss", 1, "nameplate2")
			assert.are.equal(CORRUPTION, of(identity, 13, "tick", SHADOW))
		end)

		it("ends a Tick Rhythm when the spell's duration ends", function()
			local identity = Identity.New({})
			cast(identity, 0, MIND_FLAY)
			local ticks = { of(identity, 1, "tick", SHADOW), of(identity, 2, "tick", SHADOW), of(identity, 3, "tick", SHADOW) }
			assert.are.same({ MIND_FLAY, MIND_FLAY, MIND_FLAY }, ticks)
			assert.is_nil(of(identity, 4, "tick", SHADOW))
		end)

		it("keeps a Tick Rhythm through a resisted tick", function()
			local identity = Identity.New({})
			cast(identity, 1, CORRUPTION)
			local ticks = { of(identity, 4, "tick", SHADOW), of(identity, 7, "tickMiss", 1), of(identity, 10, "tick", SHADOW) }
			assert.are.same({ CORRUPTION, CORRUPTION, CORRUPTION }, ticks)
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

	describe("through Flow", function()
		it("sees two ticks of one frame together", function()
			local spells = shownSpells({
				castEntry(1, FIREBALL),
				hitEntry(1.8, "nameplate1", FIRE), lineEntry(1.8, "direct"),
				hitEntry(3.8, "nameplate1", FIRE), hitEntry(3.8, "nameplate1", FIRE),
				lineEntry(3.8, "tick"), lineEntry(3.8, "tick"),
			})
			assert.are.same({ FIREBALL, "none", "none" }, spells)
		end)

		it("uses up the cast of Your Hit on a unit with no Nameplate", function()
			local spells = shownSpells({
				castEntry(1, SHADOW_BOLT),
				hitEntry(1.4, "target", SHADOW), lineEntry(1.4, "direct"),
				hitEntry(1.6, "nameplate1", SHADOW), lineEntry(1.6, "direct"),
			}, { [SHADOW_BOLT] = { direct = { school = SHADOW, hits = 2 } } })
			assert.are.same({ "none" }, spells)
		end)
	end)

	it("gives no spell to a melee line, and learns nothing from it", function()
		local saved = {}
		local identity = Identity.New(saved)
		cast(identity, 1, SHADOW_BOLT)
		assert.is_nil(of(identity, 1.4, "swing", 1))
		assert.are.same({}, saved)
	end)

	-- Every Warlock Trace through Flow, as the live addon runs, against the
	-- spell of each Label. Wrong is an icon of another spell, or any icon on
	-- a Hit that has none; Unknown is no icon on a Hit whose spell is known.
	describe("on the Warlock Traces", function()
		-- The Unknown count of the current build: a change that raises it loses
		-- icons, and one that gains icons lowers it.
		local UNKNOWN_FLOOR = 23

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

		it("gives no Wrong icon, and fewer Unknown, with Spell Facts carried from Trace to Trace", function()
			local wrong, unknown = replay(true)
			assert.are.same({}, wrong)
			assert.is_true(unknown < select(2, replay(false)), "carried Spell Facts gave no more icons")
		end)
	end)
end)
