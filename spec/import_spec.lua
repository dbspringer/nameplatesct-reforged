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

	it("empties the absorber's name, after a swing or after a spell", function()
		local absorbed = {
			FORMAT,
			line("10:49:34.000", "SPELL_ABSORBED," .. MOB .. ',"Enraged Apparition-Onlyfans",0xa28,0x80000000,'
				.. ME .. ',"Harold-Baalsagna-ClassicBetaPvP-",0x548,0x80000000,'
				.. OTHER .. ',"Abaron-Abaron-ClassicBetaPvP-",0x548,0x80000000,3747,"Power Word: Shield",0x2,38,69,nil'),
			line("10:49:35.000", "SPELL_ABSORBED," .. MOB .. ',"Enraged Apparition-Onlyfans",0xa48,0x80000000,'
				.. ME .. ',"Harold-Baalsagna-ClassicBetaPvP-",0x548,0x80000000,9672,"Frostbolt",0x10,'
				.. OTHER .. ',"Abaron-Abaron-ClassicBetaPvP-",0x548,0x80000000,3747,"Power Word: Shield",0x2,68,68,nil'),
		}
		local _, scrubbed = Import.Scrub(trace(100, {}), absorbed)
		local text = table.concat(scrubbed, "\n")
		assert.is_nil(text:find("Abaron", 1, true))
		assert.is_truthy(text:find('"Frostbolt"', 1, true))
		assert.is_truthy(text:find('"Power Word: Shield"', 1, true))
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

	it("picks the Combat Log File that holds the Trace, which can start a few seconds after it", function()
		-- The Trace runs from 10:49:21 to 10:50:21, and /combatlog made its file
		-- 4 s after the Trace started.
		local paths = { "Logs/WoWCombatLog-102026_093000.txt", "Logs/WoWCombatLog-102026_104925.txt",
			"Logs/WoWCombatLog-102126_080000.txt" }
		assert.are.equal(paths[2], Import.PickCombatLog(paths, trace(100, { { 100 }, { 160 } })))
	end)

	it("picks no Combat Log File when the Trace's start second leaves the choice open", function()
		-- The header gives whole seconds, so a Trace that started at 10:49:21.9
		-- has its entries after 10:49:22, in the newer file.
		local paths = { "Logs/WoWCombatLog-102026_093000.txt", "Logs/WoWCombatLog-102026_104922.txt" }
		assert.is_nil(Import.PickCombatLog(paths, trace(100, { { 100.2 }, { 100.4 } })))
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

	it("starts 10 s before the first entry when the recorder dropped the earlier ones", function()
		local window = {
			FORMAT,
			line("10:49:40.999", "SPELL_DAMAGE,too early"),
			line("10:49:41.000", "SPELL_DAMAGE,first kept"),
		}
		-- Started in the second 10:49:21; the first kept entry came 30 s later.
		local kept = Import.Cut(window, trace(100, { { 130 }, { 143.5 } }))
		assert.are.same({ FORMAT, window[3] }, kept)
	end)
end)
