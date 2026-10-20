_G.issecretvalue = function(value)
	return value == "<secret>"
end

local ns = {}
assert(loadfile("src/Adapter.lua"))("NameplateSCT_Reforged", ns)
assert(loadfile("src/Pairing.lua"))("NameplateSCT_Reforged", ns)
local Adapter, Pairing = ns.Adapter, ns.Pairing
local Trace = assert(loadfile("tools/trace.lua"))()

-- Colours in the shape of the Log Filter's unit colours.
local GREY = { r = 0.7, g = 0.7, b = 0.7, a = 1 }
local WHITE = { r = 1, g = 1, b = 1, a = 1 }

local entryCount = 0

local function hit(time, unit, school, action, amount)
	entryCount = entryCount + 1
	return { kind = "hit", time = time, entry = entryCount, unit = unit or "nameplate1", action = action or "WOUND",
		descriptor = "", amount = amount or 10, school = school or 32 }
end

local function line(time, colour)
	colour = colour or GREY
	entryCount = entryCount + 1
	return { kind = "line", time = time, entry = entryCount, r = colour.r, g = colour.g, b = colour.b }
end

-- Pushes the records through a new Pairing, ends every hold, and returns the
-- Log Line entry that each Hit got, by the Hit's entry (false for none).
-- colours defaults to grey; false gives no colours, so every colour pairs.
local function pair(records, colours)
	local decided = {}
	local pairing = Pairing.New({
		colours = colours == nil and { GREY } or colours,
		onDecision = function(decidedHit, decidedLine)
			assert(decided[decidedHit.entry] == nil, "a Hit was decided twice")
			decided[decidedHit.entry] = decidedLine and decidedLine.entry or false
		end,
	})
	for _, record in ipairs(records) do
		pairing.Push(record)
	end
	pairing.Tick(math.huge)
	return decided
end

describe("Pairing", function()
	before_each(function()
		entryCount = 0
	end)

	it("pairs a Hit with a Log Line in the same frame, in either order", function()
		local first, firstLine = hit(1), line(1)
		local secondLine, second = line(2), hit(2)
		local decided = pair({ first, firstLine, secondLine, second })
		assert.are.equal(firstLine.entry, decided[first.entry])
		assert.are.equal(secondLine.entry, decided[second.entry])
	end)

	it("pairs a Hit with a Log Line up to 0.1 s earlier, for a spell or a wand", function()
		local early, near = line(1), hit(1.09)
		local tooEarly, far = line(3), hit(3.12)
		local decided = pair({ early, near, tooEarly, far })
		assert.are.equal(early.entry, decided[near.entry])
		assert.is_false(decided[far.entry])
	end)

	it("pairs a physical Hit with a Log Line from 0.25 to 1.1 s earlier, for melee", function()
		local records, expected = {}, {}
		for i, case in ipairs({ { 0.2, false }, { 0.3, true }, { 1.05, true }, { 1.15, false } }) do
			local swingLine = line(i * 10)
			local swing = hit(i * 10 + case[1], "nameplate1", 1)
			records[#records + 1], records[#records + 2] = swingLine, swing
			expected[swing.entry] = case[2] and swingLine.entry
		end
		local decided = pair(records)
		for entry, want in pairs(expected) do
			assert.are.equal(want, decided[entry])
		end
	end)

	it("gives the melee window to physical Hits only, and not to heals, which also report school 1", function()
		local spellLine, spell = line(1), hit(1.5, "nameplate1", 32)
		local healLine, heal = line(3), hit(3.5, "nameplate1", 1, "HEAL")
		local decided = pair({ spellLine, spell, healLine, heal })
		assert.is_false(decided[spell.entry])
		assert.is_false(decided[heal.entry])
	end)

	it("pairs a Hit with a line in its own frame before an older line", function()
		local old, tick, tickLine, swing = line(1), hit(1.5, "nameplate1", 1), line(1.5), hit(1.7, "nameplate1", 1)
		local decided = pair({ old, tick, tickLine, swing })
		assert.are.equal(tickLine.entry, decided[tick.entry])
		assert.are.equal(old.entry, decided[swing.entry])
	end)

	it("pairs a Hit with the oldest line that fits, so a waiting pet line goes first", function()
		local petLine, boltLine = line(1), line(1.57)
		local petSwing, bolt = hit(1.6, "nameplate1", 1), hit(1.62, "nameplate1", 32)
		local decided = pair({ petLine, boltLine, petSwing, bolt })
		assert.are.equal(petLine.entry, decided[petSwing.entry])
		assert.are.equal(boltLine.entry, decided[bolt.entry])
	end)

	it("gives one Log Line to the first of two Hits that fit it", function()
		local first, second, only = hit(1), hit(1, "nameplate2"), line(1)
		local decided = pair({ first, second, only })
		assert.are.equal(only.entry, decided[first.entry])
		assert.is_false(decided[second.entry])
	end)

	it("ignores a Log Line in a colour that is not yours, such as a white killing blow", function()
		local kill, swing = line(1, WHITE), hit(1.5, "nameplate1", 1)
		assert.is_false(pair({ kill, swing })[swing.entry])
	end)

	it("pairs lines of every colour when the Log Filter's colours are unknown", function()
		local kill, swing = line(1, WHITE), hit(1.5, "nameplate1", 1)
		assert.are.equal(kill.entry, pair({ kill, swing }, false)[swing.entry])
	end)

	it("holds a Hit up to 0.15 s for a late Log Line", function()
		local held, late = hit(1), line(1.14)
		local missed, tooLate = hit(3), line(3.16)
		local decided = pair({ held, late, missed, tooLate })
		assert.are.equal(late.entry, decided[held.entry])
		assert.is_false(decided[missed.entry])
	end)

	it("lets a newer Hit take its early Log Line, though a held Hit's hold ended first", function()
		local held, early, newer = hit(3), line(3.1), hit(3.19)
		assert.are.same({ false, early.entry }, (function()
			local decided = pair({ held, early, newer })
			return { decided[held.entry], decided[newer.entry] }
		end)())

		-- The same with a tick between the end of the hold and the newer Hit.
		local decided = {}
		local pairing = Pairing.New({
			colours = { GREY },
			onDecision = function(decidedHit, decidedLine)
				decided[decidedHit.entry] = decidedLine and decidedLine.entry or false
			end,
		})
		local heldAgain, earlyAgain, newerAgain = hit(5), line(5.1), hit(5.19)
		pairing.Push(heldAgain)
		pairing.Push(earlyAgain)
		pairing.Tick(5.16)
		pairing.Push(newerAgain)
		pairing.Tick(math.huge)
		assert.are.same({ false, earlyAgain.entry }, { decided[heldAgain.entry], decided[newerAgain.entry] })
	end)

	it("gives a held Hit the oldest late Log Line, and the first held Hit goes first", function()
		local held, first, second = hit(1), line(1.02), line(1.1)
		assert.are.equal(first.entry, pair({ held, first, second })[held.entry])

		local one, two, only = hit(3), hit(3.01, "nameplate2"), line(3.1)
		local decided = pair({ one, two, only })
		assert.are.same({ only.entry, false }, { decided[one.entry], decided[two.entry] })
	end)

	it("tells how it paired each Hit, so the renderer can give melee its own animation", function()
		local how = {}
		local pairing = Pairing.New({
			colours = { GREY },
			onDecision = function(decidedHit, _, decidedHow)
				how[decidedHit.entry] = decidedHow or false
			end,
		})
		local frameHit, short, melee, late, alone = hit(1), hit(3.05), hit(5.5, "nameplate1", 1), hit(7), hit(9)
		for _, record in ipairs({ frameHit, line(1), line(3), short, line(5), melee, late, line(7.1), alone }) do
			pairing.Push(record)
		end
		pairing.Tick(math.huge)
		assert.are.same({ "frame", "short", "melee", "late", false },
			{ how[frameHit.entry], how[short.entry], how[melee.entry], how[late.entry], how[alone.entry] })
	end)

	it("gives no Log Line to an enemy's heal, so your Hit keeps its line", function()
		local heal, tick, tickLine = hit(1, "nameplate2", 2, "HEAL"), hit(1), line(1)
		local early, laterHeal, bolt = line(3), hit(3.02, "nameplate2", 2, "HEAL"), hit(3.05)
		local sameFrameHeal, lastBolt = hit(5, "nameplate2", 2, "HEAL"), hit(5.05)
		local lastLine = line(5)
		local drain, drainHeal, drainLine, drainHealLine = hit(7), hit(7, "player", 32, "HEAL"), line(7), line(7)
		local decided = pair({ heal, tick, tickLine, early, laterHeal, bolt, lastLine, sameFrameHeal, lastBolt,
			hit(7, "nameplate2", 2, "HEAL"), drain, drainHeal, drainLine, drainHealLine })
		assert.are.same({ false, tickLine.entry, false, early.entry, false, lastLine.entry, drainHealLine.entry },
			{ decided[heal.entry], decided[tick.entry], decided[laterHeal.entry], decided[bolt.entry],
				decided[sameFrameHeal.entry], decided[lastBolt.entry], decided[drainHeal.entry] })
	end)

	it("decides no Hit twice when onDecision errors, as the renderer can", function()
		local calls, failed = {}, false
		local pairing = Pairing.New({
			colours = { GREY },
			onDecision = function(decidedHit, decidedLine)
				calls[#calls + 1] = decidedHit.entry .. ":" .. tostring(decidedLine and decidedLine.entry)
				if not failed then
					failed = true
					error("renderer failed")
				end
			end,
		})
		local first, second, firstLine, secondLine = hit(1), hit(1), line(1), line(1)
		for _, record in ipairs({ first, second, firstLine, secondLine }) do
			pairing.Push(record)
		end
		assert.has_error(function()
			pairing.Tick(2)
		end)
		pairing.Tick(3)
		pairing.Tick(math.huge)
		assert.are.same({ first.entry .. ":" .. firstLine.entry }, calls)
	end)

	it("pairs Log Lines that come after a colour change by the new colours", function()
		local decided = {}
		local pairing = Pairing.New({
			colours = { GREY },
			onDecision = function(decidedHit, decidedLine)
				decided[decidedHit.entry] = decidedLine and decidedLine.entry or false
			end,
		})
		local grey, greyLine = hit(1), line(1)
		pairing.Push(grey)
		pairing.Push(greyLine)
		pairing.SetColours({ WHITE })
		local white, whiteLine, stale, staleLine = hit(2), line(2, WHITE), hit(3), line(3)
		for _, record in ipairs({ white, whiteLine, stale, staleLine }) do
			pairing.Push(record)
		end
		pairing.Tick(math.huge)
		assert.are.same({ greyLine.entry, whiteLine.entry, false },
			{ decided[grey.entry], decided[white.entry], decided[stale.entry] })
	end)

	it("keeps a Log Line whose colour is secret, since it cannot be compared", function()
		local secret, tick = line(1, { r = "<secret>", g = "<secret>", b = "<secret>" }), hit(1)
		assert.are.equal(secret.entry, pair({ secret, tick })[tick.entry])
	end)

	it("lets a later Hit take its own early Log Line before a held Hit can", function()
		local theirs, early, mine = hit(1), line(1.05), hit(1.08)
		local decided = pair({ theirs, early, mine })
		assert.are.equal(early.entry, decided[mine.entry])
		assert.is_false(decided[theirs.entry])
	end)

	it("decides a held Hit on a tick after the hold, with no later event", function()
		local decided = {}
		local pairing = Pairing.New({
			colours = { GREY },
			onDecision = function(decidedHit, decidedLine)
				decided[decidedHit.entry] = decidedLine or false
			end,
		})
		local alone = hit(1)
		pairing.Push(alone)
		pairing.Tick(1.1)
		assert.is_nil(decided[alone.entry])
		pairing.Tick(1.2)
		assert.is_false(decided[alone.entry])
	end)

	describe("Hits on you and your pet", function()
		it("take a Log Line in their own frame for a heal or for damage, as from Drain Life or Health Funnel", function()
			local heal, healLine = hit(1, "player", 1, "HEAL"), line(1)
			local funnel, funnelLine = hit(2, "player", 32, "WOUND"), line(2)
			local decided = pair({ heal, healLine, funnel, funnelLine })
			assert.are.equal(healLine.entry, decided[heal.entry])
			assert.are.equal(funnelLine.entry, decided[funnel.entry])
		end)

		it("never take a waiting or a late Log Line, so a mob's attack cannot take your line", function()
			local swingLine, onYou, onPet = line(1), hit(1.05, "player", 1), hit(1.5, "pet", 1)
			local boltLine, late = line(3), hit(2.9, "pet", 32)
			local decided = pair({ swingLine, onYou, onPet, late, boltLine })
			assert.is_false(decided[onYou.entry])
			assert.is_false(decided[onPet.entry])
			assert.is_false(decided[late.entry])
		end)

		it("never take a line for a miss, so a mob's miss on your pet leaves your spell line", function()
			local boltLine, miss, bolt = line(1), hit(1, "pet", 1, "MISS", 0), hit(1.017)
			local decided = pair({ boltLine, miss, bolt })
			assert.is_false(decided[miss.entry])
			assert.are.equal(boltLine.entry, decided[bolt.entry])
		end)

		it("take a frame's Log Lines only after the enemy Hits in that frame", function()
			local onYou, tick, only = hit(1, "player", 1), hit(1), line(1)
			local decided = pair({ onYou, tick, only })
			assert.are.equal(only.entry, decided[tick.entry])
			assert.is_false(decided[onYou.entry])
		end)
	end)

	it("gives no Log Line to a WOUND of 0, so a waiting pet line stays for the pet's Hit", function()
		local petLine, zero, petSwing = line(1), hit(1.4, "nameplate1", 1, "WOUND", 0), hit(1.98, "nameplate1", 1)
		local decided = pair({ petLine, zero, petSwing })
		assert.is_false(decided[zero.entry])
		assert.are.equal(petLine.entry, decided[petSwing.entry])
	end)

	it("gives no Log Line to a WOUND of 0 that comes first in a frame, so the frame's real Hit keeps it", function()
		local zero, tick, tickLine = hit(1, "nameplate1", 32, "WOUND", 0), hit(1), line(1)
		local decided = pair({ zero, tick, tickLine })
		assert.is_false(decided[zero.entry])
		assert.are.equal(tickLine.entry, decided[tick.entry])
	end)

	it("does not hold a WOUND of 0 for a late Log Line", function()
		local zero, later = hit(1, "nameplate1", 32, "WOUND", 0), line(1.1)
		assert.is_false(pair({ zero, later })[zero.entry])
	end)

	it("can still pair a WOUND whose amount is secret", function()
		local tickLine, tick = line(1), hit(1, "nameplate1", 32, "WOUND", "<secret>")
		assert.are.equal(tickLine.entry, pair({ tickLine, tick })[tick.entry])
	end)

	describe("colours from the Log Filter", function()
		local function filter(priority)
			return {
				colors = { unitColoring = { [0x4511] = GREY, [0x3111] = WHITE, [0x3222] = { r = 1, g = 0, b = 0 } } },
				settings = { lineColoring = true, lineColorPriority = priority },
			}
		end

		it("are the player's and the pet's unit colours when lines take their source's colour", function()
			assert.are.same({ GREY, WHITE }, Pairing.ColoursOf(filter(1)))
		end)

		it("are unknown when lines take another colour, so every colour pairs", function()
			assert.is_nil(Pairing.ColoursOf(filter(3)))
			assert.is_nil(Pairing.ColoursOf(nil))
		end)
	end)

	describe("on the Warlock Traces", function()
		for _, name in ipairs({ "warlock-stockade", "warlock-thanes", "warlock-pet-thanes" }) do
			it("gives every Hit in " .. name .. " the Log Line of its Label", function()
				local trace = assert(Trace.Load("spec/traces/" .. name .. ".lua"))
				local labels = assert(loadfile("spec/traces/" .. name .. ".labels.lua"))()
				local decided, timeOf = {}, {}
				local pairing = Pairing.New({
					colours = Pairing.ColoursOf(trace.header.logFilter.filter),
					onDecision = function(decidedHit, decidedLine)
						decided[decidedHit.entry] = decidedLine and decidedLine.entry or false
					end,
				})
				-- The adapter feeds Pairing as the live addon will.
				local adapter = Adapter.New(function(record)
					if record.kind == "line" then
						timeOf[record.entry] = record.time
					end
					pairing.Push(record)
				end)
				for _, entry in ipairs(trace.entries) do
					adapter.Push(entry)
				end
				adapter.Tick(math.huge)
				pairing.Tick(math.huge)
				-- Pairing reads only a Log Line's time and colour, so any line of
				-- the player's colour from the Label line's frame is equal.
				local wrong = {}
				for _, row in ipairs(labels) do
					local got = decided[row.hit]
					if not (got == row.line or (got and row.line and timeOf[got] == timeOf[row.line])) then
						wrong[#wrong + 1] = ("hit %d: Label %s, Pairing %s"):format(row.hit, tostring(row.line), tostring(got))
					end
				end
				assert.are.same({}, wrong)
			end)
		end
	end)
end)
