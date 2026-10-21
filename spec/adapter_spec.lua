-- Stand-in for a WoW secret: it errors when code compares, orders, or reads
-- it. Lua 5.1 runs __eq only between two tables, so a compare with a plain
-- value passes quietly; a spec that must catch a compare needs a secret on
-- both sides. Trace placeholders such as "<secret>" are public here.
local SECRET = {
	__eq = function() error("compared a secret") end,
	__lt = function() error("compared a secret") end,
	__le = function() error("compared a secret") end,
	__index = function() error("read a secret") end,
}
local function newSecret()
	return setmetatable({}, SECRET)
end
_G.issecretvalue = function(value)
	return getmetatable(value) == SECRET
end
_G.Enum = { CombatLogMessageOrder = { Newest = 0, Oldest = 1 } }

local ns = {}
assert(loadfile("src/LineKind.lua"))("NameplateSCT_Reforged", ns)
assert(loadfile("src/Adapter.lua"))("NameplateSCT_Reforged", ns)
local Adapter = ns.Adapter
local Trace = assert(loadfile("tools/trace.lua"))()

-- A new adapter, and the list that its records go into as they leave.
local function collect()
	local records = {}
	local adapter = Adapter.New(function(record)
		records[#records + 1] = record
	end)
	return adapter, records
end

-- Pushes the entries through a new adapter, closes the last frame, and returns
-- the records in the order they left.
local function run(entries)
	local adapter, records = collect()
	for _, entry in ipairs(entries) do
		adapter.Push(entry)
	end
	adapter.Tick(math.huge)
	return records
end

local function report(time, unit, plate, action, amount)
	return { time, "UNIT_COMBAT", unit, action or "WOUND", "", amount or 29, 1, plate = plate, guid = "<secret>" }
end

local function logLine(time, order)
	return { time, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, order or 0 }
end

local function kinds(records)
	local result = {}
	for i, record in ipairs(records) do
		result[i] = record.kind
	end
	return result
end

describe("Adapter", function()
	describe("Hits", function()
		it("makes one Hit from the repeats of one report on a nameplate, target, and soft target", function()
			local records = run({
				report(1, "nameplate1", "nameplate1"),
				report(1, "target", "nameplate1"),
				report(1, "softenemy", "nameplate1"),
			})
			assert.are.equal(1, #records)
			assert.is_table(records[1].life)
			records[1].life = nil
			assert.are.same({ kind = "hit", time = 1, entry = 1, unit = "nameplate1", action = "WOUND",
				descriptor = "", amount = 29, school = 1 }, records[1])
		end)

		it("makes two Hits when one nameplate has two reports in a frame", function()
			local records = run({
				report(1, "nameplate1", "nameplate1"),
				report(1, "target", "nameplate1"),
				report(1, "nameplate1", "nameplate1"),
				report(1, "target", "nameplate1"),
			})
			assert.are.same({ "hit", "hit" }, kinds(records))
			assert.are.same({ 1, 3 }, { records[1].entry, records[2].entry })
		end)

		it("counts Hits on the token with the most reports, though another token reports first", function()
			local records = run({
				report(1, "target", "nameplate1"),
				report(1, "nameplate1", "nameplate1"),
				report(1, "nameplate1", "nameplate1"),
			})
			assert.are.same({ 1, 3 }, { records[1].entry, records[2].entry })
		end)

		it("keeps Hits apart on two plate lives of one token in one frame, and gives the old life its hide", function()
			local records = run({
				report(1, "nameplate1", "nameplate1"),
				{ 1, "NAME_PLATE_UNIT_REMOVED", "nameplate1", classification = "elite" },
				{ 1, "NAME_PLATE_UNIT_ADDED", "nameplate1" },
				report(1, "nameplate1", "nameplate1"),
			})
			assert.are.equal(2, #records)
			assert.are_not.equal(records[1].life, records[2].life)
			assert.are.same({ "elite" }, { records[1].life.hid.classification, records[2].life.hid })
		end)

		it("keeps Hits on different nameplates apart", function()
			local records = run({
				report(1, "nameplate1", "nameplate1"),
				report(1, "nameplate2", "nameplate2"),
			})
			assert.are.same({ "nameplate1", "nameplate2" }, { records[1].unit, records[2].unit })
		end)

		it("drops Hits on a unit the player cannot attack, and keeps them when a Trace does not say", function()
			local friendly, target = report(1, "nameplate1", "nameplate1"), report(1, "target", nil)
			friendly.canAttack, target.canAttack = false, false
			local enemy = report(1, "nameplate2", "nameplate2")
			enemy.canAttack = true
			local records = run({ friendly, target, enemy, report(1, "nameplate3", "nameplate3") })
			assert.are.same({ "nameplate2", "nameplate3" }, { records[1].unit, records[2].unit })
			assert.are.equal(2, #records)
		end)

		it("keeps Hits on the player and the pet, and drops targettarget", function()
			local records = run({
				report(1, "player", nil, "HEAL"),
				report(1, "targettarget", nil, "HEAL"),
				report(1, "pet", nil, "WOUND"),
			})
			assert.are.same({ "player", "pet" }, { records[1].unit, records[2].unit })
		end)

		describe("counts a report on another token as a repeat of the player's or pet's own report", function()
			local function owned(own, entry)
				entry.own = own
				return entry
			end

			it("when the player targets themself", function()
				local records = run({
					owned("player", report(1, "player", nil, "HEAL")),
					owned("player", report(1, "target", nil, "HEAL")),
				})
				assert.are.same({ { "player", 1 } }, { { records[1].unit, records[1].entry }, records[2] })
			end)

			it("when the player targets a pet that has no nameplate", function()
				local records = run({
					owned("pet", report(1, "target", nil, "WOUND")),
					owned("pet", report(1, "pet", nil, "WOUND")),
				})
				assert.are.same({ { "pet", 1 } }, { { records[1].unit, records[1].entry }, records[2] })
			end)

			it("when the pet's friendly nameplate shows", function()
				local records = run({
					owned("pet", report(1, "pet", "nameplate3", "WOUND")),
					owned("pet", report(1, "nameplate3", "nameplate3", "WOUND")),
				})
				assert.are.same({ { "pet", 1 } }, { { records[1].unit, records[1].entry }, records[2] })
			end)
		end)

		it("merges enemy reports with no nameplate into one Hit per action, named by target first", function()
			local records = run({
				report(1, "softinteract", nil, "WOUND"),
				report(1, "target", nil, "WOUND"),
				report(1, "softinteract", nil, "MISS"),
				report(1, "softenemy", nil, "MISS"),
			})
			assert.are.equal(2, #records)
			assert.are.same({ "target", "WOUND", 1 }, { records[1].unit, records[1].action, records[1].entry })
			assert.are.same({ "softenemy", "MISS", 3 }, { records[2].unit, records[2].action, records[2].entry })
		end)

		it("passes the amount through without reading it, so a live secret reaches the renderer", function()
			local secret = newSecret()
			local records = run({ report(1, "nameplate1", "nameplate1", "WOUND", secret) })
			assert.is_true(rawequal(records[1].amount, secret))
		end)
	end)

	describe("frames", function()
		it("holds a frame's records until an event with a new time comes", function()
			local adapter, records = collect()
			adapter.Push(logLine(1))
			adapter.Push(report(1, "nameplate1", "nameplate1"))
			assert.are.equal(0, #records)
			adapter.Push(logLine(2))
			assert.are.same({ "line", "hit" }, kinds(records))
		end)

		it("closes a frame on a tick after it, and not on a tick at the same time", function()
			local adapter, records = collect()
			adapter.Push(report(1, "nameplate1", "nameplate1"))
			adapter.Tick(1)
			assert.are.equal(0, #records)
			adapter.Tick(1.1)
			assert.are.equal(1, #records)
		end)

		it("does nothing on a tick with no frame open, as most live ticks are", function()
			local adapter, records = collect()
			adapter.Tick(1)
			assert.are.equal(0, #records)
		end)

		it("gives out a frame's records in entry order, with a Hit at its first report", function()
			local records = run({
				report(1, "target", "nameplate1"),
				logLine(1),
				report(1, "nameplate1", "nameplate1"),
				{ 1, "PLAYER_SWING", 2.0, 0 },
			})
			assert.are.same({ "hit", "line", "swing" }, kinds(records))
			assert.are.same({ 1, 2, 4 }, { records[1].entry, records[2].entry, records[3].entry })
		end)

		it("counts every pushed entry, ignored ones too, so entry numbers match the Trace", function()
			local records = run({
				{ 1, "PLAYER_TARGET_CHANGED" },
				{ 1, "NAME_PLATE_UNIT_ADDED", "nameplate1", guid = "<secret>" },
				report(1, "nameplate1", "nameplate1"),
				{ 2, "NAME_PLATE_UNIT_REMOVED", "nameplate1", guid = "<secret>" },
			})
			assert.are.same({ "hit" }, kinds(records))
			assert.are.equal(3, records[1].entry)
		end)
	end)

	describe("Log Lines", function()
		it("keeps the time and the raw colour", function()
			local records = run({ { 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 1, 0.5, 0.25, 0 } })
			assert.are.same({ kind = "line", time = 1, entry = 1 }, records[1])
		end)

		it("reads each Log Line's Line Kind from its colour, by the colouring it came under", function()
			local records = run({
				{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.74902, 0.54902, 1, 0, colouring = "kind" },
				{ 2, "COMBAT_LOG_MESSAGE", "|Ky2|k", 0.74902, 0.54902, 1, 0 },
			})
			assert.are.equal("tick", records[1].lineKind)
			assert.is_nil(records[2].lineKind)
		end)

		it("drops the old lines that the game sends again to fill a new chat frame", function()
			local records = run({ logLine(1, Enum.CombatLogMessageOrder.Oldest), logLine(1) })
			assert.are.equal(1, #records)
			assert.are.equal(2, records[1].entry)
		end)

		it("keeps a line whose order is secret, without comparing the order", function()
			-- With Oldest a secret too, any compare with the order errors. This does
			-- not check which side the guard reads: live, only the order is secret.
			local orders = Enum.CombatLogMessageOrder
			local oldest = orders.Oldest
			finally(function()
				orders.Oldest = oldest
			end)
			orders.Oldest = newSecret()
			local records = run({ logLine(1, newSecret()) })
			assert.are.equal(1, #records)
		end)
	end)

	describe("casts and swings", function()
		it("makes one Cast for each stage, without the target name", function()
			local records = run({
				{ 1, "UNIT_SPELLCAST_SENT", "player", "<secret>", "Cast-1", 707 },
				{ 1, "UNIT_SPELLCAST_START", "player", "Cast-1", 707, "CastBar-1" },
				{ 3, "UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-1", 707, "CastBar-1" },
				{ 4, "UNIT_SPELLCAST_INTERRUPTED", "pet", "Cast-2", 3716, "<nil>", "CastBar-2" },
			})
			assert.are.same({ kind = "cast", time = 1, entry = 1, stage = "SENT", unit = "player",
				castGUID = "Cast-1", spellID = 707 }, records[1])
			assert.are.same({ "START", "SUCCEEDED", "INTERRUPTED" }, { records[2].stage, records[3].stage, records[4].stage })
			assert.are.same({ "pet", "Cast-2", 3716 }, { records[4].unit, records[4].castGUID, records[4].spellID })
		end)

		it("makes a Cast for a channel's start and stop", function()
			local records = run({
				{ 1, "UNIT_SPELLCAST_CHANNEL_START", "player", "Cast-3", 689 },
				{ 2, "UNIT_SPELLCAST_CHANNEL_STOP", "player", "Cast-3", 689 },
			})
			assert.are.same({ kind = "cast", time = 1, entry = 1, stage = "CHANNEL_START", unit = "player",
				castGUID = "Cast-3", spellID = 689 }, records[1])
			assert.are.same({ "CHANNEL_STOP", "Cast-3", 689 }, { records[2].stage, records[2].castGUID, records[2].spellID })
		end)

		it("makes a Swing from a swing timer start", function()
			local records = run({ { 1, "PLAYER_SWING", 1.7, 2 } })
			assert.are.same({ kind = "swing", time = 1, entry = 1, duration = 1.7, swingType = 2 }, records[1])
		end)

		describe("gives pet to a swing line", function()
			-- A Log Line in the colour of this event's kind.
			local function kindLine(time, event)
				local colour = ns.LineKind.EventColours()[event]
				return { time, "COMBAT_LOG_MESSAGE", "|Ky1|k", colour.r, colour.g, colour.b, 0, colouring = "kind" }
			end
			local function swingLine(time)
				return kindLine(time, "SWING_DAMAGE")
			end
			local function swingMissLine(time)
				return kindLine(time, "SWING_MISSED")
			end
			local function pets(records)
				local result = {}
				for _, record in ipairs(records) do
					if record.kind == "line" then
						result[#result + 1] = record.pet == true
					end
				end
				return result
			end

			it("with no player swing in its frame, and not to another kind of line", function()
				local records = run({
					swingLine(1),
					swingMissLine(1),
					kindLine(1, "SPELL_DAMAGE"),
				})
				assert.are.same({ true, true, false }, pets(records))
			end)

			it("only when the player's swing in its frame is a wand's", function()
				local records = run({
					{ 1, "PLAYER_SWING", 1.7, 2 }, swingLine(1),
					{ 2, "PLAYER_SWING", 1.5, 0 }, swingLine(2),
					{ 3, "PLAYER_SWING", 1.5, 1 }, swingMissLine(3),
				})
				assert.are.same({ true, false, false }, pets(records))
			end)

			it("not when the player swings in the same frame, as which line is whose is not known", function()
				local records = run({ swingLine(1), { 1, "PLAYER_SWING", 1.5, 0 }, swingLine(1) })
				assert.are.same({ false, false }, pets(records))
			end)

			it("not when the line's colour tells no kind", function()
				assert.are.same({ false }, pets(run({ logLine(1) })))
			end)

			it("not when the player had no pet as the line came, but when a Trace did not say", function()
				local petless, unsaid = swingLine(1), swingLine(2)
				petless.hasPet = false
				assert.are.same({ false, true }, pets(run({ petless, unsaid })))
			end)
		end)
	end)

	-- The Hit counts come from the Trace's part of the Combat Log File: one Hit
	-- for each damage, miss, or heal event on an enemy, the player, or the pet
	-- while the Trace ran. The line count is the Trace's own Log Line count.
	describe("on the Warlock Traces", function()
		local function counts(name)
			local trace = assert(Trace.Load("spec/traces/" .. name .. ".lua"))
			local result = { enemy = 0, player = 0, pet = 0, line = 0 }
			for _, record in ipairs(run(trace.entries)) do
				if record.kind == "hit" then
					local who = (record.unit == "player" or record.unit == "pet") and record.unit or "enemy"
					result[who] = result[who] + 1
				elseif record.kind == "line" then
					result.line = result.line + 1
				end
			end
			return result
		end

		it("finds every Hit in the Stockade Trace", function()
			-- Mana gains on the player are in the file, but the game sends no
			-- UNIT_COMBAT for them.
			assert.are.same({ enemy = 25, player = 6, pet = 3, line = 15 }, counts("warlock-stockade"))
		end)

		it("finds every Hit in the Thanes Trace", function()
			assert.are.same({ enemy = 58, player = 17, pet = 5, line = 49 }, counts("warlock-thanes"))
		end)

		it("finds every Hit in the pet Trace", function()
			-- 65 enemy events in the file, plus a WOUND of 0 just after the pet's
			-- Torment that has no event in the Combat Log File.
			assert.are.same({ enemy = 66, player = 14, pet = 41, line = 89 }, counts("warlock-pet-thanes"))
		end)
	end)
end)
