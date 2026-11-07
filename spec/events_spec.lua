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

	it("shows a wand's Hit 0.283 s after its shot line, on the shot's target", function()
		_G.Blizzard_CombatLog_Filters = { currentFilter = 1, filters = { { settings = { lineColoring = true, lineColorPriority = 3 } } } }
		local shown = start()
		fire("UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-1", 5019)
		now = 2.5
		fire("COMBAT_LOG_MESSAGE", "|Ky1|k", 0.9, 0.7, 0.45, 0)
		now = 2.783
		fire("UNIT_COMBAT", "nameplate1", "WOUND", "", "<secret>", 64)
		finish()
		_G.Blizzard_CombatLog_Filters = nil
		assert.are.equal(1, #shown)
		assert.are.equal("shot", shown[1].lineKind)
	end)

	describe("under a Log Filter that colours lines by kind", function()
		before_each(function()
			_G.Blizzard_CombatLog_Filters = { currentFilter = 1, filters = { { settings = { lineColoring = true, lineColorPriority = 3 } } } }
		end)
		after_each(function()
			_G.Blizzard_CombatLog_Filters = nil
		end)

		it("gives a Seal Proc the Active Seal's spell", function()
			local shown = start()
			fire("UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-1", 20154)
			now = 5
			fire("PLAYER_SWING", 2.9, 0)
			fire("COMBAT_LOG_MESSAGE", "|Ky1|k", 0.85, 0.85, 0.85, 0)
			fire("COMBAT_LOG_MESSAGE", "|Ky2|k", 1, 0.85, 0.25, 0)
			fire("UNIT_COMBAT", "nameplate1", "WOUND", "", "<secret>", 2)
			finish()
			assert.are.equal(1, #shown)
			assert.are.equal(20154, shown[1].spellID)
		end)

		it("gives a Judgement's Hit Judgement, and a later Seal Proc the Seal that it did not end", function()
			local shown = start()
			fire("UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-1", 21084)
			now = 5
			fire("UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-2", 20271)
			fire("COMBAT_LOG_MESSAGE", "|Ky1|k", 1, 0.85, 0.25, 0)
			fire("UNIT_COMBAT", "nameplate1", "WOUND", "", "<secret>", 2)
			now = 6
			fire("PLAYER_SWING", 2.9, 0)
			fire("COMBAT_LOG_MESSAGE", "|Ky2|k", 0.85, 0.85, 0.85, 0)
			fire("COMBAT_LOG_MESSAGE", "|Ky3|k", 1, 0.85, 0.25, 0)
			fire("UNIT_COMBAT", "nameplate1", "WOUND", "", "<secret>", 2)
			finish()
			assert.are.equal(2, #shown)
			assert.are.same({ 20271, 21084 }, { shown[1].spellID, shown[2].spellID })
		end)
	end)

	it("shows a melee killing blow whose Hit comes after the Nameplate hid", function()
		guids.nameplate1, guids.softinteract = "Creature-1", "Creature-1"
		local shown = start()
		fire("COMBAT_LOG_MESSAGE", "|Ky1|k", 0.85, 0.85, 0.85, 0)
		fire("PLAYER_SWING", 2.9, 0)
		now = 1.267
		fire("NAME_PLATE_UNIT_REMOVED", "nameplate1")
		now = 1.3
		fire("UNIT_COMBAT", "softinteract", "WOUND", "", "<secret>", 1)
		finish()
		assert.are.equal(1, #shown)
		assert.is_table(shown[1].late)
	end)
end)
