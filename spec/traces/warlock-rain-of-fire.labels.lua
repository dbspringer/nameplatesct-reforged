-- Labels for warlock-rain-of-fire: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 9, line = false }, -- 12.467 pet WOUND 23 <- creature: swing SWING_DAMAGE +0.399 s
	{ hit = 11, line = 7, spell = false }, -- 13.050 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.983 s
	{ hit = 16, line = 19, spell = 1014 }, -- 13.634 nameplate1 WOUND 13 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 21, line = false }, -- 14.483 pet WOUND 24 <- creature: swing SWING_DAMAGE +0.399 s
	{ hit = 25, line = 20, spell = false }, -- 14.650 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 28, line = 31, spell = 1014 }, -- 15.617 nameplate1 WOUND 13 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 33, line = 36, spell = 6222 }, -- 16.150 nameplate1 WOUND 29 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 37, line = false }, -- 16.517 pet WOUND 24 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 41, line = 40, spell = 1094 }, -- 16.650 nameplate1 WOUND 44 <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 44, line = 32, spell = false }, -- 16.650 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 49, line = 52, spell = 1014 }, -- 17.634 nameplate1 WOUND 13 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 55, line = false }, -- 18.517 pet WOUND 24 <- creature: swing SWING_DAMAGE +0.416 s
	{ hit = 57, line = 54, spell = false }, -- 18.667 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 60, line = 63, spell = 6222 }, -- 19.150 nameplate1 WOUND 28 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 64, line = false }, -- 19.267 pet PARRY 0 <- creature: Sunder Armor SPELL_MISSED +0.000 s
	{ hit = 66, line = 69, spell = 1014 }, -- 19.633 nameplate1 WOUND 13 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 70, line = 73, spell = 1094 }, -- 19.667 nameplate1 WOUND 21 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 76, line = 74, spell = false }, -- 20.250 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 80, line = 79, spell = 1088 }, -- 20.350 nameplate1 WOUND 112 <- you: Shadow Bolt SPELL_DAMAGE -0.001 s
	{ hit = 83, line = false }, -- 20.534 pet WOUND 24 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 85, line = 87, spell = 1014 }, -- 21.634 nameplate1 WOUND 18 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 91, line = 93, spell = 6222 }, -- 22.150 nameplate1 WOUND 28 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 94, line = 89, spell = false }, -- 22.150 nameplate1 WOUND 12 <- you: swing SWING_DAMAGE +0.499 s
	{ hit = 96, line = 90, spell = false }, -- 22.217 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 98, line = false }, -- 22.484 pet WOUND 24 <- creature: swing SWING_DAMAGE +0.383 s
	{ hit = 100, line = 102, spell = 1094 }, -- 22.650 nameplate1 WOUND 20 <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 105, line = 107, spell = 1014 }, -- 23.617 nameplate1 WOUND 18 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 108, line = 104, spell = false }, -- 23.667 nameplate1 WOUND 14 <- you: swing SWING_DAMAGE +0.500 s
	{ hit = 112, line = false }, -- 24.517 pet WOUND 23 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 114, line = 110, spell = false }, -- 24.667 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.983 s
	{ hit = 116, line = 118, spell = 6222 }, -- 25.150 nameplate1 WOUND 28 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 119, line = 121, spell = 1014 }, -- 25.634 nameplate1 WOUND 18 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 122, line = 124, spell = 1094 }, -- 25.650 nameplate1 WOUND 20 <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 126, line = 125, spell = false }, -- 26.217 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 128, line = false }, -- 26.534 pet WOUND 23 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 133, line = 136, spell = 1014 }, -- 27.634 nameplate1 WOUND 18 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 139, line = 138, spell = 5019 }, -- 27.967 nameplate1 WOUND 38 <- you: Shoot RANGE_DAMAGE +0.000 s
	{ hit = 142, line = 145, spell = 6222 }, -- 28.150 nameplate1 WOUND 28 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 146, line = 137, spell = false }, -- 28.267 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 149, line = false }, -- 28.534 pet WOUND 24 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 151, line = 154, spell = 1094 }, -- 28.650 nameplate1 WOUND 20 <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 158, line = 161, spell = 1014 }, -- 29.617 nameplate1 WOUND 23 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 163, line = 162, spell = 5019 }, -- 29.684 nameplate1 WOUND 25 <- you: Shoot RANGE_DAMAGE +0.000 s
	{ hit = 167, line = 166, spell = false }, -- 30.267 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 170, line = false }, -- 30.517 pet WOUND 24 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 172, line = 175, spell = 1014 }, -- 31.634 nameplate1 WOUND 23 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 176, line = 179, spell = 1094 }, -- 31.650 nameplate1 WOUND 20 <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 180, line = false }, -- 32.534 pet WOUND 24 <- creature: swing SWING_DAMAGE +0.399 s
	{ hit = 185, line = 188, spell = 1014 }, -- 33.617 nameplate1 WOUND 23 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 189, line = false }, -- 34.550 pet WOUND 25 <- creature: swing SWING_DAMAGE +0.399 s
	{ hit = 192, line = 191, spell = 5740 }, -- 35.234 nameplate1 WOUND 45 <- you: Rain of Fire SPELL_DAMAGE +0.000 s
	{ hit = 195, line = 198, spell = 1014 }, -- 35.634 nameplate1 WOUND 23 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 199, line = false }, -- 36.584 player WOUND 37 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 202, line = 201, spell = 5740 }, -- 37.217 nameplate1 WOUND 45 <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 206, line = false }, -- 38.550 player WOUND 36 <- creature: swing SWING_DAMAGE +0.399 s
	{ hit = 210, line = false }, -- 40.584 player WOUND 37 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 212, line = 208, spell = false }, -- 40.867 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.983 s
	{ hit = 219, line = 218, spell = false }, -- 42.417 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 223, line = 222, spell = 689 }, -- 42.450 nameplate1 WOUND 19 <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 226, line = 228, spell = 689 }, -- 42.450 player HEAL 16 <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 229, line = false }, -- 42.584 player WOUND 36 <- creature: swing SWING_DAMAGE +0.416 s
	{ hit = 232, line = 231, spell = 689 }, -- 43.450 nameplate1 WOUND 20 <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 235, line = 237, spell = 689 }, -- 43.450 player HEAL 17 <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 240, line = 238, spell = false }, -- 44.417 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 243, line = false }, -- 44.567 player WOUND 37 <- creature: swing SWING_DAMAGE +0.399 s
	{ hit = 250, line = 249, spell = false }, -- 46.417 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 254, line = 253, spell = 689 }, -- 46.567 nameplate1 WOUND 19 <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 257, line = 258, spell = 689 }, -- 46.567 player HEAL 16 <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 259, line = false }, -- 46.567 pet WOUND 25 <- creature: swing SWING_DAMAGE +0.399 s
	{ hit = 266, line = 265, spell = false }, -- 48.417 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.532 s
	{ hit = 269, line = false }, -- 49.150 pet WOUND 24 <- creature: swing SWING_DAMAGE +0.982 s
	{ hit = 272, line = 271, spell = false }, -- 50.417 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 275, line = false }, -- 50.551 pet WOUND 26 <- creature: swing SWING_DAMAGE +0.383 s
	{ hit = 278, line = 281, spell = 1120 }, -- 50.817 nameplate1 WOUND 28 <- you: Drain Soul SPELL_PERIODIC_DAMAGE -0.001 s
}

-- Log Lines with no Hit:
-- line 277 at 50.817 <- you:  PARTY_KILL
