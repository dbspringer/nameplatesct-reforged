_G.issecretvalue = function(value)
	return value == "<secret>"
end
_G.Enum = { CombatLogMessageOrder = { Newest = 0, Oldest = 1 } }

local ns = {}
for _, file in ipairs({ "src/LineKind.lua", "src/Adapter.lua", "src/Pairing.lua", "src/TickSpells.lua", "src/DirectSpells.lua", "src/Identity.lua", "src/Flow.lua" }) do
	assert(loadfile(file))("NameplateSCT_Reforged", ns)
end
local Flow = ns.Flow
local Label = assert(loadfile("tools/label-trace.lua"))()
local Trace = assert(loadfile("tools/trace.lua"))()

-- Pushes the entries through a new Flow, ends every hold, and returns the
-- Hits that went to show and to noPlate, each with its how, and for show
-- the Line Kind and the hidden Nameplate of a late Hit.
local function run(entries)
	local shown, plateless = {}, {}
	local flow = Flow.New({
		spellFacts = {},
		show = function(hit, how, _, lineKind, late)
			shown[#shown + 1] = { hit = hit, how = how, lineKind = lineKind, late = late }
		end,
		noPlate = function(hit, how)
			plateless[#plateless + 1] = { hit = hit, how = how }
		end,
	})
	for _, entry in ipairs(entries) do
		flow.Push(entry)
	end
	flow.Tick(math.huge)
	return shown, plateless
end

local function entriesOf(results)
	local entries = {}
	for i, result in ipairs(results) do
		entries[i] = result.hit.entry
	end
	return entries
end

describe("Flow", function()
	it("sends Your Hit with no Nameplate to noPlate, not to show", function()
		local shown, plateless = run({
			{ 1, "UNIT_COMBAT", "target", "WOUND", "", 29, 32 },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same({}, shown)
		assert.are.equal(1, #plateless)
		assert.are.same({ "target", "frame" }, { plateless[1].hit.unit, plateless[1].how })
	end)

	it("works with no noPlate, and passes how to show", function()
		local shown = {}
		local flow = Flow.New({
			spellFacts = {},
			show = function(hit, how)
				shown[#shown + 1] = hit.entry .. ":" .. how
			end,
		})
		for _, entry in ipairs({
			{ 1, "UNIT_COMBAT", "target", "WOUND", "", 29, 32 },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
			{ 2, "COMBAT_LOG_MESSAGE", "|Ky2|k", 0.7, 0.7, 0.7, 0 },
			{ 2.05, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
		}) do
			flow.Push(entry)
		end
		flow.Tick(math.huge)
		assert.are.same({ "4:short" }, shown)
	end)

	it("passes the Line Kind of the Hit's Log Line to show", function()
		local swing = ns.LineKind.EventColours().SWING_DAMAGE
		local shown = run({
			{ 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 1, plate = "nameplate1" },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", swing.r, swing.g, swing.b, 0, colouring = "kind" },
		})
		assert.are.equal(1, #shown)
		assert.are.equal("swing", shown[1].lineKind)
	end)

	-- A stand-in for a Nameplate frame, and the plate events that carry it.
	local FRAME = {}
	local function added(time, token, frame)
		return { time, "NAME_PLATE_UNIT_ADDED", token, frame = frame }
	end
	local function removed(time, token, frame)
		return { time, "NAME_PLATE_UNIT_REMOVED", token, frame = frame, wasTarget = true, classification = "elite",
			isBoss = false, isPlayer = false }
	end
	local AS_IT_HID = { frame = FRAME, wasTarget = true, classification = "elite", isBoss = false, isPlayer = false }

	it("shows a Hit whose Nameplate hid in its frame on that Nameplate as it hid, and a Hit on another as usual", function()
		local shown = run({
			added(0, "nameplate1", FRAME),
			{ 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
			{ 1, "UNIT_COMBAT", "nameplate2", "WOUND", "", 29, 32, plate = "nameplate2" },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky2|k", 0.7, 0.7, 0.7, 0 },
			removed(1, "nameplate1", FRAME),
		})
		assert.are.same({ 2, 3 }, entriesOf(shown))
		assert.are.same({ AS_IT_HID }, { shown[1].late })
		assert.is_nil(shown[2].late)
	end)

	it("shows a Hit held for a late Log Line whose Nameplate hid during the hold on that Nameplate", function()
		local shown = run({
			added(0, "nameplate1", FRAME),
			{ 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
			removed(1.05, "nameplate1", FRAME),
			{ 1.1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same({ 2 }, entriesOf(shown))
		assert.are.same(AS_IT_HID, shown[1].late)
	end)

	it("shows nothing for a late Hit whose Nameplate frame already shows a new unit", function()
		local shown = run({
			added(0, "nameplate1", FRAME),
			{ 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
			removed(1.05, "nameplate1", FRAME),
			added(1.08, "nameplate4", FRAME),
			{ 1.1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same({}, entriesOf(shown))
	end)

	it("shows a Hit on the unit that a token names after the token's Nameplate hid, even in the same frame", function()
		local shown = run({
			{ 1, "NAME_PLATE_UNIT_REMOVED", "nameplate1" },
			{ 1, "NAME_PLATE_UNIT_ADDED", "nameplate1" },
			{ 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
			{ 2, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
			{ 2, "COMBAT_LOG_MESSAGE", "|Ky2|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same({ 3, 5 }, entriesOf(shown))
	end)

	describe("on the Warlock Traces", function()
		for _, name in ipairs(Trace.NAMES) do
			it("shows exactly the Hits on an enemy Nameplate whose Label has a Log Line in " .. name, function()
				local trace, labels = Trace.LoadChecked(name, ns.LineKind.ColouringOf)
				local unitOf = {}
				for _, hit in ipairs((Label.Adapt(trace))) do
					unitOf[hit.entry] = hit.unit
				end
				local onPlate, noPlate = {}, {}
				for _, row in ipairs(labels) do
					local unit = unitOf[row.hit]
					if row.line and unit:match("^nameplate%d+$") then
						onPlate[#onPlate + 1] = row.hit
					elseif row.line and unit ~= "player" and unit ~= "pet" then
						noPlate[#noPlate + 1] = row.hit
					end
				end
				table.sort(onPlate)
				table.sort(noPlate)

				local shown, plateless = run(trace.entries)
				local shownEntries, platelessEntries = entriesOf(shown), entriesOf(plateless)
				table.sort(shownEntries)
				table.sort(platelessEntries)
				assert.are.same(onPlate, shownEntries)
				assert.are.same(noPlate, platelessEntries)
			end)
		end
	end)
end)
