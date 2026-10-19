local addonName, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale("NameplateSCT_Reforged")

local Recorder = {}
ns.Recorder = Recorder

-- A ring buffer, so a long recording keeps the newest events and the saved
-- file stays a bounded size.
local MAX_ENTRIES = 10000

-- Placeholders, because a secret cannot be saved and a nil leaves a hole in
-- an entry.
local SECRET = "<secret>"
local NIL = "<nil>"

local recording = false
local entries, head, count

local function public(value)
	if issecretvalue(value) then
		return SECRET
	end
	if value == nil then
		return NIL
	end
	return value
end

local function copy(value)
	if type(value) ~= "table" then
		return public(value)
	end
	local result = {}
	for key, inner in pairs(value) do
		result[key] = copy(inner)
	end
	return result
end

local function say(text)
	DEFAULT_CHAT_FRAME:AddMessage(("|cff33ff99%s|r: %s"):format(L["NameplateSCT Reforged"], text))
end

-- Pairing needs a Log Filter that sends the player's damage, so a Trace keeps
-- the filter that was on.
local function logFilter()
	local saved = Blizzard_CombatLog_Filters
	if type(saved) ~= "table" or type(saved.filters) ~= "table" then
		return NIL
	end
	return {
		current = copy(saved.currentFilter),
		filter = copy(saved.filters[saved.currentFilter]),
	}
end

local function header()
	local client, build, _, interface = GetBuildInfo()
	local _, class = UnitClass("player")
	local zone, instanceType = GetInstanceInfo()
	return {
		addonVersion = C_AddOns.GetAddOnMetadata(addonName, "Version"),
		client = client,
		build = build,
		interface = interface,
		locale = GetLocale(),
		class = class,
		zone = zone,
		instanceType = instanceType,
		started = date("%Y-%m-%d %H:%M:%S"),
		startTime = GetTime(),
		filteredEvents = public(C_CombatLog.AreFilteredEventsEnabled()),
		logFilter = logFilter(),
	}
end

function Recorder.IsRecording()
	return recording
end

-- An entry is { time, event, arg1, arg2, ... }, plus named fields from extra.
function Recorder.Record(time, event, extra, ...)
	if not recording then
		return
	end
	local entry = { time, event }
	for i = 1, select("#", ...) do
		entry[i + 2] = public((select(i, ...)))
	end
	if extra then
		for key, value in pairs(extra) do
			entry[key] = public(value)
		end
	end
	head = head % MAX_ENTRIES + 1
	entries[head] = entry
	count = count + 1
end

function Recorder.Start()
	recording = true
	entries, head, count = {}, 0, 0
	NameplateSCTReforgedTraces = { header = header() }
	say(L["Recording combat events for a bug report. The recording holds your character name and zone. Type /nsctr record again to stop."])
end

-- Saves the entries oldest first, so a Label's entry number means the same
-- entry in every copy of the Trace.
function Recorder.Stop()
	recording = false
	local size = math.min(count, MAX_ENTRIES)
	local first = count > MAX_ENTRIES and head % MAX_ENTRIES + 1 or 1
	local ordered = {}
	for i = 0, size - 1 do
		ordered[i + 1] = entries[(first - 1 + i) % MAX_ENTRIES + 1]
	end
	NameplateSCTReforgedTraces.entries = ordered
	NameplateSCTReforgedTraces.dropped = count - size
	entries = nil
	return size
end

function Recorder.Toggle()
	if recording then
		local size = Recorder.Stop()
		say(L["Recording stopped with %d events. Type /reload, then attach WTF\\Account\\<account>\\SavedVariables\\NameplateSCT_Reforged.lua to your issue."]:format(size))
	else
		Recorder.Start()
	end
end

-- WoW writes SavedVariables after PLAYER_LOGOUT, which a /reload also fires.
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGOUT")
frame:SetScript("OnEvent", function()
	if recording then
		Recorder.Stop()
	end
end)
