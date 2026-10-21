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
	"UNIT_SPELLCAST_CHANNEL_START",
	"UNIT_SPELLCAST_CHANNEL_STOP",
}
local IS_CAST_EVENT = {}
for _, event in ipairs(CAST_EVENTS) do
	IS_CAST_EVENT[event] = true
end

local keepTicker, flow
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

-- How the picked Log Filter colours whole lines (see LineKind.ColouringOf).
-- The player can switch the filter at any time, so each Log Line reads it.
local function lineColouring()
	local saved = Blizzard_CombatLog_Filters
	if type(saved) ~= "table" or type(saved.filters) ~= "table" then
		return nil
	end
	return ns.LineKind.ColouringOf(saved.filters[saved.currentFilter])
end

local function onEvent(_, event, ...)
	local now = GetTime()
	-- The first argument of the nameplate events, UNIT_COMBAT, and the casts.
	local unit = ...
	local isPlateEvent = event == "NAME_PLATE_UNIT_ADDED" or event == "NAME_PLATE_UNIT_REMOVED"
	if isPlateEvent then
		plates[unit] = event == "NAME_PLATE_UNIT_ADDED" or nil
	end

	-- The entry has the shape of a Trace entry, so Flow gets the same input
	-- live as in the specs. The adapter names a report by its owner first, so
	-- the plate search is needed only for other units.
	local entry = { now, event, ... }
	if event == "UNIT_COMBAT" then
		entry.own = ownerOf(unit)
		if not entry.own then
			entry.plate = plateFor(unit)
		end
	elseif event == "COMBAT_LOG_MESSAGE" then
		entry.colouring = lineColouring()
	end

	-- The Recorder goes first, so a Trace keeps the event that made Flow fail.
	if ns.Recorder.IsRecording() then
		local extra
		if isPlateEvent then
			extra = { guid = UnitGUID(unit) }
		elseif event == "UNIT_COMBAT" then
			extra = { plate = entry.plate, own = entry.own, guid = UnitGUID(unit) }
		elseif event == "COMBAT_LOG_MESSAGE" then
			extra = { colouring = entry.colouring }
		elseif IS_CAST_EVENT[event] and unit == "player" then
			-- The Nameplate of the player's target at this cast event, which the
			-- cast need not aim at. No rule reads it yet; Traces keep it.
			extra = { target = plateFor("target") }
		end
		ns.Recorder.Record(now, event, extra, ...)
	end

	flow.Push(entry)
end
frame:SetScript("OnEvent", onEvent)

local function onUpdate()
	flow.Tick(GetTime())
end

-- show(hit, how) gets Your Hits on an enemy Nameplate, and noPlate(hit, how)
-- Your Hits on target or a soft target with no Nameplate (see Flow.New).
function Events.Start(show, noPlate)
	flow = ns.Flow.New({ show = show, noPlate = noPlate })
	frame:SetScript("OnUpdate", onUpdate)

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
	frame:SetScript("OnUpdate", nil)
	flow = nil
	wipe(plates)
end
