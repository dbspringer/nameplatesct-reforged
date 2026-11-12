-- Reads the files that tests and tools share: a Trace, which is a
-- SavedVariables chunk, and the lines of a Combat Log File.

local Trace = {}

Trace.COMBATLOG_OBJECT_AFFILIATION_MINE = 0x1
Trace.COMBATLOG_OBJECT_TYPE_PLAYER = 0x400
Trace.COMBATLOG_OBJECT_TYPE_PET = 0x1000
Trace.COMBATLOG_OBJECT_TYPE_GUARDIAN = 0x2000

-- The Traces in spec/traces/ that have checked Labels.
Trace.NAMES = { "warlock-stockade", "warlock-thanes", "warlock-pet-thanes", "warlock-plate-text", "warlock-line-kind",
	"warlock-spells", "warlock-rain-of-fire" }

-- Your Hits in those Traces that Pairing is known to give no Log Line, by
-- Trace and Hit entry. warlock-spells 302: the pet's swing came off its
-- settled Swing Delay while another Nameplate hid, which in a group is the
-- sign of another player's Hit (see lostItsHit in src/Pairing.lua).
Trace.LOST = { ["warlock-spells"] = { [302] = true } }

-- The Log Filter's source flags for "my pet" (COMBATLOG_FILTER_MY_PET).
Trace.FILTER_MY_PET = 0x3111

function Trace.HasFlag(flags, flag)
	return math.floor(flags / flag) % 2 == 1
end

-- Returns NameplateSCTReforgedTraces from a Trace file, or nil and a message.
function Trace.Load(path)
	local chunk, message = loadfile(path)
	if not chunk then
		return nil, message
	end
	local env = {}
	setfenv(chunk, env)
	chunk()
	return env.NameplateSCTReforgedTraces
end

-- The checked Trace of this name in spec/traces/, and its Labels.
function Trace.LoadChecked(name)
	local trace = assert(Trace.Load("spec/traces/" .. name .. ".lua"))
	local labels = assert(loadfile("spec/traces/" .. name .. ".labels.lua"))()
	return trace, labels
end

-- The lines of the Combat Log File of the checked Trace of this name.
function Trace.LoadLog(name)
	local lines = {}
	for line in io.lines("spec/traces/" .. name .. ".combatlog.txt") do
		lines[#lines + 1] = line
	end
	return lines
end

function Trace.Exists(path)
	local file = io.open(path, "r")
	if file then
		file:close()
	end
	return file ~= nil
end

function Trace.WriteFile(path, text)
	local file = assert(io.open(path, "w"))
	file:write(text)
	file:close()
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

-- Returns a log line's stamp and its fields.
function Trace.ParseLogLine(line)
	local stamp, fields = line:match("^(%S+ %S+)  (.*)$")
	return stamp, split(fields)
end

-- Milliseconds since the epoch, from the local time in a log line stamp.
function Trace.StampToMs(stamp)
	local month, day, year, hour, min, sec, ms = stamp:match("^(%d+)/(%d+)/(%d+) (%d+):(%d+):(%d+)%.(%d+)")
	local seconds = os.time({ year = year, month = month, day = day, hour = hour, min = min, sec = sec })
	return seconds * 1000 + tonumber(ms)
end

-- Seconds since the epoch, from a Trace header's local start time.
function Trace.StartedToSeconds(started)
	local year, month, day, hour, min, sec = started:match("^(%d+)-(%d+)-(%d+) (%d+):(%d+):(%d+)$")
	return os.time({ year = year, month = month, day = day, hour = hour, min = min, sec = sec })
end

return Trace
