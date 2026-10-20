local _, ns = ...

local Events = {}
ns.Events = Events

-- Forever sends COMBAT_LOG_MESSAGE only while filtered events are on, and
-- dungeons start with them off. The ticker turns them back on if anything
-- turns them off later.
local KEEP_INTERVAL = 2

-- Unit tokens WoW gives out to enemy nameplates.
local MAX_NAMEPLATES = 40

local GAME_EVENTS = {
	"UNIT_COMBAT",
	"COMBAT_LOG_MESSAGE",
	"PLAYER_SWING",
	"PLAYER_TARGET_CHANGED",
	"NAME_PLATE_UNIT_ADDED",
	"NAME_PLATE_UNIT_REMOVED",
}

local CAST_EVENTS = {
	"UNIT_SPELLCAST_SENT",
	"UNIT_SPELLCAST_START",
	"UNIT_SPELLCAST_SUCCEEDED",
	"UNIT_SPELLCAST_INTERRUPTED",
}

local keepTicker
local frame = CreateFrame("Frame")

-- Nameplate tokens that are shown now.
local plates = {}

local function keepFilteredEvents()
	local enabled = C_CombatLog.AreFilteredEventsEnabled()
	if issecretvalue(enabled) or enabled then
		return
	end
	C_CombatLog.SetFilteredEventsEnabled(true)
end

local function isTrue(value)
	return not issecretvalue(value) and value == true
end

-- A unit's GUID can be secret, so a unit is named by the nameplate token that
-- shows it. UnitIsUnit stays public in dungeons.
local function plateFor(unit)
	if plates[unit] then
		return unit
	end
	for plate in pairs(plates) do
		if isTrue(UnitIsUnit(unit, plate)) then
			return plate
		end
	end
end

-- The player or the pet, when the unit is one of them. A report on target or
-- a friendly nameplate can name either one, and the adapter must count it as
-- a repeat of the player's or the pet's own report.
local function ownerOf(unit)
	if isTrue(UnitIsUnit(unit, "player")) then
		return "player"
	end
	if isTrue(UnitIsUnit(unit, "pet")) then
		return "pet"
	end
end

local function onEvent(_, event, ...)
	local isPlateEvent = event == "NAME_PLATE_UNIT_ADDED" or event == "NAME_PLATE_UNIT_REMOVED"
	if isPlateEvent then
		local unit = ...
		plates[unit] = event == "NAME_PLATE_UNIT_ADDED" or nil
	end
	if not ns.Recorder.IsRecording() then
		return
	end

	local extra
	if isPlateEvent then
		local unit = ...
		extra = { guid = UnitGUID(unit) }
	elseif event == "UNIT_COMBAT" then
		local unit = ...
		extra = { plate = plateFor(unit), own = ownerOf(unit), guid = UnitGUID(unit) }
	end
	ns.Recorder.Record(GetTime(), event, extra, ...)
end
frame:SetScript("OnEvent", onEvent)

function Events.Start()
	keepFilteredEvents()
	if not keepTicker then
		keepTicker = C_Timer.NewTicker(KEEP_INTERVAL, keepFilteredEvents)
	end

	for i = 1, MAX_NAMEPLATES do
		local unit = "nameplate" .. i
		plates[unit] = isTrue(UnitExists(unit)) or nil
	end
	for _, event in ipairs(GAME_EVENTS) do
		frame:RegisterEvent(event)
	end
	for _, event in ipairs(CAST_EVENTS) do
		frame:RegisterUnitEvent(event, "player", "pet")
	end
end

function Events.Stop()
	if keepTicker then
		keepTicker:Cancel()
		keepTicker = nil
	end
	frame:UnregisterAllEvents()
	wipe(plates)
end
