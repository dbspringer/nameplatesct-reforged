-- Gives the Log Lines of a Trace recorded under colours by source the colours
-- of their Line Kinds, as a fixed Log Filter colours them (ADR 0003), so the
-- Traces from before the fix can test what reads Line Kinds. Each line takes
-- the colour of the file event that the label script aligns it with, and
-- reads by kind; a line with no file event, such as one that refills a chat
-- frame, keeps its colour, which still reads by source. The header gets
-- coloursFromFile = true.
--
-- Usage: luajit tools/recolour-trace.lua <name>

local here = debug.getinfo(1, "S").source:match("^@(.*/)") or "./"
local Trace = assert(loadfile(here .. "trace.lua"))()
local Label = assert(loadfile(here .. "label-trace.lua"))()

local LINE = '^(\t\t{ [%d%.]+, "COMBAT_LOG_MESSAGE", "[^"]*", )[%d%.]+, [%d%.]+, [%d%.]+(, %d+) },$'

local function fail(message)
	io.stderr:write("recolour-trace: " .. message .. "\n")
	os.exit(1)
end

local function main(name)
	if not name or not name:find("^[%w%-]+$") then
		fail("usage: luajit tools/recolour-trace.lua <name>")
	end
	local base = "spec/traces/" .. name
	local trace = Trace.Load(base .. ".lua") or fail("cannot read " .. base .. ".lua")
	if trace.header.coloursFromFile then
		fail(name .. " already has colours from the Combat Log File")
	end
	local lines = {}
	for line in io.lines(base .. ".combatlog.txt") do
		lines[#lines + 1] = line
	end
	-- Make fills each line's colouring from the header.
	local rows, message, eventAt = Label.Make(trace, lines)
	if not rows then
		fail(message)
	end

	local out, entry, inEntries, recoloured, kept = {}, 0, false, 0, 0
	for line in io.lines(base .. ".lua") do
		if line == "\tentries = {" then
			inEntries = true
		elseif inEntries and line == "\t}," then
			inEntries = false
		elseif inEntries then
			entry = entry + 1
			local raw = trace.entries[entry]
			if raw[2] == "COMBAT_LOG_MESSAGE" then
				if raw.colouring ~= "source" then
					fail(("entry %d is not coloured by source"):format(entry))
				end
				local event = eventAt[entry]
				local head, tail = line:match(LINE)
				if not head then
					fail(("entry %d has an unknown shape: %s"):format(entry, line))
				end
				if event then
					local colour = Label.ColourOf(event, "kind", {})
					line = ("%s%s, %s, %s%s, colouring = \"kind\" },"):format(head, tostring(colour.r),
						tostring(colour.g), tostring(colour.b), tail)
					recoloured = recoloured + 1
				else
					kept = kept + 1
				end
			end
		elseif line == "\theader = {" then
			out[#out + 1] = line
			line = "\t\tcoloursFromFile = true,"
		end
		out[#out + 1] = line
	end
	if entry ~= #trace.entries then
		fail(("read %d entry lines for %d entries"):format(entry, #trace.entries))
	end
	local file = assert(io.open(base .. ".lua", "w"))
	file:write(table.concat(out, "\n") .. "\n")
	file:close()
	print(("%s: %d Log Lines coloured by kind, %d kept their colour"):format(name, recoloured, kept))
end

main(...)
