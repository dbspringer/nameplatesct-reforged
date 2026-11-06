-- Replay specs read fields that the Recorder saves in a Trace, so they cannot
-- see a field that a live entry lacks. These specs send game events through
-- Events with no recording on, and the real Flow behind it.
_G.issecretvalue = function(value)
	return value == "<secret>"
end
_G.Enum = { CombatLogMessageOrder = { Newest = 0, Oldest = 1 } }
_G.wipe = function(t)
	for key in pairs(t) do
		t[key] = nil
	end
end

local now = 1
local guids = {}
local onEvent, onUpdate

_G.GetTime = function() return now end
_G.CreateFrame = function()
	return {
		SetScript = function(_, name, handler)
			if name == "OnEvent" then
				onEvent = handler
			elseif name == "OnUpdate" then
				onUpdate = handler
			end
		end,
		RegisterEvent = function() end,
		RegisterUnitEvent = function() end,
		UnregisterAllEvents = function() end,
	}
end
_G.C_CombatLog = { AreFilteredEventsEnabled = function() return true end }
_G.C_Timer = { NewTicker = function() return { Cancel = function() end } end }
_G.C_NamePlate = { GetNamePlateForUnit = function(unit) return { token = unit } end }
_G.UnitExists = function(unit) return unit == "nameplate1" end
_G.UnitIsUnit = function(a, b)
	return a == b or (a == "target" and b == "nameplate1") or (a == "nameplate1" and b == "target")
end
_G.UnitCanAttack = function() return true end
_G.UnitGUID = function(unit) return guids[unit] end
_G.UnitClassification = function() return "normal" end
_G.UnitIsBossMob = function() return false end
_G.UnitIsPlayer = function() return false end

local ns = { Recorder = { IsRecording = function() return false end } }
for _, file in ipairs({ "src/LineKind.lua", "src/Adapter.lua", "src/Pairing.lua", "src/TickSpells.lua",
	"src/DirectSpells.lua", "src/Identity.lua", "src/Flow.lua", "src/Events.lua" }) do
	assert(loadfile(file))("NameplateSCT_Reforged", ns)
end

local function start()
	local shown = {}
	now = 1
	ns.Events.Stop()
	ns.Events.Start(function(hit, how, spellID, lineKind, late)
		shown[#shown + 1] = { hit = hit, how = how, spellID = spellID, lineKind = lineKind, late = late }
	end, nil, {})
	return shown
end

local function fire(event, ...)
	onEvent(nil, event, ...)
end

-- Closes the open frame and ends the holds.
local function finish()
	now = now + 10
	onUpdate()
end

describe("Events, with no recording on", function()
	it("shows the real Hit of a Next-Swing Ability, not its Empty Report", function()
		local shown = start()
		fire("UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-1", 78)
		fire("UNIT_COMBAT", "nameplate1", "WOUND", "", "<secret>", 1)
		fire("PLAYER_SWING", 2.9, 0)
		fire("COMBAT_LOG_MESSAGE", "|Ky1|k", 1, 0.85, 0.25, 0)
		fire("UNIT_COMBAT", "nameplate1", "WOUND", "CRITICAL", "<secret>", 1)
		finish()
		assert.are.equal(1, #shown)
		assert.are.equal("CRITICAL", shown[1].hit.descriptor)
	end)
end)
