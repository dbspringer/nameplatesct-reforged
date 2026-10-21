-- Labels for warlock-stockade: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 5, line = false }, -- 5.750 nameplate2 MISS 0 <- you: Immolate SPELL_MISSED -0.001 s
	{ hit = 12, line = false }, -- 7.400 nameplate2 MISS 0 <- you: Corruption SPELL_MISSED -0.001 s
	{ hit = 15, line = 18, spell = 6222 }, -- 8.867 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 22, line = false }, -- 9.617 player WOUND 87 <- creature: swing SWING_DAMAGE +0.517 s
	{ hit = 24, line = false }, -- 10.167 nameplate2 WOUND 4 <- pet: swing SWING_DAMAGE +0.983 s
	{ hit = 29, line = false }, -- 11.650 pet WOUND 52 <- creature: swing SWING_DAMAGE +0.533 s
	{ hit = 31, line = false }, -- 11.717 nameplate2 WOUND 4 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 34, line = 37, spell = 6222 }, -- 12.233 nameplate2 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 40, line = 43, spell = 1014 }, -- 12.917 nameplate2 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 44, line = false }, -- 13.650 pet WOUND 51 <- creature: swing SWING_DAMAGE +0.533 s
	{ hit = 46, line = false }, -- 13.733 nameplate2 PARRY 0 <- pet: swing SWING_MISSED +0.533 s
	{ hit = 51, line = 50, spell = 707 }, -- 14.583 nameplate2 WOUND 29 <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 54, line = false }, -- 14.733 pet WOUND 48 <- creature: swing SWING_DAMAGE +0.399 s
	{ hit = 56, line = 59, spell = 1014 }, -- 14.917 nameplate2 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 61, line = false }, -- 15.183 nameplate2 MISS 0 <- pet: Torment SPELL_MISSED -0.003 s
	{ hit = 64, line = 67, spell = 6222 }, -- 15.233 nameplate2 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 68, line = false }, -- 15.717 nameplate2 MISS 0 <- pet: swing SWING_MISSED +0.516 s
	{ hit = 71, line = false }, -- 16.733 player WOUND 114 <- creature: swing SWING_DAMAGE +0.399 s
	{ hit = 73, line = 76, spell = 1014 }, -- 16.933 nameplate2 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 77, line = 80, spell = 707 }, -- 17.583 nameplate2 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 81, line = false }, -- 17.783 nameplate2 WOUND 5 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 84, line = 87, spell = 6222 }, -- 18.233 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 88, line = false }, -- 18.334 player WOUND 73 <- creature: swing SWING_DAMAGE +0.000 s
	{ hit = 90, line = false }, -- 18.850 player WOUND 13 <- creature: Kick SPELL_DAMAGE +0.000 s
	{ hit = 92, line = 95, spell = 1014 }, -- 18.933 nameplate2 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 98, line = false }, -- 19.734 nameplate2 WOUND 9 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 101, line = 104, spell = 707 }, -- 20.583 nameplate2 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 105, line = false }, -- 20.718 player WOUND 99 <- creature: swing SWING_DAMAGE +0.384 s
	{ hit = 108, line = 111, spell = 1014 }, -- 20.933 nameplate2 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 112, line = 115, spell = 6222 }, -- 21.234 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 118, line = false }, -- 21.750 nameplate2 WOUND 5 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 123, line = false }, -- 22.867 player WOUND 78 <- creature: swing SWING_DAMAGE +0.517 s
	{ hit = 124, line = 125, spell = 1014 }, -- 22.934 nameplate2 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 126, line = 127, spell = 707 }, -- 23.584 nameplate2 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
}

-- Log Lines with no Hit:
