-- Reads the files that tests and tools share: a Trace, which is a
-- SavedVariables chunk, and the lines of a Combat Log File.

local Trace = {}

Trace.COMBATLOG_OBJECT_AFFILIATION_MINE = 0x1
Trace.COMBATLOG_OBJECT_TYPE_PLAYER = 0x400
Trace.COMBATLOG_OBJECT_TYPE_PET = 0x1000
Trace.COMBATLOG_OBJECT_TYPE_GUARDIAN = 0x2000

-- The Traces in spec/traces/ that have checked Labels.
Trace.NAMES = { "warlock-stockade", "warlock-thanes", "warlock-pet-thanes", "warlock-plate-text", "warlock-line-kind",
	"warlock-spells", "warlock-rain-of-fire", "warlock-tick-jitter", "warlock-drain-life" }

-- Your Hits in those Traces that Pairing is known to give no Log Line, by
-- Trace and Hit entry. warlock-spells 302: the pet's swing came off its
-- settled Swing Delay while another Nameplate hid, which in a group is the
-- sign of another player's Hit (see lostItsHit in src/Pairing.lua).
-- warlock-drain-life 1311: Drain Life's heal on the player, whose line the game
-- sent 0.1 s late, and a Hit on the player takes a line only in its own frame.
Trace.LOST = { ["warlock-spells"] = { [302] = true }, ["warlock-drain-life"] = { [1311] = true } }

-- Your Hits in those Traces that Spell Identity is known to give a wrong icon,
-- by Trace and Hit entry. The replay fails on any other wrong icon, and on a
-- Hit here that no longer gets one, so this list only shrinks.
-- warlock-drain-life 3527, 3575: Corruption ticks on a mob where Corruption had
-- lost its rhythm, which fit the first tick of a Siphon Life cast 2.95 s before.
Trace.WRONG = { ["warlock-drain-life"] = { [3527] = true, [3575] = true } }

-- Your Hits in those Traces whose Possible Spells are known to miss the
-- Label's spell, by Trace and Hit entry. The replay fails on any other, and on
-- a Hit here whose list now holds it, so this list only shrinks.
Trace.POSSIBLE_WRONG = {}

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

-- The Trace of this name in spec/traces/, and its Labels.
function Trace.LoadLabelled(name)
	local trace = assert(Trace.Load("spec/traces/" .. name .. ".lua"))
	local labels = assert(loadfile("spec/traces/" .. name .. ".labels.lua"))()
	return trace, labels
end

-- Whether a test can use this row of a Labels file: it is a Checked Label or
-- a Sure Label. The label script marks a row unsure for its secret amount
-- only when nothing else about it is unsure: one file event was left for the
-- Hit, though it can be the one left after other Hits took theirs. Such a
-- row tells the Hit's spell. For a swing it favours a rival, whose
-- event is nearer the Hit than the swing's own, one Swing Delay before.
function Trace.IsSure(row)
	return row.unsure == nil or row.unsure == "secret amount"
end

-- The spell of each Hit that has a Checked or Sure Label, by Hit entry: a
-- spell ID, false for a melee swing, or nil for a Hit with no Log Line.
function Trace.SureSpells(labels)
	local spellOf = {}
	for _, row in ipairs(labels) do
		if Trace.IsSure(row) then
			spellOf[row.hit] = row.spell
		end
	end
	return spellOf
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
