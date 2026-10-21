local _, ns = ...

local LogFilter = {}
ns.LogFilter = LogFilter

-- Pairing needs a Log Line for each of Your Hits, so the Log Filter must send
-- the player's and the pet's damage and misses. Only the filter picked above
-- the Combat Log tab sends lines, and its first part holds the message types
-- and the Done By sources (Blizzard_CombatLogProcessor.lua
-- ApplyFilterSettings; Forever Combat Text's Setup.lua). The game refuses a
-- filter that an addon applies during a session, so the fix is written into
-- Blizzard's saved table at logout, and Blizzard applies it at the next load.

-- Done By "Me" and "My pet" (COMBATLOG_FILTER_MINE, COMBATLOG_FILTER_MY_PET).
local SOURCES = { 0x4511, 0x3111 }
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

-- How the saved Log Filters (Blizzard_CombatLog_Filters) suit Pairing: "ok";
-- "fixable", when the filter named myActions lacks a source or a message
-- type, or is not picked; "gone", when no filter has that name; or nil, when
-- the game has not loaded its Log Filters.
function LogFilter.Check(saved, myActions)
	if type(saved) ~= "table" or type(saved.filters) ~= "table" then
		return nil
	end
	local index = indexOf(saved, myActions)
	if not index then
		return "gone"
	end
	if saved.currentFilter ~= index then
		return "fixable"
	end
	local parts = saved.filters[index].filters
	local part = type(parts) == "table" and parts[1]
	if type(part) ~= "table" or type(part.sourceFlags) ~= "table" or type(part.eventList) ~= "table" then
		return "fixable"
	end
	for _, flag in ipairs(SOURCES) do
		if part.sourceFlags[flag] ~= true then
			return "fixable"
		end
	end
	for _, event in ipairs(EVENTS) do
		if part.eventList[event] ~= true then
			return "fixable"
		end
	end
	return "ok"
end

-- Turns on in the filter named myActions what Check needs, and picks it. It
-- only adds, so the player's other choices stay. Returns false, and changes
-- nothing, when no filter has that name.
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
	if type(part.sourceFlags) ~= "table" then
		part.sourceFlags = {}
	end
	if type(part.eventList) ~= "table" then
		part.eventList = {}
	end
	for _, flag in ipairs(SOURCES) do
		part.sourceFlags[flag] = true
	end
	for _, event in ipairs(EVENTS) do
		part.eventList[event] = true
	end
	return true
end
