-- Writes the Labels of a Trace: for each Hit, the Log Line it pairs with, or
-- none. A Label comes from a chain through the Combat Log File: the Hit's file
-- event says who made it, and the alignment gives that event's Log Line. No
-- Pairing rule is used, so the Labels can test Pairing.
--
-- Usage: luajit tools/label-trace.lua <name>

local Label = {}

local here = debug.getinfo(1, "S").source:match("^@(.*/)") or "./"
local Trace = assert(loadfile(here .. "trace.lua"))()

-- The Log Lines align with their file events within this many milliseconds.
local ALIGN_MS = 60
-- The share of Log Lines that must align before any Label is trusted.
local MIN_ALIGNED = 0.9
-- A Hit's file event comes from this long before it to this long after it.
local EARLIEST = 1.5
local LATEST = 0.1
-- The cast of each damage spell ID that differs from its cast's, so that a
-- Label names the cast that made the Hit, as Spell Identity does. On Forever
-- an area spell's damage comes with a spell ID other than its cast's. Only
-- Rain of Fire's ranks are here (from the DB2; 1282380 is in a Trace); add a
-- spell when a Trace has its damage.
local CAST_OF = { [1282380] = 5740, [1282383] = 6219, [1282384] = 11677, [1282385] = 11678 }
-- A delay past this is longer than any seen in the Warlock Traces.
local LATE = 1.0
-- Log Line colours arrive as 8-bit floats (see LineKind.lua).
local COLOUR_TOLERANCE = 0.02
-- Blizzard's grey for the player's and the pet's lines under colours by
-- source, and for an event with no colour under colours by kind
-- (COMBATLOG_DEFAULT_COLORS). A highlighted line is this much brighter.
local OWN_BY_SOURCE = 0.70
local UNCOLOURED = 0.5
local HIGHLIGHT = 1.5

-- Fields between the event name and an event's own fields. Advanced logging
-- adds unit fields before an amount: 19 in the Forever 1.60.1 log files.
local BASE_FIELDS = 9
local ADVANCED_FIELDS = 19
local PREFIX_FIELDS = {
	SWING = 0,
	RANGE = 3,
	SPELL = 3,
	SPELL_PERIODIC = 3,
	SPELL_BUILDING = 3,
	ENVIRONMENTAL = 1,
	DAMAGE_SHIELD = 3,
	DAMAGE_SPLIT = 3,
}

local function unquote(token)
	return token and token:match('^"(.*)"$') or token
end

local function whoIs(guid, flags)
	if flags and Trace.HasFlag(flags, Trace.COMBATLOG_OBJECT_AFFILIATION_MINE) then
		if Trace.HasFlag(flags, Trace.COMBATLOG_OBJECT_TYPE_PLAYER) then
			return "you"
		end
		if Trace.HasFlag(flags, Trace.COMBATLOG_OBJECT_TYPE_PET)
			or Trace.HasFlag(flags, Trace.COMBATLOG_OBJECT_TYPE_GUARDIAN) then
			return "pet"
		end
	end
	if guid and (guid:find("^Creature%-") or guid:find("^Vehicle%-")) then
		return "creature"
	end
	return "other"
end

-- Splits an event name such as SPELL_PERIODIC_DAMAGE into its prefix and
-- suffix.
local function splitEvent(event)
	for _, suffix in ipairs({ "DAMAGE", "HEAL", "MISSED" }) do
		local prefix = event:match("^(.-)_" .. suffix .. "$")
		if prefix and PREFIX_FIELDS[prefix] then
			return prefix, suffix
		end
	end
	if event == "DAMAGE_SHIELD" or event == "DAMAGE_SPLIT" then
		return event, "DAMAGE"
	end
	if event == "DAMAGE_SHIELD_MISSED" then
		return "DAMAGE_SHIELD", "MISSED"
	end
end

local function parseEvents(lines)
	local advanced = lines[1]:find("ADVANCED_LOG_ENABLED,1", 1, true) ~= nil
	local events = {}
	for i = 2, #lines do
		local stamp, tokens = Trace.ParseLogLine(lines[i])
		local srcFlags, dstFlags = tonumber(tokens[4] or ""), tonumber(tokens[8] or "")
		local event = {
			index = i,
			ms = Trace.StampToMs(stamp),
			name = tokens[1],
			src = tokens[2],
			dst = tokens[6],
			srcWho = whoIs(tokens[2], srcFlags),
			dstWho = whoIs(tokens[6], dstFlags),
		}
		local prefix, suffix = splitEvent(tokens[1])
		if prefix then
			local first = BASE_FIELDS + PREFIX_FIELDS[prefix] + 1
			local hasSpell = PREFIX_FIELDS[prefix] == 3
			event.spell = hasSpell and unquote(tokens[BASE_FIELDS + 2]) or prefix:lower()
			event.spellID = hasSpell and tonumber(tokens[BASE_FIELDS + 1]) or nil
			event.school = hasSpell and tonumber(tokens[BASE_FIELDS + 3]) or (prefix == "SWING" and 1 or nil)
			if suffix == "MISSED" then
				event.kind = tokens[first]
			else
				event.kind = suffix == "DAMAGE" and "WOUND" or "HEAL"
				event.amount = tonumber(tokens[first + (advanced and ADVANCED_FIELDS or 0)])
			end
		end
		events[#events + 1] = event
	end
	return events
end

local modules

-- LineKind.lua and Adapter.lua, loaded as the game loads them.
local function load()
	if modules then
		return modules
	end
	local env = setmetatable({
		-- A Trace holds secrets as this placeholder.
		issecretvalue = function(value)
			return value == "<secret>"
		end,
		-- The adapter drops the lines that refill a chat frame by this order.
		Enum = { CombatLogMessageOrder = { Newest = 0, Oldest = 1 } },
	}, { __index = _G })
	modules = {}
	for _, file in ipairs({ "LineKind.lua", "Adapter.lua" }) do
		local chunk = assert(loadfile(here .. "../src/" .. file))
		setfenv(chunk, env)
		chunk("NameplateSCT_Reforged", modules)
	end
	return modules
end

-- Runs the adapter on the Trace, as the live addon will. Returns its Hits and
-- Log Lines.
function Label.Adapt(trace)
	local hits, logLines = {}, {}
	local adapter = load().Adapter.New(function(record)
		if record.kind == "hit" then
			hits[#hits + 1] = record
		elseif record.kind == "line" then
			logLines[#logLines + 1] = record
		end
	end)
	for _, entry in ipairs(trace.entries) do
		adapter.Push(entry)
	end
	adapter.Tick(math.huge)
	return hits, logLines
end

-- The file events that the Trace's Log Filter turns into Log Lines.
local function lineEvents(trace, events)
	local logFilter = trace.header.logFilter
	local filter = type(logFilter) == "table" and logFilter.filter and logFilter.filter.filters
		and logFilter.filter.filters[1]
	if not filter then
		return nil, "the Trace has no Log Filter"
	end
	local withPet = filter.sourceFlags and filter.sourceFlags[Trace.FILTER_MY_PET]
	local result = {}
	for _, event in ipairs(events) do
		if filter.eventList[event.name] and (event.srcWho == "you" or (withPet and event.srcWho == "pet")) then
			result[#result + 1] = event
		end
	end
	return result
end

-- The colour Blizzard gives the Log Line of a file event under a colouring
-- (see LineKind.ColouringOf) and a Log Filter, as
-- Blizzard_CombatLogProcessor.lua GenerateMessage colours lines: by kind, the
-- event's colour, or grey for an event with no colour; by source, the
-- player's and the pet's grey; a highlighted event's line brighter, at most
-- white. nil under any other colouring, which tells nothing.
function Label.ColourOf(event, colouring, filter)
	local colour
	if colouring == "kind" then
		colour = load().LineKind.EventColours()[event.name]
			or { r = UNCOLOURED, g = UNCOLOURED, b = UNCOLOURED }
	elseif colouring == "source" then
		colour = { r = OWN_BY_SOURCE, g = OWN_BY_SOURCE, b = OWN_BY_SOURCE }
	else
		return nil
	end
	local settings, colors = filter.settings or {}, filter.colors or {}
	local scale = settings.lineHighlighting and colors.highlightedEvents
		and colors.highlightedEvents[event.name] and HIGHLIGHT or 1
	return { r = math.min(colour.r * scale, 1), g = math.min(colour.g * scale, 1), b = math.min(colour.b * scale, 1) }
end

-- Whether a Log Line's colour is the one of this file event's line. Lines of
-- one frame share a time, so only their colours tell which line reports
-- which event.
local function colourFits(entry, event, filter)
	local colour = type(entry[4]) == "number" and Label.ColourOf(event, entry.colouring, filter)
	return not colour or (math.abs(entry[4] - colour.r) <= COLOUR_TOLERANCE
		and math.abs(entry[5] - colour.g) <= COLOUR_TOLERANCE and math.abs(entry[6] - colour.b) <= COLOUR_TOLERANCE)
end

-- Pairs each Log Line with the file event it reports, by the one time offset
-- that lines up the most of them. Returns the offset in milliseconds and a
-- map from file event to Log Line.
local function align(trace, logLines, candidates)
	local filter = trace.header.logFilter.filter
	local guess = Trace.StartedToSeconds(trace.header.started) * 1000 - trace.header.startTime * 1000
	local function match(offset)
		local used, matched, count = {}, {}, 0
		for _, line in ipairs(logLines) do
			local at = line.time * 1000 + offset
			local best
			for _, event in ipairs(candidates) do
				if not used[event] and math.abs(event.ms - at) <= ALIGN_MS
					and (not best or math.abs(event.ms - at) < math.abs(best.ms - at))
					and colourFits(trace.entries[line.entry], event, filter) then
					best = event
				end
			end
			if best then
				used[best], matched[best], count = true, line, count + 1
			end
		end
		return count, matched
	end

	local bestCount, bestOffset, bestPairs = -1
	for i = 1, math.min(#logLines, 30) do
		for _, event in ipairs(candidates) do
			local offset = event.ms - logLines[i].time * 1000
			if math.abs(offset - guess) <= 2000 then
				local count, matched = match(offset)
				if count > bestCount then
					bestCount, bestOffset, bestPairs = count, offset, matched
				end
			end
		end
	end
	if #logLines > 0 and bestCount < MIN_ALIGNED * #logLines then
		return nil, ("only %d of %d Log Lines align with the Combat Log File"):format(math.max(bestCount, 0), #logLines)
	end
	return bestOffset or guess, bestPairs or {}
end

-- The life of each nameplate token, for each Hit: a token names a new unit
-- after its plate hides and shows again.
local function plateLives(trace, hits)
	local lifeOf, shown, hitAt = {}, {}, {}
	for _, hit in ipairs(hits) do
		hitAt[hit.entry] = hit
	end
	for i, entry in ipairs(trace.entries) do
		if entry[2] == "NAME_PLATE_UNIT_ADDED" then
			shown[entry[3]] = (shown[entry[3]] or 0) + 1
		end
		local hit = hitAt[i]
		if hit and hit.unit:find("^nameplate%d+$") then
			lifeOf[hit] = hit.unit .. "#" .. (shown[hit.unit] or 0)
		end
	end
	return lifeOf
end

local DEST_OF_UNIT = { player = "you", pet = "pet" }

local function fits(hit, event)
	if event.time < hit.time - EARLIEST or event.time > hit.time + LATEST then
		return false
	end
	if event.dstWho ~= (DEST_OF_UNIT[hit.unit] or "creature") or event.kind ~= hit.action then
		return false
	end
	return event.amount == nil or hit.amount == "<secret>" or event.amount == hit.amount
end

-- The events of the Hit's school, when only some of them have it. The school
-- only breaks ties: Forever reports a wand's Shoot in the wand's school and a
-- heal as physical, which the file does not.
local function sameSchool(hit, events)
	local same = {}
	for _, event in ipairs(events) do
		if event.school == hit.school then
			same[#same + 1] = event
		end
	end
	return (#same > 0 and #same < #events) and same or events
end

-- The spell that made a file event: its spell ID, or the cast's from
-- CAST_OF, false for a melee swing, which has no spell, or nil when the file
-- event names none.
function Label.SpellOf(event)
	if event.spellID then
		return CAST_OF[event.spellID] or event.spellID
	end
	if event.name:find("^SWING_") then
		return false
	end
end

-- Returns one row per Hit, the Log Lines with no Hit, and the file event of
-- each Log Line by the line's entry number; or nil and a message.
function Label.Make(trace, lines)
	local events = parseEvents(lines)
	Trace.FillColouring(trace, load().LineKind.ColouringOf)
	local hits, logLines = Label.Adapt(trace)
	local candidates, message = lineEvents(trace, events)
	if not candidates then
		return nil, message
	end
	local offset, lineOf = align(trace, logLines, candidates)
	if not offset then
		return nil, lineOf
	end
	for _, event in ipairs(events) do
		event.time = (event.ms - offset) / 1000
	end
	local fileStart, fileEnd = events[1] and events[1].time or 0, events[#events] and events[#events].time or 0

	local lifeOf = plateLives(trace, hits)
	local fitting = {}
	for _, hit in ipairs(hits) do
		fitting[hit] = {}
		for _, event in ipairs(events) do
			if event.kind and fits(hit, event) then
				table.insert(fitting[hit], event)
			end
		end
	end

	-- Clear matches first, so they teach each nameplate its creature.
	local eventOf, used, creatureOf, clash = {}, {}, {}, {}
	for _, hit in ipairs(hits) do
		local only = #fitting[hit] == 1 and fitting[hit][1]
		if only and not used[only] then
			eventOf[hit], used[only] = only, true
			local life = lifeOf[hit]
			if life then
				if creatureOf[life] and creatureOf[life] ~= only.dst then
					clash[life] = true
				end
				creatureOf[life] = creatureOf[life] or only.dst
			end
		end
	end

	local rows = {}
	for _, hit in ipairs(hits) do
		local life = lifeOf[hit]
		local unsure
		if not eventOf[hit] then
			local left = {}
			for _, event in ipairs(fitting[hit]) do
				if not used[event] and not (life and creatureOf[life] and creatureOf[life] ~= event.dst) then
					left[#left + 1] = event
				end
			end
			table.sort(left, function(a, b)
				return math.abs(hit.time - a.time) < math.abs(hit.time - b.time)
			end)
			left = sameSchool(hit, left)
			if #left > 1 then
				unsure = ("%d file events fit"):format(#left)
			elseif #left == 0 then
				local outside = hit.time - EARLIEST < fileStart or hit.time + LATEST > fileEnd
				unsure = outside and "outside the Combat Log File" or "no file event fits"
			end
			if left[1] then
				eventOf[hit], used[left[1]] = left[1], true
			end
		end
		local event = eventOf[hit]
		if not unsure and life and clash[life] then
			unsure = "two creatures fit " .. hit.unit
		end
		if not unsure and event and hit.time - event.time > LATE then
			unsure = ("late by %.2f s"):format(hit.time - event.time)
		end
		if not unsure and hit.amount == "<secret>" then
			unsure = "secret amount"
		end
		-- Only your events and your pet's have a Log Line in lineOf.
		local line = event and lineOf[event] and lineOf[event].entry or false
		local spell
		if line then
			spell = Label.SpellOf(event)
		end
		if line and not unsure and spell == nil then
			unsure = "no spell ID"
		end
		rows[#rows + 1] = { hit = hit, line = line, spell = spell, event = event, unsure = unsure }
	end

	local paired = {}
	for _, row in ipairs(rows) do
		if row.line then
			paired[row.line] = true
		end
	end
	local eventOfLine, eventAt = {}, {}
	for event, logLine in pairs(lineOf) do
		eventOfLine[logLine], eventAt[logLine.entry] = event, event
	end
	local lonely = {}
	for _, logLine in ipairs(logLines) do
		if not paired[logLine.entry] then
			lonely[#lonely + 1] = { line = logLine, event = eventOfLine[logLine] }
		end
	end
	return rows, lonely, eventAt
end

local function describe(event)
	if not event then
		return "no file event"
	end
	return ("%s: %s %s"):format(event.srcWho, event.spell or "", event.name)
end

-- The text of a Label file.
function Label.Format(name, trace, rows, lonely)
	local start = trace.header.startTime
	local out = {
		"-- Labels for " .. name .. ": the Pairing of each Hit, from the Combat Log File.",
		"-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`",
		"-- if needed, then delete `unsure` and run the script with --spells. `spell`",
		"-- is the spell ID of the line's file event, or false for a melee swing.",
		"-- Comments: Hit time, unit, action, amount; the file event that made it; how",
		"-- long before the Hit it came.",
		"return {",
	}
	for _, row in ipairs(rows) do
		local fields = ("hit = %d, line = %s"):format(row.hit.entry, row.line and tostring(row.line) or "false")
		if row.spell ~= nil then
			fields = fields .. (", spell = %s"):format(tostring(row.spell))
		end
		if row.unsure then
			fields = fields .. (", unsure = %q"):format(row.unsure)
		end
		local delay = row.event and ("%+.3f s"):format(row.hit.time - row.event.time) or ""
		out[#out + 1] = ("\t{ %s }, -- %.3f %s %s %s <- %s %s"):format(fields, row.hit.time - start, row.hit.unit,
			row.hit.action, tostring(row.hit.amount), describe(row.event), delay)
	end
	out[#out + 1] = "}"
	out[#out + 1] = ""
	out[#out + 1] = "-- Log Lines with no Hit:"
	for _, item in ipairs(lonely) do
		out[#out + 1] = ("-- line %d at %.3f <- %s"):format(item.line.entry, item.line.time - start, describe(item.event))
	end
	return table.concat(out, "\n") .. "\n"
end

-- The text of a Label file with the spell of each row's Log Line, from
-- eventAt (see Make), in place of the spell it had. A person checks `line`,
-- so a corrected line gets its own file event's spell. Also returns the
-- number of rows with a line whose file event names no spell.
function Label.AddSpells(text, eventAt)
	local missing = 0
	local out = {}
	for row in (text .. "\n"):gmatch("(.-)\n") do
		local head, line, tail = row:match("^(\t{ hit = %d+, line = )(%d+)(.*)$")
		if head then
			tail = tail:gsub("^, spell = %w+", "")
			local event = eventAt[tonumber(line)]
			local spell = event and Label.SpellOf(event)
			if spell == nil then
				missing = missing + 1
			else
				tail = (", spell = %s"):format(tostring(spell)) .. tail
			end
			row = head .. line .. tail
		end
		out[#out + 1] = row
	end
	return table.concat(out, "\n", 1, #out - 1) .. "\n", missing
end

local function fail(message)
	io.stderr:write("label-trace: " .. message .. "\n")
	os.exit(1)
end

local function readAll(path)
	local file = io.open(path, "r") or fail("cannot read " .. path)
	local text = file:read("*a")
	file:close()
	return text
end

-- With --spells, adds the spells to the checked Labels of the Trace.
local function main(...)
	local spellsOnly = select(1, ...) == "--spells"
	local name = select(spellsOnly and 2 or 1, ...)
	if not name or not name:find("^[%w%-]+$") then
		fail("usage: luajit tools/label-trace.lua [--spells] <name>")
	end
	local base = "spec/traces/" .. name
	local labelPath = base .. ".labels.lua"
	local exists = io.open(labelPath, "r")
	if exists then
		exists:close()
	end
	if exists and not spellsOnly then
		fail(labelPath .. " exists; remove it first to label again, or use --spells")
	elseif spellsOnly and not exists then
		fail(labelPath .. " does not exist")
	end
	local trace = Trace.Load(base .. ".lua") or fail("cannot read " .. base .. ".lua")
	local lines = {}
	for line in io.lines(base .. ".combatlog.txt") do
		lines[#lines + 1] = line
	end
	local rows, lonely, eventAt = Label.Make(trace, lines)
	if not rows then
		fail(lonely)
	end
	if spellsOnly then
		local text, missing = Label.AddSpells(readAll(labelPath), eventAt)
		local file = assert(io.open(labelPath, "w"))
		file:write(text)
		file:close()
		print(("%s: spells added, %d Log Lines with no spell ID"):format(name, missing))
		return
	end
	local file = assert(io.open(labelPath, "w"))
	file:write(Label.Format(name, trace, rows, lonely))
	file:close()
	local unsure = 0
	for _, row in ipairs(rows) do
		unsure = unsure + (row.unsure and 1 or 0)
	end
	print(("%s: %d Labels, %d unsure, %d Log Lines with no Hit"):format(name, #rows, unsure, #lonely))
end

if arg and arg[0] and arg[0]:find("label%-trace%.lua$") then
	main(...)
end

return Label
