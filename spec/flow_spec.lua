_G.issecretvalue = function(value)
	return value == "<secret>"
end

local ns = {}
for _, file in ipairs({ "src/Adapter.lua", "src/Pairing.lua", "src/Flow.lua" }) do
	assert(loadfile(file))("NameplateSCT_Reforged", ns)
end
local Flow, Pairing = ns.Flow, ns.Pairing
local Label = assert(loadfile("tools/label-trace.lua"))()
local Trace = assert(loadfile("tools/trace.lua"))()

local GREY = { r = 0.7, g = 0.7, b = 0.7 }

-- Pushes the entries through a new Flow, ends every hold, and returns the
-- Hits that went to show and to noPlate, each with its how.
local function run(entries, colours)
	local shown, plateless = {}, {}
	local flow = Flow.New({
		colours = colours,
		show = function(hit, how)
			shown[#shown + 1] = { hit = hit, how = how }
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
		}, { GREY })
		assert.are.same({}, shown)
		assert.are.equal(1, #plateless)
		assert.are.same({ "target", "frame" }, { plateless[1].hit.unit, plateless[1].how })
	end)

	describe("on the Warlock Traces", function()
		for _, name in ipairs({ "warlock-stockade", "warlock-thanes", "warlock-pet-thanes" }) do
			it("shows exactly the Hits on an enemy Nameplate whose Label has a Log Line in " .. name, function()
				local trace = assert(Trace.Load("spec/traces/" .. name .. ".lua"))
				local labels = assert(loadfile("spec/traces/" .. name .. ".labels.lua"))()
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

				local shown, plateless = run(trace.entries, Pairing.ColoursOf(trace.header.logFilter.filter))
				local shownEntries, platelessEntries = entriesOf(shown), entriesOf(plateless)
				table.sort(shownEntries)
				table.sort(platelessEntries)
				assert.are.same(onPlate, shownEntries)
				assert.are.same(noPlate, platelessEntries)
			end)
		end
	end)
end)
