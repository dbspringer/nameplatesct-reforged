local addonName, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale("NameplateSCT_Reforged")

local Recorder = {}
ns.Recorder = Recorder

-- A ring buffer, so a long recording keeps the newest events and the saved
-- file stays a bounded size.
local MAX_ENTRIES = 40000

-- Placeholders, because a secret cannot be saved and a nil leaves a hole in
-- an entry.
local SECRET = "<secret>"
local NIL = "<nil>"

local recording = false
local entries, count

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

-- Prints text in the default chat frame after the addon's name. Shared as
-- ns.Say.
local function say(text)
	DEFAULT_CHAT_FRAME:AddMessage(("|cff33ff99%s|r: %s"):format(L["NameplateSCT Reforged"], text))
end
ns.Say = say

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
	local entry = { time, event }
	for i = 1, select("#", ...) do
		entry[i + 2] = public((select(i, ...)))
	end
	if extra then
		for key, value in pairs(extra) do
			entry[key] = public(value)
		end
	end
	entries[count % MAX_ENTRIES + 1] = entry
	count = count + 1
end

function Recorder.Start()
	recording = true
	entries, count = {}, 0
	NameplateSCTReforgedTraces = { header = header() }
	say(L["Recording combat events for a bug report. The recording holds your character name and zone. Type /nsctr record again to stop."])
end

-- Saves the entries oldest first, so a Label's entry number means the same
-- entry in every copy of the Trace.
function Recorder.Stop()
	recording = false
	local dropped = math.max(count - MAX_ENTRIES, 0)
	local size = count - dropped
	local ordered = {}
	for i = 1, size do
		ordered[i] = entries[(dropped + i - 1) % MAX_ENTRIES + 1]
	end
	NameplateSCTReforgedTraces.entries = ordered
	NameplateSCTReforgedTraces.dropped = dropped
	entries = nil
	return size
end

function Recorder.Toggle()
	if recording then
		local size = Recorder.Stop()
		say(L["Recording stopped with %d events. Type /reload, then attach WTF\\Account\\<account>\\SavedVariables\\NameplateSCT_Reforged.lua to your issue."]:format(size))
		say(L["Type /nsctr record clear to delete the recording after you send it."])
	else
		Recorder.Start()
	end
end

-- Runs /nsctr record with the words after it. Only a bare "record" starts or
-- stops, and only "record clear" with nothing after it deletes, so a typo can
-- neither replace nor delete a saved Trace.
function Recorder.Command(argument, extra)
	if argument == nil then
		Recorder.Toggle()
	elseif argument == "clear" and extra == nil then
		Recorder.Clear()
	else
		say(L["Type /nsctr record to start or stop a recording, or /nsctr record clear to delete it."])
	end
end

-- A saved Trace can be megabytes, and the game reads it at each login, so the
-- player deletes it once it is sent. A running recording ends unsaved, since
-- Stop at logout would write it back.
function Recorder.Clear()
	recording = false
	entries = nil
	NameplateSCTReforgedTraces = nil
	say(L["Deleted the recording."])
end

-- WoW writes SavedVariables after PLAYER_LOGOUT, which a /reload also fires.
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGOUT")
frame:SetScript("OnEvent", function()
	if recording then
		Recorder.Stop()
	end
end)
