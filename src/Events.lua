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

local CAST_EVENTS = ns.Adapter.CAST_STAGES

local keepTicker, flow
local frame = CreateFrame("Frame")

-- Nameplate tokens that are shown now.
local plates = {}
-- The Nameplate frame of each shown token, taken when it shows, as the
-- renderer takes it, so a late Hit can use it after the token moves on.
local plateFrames = {}

local function keepFilteredEvents()
	local enabled = C_CombatLog.AreFilteredEventsEnabled()
	if issecretvalue(enabled) or enabled then
		return
	end
	C_CombatLog.SetFilteredEventsEnabled(true)
end

-- A unit query such as UnitIsUnit can give a secret, which cannot be tested
-- as a boolean. Shared as Events.IsTrue.
local function isTrue(value)
	return not issecretvalue(value) and value == true
end
Events.IsTrue = isTrue

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

-- How the picked Log Filter colours whole lines (see LineKind.ColouringOf),
-- which a Trace keeps for the label tool.
local function lineColouring(saved)
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
	if event == "NAME_PLATE_UNIT_ADDED" then
		plateFrames[unit] = C_NamePlate.GetNamePlateForUnit(unit)
		entry.frame = plateFrames[unit]
	elseif event == "NAME_PLATE_UNIT_REMOVED" then
		-- The Nameplate as it hid, for a late Hit on it (see Flow.New). The
		-- token still names the leaving unit here (unverified on Forever; the
		-- Traces' GUIDs at this event say so).
		entry.frame = plateFrames[unit]
		plateFrames[unit] = nil
		entry.wasTarget = isTrue(UnitIsUnit(unit, "target"))
		entry.classification = UnitClassification(unit)
		entry.isBoss = UnitIsBossMob(unit)
		entry.isPlayer = UnitIsPlayer(unit)
		entry.guid = UnitGUID(unit)
	elseif event == "UNIT_COMBAT" then
		entry.own = ownerOf(unit)
		if not entry.own then
			-- Checked at each report, since a duel can make a unit attackable
			-- mid-fight. A secret answer is left out, so the Hit stays.
			local canAttack = UnitCanAttack("player", unit)
			if not issecretvalue(canAttack) then
				entry.canAttack = canAttack and true or false
			end
			-- The adapter drops a report on a unit the player cannot attack, so
			-- only a Trace needs that unit's plate.
			if entry.canAttack ~= false or ns.Recorder.IsRecording() then
				entry.plate = plateFor(unit)
				-- A report with no plate can be a late Hit on a Nameplate that just
				-- hid, and only its GUID tells which (see Adapter.New).
				if not entry.plate then
					entry.guid = UnitGUID(unit)
				end
			end
		end
	elseif event == "COMBAT_LOG_MESSAGE" then
		-- The player, or another addon, can switch the filter or its colours at
		-- any time, so each Log Line reads its Line Kind by the filter's colours
		-- as it comes, and a Trace keeps the kind (see ADR 0005).
		local saved = Blizzard_CombatLog_Filters
		entry.colouring = lineColouring(saved)
		entry.lineKind = ns.LineKind.Of(entry[4], entry[5], entry[6], ns.LogFilter.Reading(saved))
		entry.hasPet = isTrue(UnitExists("pet"))
	elseif CAST_EVENTS[event] and unit == "player" then
		-- The Nameplate of the player's target at this cast event, which the
		-- cast need not aim at. Pairing reads it for a Next-Swing Ability.
		entry.target = plateFor("target")
	end

	-- The Recorder goes first, so a Trace keeps the event that made Flow fail.
	if ns.Recorder.IsRecording() then
		-- The live entry's named fields, so a replay sees what Flow saw, but no
		-- frame: a Trace cannot keep one. A Trace also has the GUID of every
		-- report and plate event, for reading it later.
		local extra = {}
		for key, value in pairs(entry) do
			if type(key) == "string" and key ~= "frame" then
				extra[key] = value
			end
		end
		if isPlateEvent or event == "UNIT_COMBAT" then
			extra.guid = UnitGUID(unit)
		end
		ns.Recorder.Record(now, event, extra, ...)
	end

	flow.Push(entry)
end
frame:SetScript("OnEvent", onEvent)

local function onUpdate()
	flow.Tick(GetTime())
end

-- show(hit, spellID, late, swinger, how, lineKind) gets Your Hits on an enemy Nameplate, and
-- noPlate(hit, how) Your Hits on target or a soft target with no Nameplate;
-- spellFacts holds the Spell Facts (see Flow.New).
function Events.Start(show, noPlate, spellFacts)
	flow = ns.Flow.New({ show = show, noPlate = noPlate, spellFacts = spellFacts })
	frame:SetScript("OnUpdate", onUpdate)

	keepFilteredEvents()
	if not keepTicker then
		keepTicker = C_Timer.NewTicker(KEEP_INTERVAL, keepFilteredEvents)
	end

	for i = 1, MAX_NAMEPLATES do
		local unit = "nameplate" .. i
		plates[unit] = isTrue(UnitExists(unit)) or nil
		plateFrames[unit] = plates[unit] and C_NamePlate.GetNamePlateForUnit(unit) or nil
	end
	for _, event in ipairs(GAME_EVENTS) do
		frame:RegisterEvent(event)
	end
	for event in pairs(CAST_EVENTS) do
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
	wipe(plateFrames)
end
