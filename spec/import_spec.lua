local Import = assert(loadfile("tools/import-trace.lua"))()

local ME = "Player-4619-00C9126F"
local OTHER = "Player-4619-0102A6C1"
local PET = "Pet-0-4615-0-157002-1860-01001DAE55"
local MOB = "Creature-0-6783-3065-63731-263389-0005D7A977"

local FORMAT = "10/20/2026 10:48:57.427-7  COMBAT_LOG_VERSION,22,ADVANCED_LOG_ENABLED,1,BUILD_VERSION,1.60.1,PROJECT_ID,18"

local function line(clock, fields)
	return "10/20/2026 " .. clock .. "-7  " .. fields
end

local function trace(startTime, entries)
	return {
		header = { started = "2026-10-20 10:49:21", startTime = startTime },
		entries = entries,
	}
end

describe("Import", function()
	local lines

	before_each(function()
		lines = {
			FORMAT,
			line("10:49:22.000", 'ZONE_CHANGE,3065,"The Hall of Thanes",1'),
			line("10:49:31.710", "SPELL_PERIODIC_ENERGIZE," .. OTHER .. ',"Abaron-Abaron-ClassicBetaPvP-",0x528,0x80000000,'
				.. ME .. ',"Harold-Baalsagna-ClassicBetaPvP-",0x511,0x80000000,19742,"Blessing of Wisdom",0x2,' .. ME),
			line("10:49:32.000", "SPELL_DAMAGE," .. ME .. ',"Harold-Baalsagna-ClassicBetaPvP-",0x511,0x80000000,'
				.. MOB .. ',"Enraged Apparition-Onlyfans",0x10a48,0x80000000,707,"Immolate",0x4,' .. MOB .. ",0000000000000000,812"),
			line("10:49:33.000", "SWING_DAMAGE," .. PET .. ',"Helmon-Dniv",0x1111,0x80000000,'
				.. MOB .. ',"Enraged Apparition-Onlyfans",0x10a48,0x80000000,' .. PET .. "," .. ME .. ",29"),
		}
	end)

	it("empties every source and destination name, and keeps zone and spell names", function()
		local _, scrubbed = Import.Scrub(trace(100, {}), lines)
		local text = table.concat(scrubbed, "\n")
		for _, name in ipairs({ "Harold", "Abaron", "Helmon", "Enraged Apparition" }) do
			assert.is_nil(text:find(name, 1, true), name)
		end
		for _, kept in ipairs({ "The Hall of Thanes", "Immolate", "Blessing of Wisdom" }) do
			assert.is_truthy(text:find(kept, 1, true), kept)
		end
	end)

	it("gives the recorder and each other player one placeholder GUID in both files", function()
		local entries = {
			{ 101, "UNIT_COMBAT", "player", "HEAL", "", 50, 1, guid = ME },
			{ 102, "UNIT_COMBAT", "softenemy", "WOUND", "", 29, 1, guid = OTHER },
		}
		local scrubbed, scrubbedLines = Import.Scrub(trace(100, entries), lines)
		local text = table.concat(scrubbedLines, "\n")

		assert.is_nil(text:find(ME, 1, true))
		assert.is_nil(text:find(OTHER, 1, true))
		assert.are.equal("Player-0-00000001", scrubbed.entries[1].guid)
		assert.are.equal("Player-0-00000002", scrubbed.entries[2].guid)
		-- The other player comes first in the log, and still gets the second number.
		assert.is_truthy(scrubbedLines[3]:find("^[^,]+,Player%-0%-00000002,"))
		assert.is_truthy(scrubbedLines[4]:find("^[^,]+,Player%-0%-00000001,"))
		assert.is_truthy(text:find(PET, 1, true))
		assert.is_truthy(text:find(MOB, 1, true))
	end)

	it("empties the target name of a cast, which is public in the open world", function()
		local entries = { { 101, "UNIT_SPELLCAST_SENT", "player", "Abaron", "Cast-3-6783-3065-6-707-90E39F8F61", 707 } }
		local scrubbed = Import.Scrub(trace(100, entries), lines)
		assert.are.equal("", scrubbed.entries[1][4])
	end)

	it("keeps the format line and the lines from 10 s before the Trace to 10 s after it", function()
		local window = {
			FORMAT,
			line("10:49:10.999", "SPELL_DAMAGE,too early"),
			line("10:49:11.000", "SPELL_DAMAGE,first kept"),
			line("10:50:15.499", "SPELL_DAMAGE,last kept"),
			line("10:50:15.501", "SPELL_DAMAGE,too late"),
		}
		-- Started in the second 10:49:21 and ran 43.5 s, so it ended by 10:50:05.5.
		local kept = Import.Cut(window, trace(100, { { 100 }, { 143.5 } }))
		assert.are.same({ FORMAT, window[3], window[4] }, kept)
	end)
end)
