-- Copies a Trace and its part of the Combat Log File into spec/traces/, with
-- the personal data removed, because the repo is public.
--
-- Usage: luajit tools/import-trace.lua <name> [savedvariables-file] [combatlog-file]

local Import = {}

local DEFAULT_WOW_DIR = "/Applications/World of Warcraft/_forever_"
-- Margin around the Trace, so the label script also sees the lines that a
-- Hit at either end pairs with.
local MARGIN_MS = 10000

local here = debug.getinfo(1, "S").source:match("^@(.*/)") or "./"
local Trace = assert(loadfile(here .. "trace.lua"))()
local hasFlag, parseLine = Trace.HasFlag, Trace.ParseLogLine

local function isGuid(token)
	return token == "0000000000000000" or token:find("^%a+%-%d+%-") ~= nil
end

-- The recorder's GUID: public on the Trace's own "player" Hits, and otherwise
-- the player that the log marks as mine.
local function findRecorder(trace, lines)
	for _, entry in ipairs(trace.entries) do
		if entry[2] == "UNIT_COMBAT" and entry[3] == "player" and type(entry.guid) == "string"
			and entry.guid:find("^Player%-") then
			return entry.guid
		end
	end
	for i = 2, #lines do
		local _, tokens = parseLine(lines[i])
		for _, at in ipairs({ 2, 6 }) do
			local flags = tonumber(tokens[at + 2] or "")
			if tokens[at] and tokens[at]:find("^Player%-") and flags
				and hasFlag(flags, Trace.COMBATLOG_OBJECT_AFFILIATION_MINE) and hasFlag(flags, Trace.COMBATLOG_OBJECT_TYPE_PLAYER) then
				return tokens[at]
			end
		end
	end
end

local function newGuidMap(recorder)
	local map, count = {}, 0
	local function placeholder(guid)
		if not map[guid] then
			count = count + 1
			map[guid] = ("Player-0-%08d"):format(count)
		end
		return map[guid]
	end
	if recorder then
		placeholder(recorder)
	end
	return function(text)
		return (text:gsub("Player%-%d+%-%x+", placeholder))
	end
end

-- Returns the log line with every unit name emptied. A unit's name follows its
-- GUID: the source and destination, and others such as SPELL_ABSORBED's
-- absorber, which comes after the swing or spell fields. Zone and spell names
-- follow no GUID.
function Import.ScrubNames(line)
	local stamp, tokens = parseLine(line)
	for at = 1, #tokens - 1 do
		if isGuid(tokens[at]) and tokens[at + 1]:sub(1, 1) == '"' then
			tokens[at + 1] = '""'
		end
	end
	return stamp .. "  " .. table.concat(tokens, ",")
end

local function scrubLine(line, replaceGuids)
	return replaceGuids(Import.ScrubNames(line))
end

local function scrubValue(value, replaceGuids)
	if type(value) == "string" then
		return replaceGuids(value)
	end
	if type(value) ~= "table" then
		return value
	end
	local result = {}
	for key, inner in pairs(value) do
		result[key] = scrubValue(inner, replaceGuids)
	end
	return result
end

-- Returns copies of the Trace and the log lines with names removed and player
-- GUIDs replaced. The recorder is always Player-0-00000001.
function Import.Scrub(trace, lines)
	local replaceGuids = newGuidMap(findRecorder(trace, lines))
	local scrubbedLines = { lines[1] }
	for i = 2, #lines do
		scrubbedLines[i] = scrubLine(lines[i], replaceGuids)
	end
	local scrubbed = scrubValue(trace, replaceGuids)
	for _, entry in ipairs(scrubbed.entries) do
		-- The target's name, which the game does not hide in the open world.
		if entry[2] == "UNIT_SPELLCAST_SENT" then
			entry[4] = ""
		end
	end
	return scrubbed, scrubbedLines
end

-- Keeps the format line and the lines from MARGIN_MS before the Trace's first
-- entry to MARGIN_MS after its last. The first entry can come long after the
-- start, when the recorder dropped the earlier ones.
function Import.Cut(lines, trace)
	local entries = trace.entries
	local function msAfterStart(entry)
		return math.floor((entry[1] - trace.header.startTime) * 1000 + 0.5)
	end
	-- The header's start time has whole seconds only.
	local startMs = Trace.StartedToSeconds(trace.header.started) * 1000
	local first = startMs + msAfterStart(entries[1]) - MARGIN_MS
	local last = startMs + 1000 + msAfterStart(entries[#entries]) + MARGIN_MS
	local kept = { lines[1] }
	for i = 2, #lines do
		local ms = Trace.StampToMs(parseLine(lines[i]))
		if ms >= first and ms <= last then
			kept[#kept + 1] = lines[i]
		end
	end
	return kept
end

local function sortedKeys(value)
	local keys = {}
	for key in pairs(value) do
		if type(key) ~= "number" or key < 1 or key > #value or key % 1 ~= 0 then
			keys[#keys + 1] = key
		end
	end
	table.sort(keys, function(a, b)
		if type(a) == type(b) then
			return a < b
		end
		return type(a) == "number"
	end)
	return keys
end

local function formatKey(key)
	if type(key) == "string" and key:find("^[%a_][%w_]*$") then
		return key
	end
	return "[" .. (type(key) == "string" and ("%q"):format(key) or tostring(key)) .. "]"
end

local function formatScalar(value)
	return type(value) == "string" and ("%q"):format(value) or tostring(value)
end

-- Writes a table in a fixed key order, so two imports of one Trace are equal.
-- A table with no table inside fits on one line, so each entry is one line.
local function serialize(value, indent)
	if type(value) ~= "table" then
		return formatScalar(value)
	end
	local parts, flat = {}, true
	for i = 1, #value do
		parts[#parts + 1] = serialize(value[i], indent .. "\t")
		flat = flat and type(value[i]) ~= "table"
	end
	for _, key in ipairs(sortedKeys(value)) do
		parts[#parts + 1] = formatKey(key) .. " = " .. serialize(value[key], indent .. "\t")
		flat = flat and type(value[key]) ~= "table"
	end
	if #parts == 0 then
		return "{}"
	end
	if flat then
		return "{ " .. table.concat(parts, ", ") .. " }"
	end
	return "{\n" .. indent .. "\t" .. table.concat(parts, ",\n" .. indent .. "\t") .. ",\n" .. indent .. "}"
end

local function fail(message)
	io.stderr:write("import-trace: " .. message .. "\n")
	os.exit(1)
end

local function listFiles(pattern)
	local files = {}
	local pipe = io.popen("ls -1 " .. pattern .. " 2>/dev/null")
	for path in pipe:lines() do
		files[#files + 1] = path
	end
	pipe:close()
	return files
end

local function shellQuote(text)
	return "'" .. text:gsub("'", "'\\''") .. "'"
end

local function findSavedVariables(wowDir)
	local files = listFiles(shellQuote(wowDir) .. "/WTF/Account/*/SavedVariables/NameplateSCT_Reforged.lua")
	if #files == 0 then
		fail("no NameplateSCT_Reforged.lua under " .. wowDir .. "/WTF; give its path")
	elseif #files > 1 then
		fail("more than one account has a recording; give the path to one of:\n  " .. table.concat(files, "\n  "))
	end
	return files[1]
end

-- Seconds since the epoch at which a Combat Log File started. Its name holds
-- the local time that /combatlog turned on.
local function fileStart(path)
	local month, day, year, hour, min, sec = path:match("WoWCombatLog%-(%d%d)(%d%d)(%d%d)_(%d%d)(%d%d)(%d%d)%.txt$")
	return month and os.time({ year = 2000 + year, month = month, day = day, hour = hour, min = min, sec = sec })
end

-- The Combat Log File that holds the most of the time from the Trace's first
-- entry to its last, taking each file to run until the next one starts. The
-- newest file that started before the Trace is not always it: a Trace can
-- start a few seconds before /combatlog makes its file.
function Import.PickCombatLog(paths, trace)
	local traceStart = Trace.StartedToSeconds(trace.header.started) - trace.header.startTime
	local first = traceStart + trace.entries[1][1]
	-- The header's start time has whole seconds only.
	local last = traceStart + trace.entries[#trace.entries][1] + 1
	local files = {}
	for _, path in ipairs(paths) do
		local start = fileStart(path)
		if start then
			files[#files + 1] = { path = path, start = start }
		end
	end
	table.sort(files, function(a, b)
		return a.start < b.start
	end)
	local best, bestOverlap = nil, 0
	for i, file in ipairs(files) do
		local stop = files[i + 1] and files[i + 1].start or math.huge
		local overlap = math.min(stop, last) - math.max(file.start, first)
		if overlap > bestOverlap then
			best, bestOverlap = file.path, overlap
		end
	end
	return best
end

local function findCombatLog(wowDir, trace)
	local best = Import.PickCombatLog(listFiles(shellQuote(wowDir) .. "/Logs/WoWCombatLog-*.txt"), trace)
	if not best then
		fail("no Combat Log File in " .. wowDir .. "/Logs covers the time of the Trace; give its path")
	end
	return best
end

local function loadTrace(path)
	local trace = assert(Trace.Load(path))
	if type(trace) ~= "table" or type(trace.entries) ~= "table" or #trace.entries == 0 then
		fail(path .. " has no finished recording; stop it with /nsctr record, then /reload")
	end
	return trace
end

local function readLines(path)
	local lines = {}
	for line in io.lines(path) do
		lines[#lines + 1] = line:gsub("\r$", "")
	end
	return lines
end

local function main(name, savedVariablesPath, combatLogPath)
	if not name or not name:find("^[%w%-]+$") then
		fail("usage: luajit tools/import-trace.lua <name> [savedvariables-file] [combatlog-file]")
	end
	local tracePath = "spec/traces/" .. name .. ".lua"
	local logPath = "spec/traces/" .. name .. ".combatlog.txt"
	for _, path in ipairs({ tracePath, logPath }) do
		if Trace.Exists(path) then
			fail(path .. " exists; remove it first to import again")
		end
	end

	local wowDir = os.getenv("WOW_DIR") or DEFAULT_WOW_DIR
	local trace = loadTrace(savedVariablesPath or findSavedVariables(wowDir))
	combatLogPath = combatLogPath or findCombatLog(wowDir, trace)
	local lines = Import.Cut(readLines(combatLogPath), trace)
	if #lines < 2 then
		fail(combatLogPath .. " has no lines at the time of the Trace")
	end

	local scrubbed, scrubbedLines = Import.Scrub(trace, lines)
	os.execute("mkdir -p spec/traces")
	Trace.WriteFile(tracePath, "NameplateSCTReforgedTraces = " .. serialize(scrubbed, "") .. "\n")
	Trace.WriteFile(logPath, table.concat(scrubbedLines, "\n") .. "\n")
	print(("%s: %d entries, %d log lines from %s"):format(name, #scrubbed.entries, #scrubbedLines - 1, combatLogPath))
end

if arg and arg[0] and arg[0]:find("import%-trace%.lua$") then
	main(...)
end

return Import
