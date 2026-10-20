local Label = assert(loadfile("tools/label-trace.lua"))()

-- The Trace starts at GetTime() 100, which is 10:00:00 in the Combat Log File.
local START = 100
local FORMAT = "10/20/2026 10:00:00.000-7  COMBAT_LOG_VERSION,22,ADVANCED_LOG_ENABLED,1,BUILD_VERSION,1.60.1,PROJECT_ID,18"

local ME = { "Player-0-00000001", "0x511" }
local OTHER = { "Player-0-00000002", "0x512" }
local PET = { "Pet-0-1-1-1-1860-0000000001", "0x1111" }
local MOB_A = { "Creature-0-1-1-1-100-00000000A", "0xa48" }
local MOB_B = { "Creature-0-1-1-1-100-00000000B", "0xa48" }

local function stamp(time)
	local ms = math.floor((time - START) * 1000 + 0.5)
	local seconds = math.floor(ms / 1000)
	return ("10/20/2026 10:%02d:%02d.%03d-7"):format(math.floor(seconds / 60), seconds % 60, ms % 1000)
end

local function fileLine(time, fields)
	return stamp(time) .. "  " .. table.concat(fields, ",")
end

local function base(event, source, dest)
	return { event, source[1], '""', source[2], "0x0", dest[1], '""', dest[2], "0x0" }
end

-- A damage event in the advanced format: a spell, or a melee swing when the
-- spell is nil.
local function damage(time, source, dest, amount, spell)
	local fields = base(spell and "SPELL_DAMAGE" or "SWING_DAMAGE", source, dest)
	if spell then
		for _, field in ipairs({ "707", '"' .. spell .. '"', "0x4" }) do
			fields[#fields + 1] = field
		end
	end
	for _ = 1, 19 do
		fields[#fields + 1] = "0"
	end
	for _, field in ipairs({ amount, amount, "-1", "4", "0", "0", "0", "nil", "nil", "nil" }) do
		fields[#fields + 1] = field
	end
	return fileLine(time, fields)
end

local function missed(time, source, dest, missType)
	local fields = base("SPELL_MISSED", source, dest)
	for _, field in ipairs({ "707", '"Immolate"', "0x4", missType, "nil", "ST" }) do
		fields[#fields + 1] = field
	end
	return fileLine(time, fields)
end

local function report(time, unit, plate, action, amount)
	return { time, "UNIT_COMBAT", unit, action, "", amount, 1, plate = plate, guid = "<secret>" }
end

local function logLine(time)
	return { time, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 }
end

-- Labels the Trace entries against the file lines, and returns the rows by
-- the entry number of their Hit.
local function label(entries, fileLines, withPet)
	local trace = {
		header = {
			started = "2026-10-20 10:00:00",
			startTime = START,
			logFilter = {
				filter = {
					filters = {
						{
							eventList = { SPELL_DAMAGE = true, SWING_DAMAGE = true, PARTY_KILL = true },
							sourceFlags = { [0x4511] = true, [0x3111] = withPet or nil },
						},
					},
				},
			},
		},
		entries = entries,
	}
	local lines = { FORMAT }
	for _, line in ipairs(fileLines) do
		lines[#lines + 1] = line
	end
	local rows, message = Label.Make(trace, lines)
	assert(rows, message)
	local byHit = {}
	for _, row in ipairs(rows) do
		byHit[row.hit.entry] = row
	end
	return byHit
end

describe("Labels", function()
	it("gives your Hit the Log Line of the file event that made it", function()
		local rows = label({
			logLine(101),
			report(101, "nameplate1", "nameplate1", "WOUND", 29),
		}, {
			damage(101, ME, MOB_A, 29, "Immolate"),
		})
		assert.are.same({ 1, nil }, { rows[2].line, rows[2].unsure })
	end)

	it("gives no Log Line to a Hit that another player made", function()
		local rows = label({
			logLine(101),
			report(101, "nameplate1", "nameplate1", "WOUND", 29),
			report(102, "nameplate1", "nameplate1", "WOUND", 40),
		}, {
			damage(101, ME, MOB_A, 29, "Immolate"),
			damage(102, OTHER, MOB_A, 40, "Fireball"),
		})
		assert.are.same({ false, nil }, { rows[3].line, rows[3].unsure })
	end)

	it("gives no Log Line to your miss, which the Log Filter leaves out", function()
		local rows = label({
			logLine(101),
			report(101, "nameplate1", "nameplate1", "WOUND", 29),
			report(102, "nameplate1", "nameplate1", "MISS", 0),
		}, {
			damage(101, ME, MOB_A, 29, "Immolate"),
			missed(102, ME, MOB_A, "MISS"),
		})
		assert.are.same({ false, nil }, { rows[3].line, rows[3].unsure })
	end)

	it("pairs a late pet swing, and marks it unsure when it is more than 1 s late", function()
		local rows = label({
			logLine(101),
			report(101.6, "nameplate1", "nameplate1", "WOUND", 14),
			logLine(103),
			report(104.2, "nameplate1", "nameplate1", "WOUND", 15),
		}, {
			damage(101, PET, MOB_A, 14),
			damage(103, PET, MOB_A, 15),
		}, true)
		assert.are.same({ 1, nil }, { rows[2].line, rows[2].unsure })
		assert.are.equal(3, rows[4].line)
		assert.matches("^late", rows[4].unsure)
	end)

	it("matches a Hit on you only to an event on you", function()
		local rows = label({
			logLine(101),
			report(101, "nameplate1", "nameplate1", "WOUND", 29),
			report(105, "player", nil, "WOUND", 12),
		}, {
			damage(101, ME, MOB_A, 29, "Immolate"),
			damage(104.9, OTHER, MOB_A, 12, "Fireball"),
			damage(105, MOB_A, ME, 12),
		})
		assert.are.same({ false, nil }, { rows[3].line, rows[3].unsure })
	end)

	it("uses the creature that a Nameplate already showed to choose between two events", function()
		local rows = label({
			logLine(101),
			report(101, "nameplate1", "nameplate1", "WOUND", 29),
			logLine(105),
			report(105, "nameplate1", "nameplate1", "WOUND", 12),
		}, {
			damage(101, ME, MOB_A, 29, "Immolate"),
			damage(105, OTHER, MOB_B, 12, "Fireball"),
			damage(105, ME, MOB_A, 12, "Corruption"),
		})
		assert.are.same({ 3, nil }, { rows[4].line, rows[4].unsure })
	end)

	it("marks a Hit unsure when two file events fit it", function()
		local rows = label({
			logLine(101),
			report(101, "nameplate1", "nameplate1", "WOUND", 29),
			logLine(105),
			report(105, "target", nil, "WOUND", 12),
		}, {
			damage(101, ME, MOB_A, 29, "Immolate"),
			damage(105, OTHER, MOB_B, 12, "Fireball"),
			damage(105, ME, MOB_A, 12, "Corruption"),
		})
		assert.are.equal("2 file events fit", rows[4].unsure)
	end)

	it("marks a Hit unsure when no file event fits it", function()
		local rows = label({
			logLine(101),
			report(101, "nameplate1", "nameplate1", "WOUND", 29),
			report(102, "nameplate1", "nameplate1", "WOUND", 0),
			logLine(104),
			report(104, "nameplate1", "nameplate1", "WOUND", 30),
		}, {
			-- The file must cover the whole time in which the event could come.
			damage(100, OTHER, MOB_B, 5, "Fireball"),
			damage(101, ME, MOB_A, 29, "Immolate"),
			damage(104, ME, MOB_A, 30, "Immolate"),
		})
		assert.are.same({ false, "no file event fits" }, { rows[3].line, rows[3].unsure })
	end)

	it("stops when the Log Lines do not line up with the file", function()
		local trace = {
			header = {
				started = "2026-10-20 10:00:00",
				startTime = START,
				logFilter = { filter = { filters = { { eventList = { SPELL_DAMAGE = true }, sourceFlags = {} } } } },
			},
			entries = { logLine(101), logLine(102) },
		}
		local rows, message = Label.Make(trace, { FORMAT, damage(101, OTHER, MOB_A, 29, "Fireball") })
		assert.is_nil(rows)
		assert.matches("align", message)
	end)
end)
