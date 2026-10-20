-- Copies a Trace and its part of the Combat Log File into spec/traces/, with
-- the personal data removed, because the repo is public.
--
-- Usage: luajit tools/import-trace.lua <name> [savedvariables-file] [combatlog-file]

local Import = {}

local DEFAULT_WOW_DIR = "/Applications/World of Warcraft/_classic_beta_"
-- Margin around the Trace, so the label script also sees the lines that a
-- Hit at either end pairs with.
local MARGIN_MS = 10000

local COMBATLOG_OBJECT_AFFILIATION_MINE = 0x1
local COMBATLOG_OBJECT_TYPE_PLAYER = 0x400

local function hasFlag(flags, flag)
	return math.floor(flags / flag) % 2 == 1
end

-- Splits the fields of a log line and keeps each field's raw text, quotes
-- included, so a join gives back the same line.
local function split(fields)
	local tokens, pos = {}, 1
	while pos <= #fields + 1 do
		local stop
		if fields:sub(pos, pos) == '"' then
			stop = fields:find('"', pos + 1, true) + 1
		else
			stop = fields:find(",", pos, true) or #fields + 1
		end
		tokens[#tokens + 1] = fields:sub(pos, stop - 1)
		pos = stop + 1
	end
	return tokens
end

local function parseLine(line)
	local stamp, fields = line:match("^(%S+ %S+)  (.*)$")
	return stamp, split(fields)
end

local function isGuid(token)
	return token == "0000000000000000" or token:find("^%a+%-%d+%-") ~= nil
end

-- Milliseconds since the epoch, from the local time in a log line stamp.
local function stampToMs(stamp)
	local month, day, year, hour, min, sec, ms = stamp:match("^(%d+)/(%d+)/(%d+) (%d+):(%d+):(%d+)%.(%d+)")
	local seconds = os.time({ year = year, month = month, day = day, hour = hour, min = min, sec = sec })
	return seconds * 1000 + tonumber(ms)
end

-- Seconds since the epoch, from the header's local start time.
local function startedToSeconds(started)
	local year, month, day, hour, min, sec = started:match("^(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)$")
	return os.time({ year = year, month = month, day = day, hour = hour, min = min, sec = sec })
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
				and hasFlag(flags, COMBATLOG_OBJECT_AFFILIATION_MINE) and hasFlag(flags, COMBATLOG_OBJECT_TYPE_PLAYER) then
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

local function scrubLine(line, replaceGuids)
	local stamp, tokens = parseLine(line)
	-- Source and destination names follow a GUID. Other events, such as
	-- ZONE_CHANGE, have no names there.
	for _, at in ipairs({ 2, 6 }) do
		if tokens[at] and isGuid(tokens[at]) and tokens[at + 1] and tokens[at + 1]:sub(1, 1) == '"' then
			tokens[at + 1] = '""'
		end
	end
	return replaceGuids(stamp .. "  " .. table.concat(tokens, ","))
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

-- Keeps the format line and the lines from MARGIN_MS before the Trace to
-- MARGIN_MS after it.
function Import.Cut(lines, trace)
	local entries = trace.entries
	local durationMs = math.floor((entries[#entries][1] - trace.header.startTime) * 1000 + 0.5)
	-- The header's start time has whole seconds only.
	local startMs = startedToSeconds(trace.header.started) * 1000
	local first, last = startMs - MARGIN_MS, startMs + 1000 + durationMs + MARGIN_MS
	local kept = { lines[1] }
	for i = 2, #lines do
		local ms = stampToMs(parseLine(lines[i]))
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

-- The newest Combat Log File that started before the Trace. Its name holds
-- the local time that /combatlog turned on.
local function findCombatLog(wowDir, trace)
	local traceStart = startedToSeconds(trace.header.started)
	local best, bestStart
	for _, path in ipairs(listFiles(shellQuote(wowDir) .. "/Logs/WoWCombatLog-*.txt")) do
		local month, day, year, hour, min, sec = path:match("WoWCombatLog%-(%d%d)(%d%d)(%d%d)_(%d%d)(%d%d)(%d%d)%.txt$")
		if month then
			local fileStart = os.time({ year = 2000 + year, month = month, day = day, hour = hour, min = min, sec = sec })
			if fileStart <= traceStart and (not bestStart or fileStart > bestStart) then
				best, bestStart = path, fileStart
			end
		end
	end
	if not best then
		fail("no Combat Log File in " .. wowDir .. "/Logs started before the Trace; give its path")
	end
	return best
end

local function loadTrace(path)
	local chunk = assert(loadfile(path))
	local env = {}
	setfenv(chunk, env)
	chunk()
	local trace = env.NameplateSCTReforgedTraces
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

local function writeFile(path, text)
	local file = assert(io.open(path, "w"))
	file:write(text)
	file:close()
end

local function exists(path)
	local file = io.open(path, "r")
	if file then
		file:close()
	end
	return file ~= nil
end

local function main(name, savedVariablesPath, combatLogPath)
	if not name or not name:find("^[%w%-]+$") then
		fail("usage: luajit tools/import-trace.lua <name> [savedvariables-file] [combatlog-file]")
	end
	local tracePath = "spec/traces/" .. name .. ".lua"
	local logPath = "spec/traces/" .. name .. ".combatlog.txt"
	for _, path in ipairs({ tracePath, logPath }) do
		if exists(path) then
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
	writeFile(tracePath, "NameplateSCTReforgedTraces = " .. serialize(scrubbed, "") .. "\n")
	writeFile(logPath, table.concat(scrubbedLines, "\n") .. "\n")
	print(("%s: %d entries, %d log lines from %s"):format(name, #scrubbed.entries, #scrubbedLines - 1, combatLogPath))
end

if arg and arg[0] and arg[0]:find("import%-trace%.lua$") then
	main(...)
end

return Import
