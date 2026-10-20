_G.issecretvalue = function(value)
	return value == "<secret>"
end

local ns = {}
assert(loadfile("src/Pairing.lua"))("NameplateSCT_Reforged", ns)
local Pairing = ns.Pairing
local Label = assert(loadfile("tools/label-trace.lua"))()
local Trace = assert(loadfile("tools/trace.lua"))()

local GREY = { 0.7, 0.7, 0.7 }
local WHITE = { 1, 1, 1 }

local entryCount = 0

local function hit(time, unit, school, action, amount)
	entryCount = entryCount + 1
	return { kind = "hit", time = time, entry = entryCount, unit = unit or "nameplate1", action = action or "WOUND",
		descriptor = "", amount = amount or 10, school = school or 32 }
end

local function line(time, colour)
	colour = colour or GREY
	entryCount = entryCount + 1
	return { kind = "line", time = time, entry = entryCount, r = colour[1], g = colour[2], b = colour[3] }
end

-- Pushes the records through a new Pairing, ends every hold, and returns the
-- Log Line entry that each Hit got, by the Hit's entry (false for none).
local function pair(records, colours)
	local decided = {}
	local pairing = Pairing.New({
		colours = colours == nil and { GREY } or colours or nil,
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
		local swingLine, swing = line(1), hit(1.6, "nameplate1", 1)
		local lateLine, tooLate = line(3), hit(4.2, "nameplate1", 1)
		local decided = pair({ swingLine, swing, lateLine, tooLate })
		assert.are.equal(swingLine.entry, decided[swing.entry])
		assert.is_false(decided[tooLate.entry])
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
		it("take a Log Line in their own frame for a heal or for damage, as from Drain Life", function()
			local heal, healLine = hit(1, "player", 1, "HEAL"), line(1)
			local funnel, funnelLine = hit(2, "pet", 32, "WOUND"), line(2)
			local decided = pair({ heal, healLine, funnel, funnelLine })
			assert.are.equal(healLine.entry, decided[heal.entry])
			assert.are.equal(funnelLine.entry, decided[funnel.entry])
		end)

		it("never take a waiting Log Line, so a mob's attack cannot take your line", function()
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

	it("can still pair a WOUND whose amount is secret", function()
		local tickLine, tick = line(1), hit(1, "nameplate1", 32, "WOUND", "<secret>")
		assert.are.equal(tickLine.entry, pair({ tickLine, tick })[tick.entry])
	end)

	describe("on the Warlock Traces", function()
		for _, name in ipairs({ "warlock-stockade", "warlock-thanes", "warlock-pet-thanes" }) do
			it("gives every Hit in " .. name .. " the Log Line of its Label", function()
				local trace = assert(Trace.Load("spec/traces/" .. name .. ".lua"))
				local labels = assert(loadfile("spec/traces/" .. name .. ".labels.lua"))()
				local hits, logLines = Label.Adapt(trace)
				local records = {}
				for _, record in ipairs(hits) do
					records[#records + 1] = record
				end
				for _, record in ipairs(logLines) do
					records[#records + 1] = record
				end
				table.sort(records, function(a, b)
					return a.entry < b.entry
				end)
				local decided = pair(records)
				-- The Log Lines of one frame have the same time and colour and no
				-- content, so any line from the Label line's frame is equal.
				local timeOf = {}
				for _, record in ipairs(logLines) do
					timeOf[record.entry] = record.time
				end
				local wrong = {}
				for _, row in ipairs(labels) do
					local got = decided[row.hit]
					local same = got == row.line or (got and row.line and timeOf[got] == timeOf[row.line])
					if not same then
						wrong[#wrong + 1] = ("hit %d: Label %s, Pairing %s"):format(row.hit, tostring(row.line),
							tostring(decided[row.hit]))
					end
				end
				assert.are.same({}, wrong)
			end)
		end
	end)
end)
