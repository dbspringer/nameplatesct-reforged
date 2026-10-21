-- Labels for warlock-pet-thanes: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 10, line = 13, spell = 6222 }, -- 13.616 nameplate2 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 14, line = 17, spell = 1014 }, -- 14.350 nameplate2 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 19, line = 18, spell = false }, -- 16.083 nameplate2 WOUND 12 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 22, line = 25, spell = 1014 }, -- 16.333 nameplate2 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 29, line = 32, spell = 6222 }, -- 16.600 nameplate2 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 33, line = false }, -- 16.783 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 36, line = 35, spell = false }, -- 18.083 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 39, line = 42, spell = 1014 }, -- 18.333 nameplate2 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 43, line = false }, -- 18.800 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 48, line = 51, spell = 6222 }, -- 19.616 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 52, line = 47, spell = false }, -- 20.133 nameplate2 WOUND 12 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 55, line = 58, spell = 1014 }, -- 20.350 nameplate2 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 59, line = false }, -- 20.783 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 63, line = 62, spell = 707 }, -- 21.500 nameplate2 WOUND 29 <- you: Immolate SPELL_DAMAGE +0.000 s
	{ hit = 68, line = 71, spell = 1014 }, -- 22.338 nameplate2 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 72, line = 66, spell = false }, -- 22.566 nameplate2 WOUND 12 <- pet: swing SWING_DAMAGE +0.983 s
	{ hit = 75, line = 78, spell = 6222 }, -- 22.616 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 79, line = false }, -- 22.800 pet MISS 0 <- creature: swing SWING_MISSED +0.400 s
	{ hit = 84, line = 83, spell = false }, -- 24.100 nameplate2 WOUND 13 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 87, line = 90, spell = 1014 }, -- 24.350 nameplate2 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 91, line = 94, spell = 707 }, -- 24.516 nameplate2 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 95, line = false }, -- 24.966 pet WOUND 20 <- creature: swing SWING_DAMAGE +0.566 s
	{ hit = 97, line = false }, -- 25.283 pet MISS 0 <- creature: Shadow Word: Pain SPELL_MISSED +0.000 s
	{ hit = 100, line = 103, spell = 6222 }, -- 25.616 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 106, line = 105, spell = 705 }, -- 26.016 nameplate2 WOUND 82 <- you: Shadow Bolt SPELL_DAMAGE +0.066 s
	{ hit = 109, line = 99, spell = false }, -- 26.150 nameplate2 WOUND 12 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 112, line = 115, spell = 1014 }, -- 26.350 nameplate2 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 118, line = 121, spell = 707 }, -- 27.516 nameplate2 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 123, line = false }, -- 27.700 player WOUND 32 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 126, line = 129, spell = 1014 }, -- 28.333 nameplate2 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 130, line = 122, spell = false }, -- 28.583 nameplate2 WOUND 12 <- pet: swing SWING_DAMAGE +0.983 s
	{ hit = 133, line = 136, spell = 6222 }, -- 29.533 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 138, line = false }, -- 29.733 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 140, line = 137, spell = false }, -- 30.133 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 143, line = 146, spell = 1014 }, -- 30.350 nameplate2 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 147, line = 150, spell = 707 }, -- 30.516 nameplate2 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 152, line = false }, -- 31.700 pet WOUND 20 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 154, line = 151, spell = false }, -- 32.133 nameplate2 WOUND 12 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 157, line = 160, spell = 1014 }, -- 32.350 nameplate2 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 161, line = 164, spell = 6222 }, -- 32.533 nameplate2 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 166, line = 169, spell = 707 }, -- 33.500 nameplate2 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 171, line = false }, -- 33.733 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 173, line = 170, spell = false }, -- 34.183 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 176, line = 179, spell = 1014 }, -- 34.350 nameplate2 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 182, line = 183, spell = 755 }, -- 35.366 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 184, line = 186, spell = 755 }, -- 35.366 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 187, line = 190, spell = 6222 }, -- 35.533 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 192, line = false }, -- 35.700 pet MISS 0 <- creature: swing SWING_MISSED +0.400 s
	{ hit = 194, line = 191, spell = false }, -- 36.183 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 197, line = 200, spell = 1014 }, -- 36.350 nameplate2 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 201, line = 202, spell = 755 }, -- 36.367 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 203, line = 205, spell = 755 }, -- 36.367 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 206, line = 209, spell = 707 }, -- 36.516 nameplate2 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 210, line = 211, spell = 755 }, -- 37.367 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 212, line = 214, spell = 755 }, -- 37.367 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 216, line = false }, -- 37.750 pet WOUND 20 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 218, line = 215, spell = false }, -- 38.183 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 221, line = 222, spell = 755 }, -- 38.367 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 223, line = 225, spell = 755 }, -- 38.367 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 226, line = 229, spell = 6222 }, -- 38.533 nameplate2 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 231, line = 232, spell = 755 }, -- 39.367 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 233, line = 235, spell = 755 }, -- 39.367 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 237, line = false }, -- 39.733 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 239, line = 236, spell = false }, -- 40.150 nameplate2 WOUND 13 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 242, line = 243, spell = 755 }, -- 40.367 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 244, line = 246, spell = 755 }, -- 40.367 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 247, line = 248, spell = 755 }, -- 41.366 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 249, line = 251, spell = 755 }, -- 41.366 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 252, line = 255, spell = 6222 }, -- 41.533 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 257, line = false }, -- 41.733 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 259, line = 256, spell = false }, -- 42.200 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 262, line = 263, spell = 755 }, -- 42.350 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 264, line = 266, spell = 755 }, -- 42.350 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 271, line = 270, spell = 689 }, -- 43.916 nameplate2 WOUND 18 <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 274, line = 275, spell = 689 }, -- 43.916 player HEAL 16 <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 276, line = 269, spell = false }, -- 44.150 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 280, line = false }, -- 44.733 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 283, line = 282, spell = 689 }, -- 44.916 nameplate2 WOUND 17 <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 286, line = 287, spell = 689 }, -- 44.916 player HEAL 15 <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 288, line = false }, -- 45.316 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 292, line = 291, spell = 689 }, -- 45.916 nameplate2 WOUND 17 <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 295, line = 296, spell = 689 }, -- 45.916 player HEAL 15 <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 297, line = 290, spell = false }, -- 46.167 nameplate2 WOUND 20 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 300, line = false }, -- 46.716 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.399 s
	{ hit = 303, line = 302, spell = 689 }, -- 46.916 nameplate2 WOUND 17 <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 306, line = 307, spell = 689 }, -- 46.916 player HEAL 15 <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 310, line = 309, spell = 689 }, -- 47.916 nameplate2 WOUND 25 <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 313, line = 314, spell = 689 }, -- 47.916 player HEAL 22 <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 315, line = 308, spell = false }, -- 48.216 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 318, line = false }, -- 48.316 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 320, line = false }, -- 48.750 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 327, line = 326, spell = 5019 }, -- 49.933 nameplate2 WOUND 23 <- you: Shoot RANGE_DAMAGE +0.033 s
	{ hit = 330, line = 323, spell = false }, -- 50.233 nameplate2 WOUND 10 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 334, line = false }, -- 50.817 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.434 s
	{ hit = 336, line = false }, -- 51.316 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 341, line = 340, spell = 5019 }, -- 51.650 nameplate2 WOUND 23 <- you: Shoot RANGE_DAMAGE +0.033 s
	{ hit = 345, line = 344, spell = false }, -- 52.234 nameplate2 WOUND 12 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 349, line = false }, -- 52.900 pet WOUND 20 <- creature: swing SWING_DAMAGE +0.567 s
	{ hit = 351, line = false }, -- 53.267 nameplate2 DODGE 0 <- you: swing SWING_MISSED +0.366 s
	{ hit = 354, line = 353, spell = false }, -- 54.200 nameplate2 WOUND 10 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 356, line = false }, -- 54.316 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 360, line = false }, -- 54.750 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 362, line = 359, spell = false }, -- 54.783 nameplate2 WOUND 1 <- you: swing SWING_DAMAGE +0.366 s
	{ hit = 367, line = false }, -- 56.283 nameplate2 WOUND 0 <- no file event 
	{ hit = 369, line = 364, spell = false }, -- 56.667 nameplate2 WOUND 10 <- pet: swing SWING_DAMAGE +0.984 s
	{ hit = 371, line = false }, -- 56.733 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 373, line = false }, -- 57.317 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 377, line = false }, -- 57.800 nameplate2 DODGE 0 <- you: swing SWING_MISSED +0.367 s
	{ hit = 379, line = 376, spell = false }, -- 58.217 nameplate2 WOUND 12 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 381, line = false }, -- 58.767 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 385, line = 384, spell = false }, -- 59.283 nameplate2 WOUND 2 <- you: swing SWING_DAMAGE +0.366 s
	{ hit = 388, line = 387, spell = false }, -- 60.267 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 390, line = false }, -- 60.300 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 393, line = false }, -- 60.767 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 398, line = 397, spell = 5019 }, -- 61.033 nameplate2 WOUND 35 <- you: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 404, line = 401, spell = false }, -- 62.217 target WOUND 13 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 409, line = 410, spell = 17767 }, -- 69.233 pet HEAL 94 <- pet: Consume Shadows SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 411, line = 412, spell = 17767 }, -- 71.233 pet HEAL 63 <- pet: Consume Shadows SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 413, line = 414, spell = 17767 }, -- 73.233 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 415, line = 416, spell = 17767 }, -- 75.233 pet HEAL 63 <- pet: Consume Shadows SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 417, line = 418, spell = 17767 }, -- 77.233 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
}

-- Log Lines with no Hit:
