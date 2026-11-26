_G.issecretvalue = function(value)
	return value == "<secret>"
end
_G.Enum = { CombatLogMessageOrder = { Newest = 0, Oldest = 1 } }

local ns = {}
for _, file in ipairs({ "src/LineKind.lua", "src/TickSpells.lua", "src/Adapter.lua", "src/Pairing.lua", "src/DirectSpells.lua", "src/Identity.lua",
	"src/Flow.lua" }) do
	assert(loadfile(file))("NameplateSCT_Reforged", ns)
end
local Identity = ns.Identity
local Trace = assert(loadfile("tools/trace.lua"))()

local SHADOW_BOLT, SHOOT, FIREBOLT = 705, 5019, 3110
local IMMOLATE, CORRUPTION, AGONY, DRAIN_LIFE, FIREBALL, MIND_FLAY, SERPENT_STING = 707, 6222, 1014, 689, 133, 15407, 1978
local SIPHON_LIFE = 18265
local AUTO_SHOT, RAIN_OF_FIRE, RAIN_OF_FIRE_2, VOLLEY, CONSECRATION = 75, 5740, 6219, 1510, 20116
local PHYSICAL, HOLY, FIRE, NATURE, SHADOW, ARCANE = 1, 2, 4, 8, 32, 64

local function cast(identity, time, spellID, unit, stage)
	identity.Cast({ kind = "cast", stage = stage or "SUCCEEDED", time = time, spellID = spellID, unit = unit or "player" })
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
local LINE_EVENTS = { direct = "SPELL_DAMAGE", tick = "SPELL_PERIODIC_DAMAGE", swing = "SWING_DAMAGE" }
local function lineEntry(time, lineKind)
	local colour = ns.LineKind.EventColours()[LINE_EVENTS[lineKind]]
	return { time, "COMBAT_LOG_MESSAGE", "|Ky1|k", colour.r, colour.g, colour.b, 0, colouring = "kind", lineKind = lineKind }
end

-- The spells that Flow shows with the Hits of these entries, "none" for none.
local function shownSpells(entries, saved)
	local spells = {}
	local flow = ns.Flow.New({
		spellFacts = saved or {},
		show = function(_, spellID)
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
	describe("of a Seal Proc", function()
		local RIGHTEOUSNESS, COMMAND, FURY, WISDOM, MARTYRDOM = 20154, 20375, 1311649, 20166, 407798
		local JUDGEMENT, EXORCISM = 20271, 879

		local function swing(identity, time, fields)
			local line = { kind = "line", time = time, lineKind = "swing" }
			for key, value in pairs(fields or {}) do
				line[key] = value
			end
			identity.Line(line)
		end

		-- An Identity with Seal of Righteousness cast at 1, and a landed swing's
		-- line at 5.
		local function sealed()
			local identity = Identity.New({})
			cast(identity, 1, RIGHTEOUSNESS)
			swing(identity, 5)
			return identity
		end

		it("gives the Active Seal to a Holy Hit on a direct line, up to 0.15 s after a swing line", function()
			assert.are.equal(RIGHTEOUSNESS, of(sealed(), 5, "direct", HOLY))
			assert.are.equal(RIGHTEOUSNESS, of(sealed(), 5.117, "direct", HOLY))
			assert.are.equal(RIGHTEOUSNESS, of(sealed(), 5.149, "direct", HOLY))
		end)

		it("gives each Seal that deals damage, by its own cast", function()
			for _, seal in ipairs({ RIGHTEOUSNESS, COMMAND, FURY, 21084, 20920, 20163 }) do
				local identity = Identity.New({})
				cast(identity, 1, seal)
				swing(identity, 5)
				assert.are.equal(seal, of(identity, 5, "direct", HOLY))
			end
		end)

		it("gives none to a miss, as another on-hit proc's miss looks the same", function()
			assert.is_nil(of(sealed(), 5, "directMiss", PHYSICAL))
		end)

		it("gives none away from a swing line", function()
			assert.is_nil(of(sealed(), 5.16, "direct", HOLY))
			assert.is_nil(of(sealed(), 4.99, "direct", HOLY))
			local noSwing = Identity.New({})
			cast(noSwing, 1, RIGHTEOUSNESS)
			assert.is_nil(of(noSwing, 5, "direct", HOLY))
		end)

		it("gives none after a swing that missed, or the pet's swing", function()
			for _, fields in ipairs({ { lineKind = "swingMiss" }, { pet = true } }) do
				local identity = Identity.New({})
				cast(identity, 1, RIGHTEOUSNESS)
				swing(identity, 5, fields)
				assert.is_nil(of(identity, 5, "direct", HOLY))
			end
		end)

		it("gives none to another school or another Line Kind", function()
			assert.is_nil(of(sealed(), 5, "direct", PHYSICAL))
			assert.is_nil(of(sealed(), 5, "tick", HOLY))
			assert.is_nil(of(sealed(), 5, "direct", "<secret>"))
		end)

		it("ends the Active Seal after 30 s", function()
			local identity = Identity.New({})
			cast(identity, 1, RIGHTEOUSNESS)
			swing(identity, 31)
			assert.are.equal(RIGHTEOUSNESS, of(identity, 31, "direct", HOLY))
			swing(identity, 31.5)
			assert.is_nil(of(identity, 31.5, "direct", HOLY))
		end)

		it("takes the latest Seal, and a Seal with no proc in scope ends the last one", function()
			local identity = sealed()
			cast(identity, 2, COMMAND)
			assert.are.equal(COMMAND, of(identity, 5, "direct", HOLY))
			for _, other in ipairs({ WISDOM, MARTYRDOM }) do
				local replaced = sealed()
				cast(replaced, 2, other)
				assert.is_nil(of(replaced, 5, "direct", HOLY))
			end
		end)

		it("keeps the Active Seal after a Judgement cast, as Forever's Judgement does not end it", function()
			local identity = sealed()
			cast(identity, 3, JUDGEMENT)
			assert.are.equal(RIGHTEOUSNESS, of(identity, 5, "direct", HOLY))
		end)

		it("ends the Active Seal at a cast whose spell ID is secret, as it could be another Seal", function()
			local identity = sealed()
			cast(identity, 3, "<secret>")
			assert.is_nil(of(identity, 5, "direct", HOLY))
		end)

		it("gives none during Consecration, whose ticks look the same", function()
			local during = sealed()
			cast(during, 3, CONSECRATION)
			assert.is_nil(of(during, 5, "direct", HOLY))
			local rank = sealed()
			cast(rank, 3, 26573)
			assert.is_nil(of(rank, 5, "direct", HOLY))
			local after = Identity.New({})
			cast(after, 1, RIGHTEOUSNESS)
			cast(after, 2, CONSECRATION)
			swing(after, 10.5)
			assert.are.equal(RIGHTEOUSNESS, of(after, 10.5, "direct", HOLY))
		end)

		it("gives none when another cast could explain the Hit too", function()
			local identity = Identity.New({})
			cast(identity, 1, RIGHTEOUSNESS)
			cast(identity, 4.9, EXORCISM)
			swing(identity, 5)
			assert.is_nil(of(identity, 5, "direct", HOLY))
			-- The cast stays for its own Hit, which comes away from the swing.
			assert.are.equal(EXORCISM, of(identity, 5.3, "direct", HOLY))
		end)

		it("gives Judgement to a Holy Hit or a miss up to 0.2 s after its cast, and not later", function()
			local function judged()
				local identity = Identity.New({})
				cast(identity, 1, RIGHTEOUSNESS)
				cast(identity, 5, JUDGEMENT)
				return identity
			end
			assert.are.equal(JUDGEMENT, of(judged(), 5, "direct", HOLY))
			assert.are.equal(JUDGEMENT, of(judged(), 5.166, "direct", HOLY))
			assert.are.equal(JUDGEMENT, of(judged(), 5.1, "directMiss", PHYSICAL))
			assert.is_nil(of(judged(), 5.21, "direct", HOLY))
			assert.is_nil(of(judged(), 5, "direct", PHYSICAL))
		end)

		it("gives none after a secret cast for Consecration's whole time, as it could be Consecration", function()
			local identity = Identity.New({})
			cast(identity, 1, "<secret>")
			cast(identity, 2.6, RIGHTEOUSNESS)
			swing(identity, 4)
			assert.is_nil(of(identity, 4, "direct", HOLY))
			swing(identity, 9.5)
			assert.are.equal(RIGHTEOUSNESS, of(identity, 9.5, "direct", HOLY))
		end)

		describe("through Flow, when a cast and a Hit come close together", function()
			local function swingEntries(time)
				return { time, "PLAYER_SWING", 2.9, 0 }, lineEntry(time, "swing")
			end
			local function procEntries(time)
				local swingRecord, swingLine = swingEntries(time)
				return { swingRecord, swingLine, hitEntry(time, "nameplate1", HOLY), lineEntry(time, "direct") }
			end
			local function entriesOf(...)
				local entries = {}
				for _, group in ipairs({ ... }) do
					for _, entry in ipairs(group) do
						entries[#entries + 1] = entry
					end
				end
				return entries
			end

			it("keeps the old Seal for a Proc that came before a new Seal's cast in its frame", function()
				assert.are.same({ RIGHTEOUSNESS }, shownSpells(entriesOf({ castEntry(1, RIGHTEOUSNESS) }, procEntries(5),
					{ castEntry(5, COMMAND) })))
			end)

			it("gives the new Seal to a Proc after its cast in the frame", function()
				assert.are.same({ COMMAND }, shownSpells(entriesOf({ castEntry(1, RIGHTEOUSNESS), castEntry(5, COMMAND) },
					procEntries(5))))
			end)

			it("gives none to a Hit that could be a Proc or a Judgement's, and Judgement once no swing is near", function()
				assert.are.same({ "none", "none" }, shownSpells(entriesOf({ castEntry(1, RIGHTEOUSNESS) }, procEntries(5),
					{ castEntry(5, JUDGEMENT), hitEntry(5.05, "nameplate1", HOLY), lineEntry(5.05, "direct") })))
				assert.are.same({ JUDGEMENT }, shownSpells({ castEntry(1, RIGHTEOUSNESS), castEntry(5, JUDGEMENT),
					hitEntry(5, "nameplate1", HOLY), lineEntry(5, "direct") }))
			end)

			it("gives none to Holy Hits near a Judgement during Consecration, whichever comes first", function()
				local function holy(time)
					return { hitEntry(time, "nameplate1", HOLY), lineEntry(time, "direct") }
				end
				assert.are.same({ "none", "none" }, shownSpells(entriesOf({ castEntry(2, CONSECRATION), castEntry(5.95, JUDGEMENT) },
					holy(6), holy(6.1))))
				assert.are.same({ "none" }, shownSpells(entriesOf({ castEntry(2, CONSECRATION), castEntry(6, JUDGEMENT) },
					holy(6))))
			end)

			it("still counts Consecration for a Hit decided after a later cast that could be Consecration", function()
				local swingRecord, swingLine = swingEntries(5)
				assert.are.same({ "none" }, shownSpells({ castEntry(1, RIGHTEOUSNESS), castEntry(2, CONSECRATION), swingRecord,
					swingLine, hitEntry(5, "nameplate1", HOLY), castEntry(5.05, "<secret>"), lineEntry(5.1, "direct") }))
			end)

			it("keeps the Seal of the Hit's time for a Hit whose line came late", function()
				local swingRecord, swingLine = swingEntries(5)
				assert.are.same({ RIGHTEOUSNESS }, shownSpells({ castEntry(1, RIGHTEOUSNESS), swingRecord, swingLine,
					hitEntry(5, "nameplate1", HOLY), castEntry(5.05, COMMAND), lineEntry(5.1, "direct") }))
			end)
		end)

		it("gives none when Judgement and another cast both fit", function()
			local identity = Identity.New({})
			cast(identity, 4.9, EXORCISM)
			cast(identity, 5, JUDGEMENT)
			assert.is_nil(of(identity, 5, "direct", HOLY))
		end)
	end)

	describe("of a Poison Proc", function()
		local INSTANT_POISON, DEADLY_POISON, SINISTER_STRIKE = 8680, 2818, 1752

		local function swing(identity, time)
			identity.Line({ kind = "line", time = time, lineKind = "swing" })
		end

		it("gives Instant Poison to a Rogue's Nature Hit up to 0.15 s after a swing line", function()
			for _, time in ipairs({ 5, 5.05, 5.149 }) do
				local identity = Identity.New({}, "ROGUE")
				swing(identity, 5)
				assert.are.equal(INSTANT_POISON, of(identity, time, "direct", NATURE))
			end
			local late = Identity.New({}, "ROGUE")
			swing(late, 5)
			assert.is_nil(of(late, 5.2, "direct", NATURE))
		end)

		it("gives Instant Poison to a Rogue's Nature Hit up to 0.15 s after a strike's Hit", function()
			for time, want in pairs({ [5.15] = INSTANT_POISON, [5.3] = false }) do
				local identity = Identity.New({}, "ROGUE")
				cast(identity, 5, SINISTER_STRIKE)
				assert.are.equal(SINISTER_STRIKE, of(identity, 5.1, "direct", PHYSICAL))
				assert.are.equal(want or nil, of(identity, time, "direct", NATURE))
			end
		end)

		it("gives none when a cast also fits, and that cast is used up as before", function()
			local identity = Identity.New({}, "ROGUE")
			swing(identity, 5)
			cast(identity, 5, "<secret>")
			assert.is_nil(of(identity, 5.05, "direct", NATURE))
			cast(identity, 5.2, SINISTER_STRIKE)
			assert.are.equal(SINISTER_STRIKE, of(identity, 5.3, "direct", PHYSICAL))
		end)

		it("gives Deadly Poison to a Rogue's Nature tick that no Tick Rhythm fits", function()
			assert.are.equal(DEADLY_POISON, of(Identity.New({}, "ROGUE"), 5, "tick", NATURE))
		end)

		it("gives no poison to another class", function()
			local identity = Identity.New({}, "WARLOCK")
			swing(identity, 5)
			assert.is_nil(of(identity, 5.05, "direct", NATURE))
			assert.is_nil(of(identity, 6, "tick", NATURE))
		end)
	end)

	describe("of a Brand Proc", function()
		local DEMONIC_BRAND, LASH_OF_PAIN, DEATH_COIL = 1293697, 7814, 6789

		local function swing(identity, time, fields)
			local record = { kind = "line", time = time, lineKind = "swing", pet = true }
			for key, value in pairs(fields or {}) do
				record[key] = value
			end
			identity.Line(record)
		end

		-- A Hit on nameplate1 whose Log Line came at its own time.
		local function hit(identity, time, school, lineKind)
			return identity.Of({ time = time, unit = "nameplate1", school = school },
				{ lineKind = lineKind or "direct", time = time })
		end

		it("gives Demonic Brand to a Warlock's Shadow Hit up to 60 ms after the pet's swing line", function()
			for _, after in ipairs({ 0, 0.023, 0.059 }) do
				local identity = Identity.New({}, "WARLOCK")
				cast(identity, 1, IMMOLATE)
				swing(identity, 1.3)
				assert.are.equal(DEMONIC_BRAND, hit(identity, 1.3 + after, SHADOW), tostring(after))
			end
		end)

		it("gives Demonic Brand to a Hit whose school is secret", function()
			local identity = Identity.New({}, "WARLOCK")
			swing(identity, 1.3)
			assert.are.equal(DEMONIC_BRAND, hit(identity, 1.32, "<secret>"))
		end)

		-- warlock-zf hits 8332 and 8342: the Brand Proc took the in-flight
		-- Shadow Bolt, whose own Hit then had no cast left. A stack of the two
		-- then cost 7 Brand Procs their icon, and no Shadow Hit of the player's
		-- came in the window in any Warlock Trace.
		it("gives Demonic Brand when the player's cast fits too, and leaves the cast", function()
			local identity = Identity.New({}, "WARLOCK")
			cast(identity, 1, DEATH_COIL)
			swing(identity, 1.3)
			local brand = { hit(identity, 1.32, SHADOW) }
			assert.are.same({ { DEMONIC_BRAND }, DEATH_COIL }, { brand, hit(identity, 1.6, SHADOW) })
		end)

		-- A Fire Hit can come in the window too (warlock-zf hits 1272 and
		-- 11085, warlock-rfk hit 1518), so with its school secret it can be
		-- the cast's.
		it("gives a stack of Demonic Brand and the player's cast when the school is secret", function()
			local identity = Identity.New({}, "WARLOCK")
			cast(identity, 1, IMMOLATE)
			swing(identity, 1.3)
			assert.are.same({ nil, { IMMOLATE, DEMONIC_BRAND } }, { hit(identity, 1.32, "<secret>") })
		end)

		it("leaves a Hit to its cast after the pet's swing missed, after 60 ms, after the player's swing, or for another class", function()
			local cases = {
				{ fields = { lineKind = "swingMiss" } },
				{ at = 1.37 },
				{ fields = { pet = false } },
				{ class = "MAGE" },
			}
			for i, case in ipairs(cases) do
				local identity = Identity.New({}, case.class or "WARLOCK")
				cast(identity, 1, SHADOW_BOLT)
				swing(identity, 1.3, case.fields)
				assert.are.equal(SHADOW_BOLT, hit(identity, case.at or 1.32, SHADOW), tostring(i))
			end
		end)

		it("leaves a Fire Hit and a miss to their casts", function()
			local fire = Identity.New({}, "WARLOCK")
			cast(fire, 1, IMMOLATE)
			swing(fire, 1.3)
			local miss = Identity.New({}, "WARLOCK")
			cast(miss, 1, SHADOW_BOLT)
			swing(miss, 1.3)
			assert.are.same({ IMMOLATE, SHADOW_BOLT }, { hit(fire, 1.32, FIRE), hit(miss, 1.32, nil, "directMiss") })
		end)

		-- The pet's Lash of Pain can come in the window too (warlock-zf: 29 of
		-- 113 Lash of Pain lines within 30 ms after a pet swing line).
		it("leaves a Hit that an unused cast of the pet fits to the normal rules", function()
			local identity = Identity.New({}, "WARLOCK")
			cast(identity, 1.29, LASH_OF_PAIN, "pet")
			swing(identity, 1.3)
			assert.are.equal(LASH_OF_PAIN, hit(identity, 1.32, SHADOW))
		end)

		-- warlock-zf: 39 Brand Procs came 0.008 to 0.040 s after the line of a
		-- Lash of Pain Hit. A Shadow Bolt's line came in such a line's frame
		-- (hit 8342).
		it("gives Demonic Brand to a Shadow Hit just after the line of the pet's spell Hit, but not in its frame", function()
			local identity = Identity.New({}, "WARLOCK")
			cast(identity, 1.29, LASH_OF_PAIN, "pet")
			local lash = hit(identity, 1.3, SHADOW)
			cast(identity, 1.3, SHADOW_BOLT)
			local bolt = hit(identity, 1.3, SHADOW)
			assert.are.same({ LASH_OF_PAIN, SHADOW_BOLT, DEMONIC_BRAND }, { lash, bolt, hit(identity, 1.32, SHADOW) })
		end)

		it("gives no Demonic Brand to a Shadow Hit on another plate after the pet's spell Hit", function()
			local identity = Identity.New({}, "WARLOCK")
			cast(identity, 1.29, LASH_OF_PAIN, "pet")
			hit(identity, 1.3, SHADOW)
			local other = identity.Of({ time = 1.32, unit = "nameplate2", school = SHADOW }, { lineKind = "direct", time = 1.32 })
			assert.is_nil(other)
		end)

		-- warlock-zf hit 7893: a Brand Proc while Shadow Bolt flew and the
		-- pet's Lash of Pain had not landed yet.
		it("puts Demonic Brand in the stack when an unused cast of the pet fits too", function()
			local identity = Identity.New({}, "WARLOCK")
			cast(identity, 1, SHADOW_BOLT)
			cast(identity, 1.29, LASH_OF_PAIN, "pet")
			swing(identity, 1.3)
			assert.are.same({ nil, { SHADOW_BOLT, LASH_OF_PAIN, DEMONIC_BRAND } }, { hit(identity, 1.32, SHADOW) })
		end)
	end)

	describe("of a Physical Proc", function()
		local SWEEPING_STRIKES, BLADE_FLURRY, DEEP_WOUNDS, REND, BATTLE_SHOUT = 12292, 13877, 12834, 772, 6673

		-- The spells of Hits that came together, each { time, unit, lineKind,
		-- how }, all Physical.
		local function decide(identity, hits)
			local decisions = {}
			for i, hit in ipairs(hits) do
				decisions[i] = { hit = { time = hit[1], unit = hit[2], school = PHYSICAL }, line = { lineKind = hit[3] },
					how = hit[4] }
			end
			return (identity.OfAll(decisions))
		end

		-- The spell of a castless Physical Hit on nameplate2 just after the
		-- player's swing on nameplate1.
		local function extraStrike(identity, time)
			return decide(identity, { { time, "nameplate1", "swing", "melee" }, { time + 0.03, "nameplate2", "direct" } })[2]
		end

		it("gives Sweeping Strikes to a Warrior's Extra Strikes, at most 5, and only within 10 s of its cast", function()
			local identity = Identity.New({}, "WARRIOR")
			cast(identity, 0, SWEEPING_STRIKES)
			local spells = {}
			for i = 1, 6 do
				spells[i] = extraStrike(identity, i) or "none"
			end
			assert.are.same({ SWEEPING_STRIKES, SWEEPING_STRIKES, SWEEPING_STRIKES, SWEEPING_STRIKES, SWEEPING_STRIKES,
				"none" }, spells)
			cast(identity, 20, SWEEPING_STRIKES)
			assert.is_nil(extraStrike(identity, 30.5))
		end)

		it("gives Blade Flurry to a Rogue's Extra Strikes within 15 s of its cast, and none with no cast or for another class", function()
			local identity = Identity.New({}, "ROGUE")
			cast(identity, 0, BLADE_FLURRY)
			assert.are.equal(BLADE_FLURRY, extraStrike(identity, 14.9))
			assert.is_nil(extraStrike(identity, 15.2))
			assert.is_nil(extraStrike(Identity.New({}, "WARRIOR"), 1))
			local mage = Identity.New({}, "MAGE")
			cast(mage, 0, BLADE_FLURRY)
			assert.is_nil(extraStrike(mage, 1))
		end)

		it("gives a Warrior's castless Physical Hits on a 3 s rhythm Deep Wounds, on tick or direct lines, but not the first", function()
			local identity = Identity.New({}, "WARRIOR")
			cast(identity, 0, BATTLE_SHOUT)
			assert.are.same({ "none", DEEP_WOUNDS, DEEP_WOUNDS, "none", DEEP_WOUNDS }, {
				decide(identity, { { 100, "nameplate1", "tick" } })[1] or "none",
				decide(identity, { { 103, "nameplate1", "direct" } })[1] or "none",
				decide(identity, { { 106.05, "nameplate1", "tick" } })[1] or "none",
				decide(identity, { { 110, "nameplate1", "tick" } })[1] or "none",
				decide(identity, { { 113, "nameplate1", "tick" } })[1] or "none",
			})
			local rogue = Identity.New({}, "ROGUE")
			cast(rogue, 0, BATTLE_SHOUT)
			decide(rogue, { { 100, "nameplate1", "direct" } })
			assert.is_nil(decide(rogue, { { 103, "nameplate1", "direct" } })[1])
		end)

		it("keeps an Extra Strike out of Deep Wounds' rhythm", function()
			local identity = Identity.New({}, "WARRIOR")
			cast(identity, 0, BATTLE_SHOUT)
			decide(identity, { { 97, "nameplate1", "direct" } })
			assert.is_nil(decide(identity, { { 100, "nameplate2", "swing", "melee" }, { 100, "nameplate1", "direct" } })[2])
			assert.is_nil(decide(identity, { { 103, "nameplate1", "direct" } })[1])
			assert.are.equal(DEEP_WOUNDS, decide(identity, { { 106, "nameplate1", "direct" } })[1])
		end)

		it("gives no Extra Strike to two castless Hits in a frame, as each could be the other's trigger", function()
			local identity = Identity.New({}, "WARRIOR")
			cast(identity, 0, SWEEPING_STRIKES)
			assert.are.same({}, decide(identity, { { 1, "nameplate1", "direct" }, { 1, "nameplate2", "direct" } }))
		end)

		it("gives an Extra Strike no buff that was cast after it, when its decision comes late", function()
			local identity = Identity.New({}, "ROGUE")
			cast(identity, 1.1, BLADE_FLURRY)
			assert.is_nil(extraStrike(identity, 1))
			assert.are.equal(BLADE_FLURRY, extraStrike(identity, 1.2))
		end)

		it("takes no unit with a plate life and one without as two units", function()
			local identity = Identity.New({}, "ROGUE")
			cast(identity, 0, BLADE_FLURRY)
			local life = { unitKey = "Creature-1" }
			assert.is_nil(identity.OfAll({
				{ hit = { time = 1, unit = "nameplate1", school = PHYSICAL }, line = { lineKind = "swing" }, how = "melee" },
				{ hit = { time = 1.03, unit = "nameplate1", school = PHYSICAL, life = life }, line = { lineKind = "direct" } },
			})[2])
		end)

		it("keeps Deep Wounds' rhythm on the newer Hit when an older one is decided after it", function()
			local identity = Identity.New({}, "WARRIOR")
			cast(identity, 0, BATTLE_SHOUT)
			decide(identity, { { 103.12, "nameplate1", "direct" } })
			assert.is_nil(decide(identity, { { 103, "nameplate1", "tick" } })[1])
			assert.is_nil(decide(identity, { { 106, "nameplate1", "direct" } })[1])
			assert.are.equal(DEEP_WOUNDS, decide(identity, { { 109.05, "nameplate1", "direct" } })[1])
		end)

		it("gives no Deep Wounds to a Physical tick while Rend can run, as it can be Rend's off its rhythm", function()
			local identity = Identity.New({}, "WARRIOR")
			cast(identity, 0, BATTLE_SHOUT)
			cast(identity, 100, REND)
			decide(identity, { { 101.5, "nameplate1", "tick" } })
			assert.is_nil(decide(identity, { { 104.5, "nameplate1", "tick" } })[1])
		end)
	end)

	describe("of a multi-hit spell", function()
		local WHIRLWIND, MULTI_SHOT, MORTAL_STRIKE = 1680, 2643, 12294

		it("gives Whirlwind to each Hit of one cast, on several units and twice on one, as a dual wield strikes", function()
			local identity = Identity.New({})
			cast(identity, 1, WHIRLWIND)
			assert.are.same({ WHIRLWIND, WHIRLWIND, WHIRLWIND, WHIRLWIND }, {
				of(identity, 1, "direct", PHYSICAL),
				of(identity, 1, "direct", PHYSICAL, "nameplate2"),
				of(identity, 1.01, "direct", PHYSICAL),
				of(identity, 1.05, "direct", PHYSICAL, "nameplate3"),
			})
		end)

		it("closes the cast 0.1 s after its first Hit, where a one-target cast closes at its first", function()
			local identity = Identity.New({})
			cast(identity, 1, WHIRLWIND)
			assert.are.equal(WHIRLWIND, of(identity, 1.3, "direct", PHYSICAL))
			assert.is_nil(of(identity, 1.45, "direct", PHYSICAL, "nameplate2"))
			cast(identity, 5, MORTAL_STRIKE)
			assert.are.equal(MORTAL_STRIKE, of(identity, 5, "direct", PHYSICAL))
			assert.is_nil(of(identity, 5, "direct", PHYSICAL, "nameplate2"))
		end)

		it("keeps Multi-Shot open for its Hits' flight, which spreads them apart", function()
			local identity = Identity.New({})
			cast(identity, 1, MULTI_SHOT)
			assert.are.same({ MULTI_SHOT, MULTI_SHOT, MULTI_SHOT }, {
				of(identity, 1.97, "direct", PHYSICAL),
				of(identity, 2.2, "direct", PHYSICAL, "nameplate2"),
				of(identity, 2.47, "direct", PHYSICAL, "nameplate3"),
			})
		end)
	end)

	describe("of Execute", function()
		local EXECUTE = 5308

		it("gives Execute, whose damage is another spell, to a Physical Hit up to 0.2 s after its cast, and not later", function()
			local function executed()
				local identity = Identity.New({})
				cast(identity, 5, EXECUTE)
				return identity
			end
			assert.are.equal(EXECUTE, of(executed(), 5, "direct", PHYSICAL))
			assert.are.equal(EXECUTE, of(executed(), 5.19, "direct", PHYSICAL))
			assert.is_nil(of(executed(), 5.25, "direct", PHYSICAL))
		end)
	end)

	describe("of a direct hit", function()
		it("gives the one cast's spell at once, by the school from the table of spells that hit", function()
			local saved = {}
			local identity = Identity.New(saved)
			cast(identity, 1, SHADOW_BOLT)
			assert.are.equal(SHADOW_BOLT, of(identity, 1.5, "direct", SHADOW))
			assert.are.same({}, saved)
		end)

		it("gives Forever's own Ferocious Bite, a cast ID that Classic lacks, to its Hit", function()
			local FEROCIOUS_BITE = 1328618
			local identity = Identity.New({})
			cast(identity, 1, FEROCIOUS_BITE)
			assert.are.equal(FEROCIOUS_BITE, of(identity, 1, "direct", PHYSICAL))
		end)

		it("gives Shoot to a shot that lands after a long flight, but no direct spell after that long", function()
			local identity = Identity.New({ [SHOOT] = { school = FIRE, hits = 2 } })
			cast(identity, 1, SHOOT)
			assert.are.equal(SHOOT, of(identity, 3.2, "shot", FIRE))
			cast(identity, 10, SHADOW_BOLT)
			assert.is_nil(of(identity, 12.2, "direct", SHADOW))
		end)

		it("recovers Shoot's icon after a shot that never paired, in continuous fire", function()
			local identity = Identity.New({ [SHOOT] = { school = FIRE, hits = 2 } })
			cast(identity, 0, SHOOT)
			cast(identity, 1.8, SHOOT)
			local second = of(identity, 2.2, "shot", FIRE)
			cast(identity, 3.6, SHOOT)
			local third = of(identity, 4, "shot", FIRE)
			assert.are.same({ SHOOT, SHOOT }, { second, third })
		end)

		it("gives each of two shots in flight Shoot's icon", function()
			local identity = Identity.New({ [SHOOT] = { school = FIRE, hits = 2 } })
			cast(identity, 0, SHOOT)
			cast(identity, 1.7, SHOOT)
			local first = of(identity, 1.75, "shot", FIRE)
			local second = of(identity, 3.4, "shot", FIRE)
			assert.are.same({ SHOOT, SHOOT }, { first, second })
		end)

		it("gives no icon when two different ranged attacks fit a shot", function()
			local identity = Identity.New({})
			cast(identity, 0, SHOOT)
			cast(identity, 1, AUTO_SHOT)
			assert.is_nil(of(identity, 1.5, "shot", PHYSICAL))
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

		it("gives the pet's spell to a Hit that the pet's cast explains, and learns nothing from it", function()
			local saved = {}
			local identity = Identity.New(saved)
			cast(identity, 1, FIREBOLT, "pet")
			local first = of(identity, 1.5, "direct", FIRE)
			cast(identity, 4, FIREBOLT, "pet")
			assert.are.same({ FIREBOLT, FIREBOLT }, { first, of(identity, 4.5, "direct", FIRE) })
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

		it("lets a DoT that only ticks compete for a miss at its cast, as its application can miss", function()
			local identity = Identity.New({})
			cast(identity, 1, SHADOW_BOLT)
			cast(identity, 1.05, CORRUPTION)
			assert.is_nil(of(identity, 1.05, "directMiss", 1))
		end)

		it("gives another source's later miss to no DoT, which keeps its ticks", function()
			local RUPTURE = 1943
			local identity = Identity.New({})
			cast(identity, 0, RUPTURE)
			local poisonResist = of(identity, 0.2, "directMiss", 1)
			assert.are.same({ nil, RUPTURE, RUPTURE }, { poisonResist, of(identity, 2, "tick", PHYSICAL), of(identity, 4, "tick", PHYSICAL) })
		end)

		it("gives a lone cast whose school is fixed no Hit of another school, and keeps it for its own", function()
			local LIGHTNING_BOLT, FIRE_PROC = 403, FIRE
			local identity = Identity.New({})
			cast(identity, 0, LIGHTNING_BOLT)
			local proc = of(identity, 0.4, "direct", FIRE_PROC)
			assert.are.same({ nil, LIGHTNING_BOLT }, { proc, of(identity, 0.9, "direct", NATURE) })
		end)

		it("keeps shots and direct hits apart: Shoot takes no direct hit, a direct spell no shot", function()
			local MULTI_SHOT = 2643
			local saved = {}
			local identity = Identity.New(saved)
			cast(identity, 0, SHOOT)
			local proc = of(identity, 0.2, "direct", SHADOW)
			cast(identity, 3, AUTO_SHOT)
			cast(identity, 3.2, MULTI_SHOT)
			-- The shot comes first, so Multi-Shot's cast is still there to compete.
			local shot = of(identity, 3.3, "shot", PHYSICAL)
			local spells = { proc, shot, of(identity, 3.5, "direct", PHYSICAL) }
			assert.are.same({ nil, AUTO_SHOT, MULTI_SHOT }, spells)
			assert.are.same({}, saved)
		end)

		it("gives a shot no ticking spell, and a miss of a spell that travels its spell after its flight", function()
			local identity = Identity.New({})
			cast(identity, 0, SERPENT_STING)
			cast(identity, 0.5, AUTO_SHOT)
			local dodged = of(identity, 0.6, "shotMiss", 1)
			cast(identity, 5, FIREBALL)
			assert.are.same({ AUTO_SHOT, SERPENT_STING, FIREBALL },
				{ dodged, of(identity, 3.5, "tick", NATURE), of(identity, 5.8, "directMiss", 1) })
		end)

		it("gives no spell to a cast after the Hit's time", function()
			local identity = Identity.New({})
			cast(identity, 2, SHADOW_BOLT)
			assert.are.same({ nil, SHADOW_BOLT }, { of(identity, 1.9, "direct", SHADOW), of(identity, 2.4, "direct", SHADOW) })
		end)

		it("gives each cast to one Hit only", function()
			local identity = Identity.New({})
			cast(identity, 1, SHADOW_BOLT)
			assert.are.same({ SHADOW_BOLT, nil }, { of(identity, 1.5, "direct", SHADOW), of(identity, 1.8, "direct", SHADOW) })
		end)

		it("rules out a cast whose spell has another school, and gives none for a cast more than 1.5 s ago", function()
			local identity = Identity.New({})
			cast(identity, 1, IMMOLATE)
			cast(identity, 1.2, SHADOW_BOLT)
			local fire = of(identity, 1.3, "direct", FIRE)
			cast(identity, 5, SHADOW_BOLT)
			assert.are.same({ IMMOLATE, nil }, { fire, of(identity, 6.6, "direct", SHADOW) })
		end)

		it("starts a school that does not count yet again when a Hit disagrees with it", function()
			local saved = { [SHOOT] = { school = FIRE, hits = 1 } }
			local identity = Identity.New(saved)
			cast(identity, 1, SHOOT)
			assert.is_nil(of(identity, 1.3, "shot", SHADOW))
			assert.are.same({ school = SHADOW, hits = 1 }, saved[SHOOT])
		end)

		it("keeps a school that counts when one Hit disagrees with it, as another player's Hit can take a shot's line", function()
			local saved = { [SHOOT] = { school = FIRE, hits = 2 } }
			local identity = Identity.New(saved)
			cast(identity, 1, SHOOT)
			of(identity, 1.3, "shot", SHADOW)
			assert.are.equal(FIRE, identity.SchoolOf(SHOOT))
			cast(identity, 3, SHOOT)
			of(identity, 3.3, "shot", FIRE)
			cast(identity, 5, SHOOT)
			of(identity, 5.3, "shot", SHADOW)
			assert.are.equal(FIRE, identity.SchoolOf(SHOOT))
		end)

		it("starts a school that counts again at the second Hit in a row of one other school, as a new wand changes it", function()
			local saved = { [SHOOT] = { school = FIRE, hits = 2 } }
			local identity = Identity.New(saved)
			cast(identity, 1, SHOOT)
			of(identity, 1.3, "shot", SHADOW)
			cast(identity, 3, SHOOT)
			of(identity, 3.3, "shot", SHADOW)
			assert.are.same({ school = SHADOW, hits = 1 }, saved[SHOOT])
		end)

		it("checks the school of a lone cast's spell from the table", function()
			local identity = Identity.New({})
			cast(identity, 1, IMMOLATE)
			assert.is_nil(of(identity, 1.2, "direct", SHADOW))
		end)

		it("learns nothing from a Hit whose school is secret, and gives its tick the spell all the same", function()
			local saved = {}
			local identity = Identity.New(saved)
			cast(identity, 1, SHOOT)
			of(identity, 1.3, "shot", "<secret>")
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
			local saved = { [SHOOT] = { school = FIRE }, [SHADOW_BOLT] = { school = SHADOW, hits = 2 }, [FIREBOLT] = true }
			local identity = Identity.New(saved)
			cast(identity, 1, SHOOT)
			of(identity, 1.3, "shot", FIRE)
			assert.are.same({ [SHOOT] = { school = FIRE, hits = 1 } }, saved)
		end)

		it("drops Spell Facts saved by group, as before release 1", function()
			local saved = { [SHOOT] = { shot = { school = FIRE, hits = 2 } } }
			Identity.New(saved)
			assert.are.same({}, saved)
		end)

		it("gives a miss the spell whose school counts, and learns nothing from it", function()
			local saved = {}
			local identity = Identity.New(saved)
			cast(identity, 1, SHADOW_BOLT)
			local dodged = of(identity, 1.4, "directMiss", 1)
			cast(identity, 3, SHOOT)
			assert.are.same({ SHADOW_BOLT, nil }, { dodged, of(identity, 3.2, "shotMiss", 1) })
			assert.is_nil(saved[SHOOT])
		end)
	end)

	-- On Forever an area spell's ticks come as direct Log Lines.
	describe("of an area spell's tick", function()
		it("gives the area spell to direct hits each interval after its cast, on every Nameplate, until its duration ends", function()
			local identity = Identity.New({})
			cast(identity, 0, RAIN_OF_FIRE)
			assert.are.same({ RAIN_OF_FIRE, RAIN_OF_FIRE, RAIN_OF_FIRE, nil }, {
				of(identity, 2, "direct", FIRE),
				of(identity, 2, "direct", FIRE, "nameplate2"),
				of(identity, 4, "direct", FIRE),
				of(identity, 10, "direct", FIRE),
			})
		end)

		it("keeps to the area's last tick, so ticks that come later each time still fit", function()
			local identity = Identity.New({})
			cast(identity, 0, RAIN_OF_FIRE)
			assert.are.same({ RAIN_OF_FIRE, RAIN_OF_FIRE, RAIN_OF_FIRE }, {
				of(identity, 2.06, "direct", FIRE),
				of(identity, 4.12, "direct", FIRE),
				of(identity, 6.18, "direct", FIRE),
			})
		end)

		it("gives none when a cast that hits fits the same direct hit, and leaves that cast for its own hit", function()
			local identity = Identity.New({})
			cast(identity, 0, RAIN_OF_FIRE)
			cast(identity, 1, IMMOLATE)
			assert.is_nil(of(identity, 2, "direct", FIRE))
			assert.are.equal(IMMOLATE, of(identity, 2.3, "direct", FIRE))
		end)

		it("gives none when two casts that hit fit the same direct hit, even if one is the pet's", function()
			local identity = Identity.New({})
			cast(identity, 0, RAIN_OF_FIRE)
			cast(identity, 1, IMMOLATE)
			cast(identity, 1.2, FIREBOLT, "pet")
			assert.is_nil(of(identity, 2, "direct", FIRE))
		end)

		it("gives none when two area spells fit, and leaves a cast that hits for its own hit", function()
			local identity = Identity.New({})
			cast(identity, 0, RAIN_OF_FIRE)
			cast(identity, 0, RAIN_OF_FIRE_2)
			cast(identity, 1, IMMOLATE)
			assert.are.same({ nil, IMMOLATE }, { of(identity, 2, "direct", FIRE), of(identity, 2.3, "direct", FIRE) })
		end)

		it("leaves a direct hit of another school to its own cast", function()
			local identity = Identity.New({})
			cast(identity, 0, RAIN_OF_FIRE)
			cast(identity, 1.6, SHADOW_BOLT)
			assert.are.equal(SHADOW_BOLT, of(identity, 2, "direct", SHADOW))
		end)

		it("keeps the area's cast for its whole duration, though later casts prune old ones", function()
			local identity = Identity.New({})
			cast(identity, 0, RAIN_OF_FIRE)
			cast(identity, 5.5, CORRUPTION)
			assert.are.same({ RAIN_OF_FIRE, RAIN_OF_FIRE }, { of(identity, 6, "direct", FIRE), of(identity, 8, "direct", FIRE) })
		end)

		it("ends a channelled area spell's ticks when its channel stops", function()
			local identity = Identity.New({})
			cast(identity, 0, RAIN_OF_FIRE)
			assert.are.equal(RAIN_OF_FIRE, of(identity, 2, "direct", FIRE))
			cast(identity, 2.5, RAIN_OF_FIRE, "player", "CHANNEL_STOP")
			assert.is_nil(of(identity, 4, "direct", FIRE))
		end)

		-- warlock-zf and warlock-sm-armory: 11 Hellfire Hits in five stop frames.
		it("gives a channelled area spell's tick in its stop's frame its spell, though it is off the grid", function()
			local identity = Identity.New({})
			cast(identity, 0, RAIN_OF_FIRE)
			assert.are.equal(RAIN_OF_FIRE, of(identity, 2, "direct", FIRE))
			cast(identity, 3.2, RAIN_OF_FIRE, "player", "CHANNEL_STOP")
			assert.are.same({ RAIN_OF_FIRE, nil }, { of(identity, 3.2, "direct", FIRE), of(identity, 3.4, "direct", FIRE) })
		end)

		it("gives a recast its own ticks when its cast comes before the old channel's stop", function()
			local identity = Identity.New({})
			cast(identity, 0, RAIN_OF_FIRE)
			cast(identity, 3, RAIN_OF_FIRE)
			cast(identity, 3, RAIN_OF_FIRE, "player", "CHANNEL_STOP")
			assert.are.equal(RAIN_OF_FIRE, of(identity, 5, "direct", FIRE))
		end)

		it("lets the first tick of an area spell that travels come up to its flight later", function()
			local identity = Identity.New({})
			cast(identity, 0, VOLLEY)
			assert.are.same({ VOLLEY, VOLLEY }, { of(identity, 1.3, "direct", ARCANE), of(identity, 2.3, "direct", ARCANE) })
		end)

		it("gives a resisted tick of an area spell that travels its spell, though its cast could have missed", function()
			local identity = Identity.New({})
			cast(identity, 0, VOLLEY)
			assert.are.equal(VOLLEY, of(identity, 1.3, "directMiss", 1))
		end)

		it("gives an area spell that is not a channel to no direct hit, as a seal's proc could land on its grid", function()
			local identity = Identity.New({})
			cast(identity, 0, CONSECRATION)
			assert.is_nil(of(identity, 1, "direct", HOLY))
		end)

		it("never takes a tick Log Line, so it does not tie with another spell's tick", function()
			local identity = Identity.New({})
			cast(identity, 0, IMMOLATE)
			cast(identity, 1, RAIN_OF_FIRE)
			assert.are.equal(IMMOLATE, of(identity, 3, "tick", FIRE))
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
			local REND = 772
			local identity = Identity.New({})
			cast(identity, 1, CORRUPTION)
			cast(identity, 3.5, SHADOW_BOLT)
			local spells = together(identity, 4, { { SHADOW, "direct" }, SHADOW })
			cast(identity, 10, REND)
			assert.are.same({ CORRUPTION, REND }, { spells[2], together(identity, 13, { PHYSICAL, { 1, "tickMiss" } })[1] })
		end)

		it("does not crowd ticks on two plate lives of one token, which were two units", function()
			local identity = Identity.New({})
			cast(identity, 0, CORRUPTION)
			local spells = identity.OfAll({
				{ hit = { time = 3, unit = "nameplate1", school = SHADOW, life = {} }, line = { lineKind = "tick" } },
				{ hit = { time = 3, unit = "nameplate1", school = SHADOW, life = {} }, line = { lineKind = "tick" } },
			})
			assert.are.equal(CORRUPTION, spells[2])
		end)

		it("does not crowd ticks at once on two Nameplates", function()
			local identity = Identity.New({})
			cast(identity, 1, CORRUPTION)
			cast(identity, 1, CORRUPTION)
			local spells = identity.OfAll({
				{ hit = { time = 4, unit = "nameplate1", school = SHADOW }, line = { lineKind = "tick" } },
				{ hit = { time = 4, unit = "nameplate2", school = SHADOW }, line = { lineKind = "tick" } },
			})
			assert.are.same({ CORRUPTION, CORRUPTION }, spells)
		end)

		describe("with the cast's target", function()
			-- A player's cast on nameplate1, the target when it started.
			local function castOn(identity, time, spellID)
				identity.Cast({ kind = "cast", stage = "SUCCEEDED", time = time, spellID = spellID, unit = "player",
					startTargetLife = "nameplate1" })
			end

			-- warlock-tick-jitter: one tick came 0.17 s late, and the next on the
			-- rhythm again.
			it("gives none to one late tick, and the spell again to the next tick on the rhythm", function()
				local identity = Identity.New({})
				castOn(identity, 0, AGONY)
				local spells = { of(identity, 2, "tick", SHADOW), of(identity, 4.17, "tick", SHADOW) }
				spells[3] = of(identity, 6, "tick", SHADOW)
				assert.are.same({ AGONY, nil, AGONY }, spells)
			end)

			-- warlock-tick-jitter: Drain Life's first tick came 0.18 s late.
			it("gives a later tick its spell when the first tick came late", function()
				local identity = Identity.New({})
				castOn(identity, 0, DRAIN_LIFE)
				local late = of(identity, 1.18, "tick", SHADOW)
				assert.are.same({ nil, DRAIN_LIFE, DRAIN_LIFE }, { late, of(identity, 2, "tick", SHADOW), of(identity, 3, "tick", SHADOW) })
			end)

			-- warlock-rfk and warlock-bfd-group: a cast on one mob fitted the
			-- ticks of the same spell on another.
			it("gives a tick on another Nameplate none", function()
				local identity = Identity.New({})
				castOn(identity, 0, CORRUPTION)
				assert.are.same({ nil, CORRUPTION }, { of(identity, 3, "tick", SHADOW, "nameplate2"), of(identity, 3, "tick", SHADOW) })
			end)

			it("fits no tick to a cast older than a refresh, whose ticks the refresh replaced", function()
				local identity = Identity.New({})
				castOn(identity, 0, CORRUPTION)
				of(identity, 3, "tick", SHADOW)
				castOn(identity, 4, CORRUPTION)
				of(identity, 7, "tick", SHADOW)
				castOn(identity, 7, AGONY)
				-- The first cast's grid (0, 3, 6, 9) is gone; Corruption is due at 10.
				assert.are.equal(AGONY, of(identity, 9, "tick", SHADOW))
			end)

			it("ends the replaced rhythm at a refresh, even when the refresh's first tick comes late", function()
				local identity = Identity.New({})
				castOn(identity, 0, CORRUPTION)
				of(identity, 3, "tick", SHADOW)
				castOn(identity, 4, CORRUPTION)
				castOn(identity, 7, AGONY)
				local late = of(identity, 7.17, "tick", SHADOW)
				-- The old rhythm (3, 6, 9) is gone; the refresh is due at 10.
				assert.are.same({ nil, AGONY, CORRUPTION }, { late, of(identity, 9, "tick", SHADOW), of(identity, 10, "tick", SHADOW) })
			end)

			it("starts no rhythm from a cast that a later refresh replaced", function()
				local identity = Identity.New({})
				castOn(identity, 0, CORRUPTION)
				of(identity, 3, "tick", SHADOW)
				castOn(identity, 4, CORRUPTION)
				castOn(identity, 6, AGONY)
				of(identity, 7.17, "tick", SHADOW)
				castOn(identity, 8, CORRUPTION)
				-- The refresh at 4 is replaced; Corruption is due at 11.
				assert.are.same({ AGONY, AGONY }, { of(identity, 8, "tick", SHADOW), of(identity, 10, "tick", SHADOW) })
			end)

			it("stops a channel whose cast is older than the casts kept", function()
				local DRAIN_SOUL = 1120
				local identity = Identity.New({})
				castOn(identity, 0, DRAIN_SOUL)
				for time = 3, 12, 3 do
					of(identity, time, "tick", SHADOW)
				end
				cast(identity, 12.5, FIREBOLT, "pet")
				identity.Cast({ kind = "cast", stage = "CHANNEL_STOP", time = 13, spellID = DRAIN_SOUL, unit = "player" })
				castOn(identity, 13, AGONY)
				assert.are.equal(AGONY, of(identity, 15, "tick", SHADOW))
			end)

			-- warlock-drain-life: a stop marked a Drain Life cast from 25 s before,
			-- which a rhythm on another mob still held, and not the channel it ended.
			it("stops the channel that can still run, not an older one whose stop never came", function()
				local identity = Identity.New({})
				identity.Cast({ kind = "cast", stage = "SUCCEEDED", time = 0, spellID = DRAIN_LIFE, unit = "player",
					startTargetLife = "nameplate2" })
				of(identity, 1, "tick", SHADOW, "nameplate2")
				castOn(identity, 20, DRAIN_LIFE)
				for time = 21, 23 do
					of(identity, time, "tick", SHADOW)
				end
				castOn(identity, 23, AGONY)
				identity.Cast({ kind = "cast", stage = "CHANNEL_STOP", time = 23.5, spellID = DRAIN_LIFE, unit = "player" })
				-- Agony's first tick is due at 25, as Drain Life's would be had it not stopped.
				assert.are.equal(AGONY, of(identity, 25, "tick", SHADOW))
			end)

			it("fits no tick to a channel after it stopped", function()
				local identity = Identity.New({})
				castOn(identity, 0, DRAIN_LIFE)
				local first = of(identity, 1, "tick", SHADOW)
				identity.Cast({ kind = "cast", stage = "CHANNEL_STOP", time = 1.2, spellID = DRAIN_LIFE, unit = "player" })
				castOn(identity, 2, AGONY)
				assert.are.same({ DRAIN_LIFE, AGONY, nil }, { first, of(identity, 4, "tick", SHADOW), of(identity, 5, "tick", SHADOW) })

				local stoppedEarly = Identity.New({})
				castOn(stoppedEarly, 0, DRAIN_LIFE)
				stoppedEarly.Cast({ kind = "cast", stage = "CHANNEL_STOP", time = 0.5, spellID = DRAIN_LIFE, unit = "player" })
				castOn(stoppedEarly, 2, AGONY)
				assert.are.equal(AGONY, of(stoppedEarly, 4, "tick", SHADOW))
			end)

			-- warlock-rfk and warlock-bfd-group: the target at a cast's end is the
			-- player's target then, which can differ from the mob the spell went to.
			it("takes the target when the cast started, as the player can change target during a cast", function()
				local entries = {
					{ 0, "UNIT_SPELLCAST_SENT", "player", "<secret>", "Cast-0", IMMOLATE, target = "nameplate1" },
					{ 2, "UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-0", IMMOLATE, "<nil>", target = "nameplate2" },
					lineEntry(5, "tick"),
					hitEntry(5, "nameplate2", FIRE),
					lineEntry(5.05, "tick"),
					hitEntry(5.05, "nameplate1", FIRE),
				}
				assert.are.same({ "none", IMMOLATE }, shownSpells(entries))
			end)

			-- A cast whose SENT named nameplate1, through Flow.
			local function castEntries(time, spellID)
				local castGUID = "Cast-" .. time .. "-" .. spellID
				return { time, "UNIT_SPELLCAST_SENT", "player", "<secret>", castGUID, spellID, target = "nameplate1" },
					{ time, "UNIT_SPELLCAST_SUCCEEDED", "player", castGUID, spellID, "<nil>", target = "nameplate1" }
			end
			local function stopEntry(time, spellID)
				return { time, "UNIT_SPELLCAST_CHANNEL_STOP", "player", "<nil>", spellID, "<nil>", "CastBar-1" }
			end
			local function tickEntries(time)
				return lineEntry(time, "tick"), hitEntry(time, "nameplate1", SHADOW)
			end
			-- The entries 100 s later, after a cast at 0, so that Identity has run
			-- longer than any DoT that could have been cast before it started
			-- (see stopTickOf).
			local function afterStartup(entries)
				local later = { castEntry(0, SHADOW_BOLT) }
				for _, entry in ipairs(entries) do
					local copy = {}
					for key, value in pairs(entry) do
						copy[key] = value
					end
					copy[1] = entry[1] + 100
					later[#later + 1] = copy
				end
				return later
			end
			local function entriesOf(...)
				local entries = {}
				for _, group in ipairs({ ... }) do
					for _, entry in ipairs(group) do
						entries[#entries + 1] = entry
					end
				end
				return entries
			end

			-- warlock-drain-life: channels that stopped at about 3.75 s gave a tick
			-- in the stop's frame, before the stop.
			it("gives a Stop Tick its channel's spell, off the channel's rhythm", function()
				local entries = entriesOf({ castEntries(0, DRAIN_LIFE) }, { tickEntries(1) }, { tickEntries(2) },
					{ tickEntries(3) }, { tickEntries(3.75) }, { stopEntry(3.75, DRAIN_LIFE) })
				assert.are.same({ DRAIN_LIFE, DRAIN_LIFE, DRAIN_LIFE, DRAIN_LIFE }, shownSpells(afterStartup(entries)))
			end)

			-- warlock-rfk 25337: the channel's last tick came 2 s before its stop,
			-- and the Hit in the stop's frame was another player's, whose kill
			-- stopped the channel.
			it("gives no Stop Tick when the channel's last tick there came an interval or more before", function()
				local entries = entriesOf({ castEntries(0, DRAIN_LIFE) }, { tickEntries(1) }, { tickEntries(2) },
					{ tickEntries(3.5) }, { stopEntry(3.5, DRAIN_LIFE) })
				assert.are.same({ DRAIN_LIFE, DRAIN_LIFE, "none" }, shownSpells(afterStartup(entries)))
			end)

			-- Codex review of warlock-drain-life 3011, 60 ms earlier: a Corruption
			-- tick a little off its rhythm killed the mob, and the kill stopped the
			-- channel in its frame.
			it("gives no Stop Tick when another DoT's tick is due near it", function()
				local entries = entriesOf({ castEntries(0, CORRUPTION) }, { tickEntries(3) }, { castEntries(3.2, DRAIN_LIFE) },
					{ tickEntries(4.2) }, { tickEntries(5.2) }, { tickEntries(5.88) }, { stopEntry(5.88, DRAIN_LIFE) })
				assert.are.same({ CORRUPTION, DRAIN_LIFE, DRAIN_LIFE, "none" }, shownSpells(afterStartup(entries)))
			end)

			-- Codex review: the killing tick was a rival DoT's first tick, from its
			-- cast or a refresh, which no rhythm holds yet.
			it("gives no Stop Tick when another DoT's first tick is due near it", function()
				local first = entriesOf({ castEntries(0, CORRUPTION) }, { castEntries(1.5, DRAIN_LIFE) }, { tickEntries(2.5) },
					{ tickEntries(3.12) }, { stopEntry(3.12, DRAIN_LIFE) })
				local refresh = entriesOf({ castEntries(0, CORRUPTION) }, { tickEntries(3) }, { castEntries(3.5, CORRUPTION) },
					{ castEntries(5, DRAIN_LIFE) }, { tickEntries(6) }, { tickEntries(6.62) }, { stopEntry(6.62, DRAIN_LIFE) })
				assert.are.same({ DRAIN_LIFE, "none" }, shownSpells(afterStartup(first)))
				assert.are.same({ CORRUPTION, DRAIN_LIFE, "none" }, shownSpells(afterStartup(refresh)))
			end)

			-- Codex review: the rival's killing tick came 0.185 s off its last
			-- tick's grid, but 0.205 s off the mean of its ticks.
			it("gives no Stop Tick when another DoT's tick is due near it on its last tick's grid", function()
				local entries = entriesOf({ castEntries(0, CORRUPTION) }, { tickEntries(3.02) }, { tickEntries(6) },
					{ tickEntries(9.04) }, { castEntries(10.4, DRAIN_LIFE) }, { tickEntries(11.4) }, { tickEntries(12.225) },
					{ stopEntry(12.225, DRAIN_LIFE) })
				assert.are.same({ CORRUPTION, CORRUPTION, CORRUPTION, DRAIN_LIFE, "none" }, shownSpells(afterStartup(entries)))
			end)

			-- Codex review: the rival's last tick came 0.07 s early and its killing
			-- tick 0.17 s late, off its last tick's grid but near its cast's.
			it("gives no Stop Tick when another DoT's tick is due near it on its cast's grid", function()
				local entries = entriesOf({ castEntries(0, CORRUPTION) }, { tickEntries(3) }, { tickEntries(6) }, { tickEntries(9) },
					{ tickEntries(11.93) }, { castEntries(12.4, DRAIN_LIFE) }, { tickEntries(13.4) }, { tickEntries(14.4) },
					{ tickEntries(15.17) }, { stopEntry(15.17, DRAIN_LIFE) })
				local spells = shownSpells(afterStartup(entries))
				assert.are.equal("none", spells[#spells])
			end)

			-- Codex review: a rival DoT cast with a secret GUID never set up a
			-- rhythm, and its cast record was gone by the time it killed the mob.
			it("gives no Stop Tick when a DoT cast long ago, with no rhythm, has a tick due near it", function()
				local entries = entriesOf({
					{ 0, "UNIT_SPELLCAST_SENT", "player", "<secret>", "<secret>", CORRUPTION, target = "nameplate1" },
					{ 0, "UNIT_SPELLCAST_SUCCEEDED", "player", "<secret>", CORRUPTION, "<nil>", target = "nameplate1" },
				}, { tickEntries(3.18) }, { tickEntries(6) }, { tickEntries(9) }, { tickEntries(12) },
					{ castEntries(12.4, DRAIN_LIFE) }, { tickEntries(13.4) }, { tickEntries(14.4) }, { tickEntries(15.17) },
					{ stopEntry(15.17, DRAIN_LIFE) })
				local spells = shownSpells(afterStartup(entries))
				assert.are.equal("none", spells[#spells])
			end)

			-- Codex review: Doom's one tick at 60 s, or a DoT cast whose spell ID
			-- is secret, can kill the mob in the stop's frame.
			it("gives no Stop Tick when Doom or a cast with a secret spell ID could make the tick", function()
				local CURSE_OF_DOOM = 603
				local doom = entriesOf({ castEntries(0, CURSE_OF_DOOM) }, { castEntries(57.3, DRAIN_LIFE) }, { tickEntries(58.3) },
					{ tickEntries(59.3) }, { tickEntries(60) }, { stopEntry(60, DRAIN_LIFE) })
				local secret = entriesOf({
					{ 0, "UNIT_SPELLCAST_SENT", "player", "<secret>", "Cast-secret", "<secret>", target = "nameplate1" },
					{ 0, "UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-secret", "<secret>", "<nil>", target = "nameplate1" },
				}, { castEntries(4, DRAIN_LIFE) }, { tickEntries(5) }, { tickEntries(5.8) }, { stopEntry(5.8, DRAIN_LIFE) })
				local doomSpells, secretSpells = shownSpells(afterStartup(doom)), shownSpells(afterStartup(secret))
				assert.are.same({ "none", "none" }, { doomSpells[#doomSpells], secretSpells[#secretSpells] })
			end)

			-- Codex review: the Nameplate hid and showed again, which starts a new
			-- plate life for the same mob, and its Corruption then killed it.
			it("gives no Stop Tick when a DoT cast on an earlier life of the Nameplate has a tick due near it", function()
				local entries = entriesOf({ castEntries(0, CORRUPTION) }, { tickEntries(3) },
					{ { 3.3, "NAME_PLATE_UNIT_REMOVED", "nameplate1" }, { 3.4, "NAME_PLATE_UNIT_ADDED", "nameplate1" } },
					{ castEntries(3.5, DRAIN_LIFE) }, { tickEntries(4.5) }, { tickEntries(5.5) }, { tickEntries(6.12) },
					{ stopEntry(6.12, DRAIN_LIFE) })
				local spells = shownSpells(afterStartup(entries))
				assert.are.equal("none", spells[#spells])
			end)

			-- Codex review: replaying warlock-drain-life from entry 3919, as after
			-- a /reload, gave Corruption's killing tick (hit 3941) Drain Life's icon,
			-- as no cast showed that Corruption was running.
			it("gives no Stop Tick while a DoT cast before Identity started could still run", function()
				local entries = entriesOf({ castEntries(1, DRAIN_LIFE) }, { tickEntries(2) }, { tickEntries(3) },
					{ tickEntries(3.6) }, { stopEntry(3.6, DRAIN_LIFE) })
				assert.are.same({ DRAIN_LIFE, DRAIN_LIFE, "none" }, shownSpells(entries))
			end)

			-- Codex review: a rival tick exactly 0.2 s off its grid computed as
			-- 0.20000000000000284 s off at a large GetTime().
			it("counts a rival tick due exactly STOP_RIVAL away, at any GetTime()", function()
				for _, origin in ipairs({ 100, 348614.364 }) do
					local entries = entriesOf({ castEntries(origin, CORRUPTION) }, { tickEntries(origin + 3) },
						{ castEntries(origin + 3.5, DRAIN_LIFE) }, { tickEntries(origin + 4.5) }, { tickEntries(origin + 5.5) },
						{ tickEntries(origin + 6.2) }, { stopEntry(origin + 6.2, DRAIN_LIFE) })
					table.insert(entries, 1, castEntry(origin - 100, SHADOW_BOLT))
					local spells = shownSpells(entries)
					assert.are.equal("none", spells[#spells], "origin " .. origin)
				end
			end)

			-- warlock-drain-life: a Drain Life tick tied with a rival DoT's, whose
			-- own tick came just after it. A rival rhythm moved onto the Tick Tie
			-- missed the rival's later ticks; its old rhythm fits them.
			it("keeps each tied spell's old rhythm at a Tick Tie", function()
				local identity = Identity.New({})
				castOn(identity, 0, CORRUPTION)
				local spells = { of(identity, 3, "tick", SHADOW) }
				castOn(identity, 4.91, DRAIN_LIFE)
				spells[2] = of(identity, 5.91, "tick", SHADOW)
				spells[3] = of(identity, 6, "tick", SHADOW)
				spells[4] = of(identity, 6.91, "tick", SHADOW)
				identity.Cast({ kind = "cast", stage = "CHANNEL_STOP", time = 7.5, spellID = DRAIN_LIFE, unit = "player" })
				spells[5] = of(identity, 9.03, "tick", SHADOW)
				assert.are.same({ CORRUPTION, nil, nil, DRAIN_LIFE, CORRUPTION }, { spells[1], spells[2], spells[3], spells[4], spells[5] })
			end)

			-- warlock-rfk 2154: Agony's tick tied with the first tick of a new
			-- Siphon Life cast, and Siphon Life's own first tick came 0.03 s later,
			-- which Agony's old rhythm also fits. Siphon Life had no rhythm before
			-- the tie, so its cast can still give that first tick.
			it("keeps a cast's first tick open for a spell that had no rhythm before a Tick Tie", function()
				local entries = entriesOf({ castEntries(0, AGONY) }, { tickEntries(2) }, { tickEntries(4) },
					{ castEntries(3.03, SIPHON_LIFE) }, { tickEntries(6) }, { tickEntries(6.03) })
				assert.are.same({ AGONY, AGONY, "none", "none" }, shownSpells(entries))
			end)

			-- warlock-rfk 19406: the same for a recast, whose refresh ended the
			-- spell's old rhythm before the tie.
			it("keeps a recast's first tick open at a Tick Tie", function()
				local entries = entriesOf({ castEntries(0, AGONY) }, { tickEntries(2) }, { castEntries(0.5, CORRUPTION) },
					{ tickEntries(3.5) }, { tickEntries(4) }, { castEntries(3.03, CORRUPTION) }, { tickEntries(6) },
					{ tickEntries(6.03) })
				assert.are.same({ AGONY, CORRUPTION, AGONY, "none", "none" }, shownSpells(entries))
			end)

			-- Drain Life's ticks at 8 and 8.05 tied with Agony's, but the channel
			-- had ticked 0.75 s before its stop.
			it("gives a Stop Tick its channel's spell when the channel's last tick was a Tick Tie", function()
				local entries = entriesOf({ castEntries(0.05, AGONY) }, { tickEntries(2.05) }, { tickEntries(4.05) },
					{ castEntries(5, DRAIN_LIFE) }, { tickEntries(6) }, { tickEntries(6.05) }, { tickEntries(7) },
					{ tickEntries(8) }, { tickEntries(8.05) }, { tickEntries(8.75) }, { stopEntry(8.75, DRAIN_LIFE) })
				local spells = shownSpells(afterStartup(entries))
				assert.are.equal(DRAIN_LIFE, spells[#spells])
			end)

			-- Codex review: Siphon Life's tie at 108.96 left it an older rhythm too,
			-- which also fit the crowded frame of Agony's and Drain Life's ticks at
			-- 109.075, so that frame moved all three spells and Siphon Life lost
			-- its true rhythm.
			it("keeps the rhythms of a spell that a crowded frame need not hold", function()
				local entries = entriesOf({ castEntries(99.98, SIPHON_LIFE) }, { tickEntries(102.98) },
					{ castEntries(103.075, AGONY) }, { tickEntries(105.075) }, { tickEntries(105.98) }, { tickEntries(107.075) },
					{ castEntries(108.04, DRAIN_LIFE) }, { tickEntries(108.96) }, { tickEntries(109.075) },
					{ lineEntry(109.075, "tick"), hitEntry(109.075, "nameplate1", SHADOW) }, { tickEntries(110.02) },
					{ tickEntries(111.1) }, { tickEntries(111.11) }, { tickEntries(111.94) })
				local spells = shownSpells(entries)
				assert.are_not.equal(DRAIN_LIFE, spells[#spells])
			end)

			-- Codex review: the old Drain Soul channel's stop had a secret spell ID,
			-- so its cast stayed open in a rhythm that the tie with Siphon Life kept,
			-- and took the recast's stop. The recast's channel then never stopped.
			it("gives a channel's stop to its newest cast that a rhythm holds", function()
				local DRAIN_SOUL, CURSE_OF_DOOM = 1120, 603
				local function secretCast(time, spellID)
					return { time, "UNIT_SPELLCAST_SENT", "player", "<secret>", "<secret>", spellID, target = "nameplate1" },
						{ time, "UNIT_SPELLCAST_SUCCEEDED", "player", "<secret>", spellID, "<nil>", target = "nameplate1" }
				end
				local entries = entriesOf({ castEntries(56.7, CURSE_OF_DOOM) }, { castEntries(95.67, SIPHON_LIFE) },
					{ tickEntries(98.67) }, { castEntries(100, DRAIN_SOUL) }, { tickEntries(101.67) }, { tickEntries(103) },
					{ tickEntries(104.67) }, { tickEntries(106) }, { tickEntries(107.67) }, { tickEntries(109) },
					{ { 110.6, "UNIT_SPELLCAST_CHANNEL_STOP", "player", "<nil>", "<secret>", "<nil>", "CastBar-1" } },
					{ tickEntries(110.67) }, { secretCast(110.7, DRAIN_SOUL) }, { tickEntries(113.67) }, { tickEntries(113.7) },
					{ stopEntry(114.6, DRAIN_SOUL) }, { castEntries(115, SIPHON_LIFE) }, { tickEntries(116.7) })
				local spells = shownSpells(entries)
				assert.are_not.equal(DRAIN_SOUL, spells[#spells])
			end)

			-- Codex review: the Immolate tick at 108.905 has a secret school, so it
			-- may be Shadow, but it did not make the frame two Shadow ticks. Counted
			-- as one, it moved both Shadow spells that fit Agony's tick, and
			-- Corruption lost its true rhythm.
			it("counts a tick whose school is secret as no tick of a crowded frame's school", function()
				local entries = entriesOf({ castEntries(102.905, IMMOLATE) },
					{ lineEntry(102.905, "direct"), hitEntry(102.905, "nameplate1", FIRE) },
					{ castEntries(102.96, CORRUPTION) }, { castEntries(104.905, AGONY) },
					{ castEntries(105.01, DRAIN_LIFE) },
					{ lineEntry(105.905, "tick"), hitEntry(105.905, "nameplate1", FIRE) },
					{ tickEntries(106.01) }, { tickEntries(106.08) }, { stopEntry(106.1, DRAIN_LIFE) },
					{ tickEntries(106.905) }, { castEntries(108.03, DRAIN_LIFE) },
					{ lineEntry(108.905, "tick"), hitEntry(108.905, "nameplate1", "<secret>") },
					{ tickEntries(108.905) }, { tickEntries(109.01) })
				assert.are.equal("none", shownSpells(entries)[8])
			end)

			-- Codex review: Siphon Life's cast had a secret spell ID, so it had no
			-- rhythm, and a Drain Life rhythm that the ties kept fit its tick alone.
			it("gives no icon from a rhythm that a tie kept while a cast with a secret spell ID can run", function()
				local entries = entriesOf({ castEntries(90.04, "<secret>") },
					{ castEntries(91.92, CORRUPTION) }, { tickEntries(93.04) }, { tickEntries(94.92) },
					{ castEntries(96, DRAIN_LIFE) }, { tickEntries(96.04) }, { tickEntries(97.01) },
					{ tickEntries(97.92) }, { tickEntries(98) }, { tickEntries(99.04) },
					{ stopEntry(99.04, DRAIN_LIFE) })
				assert.are.equal("none", shownSpells(entries)[7])
			end)

			-- Codex review: the guard above blocked the icon of a secret Siphon Life
			-- cast's tick, but the tick still narrowed Corruption's kept rhythms to
			-- one, so Siphon Life's next tick took Corruption's icon.
			it("narrows no rhythm with a tick whose icon a cast with a secret spell ID blocks", function()
				local entries = entriesOf({ castEntries(99.15, "<secret>") }, { castEntries(102.09, CORRUPTION) },
					{ tickEntries(102.15) }, { tickEntries(105.09) }, { tickEntries(105.15) },
					{ castEntries(107, DRAIN_LIFE) }, { tickEntries(108) }, { tickEntries(108.09) },
					{ tickEntries(108.15) }, { tickEntries(109) }, { stopEntry(109.2, DRAIN_LIFE) },
					{ tickEntries(111.15) }, { tickEntries(111.18) })
				assert.are.equal("none", shownSpells(entries)[8])
			end)

			-- Codex review: Curse of Doom ticked with Siphon Life at 108.92, and a
			-- Corruption rhythm that a tie kept fit that frame too. Two Shadow ticks
			-- and two spells that fit, so Corruption took the frame and lost its
			-- true rhythm, and its tick at 109.045 took Drain Life's icon.
			it("counts a due Curse of Doom as a spell that fits a crowded frame", function()
				local CURSE_OF_DOOM = 603
				local entries = entriesOf({ castEntries(48.92, CURSE_OF_DOOM) }, { castEntries(100, CORRUPTION) },
					{ castEntries(102.84, SIPHON_LIFE) }, { tickEntries(103) }, { castEntries(105.09, DRAIN_LIFE) },
					{ tickEntries(105.84) }, { tickEntries(106.09) }, { tickEntries(106.095) }, { stopEntry(106.5, DRAIN_LIFE) },
					{ castEntries(108.04, DRAIN_LIFE) }, { tickEntries(108.92) }, { tickEntries(108.92) },
					{ tickEntries(109.045) }, { tickEntries(109.06) })
				assert.are_not.equal(DRAIN_LIFE, shownSpells(entries)[7])
			end)

			-- Limits, from Codex reviews: a Tick Tie's other spell ticks a little
			-- more than TICK_TOLERANCE off its rhythm, so only the tie's owner fits
			-- that tick, and takes it. Ticks that far off are rare in the Traces.
			describe("when the tie's other spell ticks past the tolerance", function()
				it("gives the tick to the spell whose cast's first tick fits it", function()
					local entries = entriesOf({ castEntries(0, AGONY) }, { tickEntries(1.97) }, { castEntries(3.05, SIPHON_LIFE) },
						{ tickEntries(3.97) }, { tickEntries(6) }, { tickEntries(6.08) })
					assert.are.same({ AGONY, AGONY, "none", SIPHON_LIFE }, shownSpells(entries))
				end)

				it("gives the first tick after the tie to the spell whose rhythm fits it", function()
					local entries = entriesOf({ castEntries(0, CORRUPTION) }, { tickEntries(2.94) }, { castEntries(2.97, DRAIN_LIFE) },
						{ tickEntries(3.97) }, { tickEntries(4.95) }, { tickEntries(5.92) }, { tickEntries(6.045) })
					local spells = shownSpells(entries)
					assert.are.equal(DRAIN_LIFE, spells[#spells])
				end)

				it("does so across a tick of another school", function()
					local entries = entriesOf({ castEntries(0, IMMOLATE) }, { lineEntry(0, "direct"), hitEntry(0, "nameplate1", FIRE) },
						{ lineEntry(3, "tick"), hitEntry(3, "nameplate1", FIRE) }, { castEntries(3.02, CORRUPTION) },
						{ tickEntries(5.96) }, { castEntries(5.99, DRAIN_LIFE) }, { lineEntry(6, "tick"), hitEntry(6, "nameplate1", FIRE) },
						{ tickEntries(6.99) }, { tickEntries(7.97) }, { tickEntries(8.94) },
						{ lineEntry(9, "tick"), hitEntry(9, "nameplate1", FIRE) }, { tickEntries(9.065) })
					local spells = shownSpells(entries)
					assert.are.equal(DRAIN_LIFE, spells[#spells])
				end)
			end)

			it("takes no target for a cast whose SENT it cannot match, as its end target can be another mob", function()
				local entries = {
					{ 0, "UNIT_SPELLCAST_SENT", "player", "<secret>", "<secret>", IMMOLATE, target = "nameplate1" },
					{ 2, "UNIT_SPELLCAST_SUCCEEDED", "player", "<secret>", IMMOLATE, "<nil>", target = "nameplate2" },
					lineEntry(8, "tick"),
					hitEntry(8, "nameplate2", FIRE),
				}
				assert.are.same({ "none" }, shownSpells(entries))
			end)
		end)

		it("gives a landing one first tick", function()
			local identity = Identity.New({})
			cast(identity, 1, FIREBALL)
			of(identity, 1.8, "direct", FIRE)
			assert.are.same({ FIREBALL, nil }, { of(identity, 3.8, "tick", FIRE), of(identity, 3.85, "tick", FIRE) })
		end)

		it("keeps a cast for a held tick after a newer cast", function()
			local identity = Identity.New({})
			cast(identity, 0, SERPENT_STING)
			cast(identity, 4.95, SHADOW_BOLT)
			assert.are.equal(SERPENT_STING, of(identity, 4.55, "tick", NATURE))
		end)

		it("gives no ticks to an Immolate whose hit missed", function()
			local identity = Identity.New({})
			cast(identity, 1, IMMOLATE)
			of(identity, 1, "directMiss", 1)
			assert.is_nil(of(identity, 4, "tick", FIRE))
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

		-- A tick 0.06 s late and the next 0.05 s early are 0.11 s off each
		-- other, but each is within TICK_TOLERANCE of the rhythm's grid.
		it("measures a tick from the mean of its rhythm's ticks, so a late tick and then an early one both fit", function()
			local identity = Identity.New({})
			cast(identity, 0, AGONY)
			local ticks = { of(identity, 2, "tick", SHADOW), of(identity, 4.06, "tick", SHADOW), of(identity, 5.95, "tick", SHADOW) }
			assert.are.same({ AGONY, AGONY, AGONY }, ticks)
		end)

		-- Codex review: after a Tick Tie a spell holds two rhythms, one with the
		-- tied tick and one without. When both meet the same tick they become
		-- one, which keeps the mean of more ticks. With the other mean, Agony's
		-- next tick came 0.103 s off, and Corruption's first tick took it alone.
		it("keeps the mean of more ticks when two rhythms of a spell meet after a Tick Tie", function()
			local identity = Identity.New({})
			cast(identity, 0, AGONY)
			local first = of(identity, 1.95, "tick", SHADOW)
			cast(identity, 3.04, DRAIN_LIFE)
			local tied = of(identity, 4.04, "tick", SHADOW)
			cast(identity, 4.5, DRAIN_LIFE, "player", "CHANNEL_STOP")
			cast(identity, 5.05, CORRUPTION)
			local alone = of(identity, 6.04, "tick", SHADOW)
			assert.are.same({ AGONY, nil, AGONY, nil }, { first, tied, alone, of(identity, 8.098, "tick", SHADOW) })
		end)

		it("follows a Tick Rhythm on its own Nameplate only", function()
			local identity = Identity.New({})
			cast(identity, 1, DRAIN_LIFE)
			local first = of(identity, 2, "tick", SHADOW)
			assert.are.same({ DRAIN_LIFE, nil }, { first, of(identity, 3, "tick", SHADOW, "nameplate2") })
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

		it("gives a landing's first tick its spell", function()
			local spells = shownSpells({
				castEntry(0, FIREBALL),
				hitEntry(0.8, "nameplate1", FIRE), lineEntry(0.8, "direct"),
				hitEntry(2.8, "nameplate1", FIRE), lineEntry(2.8, "tick"),
			})
			assert.are.same({ FIREBALL, FIREBALL }, spells)
		end)

		it("gives a late tick its own Tick Rhythm, though its token hid again during the hold", function()
			local spells = shownSpells({
				castEntry(0, CORRUPTION),
				hitEntry(3, "nameplate1", SHADOW), lineEntry(3, "tick"),
				hitEntry(6, "nameplate1", SHADOW),
				{ 6.02, "NAME_PLATE_UNIT_REMOVED", "nameplate1" },
				{ 6.04, "NAME_PLATE_UNIT_ADDED", "nameplate1" },
				{ 6.06, "NAME_PLATE_UNIT_REMOVED", "nameplate1" },
				lineEntry(6.1, "tick"),
			})
			assert.are.same({ CORRUPTION, CORRUPTION }, spells)
		end)

		it("gives a Hit whose Nameplate hid its spell, but leaves the next unit on its token no Tick Rhythm", function()
			local spells = shownSpells({
				castEntry(0, FIREBALL),
				hitEntry(0.8, "nameplate1", FIRE), lineEntry(0.8, "direct"),
				{ 0.8, "NAME_PLATE_UNIT_REMOVED", "nameplate1" },
				hitEntry(1.2, "nameplate2", FIRE), lineEntry(1.2, "direct"),
				hitEntry(2.82, "nameplate1", FIRE), lineEntry(2.82, "tick"),
			})
			assert.are.same({ FIREBALL, "none", "none" }, spells)
		end)

		it("gives a tick whose Nameplate hid its spell on its own Tick Rhythm, and none to the next unit", function()
			local spells = shownSpells({
				castEntry(0, CORRUPTION),
				hitEntry(3, "nameplate1", SHADOW), lineEntry(3, "tick"),
				hitEntry(6, "nameplate1", SHADOW), lineEntry(6, "tick"),
				{ 6, "NAME_PLATE_UNIT_REMOVED", "nameplate1" },
				hitEntry(9, "nameplate1", SHADOW), lineEntry(9, "tick"),
			})
			assert.are.same({ CORRUPTION, CORRUPTION, "none" }, spells)
		end)

		it("keeps the cast of a tick that Pairing holds for a late line while a newer cast comes", function()
			local spells = shownSpells({
				castEntry(0, SERPENT_STING),
				hitEntry(4.55, "nameplate1", NATURE),
				castEntry(4.65, SHADOW_BOLT),
				lineEntry(4.68, "tick"),
			})
			assert.are.same({ SERPENT_STING }, spells)
		end)

		it("ends the Tick Rhythm of a Nameplate that hid after its tick was decided", function()
			local spells = shownSpells({
				castEntry(0, CORRUPTION),
				hitEntry(3, "nameplate1", SHADOW), lineEntry(3, "tick"),
				{ 4, "NAME_PLATE_UNIT_REMOVED", "nameplate1" },
				hitEntry(6, "nameplate1", SHADOW), lineEntry(6, "tick"),
			})
			assert.are.same({ CORRUPTION, "none" }, spells)
		end)

		it("uses up the cast of Your Hit on a unit with no Nameplate", function()
			local spells = shownSpells({
				castEntry(1, SHADOW_BOLT),
				hitEntry(1.4, "target", SHADOW), lineEntry(1.4, "direct"),
				hitEntry(1.6, "nameplate1", SHADOW), lineEntry(1.6, "direct"),
			})
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

	-- Possible Spells: a Hit with no Spell Identity gets the spells that could
	-- have made it, when one of them surely did.
	describe("Possible Spells", function()
		local SHADOWBURN = 17877

		local function targetedCast(time, spellID)
			return { time, "UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-" .. time .. "-" .. tostring(spellID), spellID, "<nil>",
				target = "nameplate1" }
		end

		-- For each Hit that Flow shows: its spell, its Possible Spells, or
		-- "none". Unless atStart, the entries come 100 s after a cast at 0, so
		-- that Identity has run longer than any DoT cast before it started.
		local function shown(entries, atStart)
			local results = {}
			local flow = ns.Flow.New({
				spellFacts = {},
				show = function(_, spellID, _, _, _, _, possible)
					results[#results + 1] = spellID or possible or "none"
				end,
			})
			if not atStart then
				flow.Push(castEntry(0, SHADOW_BOLT))
			end
			for _, entry in ipairs(entries) do
				flow.Push(entry)
			end
			flow.Tick(math.huge)
			return results
		end

		-- count ticks at one time, Shadow unless school says otherwise.
		local function ticks(time, count, school)
			local entries = {}
			for _ = 1, count or 1 do
				entries[#entries + 1] = lineEntry(time, "tick")
				entries[#entries + 1] = hitEntry(time, "nameplate1", school or SHADOW)
			end
			return unpack(entries)
		end

		it("gives a Tick Tie the spells that fit it, in the order of their first rank", function()
			assert.are.same({ { CORRUPTION, AGONY } }, shown({ targetedCast(102, AGONY), targetedCast(101, CORRUPTION),
				ticks(104) }))
		end)

		it("gives both ticks of a frame that two spells fit the same two spells", function()
			assert.are.same({ { CORRUPTION, AGONY }, { CORRUPTION, AGONY } }, shown({ targetedCast(102, AGONY),
				targetedCast(101, CORRUPTION), ticks(104, 2) }))
		end)

		it("gives both ticks of a frame that three spells fit all three", function()
			assert.are.same({ { CORRUPTION, AGONY, SIPHON_LIFE }, { CORRUPTION, AGONY, SIPHON_LIFE } }, shown({
				targetedCast(102, AGONY), targetedCast(101, CORRUPTION), targetedCast(101, SIPHON_LIFE), ticks(104, 2) }))
		end)

		it("gives none to a tick that four spells fit", function()
			assert.are.same({ "none" }, shown({ targetedCast(102, AGONY), targetedCast(101, CORRUPTION),
				targetedCast(101, SIPHON_LIFE), targetedCast(103, DRAIN_LIFE), ticks(104) }))
		end)

		it("gives a direct hit that two spells' casts fit both spells", function()
			assert.are.same({ { SHADOW_BOLT, SHADOWBURN } }, shown({ castEntry(100, SHADOW_BOLT), castEntry(100.5, SHADOWBURN),
				lineEntry(101, "direct"), hitEntry(101, "nameplate1", SHADOW) }))
		end)

		-- Codex review: a Consecration tick is a Holy direct hit with no cast,
		-- so the casts that fit are not all the spells that could have made it.
		it("gives none to a Holy direct hit during Consecration", function()
			local EXORCISM, JUDGEMENT = 879, 20271
			local identity = Identity.New({})
			cast(identity, 0, SHADOW_BOLT)
			cast(identity, 96, CONSECRATION)
			cast(identity, 99.5, EXORCISM)
			cast(identity, 99.9, JUDGEMENT)
			assert.is_nil(select(2, identity.Of({ time = 100, unit = "nameplate1", school = HOLY }, { lineKind = "direct" })))
		end)

		-- A Seal Proc has no cast either, and its miss reports no school.
		it("gives none to a direct miss that a Seal Proc could have made", function()
			local EXORCISM, JUDGEMENT, RIGHTEOUSNESS = 879, 20271, 20154
			local identity = Identity.New({})
			cast(identity, 0, SHADOW_BOLT)
			cast(identity, 90, RIGHTEOUSNESS)
			cast(identity, 99.5, EXORCISM)
			cast(identity, 99.9, JUDGEMENT)
			identity.Line({ kind = "line", time = 99.95, lineKind = "swing" })
			assert.is_nil(select(2, identity.Of({ time = 100, unit = "nameplate1", school = PHYSICAL }, { lineKind = "directMiss" })))
		end)

		-- Codex review: a Consecration cast before Identity started, as before
		-- a /reload, is in no list, but its ticks still come.
		it("gives none to a Holy direct hit while a Consecration from before Identity started can run", function()
			local EXORCISM, JUDGEMENT = 879, 20271
			local identity = Identity.New({})
			cast(identity, 4.5, EXORCISM)
			cast(identity, 4.9, JUDGEMENT)
			assert.is_nil(select(2, identity.Of({ time = 5, unit = "nameplate1", school = HOLY }, { lineKind = "direct" })))
		end)

		-- Each list must hold the spell that made the Hit, so a guard that could
		-- let in a list without it gets a spec (review of the Possible Spells PR).

		it("gives none to a Tick Tie whose school is secret, as it can be another spell's", function()
			assert.are.same({ "none" }, shown({ targetedCast(102, AGONY), targetedCast(101, CORRUPTION),
				ticks(104, 1, "<secret>") }))
		end)

		it("gives none to a Tick Tie while a Curse of Doom tick is due", function()
			assert.are.same({ "none" }, shown({ targetedCast(44, 603), targetedCast(102, AGONY), targetedCast(101, CORRUPTION),
				ticks(104) }))
		end)

		it("gives none to the ticks of a frame that fewer spells fit than ticks came", function()
			assert.are.same({ "none", "none", "none" }, shown({ targetedCast(102, AGONY), targetedCast(101, CORRUPTION),
				ticks(104, 3) }))
		end)

		it("shares a frame's list only with ticks of its own public school", function()
			for _, other in ipairs({ FIRE, "<secret>" }) do
				local entries = { targetedCast(102, AGONY), targetedCast(101, CORRUPTION), lineEntry(104, "tick"),
					hitEntry(104, "nameplate1", SHADOW), ticks(104, 1, other) }
				assert.are.same({ { CORRUPTION, AGONY }, "none" }, shown(entries), tostring(other))
			end
		end)

		it("shares a direct hit's list with no tick of its frame", function()
			assert.are.same({ { SHADOW_BOLT, SHADOWBURN }, "none" }, shown({ castEntry(100, SHADOW_BOLT),
				castEntry(100.5, SHADOWBURN), lineEntry(101, "direct"), hitEntry(101, "nameplate1", SHADOW), ticks(101) }))
		end)

		it("lists the pet's spell with the player's when a cast of the pet fits a direct hit too", function()
			assert.are.same({ { IMMOLATE, FIREBOLT } }, shown({ castEntry(100, IMMOLATE),
				{ 100.5, "UNIT_SPELLCAST_SUCCEEDED", "pet", "Cast-pet-100.5", FIREBOLT, "<nil>" },
				lineEntry(101, "direct"), hitEntry(101, "nameplate1", FIRE) }))
		end)

		it("gives none, not one spell twice, to a direct hit that two casts of one spell fit", function()
			assert.are.same({ "none" }, shown({ castEntry(100, SHADOW_BOLT), castEntry(100.5, SHADOW_BOLT),
				lineEntry(101, "direct"), hitEntry(101, "nameplate1", SHADOW) }))
		end)

		-- Codex review: a Nameplate that hides and shows again starts a new
		-- plate life, which has none of the old one's Tick Rhythms, so a DoT
		-- cast before the hide ticks there unseen.
		-- The same for a cast with no known plate life, as its SENT's cast GUID
		-- was secret.
		it("gives none to the ticks of a frame while a DoT cast on a plate life that hid, or on none known, can run",
			function()
				local sent = { 105, "UNIT_SPELLCAST_SENT", "player", "<secret>", "Cast-105-" .. CORRUPTION, CORRUPTION,
					target = "nameplate1" }
				for _, withSent in ipairs({ true, false }) do
					local entries = { { 100, "NAME_PLATE_UNIT_ADDED", "nameplate1" } }
					for _, group in ipairs({ { withSent and sent or nil }, { targetedCast(105, CORRUPTION) }, { ticks(108) },
						{ ticks(111) }, { { 111.5, "NAME_PLATE_UNIT_REMOVED", "nameplate1" }, { 112, "NAME_PLATE_UNIT_ADDED", "nameplate1" },
						targetedCast(117.0625, SIPHON_LIFE), targetedCast(118, AGONY) }, { ticks(120, 2) } }) do
						for _, entry in ipairs(group) do
							entries[#entries + 1] = entry
						end
					end
					assert.are.same({ CORRUPTION, CORRUPTION, "none", "none" }, shown(entries), tostring(withSent))
				end
			end)

		-- A unit whose GUID is public keeps its key when it shows again, so a
		-- hidden one is not the unit of this tick, and its DoT cannot tick here.
		-- A secret GUID tells nothing, so the tick's unit can be that unit.
		it("gives a Tick Tie its spells while a DoT runs on a hidden unit, but only when that unit's GUID is public",
			function()
				for guid, want in pairs({ ["Creature-2"] = { CORRUPTION, AGONY }, ["<secret>"] = "none" }) do
					local castGUID = "Cast-100.5-" .. SIPHON_LIFE
					assert.are.same({ want }, shown({
						{ 100, "NAME_PLATE_UNIT_ADDED", "nameplate1", guid = "Creature-1" },
						{ 100, "NAME_PLATE_UNIT_ADDED", "nameplate2", guid = guid },
						{ 100.5, "UNIT_SPELLCAST_SENT", "player", "<secret>", castGUID, SIPHON_LIFE, target = "nameplate2" },
						{ 100.5, "UNIT_SPELLCAST_SUCCEEDED", "player", castGUID, SIPHON_LIFE, "<nil>", target = "nameplate2" },
						{ 100.75, "NAME_PLATE_UNIT_REMOVED", "nameplate2", guid = guid },
						targetedCast(102, AGONY), targetedCast(101, CORRUPTION), ticks(104) }), guid)
				end
			end)

		-- A cast whose spell ID is secret can be a DoT that fits too.
		it("gives none to a Tick Tie while a cast with a secret spell ID can run", function()
			assert.are.same({ "none" }, shown({ targetedCast(99, "<secret>"), targetedCast(102, AGONY),
				targetedCast(101, CORRUPTION), ticks(104) }))
		end)

		-- A DoT cast before Identity started, as before a /reload, is in no list.
		it("gives none to a Tick Tie before Identity has run longer than any DoT", function()
			assert.are.same({ "none" }, shown({ targetedCast(2, AGONY), targetedCast(1, CORRUPTION), ticks(4) }, true))
		end)
	end)

	-- Every Warlock Trace through Flow, as the live addon runs, against the
	-- spell of each Label. Wrong is an icon of another spell, or any icon on
	-- a Hit that has none, or Possible Spells that miss the Label's spell;
	-- Unknown is no icon on a Hit whose spell is known. The Wrongs in
	-- Trace.WRONG and Trace.POSSIBLE_WRONG are known: each must still be
	-- Wrong, so a fix removes it from its list.
	describe("on the Warlock Traces", function()
		-- The Unknown count of the current build: a change that raises it loses
		-- icons, and one that gains icons lowers it.
		local UNKNOWN_FLOOR = 185
		-- The Unknown Hits of the current build whose Possible Spells hold the
		-- Label's spell: a change that lowers it loses stacks.
		local POSSIBLE_FLOOR = 132

		local function replay(carryFacts)
			local wrong, unknown, perSpell, possibleRight = {}, 0, {}, 0
			local facts = {}
			for _, name in ipairs(Trace.NAMES) do
				if not carryFacts then
					facts = {}
				end
				local trace, labels = Trace.LoadLabelled(name)
				local spellOf = {}
				for _, row in ipairs(labels) do
					spellOf[row.hit] = row.spell
				end
				local known, stillWrong = Trace.WRONG[name] or {}, {}
				local knownPossible, stillPossibleWrong = Trace.POSSIBLE_WRONG[name] or {}, {}
				local flow = ns.Flow.New({
					spellFacts = facts,
					class = trace.header.class,
					show = function(hit, spellID, _, _, _, _, possible)
						local want = spellOf[hit.entry]
						if possible then
							local holds = false
							for _, possibleID in ipairs(possible) do
								holds = holds or possibleID == want
							end
							if holds then
								possibleRight = possibleRight + 1
							elseif knownPossible[hit.entry] then
								stillPossibleWrong[hit.entry] = true
							else
								wrong[#wrong + 1] = ("%s hit %d: Possible Spells %s, Label %s"):format(name, hit.entry,
									table.concat(possible, ","), tostring(want))
							end
						end
						if spellID == nil and want then
							unknown = unknown + 1
							perSpell[want] = (perSpell[want] or 0) + 1
						elseif spellID ~= nil and spellID ~= want then
							if known[hit.entry] then
								stillWrong[hit.entry] = true
							else
								wrong[#wrong + 1] = ("%s hit %d: %s, Label %s"):format(name, hit.entry, spellID, tostring(want))
							end
						end
					end,
				})
				for _, entry in ipairs(trace.entries) do
					flow.Push(entry)
				end
				flow.Tick(math.huge)
				for entry in pairs(known) do
					if not stillWrong[entry] then
						wrong[#wrong + 1] = ("%s hit %d: no longer Wrong, so remove it from Trace.WRONG"):format(name, entry)
					end
				end
				for entry in pairs(knownPossible) do
					if not stillPossibleWrong[entry] then
						wrong[#wrong + 1] = ("%s hit %d: no longer Wrong, so remove it from Trace.POSSIBLE_WRONG"):format(name,
							entry)
					end
				end
			end
			return wrong, unknown, perSpell, possibleRight
		end

		it("gives no Wrong icon but the known ones, with Spell Facts learned in each Trace alone", function()
			local wrong, unknown, perSpell, possibleRight = replay(false)
			local parts = {}
			for spellID, count in pairs(perSpell) do
				parts[#parts + 1] = spellID .. ": " .. count
			end
			table.sort(parts)
			print(("\nSpell Identity: %d Unknown (%s), %d with Possible Spells"):format(unknown, table.concat(parts, ", "),
				possibleRight))
			assert.are.same({}, wrong)
			assert.is_true(unknown <= UNKNOWN_FLOOR, ("%d Unknown, more than %d"):format(unknown, UNKNOWN_FLOOR))
			assert.is_true(possibleRight >= POSSIBLE_FLOOR, ("%d with Possible Spells, fewer than %d"):format(possibleRight,
				POSSIBLE_FLOOR))
		end)

		it("gives no Wrong icon but the known ones, and fewer Unknown, with Spell Facts carried from Trace to Trace", function()
			local wrong, unknown = replay(true)
			assert.are.same({}, wrong)
			assert.is_true(unknown < select(2, replay(false)), "carried Spell Facts gave no more icons")
		end)
	end)
end)
