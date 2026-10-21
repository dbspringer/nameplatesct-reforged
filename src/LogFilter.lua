local _, ns = ...

local LogFilter = {}
ns.LogFilter = LogFilter

-- Pairing needs a Log Line for each of Your Hits, so the Log Filter must send
-- the player's and the pet's damage and misses, and colour each line by its
-- Line Kind (see LineKind.lua). Only the filter picked above the Combat Log
-- tab sends lines, and its first part holds the message types and the Done
-- By sources (Blizzard_CombatLogProcessor.lua ApplyFilterSettings; Forever
-- Combat Text's Setup.lua). The game refuses a filter that an addon applies
-- during a session, so the fix is written into Blizzard's saved table at
-- logout, and Blizzard applies it at the next load.

-- Done By "Me" and "My pet" (COMBATLOG_FILTER_MINE, COMBATLOG_FILTER_MY_PET).
local SOURCES = { 0x4511, 0x3111 }
local IS_OWN_SOURCE = { [0x4511] = true, [0x3111] = true }
-- Blizzard colours a whole line by its event type at line colour priority 3.
local BY_EVENT_TYPE = 3
-- Saved colours are the floats the fix wrote, or 8-bit ones after an edit.
local SAVED_TOLERANCE = 0.005
local EVENTS = {
	"SWING_DAMAGE", "RANGE_DAMAGE", "SPELL_DAMAGE", "SPELL_PERIODIC_DAMAGE",
	"SWING_MISSED", "RANGE_MISSED", "SPELL_MISSED", "SPELL_PERIODIC_MISSED",
}

local function indexOf(saved, name)
	for index, filter in ipairs(saved.filters) do
		if type(filter) == "table" and filter.name == name then
			return index
		end
	end
end

local function sameColour(saved, colour)
	return type(saved) == "table" and type(saved.r) == "number" and type(saved.g) == "number"
		and type(saved.b) == "number" and math.abs(saved.r - colour.r) <= SAVED_TOLERANCE
		and math.abs(saved.g - colour.g) <= SAVED_TOLERANCE and math.abs(saved.b - colour.b) <= SAVED_TOLERANCE
end

-- Whether the filter colours each line by its Line Kind. Highlighting makes a
-- highlighted event's line 1.5 times brighter, so none of those events may
-- be highlighted.
local function coloursByKind(filter)
	local settings, colors = filter.settings, filter.colors
	if type(settings) ~= "table" or settings.lineColoring ~= true or settings.lineColorPriority ~= BY_EVENT_TYPE
		or type(colors) ~= "table" or type(colors.eventColoring) ~= "table" then
		return false
	end
	local highlighted = settings.lineHighlighting and type(colors.highlightedEvents) == "table"
		and colors.highlightedEvents or {}
	local suits = true
	ns.LineKind.EachEventColour(function(event, colour)
		if not sameColour(colors.eventColoring[event], colour) or highlighted[event] then
			suits = false
		end
	end)
	return suits
end

-- Whether a filter's first part sends what Pairing needs, and only lines that
-- Pairing can tell apart.
local function suitsPairing(filter)
	local parts = type(filter) == "table" and filter.filters
	local part = type(parts) == "table" and parts[1]
	if type(part) ~= "table" or type(part.sourceFlags) ~= "table" or type(part.eventList) ~= "table" then
		return false
	end
	for _, flag in ipairs(SOURCES) do
		if part.sourceFlags[flag] ~= true then
			return false
		end
	end
	for _, event in ipairs(EVENTS) do
		if part.eventList[event] ~= true then
			return false
		end
	end
	-- With lines coloured by kind, other players' lines look like the
	-- player's, so Done By must be only the player and the pet.
	for flag, on in pairs(part.sourceFlags) do
		if on and not IS_OWN_SOURCE[flag] then
			return false
		end
	end
	return coloursByKind(filter)
end

-- How the saved Log Filters (Blizzard_CombatLog_Filters) suit Pairing: "ok",
-- when the picked filter sends what Pairing needs, and only lines it can tell
-- apart, whatever its name;
-- otherwise "fixable", when a filter named myActions exists to fix and pick,
-- or "gone", when none does; or nil, when the game has not loaded its Log
-- Filters.
function LogFilter.Check(saved, myActions)
	if type(saved) ~= "table" or type(saved.filters) ~= "table" then
		return nil
	end
	if suitsPairing(saved.filters[saved.currentFilter]) then
		return "ok"
	end
	return indexOf(saved, myActions) and "fixable" or "gone"
end

-- Turns on in the filter named myActions what Check needs, and picks it. It
-- only adds message types and event colours, so the player's other choices
-- stay, but Done By becomes only "Me" and "My pet", as other players' lines
-- would pass for the player's (Forever Combat Text does the same). Returns
-- false, and changes nothing, when no filter has that name.
function LogFilter.Fix(saved, myActions)
	if LogFilter.Check(saved, myActions) == nil then
		return false
	end
	local index = indexOf(saved, myActions)
	if not index then
		return false
	end
	saved.currentFilter = index
	local filter = saved.filters[index]
	if type(filter.filters) ~= "table" then
		filter.filters = {}
	end
	if type(filter.filters[1]) ~= "table" then
		filter.filters[1] = {}
	end
	local part = filter.filters[1]
	if type(part.eventList) ~= "table" then
		part.eventList = {}
	end
	part.sourceFlags = {}
	for _, flag in ipairs(SOURCES) do
		part.sourceFlags[flag] = true
	end
	for _, event in ipairs(EVENTS) do
		part.eventList[event] = true
	end

	if type(filter.settings) ~= "table" then
		filter.settings = {}
	end
	filter.settings.lineColoring = true
	filter.settings.lineColorPriority = BY_EVENT_TYPE
	if type(filter.colors) ~= "table" then
		filter.colors = {}
	end
	local colors = filter.colors
	if type(colors.eventColoring) ~= "table" then
		colors.eventColoring = {}
	end
	if type(colors.highlightedEvents) ~= "table" then
		colors.highlightedEvents = {}
	end
	ns.LineKind.EachEventColour(function(event, colour)
		colors.eventColoring[event] = colour
		colors.highlightedEvents[event] = nil
	end)
	return true
end
