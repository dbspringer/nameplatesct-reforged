-- Stand-ins for the WoW API that Recorder.lua calls. A secret is the string
-- "SECRET" here, since plain Lua has no secret values.
_G.issecretvalue = function(value)
	return value == "SECRET"
end
_G.LibStub = function()
	return {
		GetLocale = function()
			return setmetatable({}, { __index = function(_, key) return key end })
		end,
	}
end
_G.DEFAULT_CHAT_FRAME = { AddMessage = function() end }
_G.GetBuildInfo = function() return "1.60.1", "70450", "", 16001 end
_G.UnitClass = function() return "Warlock", "WARLOCK" end
_G.GetInstanceInfo = function() return "The Hall of Thanes", "party" end
_G.C_AddOns = { GetAddOnMetadata = function() return "dev" end }
_G.C_CombatLog = { AreFilteredEventsEnabled = function() return true end }
_G.GetLocale = function() return "enUS" end
_G.GetTime = function() return 0 end
_G.date = os.date
_G.CreateFrame = function()
	return { RegisterEvent = function() end, SetScript = function() end }
end

local ns = {}
assert(loadfile("src/Recorder.lua"))("NameplateSCT_Reforged", ns)
local Recorder = ns.Recorder

-- Records events numbered 1 to count, and returns the saved Trace.
local function record(count)
	Recorder.Start()
	for i = 1, count do
		Recorder.Record(i, "UNIT_COMBAT")
	end
	Recorder.Stop()
	return NameplateSCTReforgedTraces
end

describe("Recorder", function()
	it("keeps the newest 10000 entries, oldest first, when a recording runs long", function()
		local trace = record(10003)
		assert.are.equal(10000, #trace.entries)
		assert.are.equal(3, trace.dropped)
		for i, entry in ipairs(trace.entries) do
			assert.are.equal(i + 3, entry[1])
		end
	end)

	it("keeps every entry in order when the ring is exactly full", function()
		local trace = record(10000)
		assert.are.equal(0, trace.dropped)
		assert.are.equal(1, trace.entries[1][1])
		assert.are.equal(10000, trace.entries[10000][1])
	end)

	it("saves secrets and nils as placeholders, since SavedVariables cannot hold a secret", function()
		Recorder.Start()
		Recorder.Record(1, "UNIT_COMBAT", { plate = "nameplate3", guid = "SECRET" }, "target", nil, "SECRET")
		Recorder.Stop()
		local entry = NameplateSCTReforgedTraces.entries[1]
		assert.are.same({ 1, "UNIT_COMBAT", "target", "<nil>", "<secret>" }, { unpack(entry, 1, 5) })
		assert.are.equal("nameplate3", entry.plate)
		assert.are.equal("<secret>", entry.guid)
	end)
end)
