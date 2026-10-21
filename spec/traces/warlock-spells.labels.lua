-- Labels for warlock-spells: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 7, line = 10, spell = 1014 }, -- 17.483 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 13, line = false }, -- 18.217 pet WOUND 19 <- creature: swing SWING_DAMAGE +0.567 s
	{ hit = 15, line = 11, spell = false }, -- 18.633 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.984 s
	{ hit = 19, line = 20, spell = 1014 }, -- 19.483 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 24, line = false }, -- 20.050 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 25, line = 21, spell = false }, -- 20.217 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 26, line = 27, spell = 1014 }, -- 21.483 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 29, line = 32, spell = 1014 }, -- 21.667 nameplate3 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 33, line = 28, spell = false }, -- 22.183 nameplate3 WOUND 11 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 38, line = false }, -- 22.267 player WOUND 44 <- creature: swing SWING_DAMAGE +0.984 s
	{ hit = 40, line = 41, spell = 1014 }, -- 23.483 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 43, line = 46, spell = 1014 }, -- 23.667 nameplate3 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 47, line = false }, -- 23.700 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 49, line = false }, -- 23.784 pet WOUND 28 <- creature: swing SWING_DAMAGE +0.485 s
	{ hit = 51, line = 42, spell = false }, -- 24.189 nameplate3 WOUND 9 <- pet: swing SWING_DAMAGE +0.523 s
	{ hit = 54, line = false }, -- 24.300 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 58, line = 61, spell = 6222 }, -- 25.200 nameplate3 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 62, line = 63, spell = 1014 }, -- 25.467 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 64, line = 67, spell = 1014 }, -- 25.650 nameplate3 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 69, line = false }, -- 25.667 pet WOUND 28 <- creature: swing SWING_DAMAGE +0.368 s
	{ hit = 71, line = false }, -- 25.717 pet WOUND 19 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 73, line = 68, spell = false }, -- 26.233 nameplate3 WOUND 10 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 80, line = 79, spell = 707 }, -- 26.684 nameplate3 WOUND 29 <- you: Immolate SPELL_DAMAGE +0.000 s
	{ hit = 83, line = false }, -- 27.300 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 85, line = 86, spell = 1014 }, -- 27.484 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 87, line = 90, spell = 1014 }, -- 27.667 nameplate3 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 92, line = false }, -- 27.717 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 94, line = false }, -- 27.817 pet WOUND 25 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 97, line = 91, spell = false }, -- 28.184 nameplate3 WOUND 11 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 98, line = 99, spell = 6222 }, -- 28.250 nameplate3 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 104, line = 105, spell = 1014 }, -- 29.483 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 106, line = 109, spell = 1014 }, -- 29.667 nameplate3 WOUND 23 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 111, line = 114, spell = 707 }, -- 29.684 nameplate3 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 115, line = false }, -- 29.717 pet WOUND 14 <- creature: swing SWING_DAMAGE +0.398 s
	{ hit = 117, line = false }, -- 29.817 pet WOUND 25 <- creature: swing SWING_DAMAGE +0.498 s
	{ hit = 121, line = 110, spell = false }, -- 30.250 nameplate3 WOUND 10 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 124, line = false }, -- 30.300 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 126, line = 129, spell = 6222 }, -- 31.200 nameplate3 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 130, line = 131, spell = 1014 }, -- 31.467 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 132, line = 135, spell = 1014 }, -- 31.667 nameplate3 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 137, line = false }, -- 31.734 pet WOUND 15 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 139, line = false }, -- 31.834 pet WOUND 25 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 141, line = 136, spell = false }, -- 32.250 nameplate3 WOUND 9 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 144, line = 147, spell = 707 }, -- 32.751 nameplate3 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 150, line = 149, spell = 705 }, -- 33.267 nameplate3 WOUND 74 <- you: Shadow Bolt SPELL_DAMAGE +0.035 s
	{ hit = 153, line = false }, -- 33.300 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 155, line = 156, spell = 1014 }, -- 33.484 nameplate1 WOUND 31 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 157, line = 160, spell = 1014 }, -- 33.667 nameplate3 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 162, line = false }, -- 33.734 pet MISS 0 <- creature: swing SWING_MISSED +0.418 s
	{ hit = 165, line = 168, spell = 6222 }, -- 34.200 nameplate3 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 169, line = 161, spell = false }, -- 34.250 nameplate3 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 172, line = false }, -- 34.300 pet WOUND 25 <- creature: swing SWING_DAMAGE +0.984 s
	{ hit = 178, line = 177, spell = 5019 }, -- 35.234 nameplate3 WOUND 35 <- you: Shoot RANGE_DAMAGE +0.001 s
	{ hit = 181, line = 182, spell = 1014 }, -- 35.467 nameplate1 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 183, line = 186, spell = 1014 }, -- 35.650 nameplate3 WOUND 23 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 187, line = 190, spell = 707 }, -- 35.700 nameplate3 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 192, line = false }, -- 35.700 pet WOUND 26 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 194, line = false }, -- 35.900 pet WOUND 15 <- creature: swing SWING_DAMAGE +0.567 s
	{ hit = 196, line = 191, spell = false }, -- 36.267 nameplate3 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 199, line = false }, -- 36.300 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 204, line = 203, spell = 5019 }, -- 36.934 nameplate3 WOUND 29 <- you: Shoot RANGE_DAMAGE +0.001 s
	{ hit = 207, line = 210, spell = 6222 }, -- 37.200 nameplate3 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 211, line = 212, spell = 1014 }, -- 37.467 nameplate1 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 213, line = 216, spell = 1014 }, -- 37.667 nameplate3 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 218, line = false }, -- 37.751 pet WOUND 16 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 220, line = false }, -- 37.834 pet WOUND 26 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 222, line = 217, spell = false }, -- 38.234 nameplate3 WOUND 11 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 226, line = 225, spell = false }, -- 38.617 nameplate3 WOUND 9 <- you: swing SWING_DAMAGE +0.368 s
	{ hit = 228, line = 230, spell = 707 }, -- 38.700 nameplate3 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 232, line = false }, -- 39.300 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 233, line = 235, spell = 1014 }, -- 39.484 nameplate1 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 236, line = 237, spell = 1014 }, -- 39.667 nameplate3 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 239, line = false }, -- 39.717 player WOUND 40 <- creature: swing SWING_DAMAGE +0.368 s
	{ hit = 243, line = 242, spell = false }, -- 40.134 nameplate1 WOUND 14 <- you: swing SWING_DAMAGE +0.368 s
	{ hit = 245, line = 238, spell = false }, -- 40.284 nameplate3 WOUND 10 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 247, line = false }, -- 40.517 player DODGE 0 <- creature: swing SWING_MISSED +0.984 s
	{ hit = 252, line = 251, spell = false }, -- 41.634 nameplate3 WOUND 5 <- you: swing SWING_DAMAGE +0.368 s
	{ hit = 254, line = 256, spell = 1014 }, -- 41.667 nameplate3 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 257, line = 259, spell = 707 }, -- 41.684 nameplate3 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 261, line = false }, -- 41.734 player WOUND 41 <- creature: swing SWING_DAMAGE +0.368 s
	{ hit = 263, line = false }, -- 41.934 player WOUND 24 <- creature: swing SWING_DAMAGE +0.384 s
	{ hit = 265, line = 260, spell = false }, -- 42.234 nameplate3 WOUND 10 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 267, line = false }, -- 42.550 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 271, line = 270, spell = false }, -- 43.134 nameplate3 WOUND 11 <- you: swing SWING_DAMAGE +0.368 s
	{ hit = 276, line = false }, -- 43.717 player WOUND 39 <- creature: swing SWING_DAMAGE +0.368 s
	{ hit = 278, line = false }, -- 43.967 player WOUND 24 <- creature: swing SWING_DAMAGE +0.434 s
	{ hit = 280, line = 275, spell = false }, -- 44.284 nameplate3 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 287, line = false }, -- 45.550 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 289, line = 291, spell = 1014 }, -- 45.567 nameplate3 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 293, line = false }, -- 45.850 player WOUND 39 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 295, line = 283, spell = false }, -- 45.984 nameplate3 WOUND 7 <- you: swing SWING_DAMAGE +0.917 s
	{ hit = 299, line = false }, -- 46.100 player WOUND 24 <- creature: swing SWING_DAMAGE +0.567 s
	{ hit = 302, line = 292, spell = false }, -- 46.700 nameplate3 WOUND 10 <- pet: swing SWING_DAMAGE +0.984 s
	{ hit = 304, line = 306, spell = 1014 }, -- 47.567 nameplate3 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 308, line = false }, -- 47.867 pet WOUND 25 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 310, line = false }, -- 47.950 player WOUND 24 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 311, line = 307, spell = false }, -- 48.300 nameplate3 WOUND 9 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 313, line = false }, -- 48.551 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 314, line = 316, spell = 1014 }, -- 49.567 nameplate3 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 319, line = false }, -- 49.867 pet WOUND 27 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 320, line = false }, -- 49.950 player WOUND 24 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 321, line = 318, spell = false }, -- 50.301 nameplate3 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
}

-- Log Lines with no Hit:
