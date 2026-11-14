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

-- Spell IDs and schools, as the file writes them.
local SPELLS = {
	Immolate = { "707", "0x4" },
	Corruption = { "6222", "0x20" },
	Fireball = { "133", "0x4" },
	["Drain Soul"] = { "1120", "0x20" },
}

-- A damage event in the advanced format: a spell, or a melee swing when the
-- spell is nil. A swing deals physical damage unless school says otherwise.
local function damage(time, source, dest, amount, spell, critical, school)
	local fields = base(spell and "SPELL_DAMAGE" or "SWING_DAMAGE", source, dest)
	if spell then
		for _, field in ipairs({ SPELLS[spell][1], '"' .. spell .. '"', SPELLS[spell][2] }) do
			fields[#fields + 1] = field
		end
	end
	for _ = 1, 19 do
		fields[#fields + 1] = "0"
	end
	school = school or (spell and tostring(tonumber(SPELLS[spell][2])) or "1")
	for _, field in ipairs({ amount, amount, "-1", school, "0", "0", "0", critical and "1" or "nil", "nil", "nil" }) do
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

-- A report with no school fits a file event of any school.
local function report(time, unit, plate, action, amount, school, descriptor)
	return { time, "UNIT_COMBAT", unit, action, descriptor or "", amount, school, plate = plate, guid = "<secret>" }
end

-- named holds the fields that Events.lua adds, such as colouring and lineKind.
local function logLine(time, grey, named)
	local entry = { time, "COMBAT_LOG_MESSAGE", "|Ky1|k", grey or 0.7, grey or 0.7, grey or 0.7, 0 }
	for key, value in pairs(named or {}) do
		entry[key] = value
	end
	return entry
end

-- Labels the Trace entries against the file lines, and returns the rows by
-- the entry number of their Hit. filter adds to the Trace's Log Filter, and
-- format replaces the file's first line.
local function label(entries, fileLines, withPet, filter, format)
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
	for key, value in pairs(filter or {}) do
		trace.header.logFilter.filter[key] = value
	end
	local lines = { format or FORMAT }
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
		assert.are.same({ 1, 707, nil }, { rows[2].line, rows[2].spell, rows[2].unsure })
	end)

	-- Forever wrote warlock-tick-jitter's file with the advanced fields while
	-- its first line said they were off.
	it("reads the advanced fields of a file whose first line says they are off", function()
		local line = damage(101, ME, MOB_A, 29, "Immolate"):gsub(',0,', "," .. MOB_A[1] .. ",", 1)
		local rows = label({
			logLine(101),
			report(101, "nameplate1", "nameplate1", "WOUND", 29, 4),
		}, { line }, false, nil, (FORMAT:gsub("ADVANCED_LOG_ENABLED,1", "ADVANCED_LOG_ENABLED,0")))
		assert.are.same({ 1, 707 }, { rows[2].line, rows[2].spell })
	end)

	it("gives each Log Line of a frame the file event of its colour", function()
		-- Under colours by source the killing blow line is highlighted white, and
		-- it can come before the line of the hit that killed.
		local rows = label({
			logLine(101, 1, { colouring = "source", lineKind = "other" }),
			report(101, "nameplate1", "nameplate1", "WOUND", 26),
			logLine(101, nil, { colouring = "source" }),
		}, {
			damage(101, ME, MOB_A, 26, "Drain Soul"),
			fileLine(101, base("PARTY_KILL", ME, MOB_A)),
		}, false, {
			settings = { lineColoring = true, lineColorPriority = 1, lineHighlighting = true },
			colors = { highlightedEvents = { PARTY_KILL = true } },
		})
		assert.are.same({ 3, 1120 }, { rows[2].line, rows[2].spell })
	end)

	it("gives each Log Line of a frame the file event of its Line Kind, in another addon's colours", function()
		-- MikScrollingBattleText's colours for a direct hit and a killing blow.
		local function line(colour, kind)
			local entry = logLine(101, nil, { colouring = "kind", lineKind = kind })
			entry[4], entry[5], entry[6] = colour[1], colour[2], colour[3]
			return entry
		end
		local rows = label({
			line({ 1, 1, 1 }, "kill"),
			report(101, "nameplate1", "nameplate1", "WOUND", 26),
			line({ 1, 0.8, 0.3 }, "direct"),
		}, {
			damage(101, ME, MOB_A, 26, "Drain Soul"),
			fileLine(101, base("PARTY_KILL", ME, MOB_A)),
		}, false, { settings = { lineColoring = true, lineColorPriority = 3 } })
		assert.are.same({ 3, 1120 }, { rows[2].line, rows[2].spell })
	end)

	it("lines up a hit on a building with its line in the direct hit's colour, as MikScrollingBattleText colours it", function()
		local building = damage(101, ME, MOB_A, 26, "Immolate"):gsub("SPELL_DAMAGE", "SPELL_BUILDING_DAMAGE")
		assert.has_no.errors(function()
			label({ logLine(101, nil, { colouring = "kind", lineKind = "direct" }) }, { building }, false, {
				settings = { lineColoring = true, lineColorPriority = 3 },
				filters = { { eventList = { SPELL_BUILDING_DAMAGE = true }, sourceFlags = { [0x4511] = true } } },
			})
		end)
	end)

	it("lets the school of a Hit choose between two file events", function()
		local rows = label({
			logLine(105),
			logLine(105),
			report(105, "target", nil, "WOUND", 12, 32),
		}, {
			damage(105, ME, MOB_A, 12, "Immolate"),
			damage(105, ME, MOB_A, 12, "Corruption"),
		})
		assert.are.same({ 2, 6222, nil }, { rows[3].line, rows[3].spell, rows[3].unsure })
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
		assert.is_nil(rows[3].spell)
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
		assert.are.same({ 1, false, nil }, { rows[2].line, rows[2].spell, rows[2].unsure })
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

	it("gives a critical Hit only a critical file event", function()
		local rows = label({
			logLine(105),
			report(105, "nameplate1", "nameplate1", "WOUND", "<secret>", nil, "CRITICAL"),
		}, {
			damage(105, OTHER, MOB_A, 40, "Fireball"),
			damage(105, ME, MOB_A, 80, "Immolate", true),
		})
		assert.are.same({ 1, "secret amount" }, { rows[2].line, rows[2].unsure })
	end)

	it("gives a damaging Hit no file event of another school", function()
		local rows = label({
			logLine(101),
			report(101, "nameplate1", "nameplate1", "WOUND", 29),
			report(105, "nameplate1", "nameplate1", "WOUND", "<secret>", 32),
		}, {
			damage(101, ME, MOB_A, 29, "Immolate"),
			damage(105, OTHER, MOB_A, 40, "Fireball"),
			-- The file must cover the whole time in which the event could come.
			damage(106, OTHER, MOB_B, 5, "Fireball"),
		})
		assert.are.same({ false, "no file event fits" }, { rows[3].line, rows[3].unsure })
	end)

	it("gives a Hit from an elemental swing the swing's file event", function()
		local rows = label({
			logLine(101),
			report(101, "nameplate1", "nameplate1", "WOUND", 29),
			report(105, "player", nil, "WOUND", "<secret>", 16),
		}, {
			damage(101, ME, MOB_A, 29, "Immolate"),
			damage(105, MOB_A, ME, 12, nil, false, "16"),
		})
		assert.are.same({ false, "secret amount" }, { rows[3].line, rows[3].unsure })
	end)

	it("marks a Hit unsure when timing picks another event than the school does", function()
		-- Five clean pet swings teach the pet's delay of 0.55 s. Then a physical
		-- miss has a pet swing, off that delay, and an on-time Immolate to
		-- choose from.
		local entries, fileLines = {}, {}
		for i = 0, 4 do
			local time = 101 + 2 * i
			entries[#entries + 1] = logLine(time)
			entries[#entries + 1] = report(time + 0.55, "nameplate1", "nameplate1", "WOUND", 10 + i)
			fileLines[#fileLines + 1] = damage(time, PET, MOB_A, 10 + i)
		end
		entries[#entries + 1] = report(111.55, "nameplate1", "nameplate1", "MISS", 0, 1)
		fileLines[#fileLines + 1] = fileLine(111.2, { "SWING_MISSED", PET[1], '""', PET[2], "0x0", MOB_A[1], '""',
			MOB_A[2], "0x0", "MISS", "nil" })
		fileLines[#fileLines + 1] = missed(111.55, ME, MOB_A, "MISS")
		local rows = label(entries, fileLines, true)
		assert.matches("^on time", rows[11].unsure)
	end)

	it("prefers a swing at its source's Swing Delay to a nearer one, and marks it unsure", function()
		-- Five clean pet swings teach the pet's delay of 0.55 s.
		local entries, fileLines = {}, {}
		for i = 0, 4 do
			local time = 101 + 2 * i
			entries[#entries + 1] = logLine(time)
			entries[#entries + 1] = report(time + 0.55, "nameplate1", "nameplate1", "WOUND", 10 + i)
			fileLines[#fileLines + 1] = damage(time, PET, MOB_A, 10 + i)
		end
		entries[#entries + 1] = logLine(111)
		entries[#entries + 1] = report(111.55, "nameplate1", "nameplate1", "WOUND", "<secret>")
		fileLines[#fileLines + 1] = damage(111, PET, MOB_A, 20)
		fileLines[#fileLines + 1] = damage(111.35, OTHER, MOB_A, 21)
		local rows = label(entries, fileLines, true)
		assert.are.same({ 11, "on time, of 2 file events" }, { rows[12].line, rows[12].unsure })
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
