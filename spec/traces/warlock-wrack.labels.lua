-- Labels for warlock-wrack: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 9, line = false, unsure = "secret amount" }, -- 45.515 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.456 s
	{ hit = 14, line = 8, spell = false, unsure = "secret amount" }, -- 46.048 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.990 s
	{ hit = 21, line = 24, spell = 11711, unsure = "secret amount" }, -- 47.493 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 25, line = false, unsure = "secret amount" }, -- 47.515 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.465 s
	{ hit = 28, line = 20, spell = false, unsure = "late by 1.39 s" }, -- 48.440 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +1.391 s
	{ hit = 34, line = 37, spell = 11711, unsure = "secret amount" }, -- 49.519 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 38, line = false, unsure = "secret amount" }, -- 49.600 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.527 s
	{ hit = 42, line = 45, spell = 11671, unsure = "secret amount" }, -- 49.998 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 46, line = false, unsure = "no file event fits" }, -- 50.823 nameplate1 WOUND <secret> <- no file event 
	{ hit = 50, line = 49, spell = 18879, unsure = "secret amount" }, -- 51.542 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 53, line = 55, spell = 18879, unsure = "secret amount" }, -- 51.542 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 56, line = 59, spell = 11711, unsure = "secret amount" }, -- 51.542 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 60, line = false, unsure = "secret amount" }, -- 52.425 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.535 s
	{ hit = 67, line = 66, spell = 11665, unsure = "secret amount" }, -- 53.007 nameplate1 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 70, line = 73, spell = 11671, unsure = "secret amount" }, -- 53.007 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 74, line = 62, spell = false, unsure = "secret amount" }, -- 53.117 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.259 s
	{ hit = 77, line = 80, spell = 11711, unsure = "secret amount" }, -- 53.512 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 82, line = false, unsure = "secret amount" }, -- 54.501 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.534 s
	{ hit = 85, line = 84, spell = 18879, unsure = "secret amount" }, -- 54.540 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 88, line = 90, spell = 18879, unsure = "secret amount" }, -- 54.540 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 92, line = 91, spell = false, unsure = "secret amount" }, -- 55.123 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.327 s
	{ hit = 95, line = 98, spell = 11711, unsure = "secret amount" }, -- 55.574 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 100, line = 103, spell = 11665, unsure = "secret amount" }, -- 55.973 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 104, line = 107, spell = 11671, unsure = "secret amount" }, -- 55.973 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 108, line = false, unsure = "secret amount" }, -- 56.441 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.468 s
	{ hit = 115, line = 114, spell = 18879, unsure = "2 file events fit" }, -- 57.528 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 118, line = 120, spell = 18879, unsure = "secret amount" }, -- 57.528 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 121, line = 124, spell = 11711, unsure = "secret amount" }, -- 57.528 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 125, line = 113, spell = false, unsure = "secret amount" }, -- 57.817 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.991 s
	{ hit = 131, line = false, unsure = "secret amount" }, -- 58.498 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.456 s
	{ hit = 133, line = 136, spell = 11711, unsure = "secret amount" }, -- 58.575 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 139, line = 142, spell = 11665, unsure = "secret amount" }, -- 59.023 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 144, line = 143, spell = 18879, unsure = "2 file events fit" }, -- 59.023 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 147, line = 149, spell = 18879, unsure = "secret amount" }, -- 59.023 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 150, line = 153, spell = 11671, unsure = "secret amount" }, -- 59.023 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 154, line = 157, spell = 1316697, unsure = "secret amount" }, -- 59.197 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 158, line = 138, spell = false, unsure = "secret amount" }, -- 59.273 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.324 s
	{ hit = 161, line = 164, spell = 11711, unsure = "secret amount" }, -- 59.580 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 165, line = false, unsure = "secret amount" }, -- 59.981 player WOUND <secret> <- creature: Strike SPELL_DAMAGE -0.001 s
	{ hit = 167, line = false, unsure = "no file event fits" }, -- 59.981 player WOUND <secret> <- no file event 
	{ hit = 169, line = 172, spell = 1316697, unsure = "secret amount" }, -- 60.201 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 174, line = 173, spell = 18879, unsure = "3 file events fit" }, -- 60.498 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 177, line = 179, spell = 18879, unsure = "secret amount" }, -- 60.498 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 180, line = 183, spell = 11671, unsure = "2 file events fit" }, -- 60.498 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 184, line = 187, spell = 11711, unsure = "secret amount" }, -- 60.498 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 190, line = 188, spell = false, unsure = "secret amount" }, -- 61.148 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.274 s
	{ hit = 193, line = 196, spell = 1316697, unsure = "secret amount" }, -- 61.200 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 197, line = 200, spell = 11711, unsure = "secret amount" }, -- 61.704 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 202, line = 205, spell = 11665, unsure = "secret amount" }, -- 61.998 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 206, line = 209, spell = 11671, unsure = "secret amount" }, -- 61.998 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 210, line = false, unsure = "secret amount" }, -- 62.458 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.460 s
	{ hit = 217, line = 213, spell = false, unsure = "secret amount" }, -- 63.534 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.627 s
	{ hit = 221, line = 220, spell = 18879, unsure = "2 file events fit" }, -- 63.542 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 224, line = 226, spell = 18879, unsure = "secret amount" }, -- 63.542 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 227, line = 230, spell = 11711, unsure = "secret amount" }, -- 63.542 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 235, line = false, unsure = "secret amount" }, -- 64.461 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.462 s
	{ hit = 237, line = 240, spell = 11711, unsure = "secret amount" }, -- 64.567 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 242, line = 245, spell = 11665, unsure = "secret amount" }, -- 65.032 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 247, line = 246, spell = 18879, unsure = "2 file events fit" }, -- 65.032 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 250, line = 252, spell = 18879, unsure = "secret amount" }, -- 65.032 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 253, line = 256, spell = 11671, unsure = "secret amount" }, -- 65.032 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 257, line = 241, spell = false, unsure = "secret amount" }, -- 65.182 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.265 s
	{ hit = 260, line = 263, spell = 1316697, unsure = "secret amount" }, -- 65.457 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 265, line = 268, spell = 11711, unsure = "secret amount" }, -- 65.575 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 269, line = 272, spell = 1316697, unsure = "2 file events fit" }, -- 66.457 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 274, line = 273, spell = 18879, unsure = "secret amount" }, -- 66.457 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 277, line = 279, spell = 18879, unsure = "secret amount" }, -- 66.457 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 280, line = false, unsure = "secret amount" }, -- 66.533 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.533 s
	{ hit = 282, line = 285, spell = 11711, unsure = "secret amount" }, -- 66.570 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 287, line = 290, spell = 1316697, unsure = "secret amount" }, -- 67.379 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 291, line = 294, spell = 11711, unsure = "secret amount" }, -- 67.573 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 295, line = 286, spell = false, unsure = "secret amount" }, -- 67.582 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.625 s
	{ hit = 298, line = 301, spell = 11665, unsure = "secret amount" }, -- 68.015 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 303, line = 302, spell = 18879, unsure = "secret amount" }, -- 68.015 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 306, line = 308, spell = 18879, unsure = "secret amount" }, -- 68.015 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 309, line = 312, spell = 1316697, unsure = "secret amount" }, -- 68.459 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 313, line = false, unsure = "secret amount" }, -- 68.467 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.452 s
	{ hit = 315, line = 318, spell = 11711, unsure = "secret amount" }, -- 68.575 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 320, line = 323, spell = 1316697, unsure = "secret amount" }, -- 69.415 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 325, line = 324, spell = 18879, unsure = "2 file events fit" }, -- 69.548 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 328, line = 330, spell = 18879, unsure = "secret amount" }, -- 69.548 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 331, line = 334, spell = 11711, unsure = "secret amount" }, -- 69.548 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 335, line = 319, spell = false, unsure = "secret amount" }, -- 69.556 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.622 s
	{ hit = 338, line = 341, spell = 1316697, unsure = "secret amount" }, -- 70.448 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 343, line = false, unsure = "secret amount" }, -- 70.483 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.460 s
	{ hit = 346, line = 345, spell = false, unsure = "secret amount" }, -- 71.332 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.267 s
	{ hit = 352, line = false, unsure = "secret amount" }, -- 72.481 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.466 s
	{ hit = 355, line = 354, spell = 18879, unsure = "secret amount" }, -- 72.541 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 358, line = 360, spell = 18879, unsure = "secret amount" }, -- 72.541 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 363, line = 361, spell = false, unsure = "secret amount" }, -- 73.573 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.631 s
	{ hit = 368, line = false, unsure = "secret amount" }, -- 74.490 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.458 s
	{ hit = 371, line = 370, spell = false, unsure = "secret amount" }, -- 75.194 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.254 s
	{ hit = 377, line = 376, spell = 18879, unsure = "secret amount" }, -- 75.446 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 380, line = 382, spell = 18879, unsure = "secret amount" }, -- 75.446 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 383, line = 386, spell = 11711, unsure = "secret amount" }, -- 75.817 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 387, line = false, unsure = "secret amount" }, -- 76.559 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.517 s
	{ hit = 393, line = 389, spell = false, unsure = "secret amount" }, -- 77.567 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.627 s
	{ hit = 396, line = 399, spell = 11711, unsure = "secret amount" }, -- 77.817 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 401, line = 400, spell = 7651, unsure = "secret amount" }, -- 77.929 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 404, line = 406, spell = 7651, unsure = "secret amount" }, -- 77.929 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 408, line = 411, spell = 11671, unsure = "secret amount" }, -- 78.312 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 415, line = false, unsure = "secret amount" }, -- 79.025 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.981 s
	{ hit = 418, line = 419, spell = 1261483, unsure = "secret amount" }, -- 80.310 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 422, line = 423, spell = 1261483, unsure = "secret amount" }, -- 82.315 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 431, line = 432, spell = 1261483, unsure = "secret amount" }, -- 84.315 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 433, line = 434, spell = 1261483, unsure = "secret amount" }, -- 86.323 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 437, line = 438, spell = 1261483, unsure = "secret amount" }, -- 88.306 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 442, line = 443, spell = 1260270, unsure = "secret amount" }, -- 90.100 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 444, line = 445, spell = 1260270, unsure = "secret amount" }, -- 91.415 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 446, line = 447, spell = 1260270, unsure = "secret amount" }, -- 92.526 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 448, line = 449, spell = 1260270, unsure = "secret amount" }, -- 93.740 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 452, line = 453, spell = 1260270, unsure = "secret amount" }, -- 94.940 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 466, line = false, unsure = "secret amount" }, -- 103.308 pet DODGE <secret> <- creature: swing SWING_MISSED +0.522 s
	{ hit = 470, line = 465, spell = false, unsure = "secret amount" }, -- 103.773 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.988 s
	{ hit = 476, line = false, unsure = "secret amount" }, -- 105.248 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.535 s
	{ hit = 478, line = 473, spell = false, unsure = "late by 1.40 s" }, -- 106.109 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +1.397 s
	{ hit = 485, line = 488, spell = 11711, unsure = "secret amount" }, -- 107.040 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 489, line = false, unsure = "secret amount" }, -- 107.202 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.465 s
	{ hit = 494, line = 484, spell = false, unsure = "late by 1.39 s" }, -- 108.123 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +1.386 s
	{ hit = 498, line = 501, spell = 11711, unsure = "secret amount" }, -- 109.048 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 502, line = false, unsure = "secret amount" }, -- 109.196 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.463 s
	{ hit = 504, line = 507, spell = 11671, unsure = "secret amount" }, -- 109.532 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 508, line = 497, spell = false, unsure = "late by 1.02 s" }, -- 109.756 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +1.024 s
	{ hit = 516, line = 515, spell = 11665, unsure = "secret amount" }, -- 109.939 nameplate1 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 520, line = 519, spell = false, unsure = "secret amount" }, -- 111.048 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.258 s
	{ hit = 523, line = 526, spell = 11711, unsure = "secret amount" }, -- 111.056 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 529, line = 532, spell = 11671, unsure = "secret amount" }, -- 112.540 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 534, line = false, unsure = "secret amount" }, -- 113.036 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.521 s
	{ hit = 536, line = 539, spell = 11665, unsure = "secret amount" }, -- 113.048 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 541, line = 540, spell = 18879, unsure = "2 file events fit" }, -- 113.048 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 544, line = 546, spell = 18879, unsure = "secret amount" }, -- 113.048 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 547, line = 550, spell = 11711, unsure = "secret amount" }, -- 113.048 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 551, line = 533, spell = false, unsure = "secret amount" }, -- 113.147 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.358 s
	{ hit = 557, line = 560, spell = 11671, unsure = "2 file events fit" }, -- 114.034 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 561, line = 564, spell = 11711, unsure = "secret amount" }, -- 114.034 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 565, line = 568, spell = 1316697, unsure = "secret amount" }, -- 114.215 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 570, line = 569, spell = 18879, unsure = "secret amount" }, -- 114.548 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 573, line = 575, spell = 18879, unsure = "secret amount" }, -- 114.548 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 578, line = 581, spell = 11711, unsure = "secret amount" }, -- 115.051 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 582, line = false, unsure = "secret amount" }, -- 115.440 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.991 s
	{ hit = 584, line = 576, spell = false, unsure = "secret amount" }, -- 115.440 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.641 s
	{ hit = 587, line = 590, spell = 11671, unsure = "secret amount" }, -- 115.582 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 592, line = 591, spell = 18879, unsure = "secret amount" }, -- 115.955 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 595, line = 598, spell = 11665, unsure = "secret amount" }, -- 115.955 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 599, line = 601, spell = 18879, unsure = "secret amount" }, -- 115.955 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 603, line = false, unsure = "secret amount" }, -- 116.990 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.541 s
	{ hit = 605, line = 608, spell = 11711, unsure = "secret amount" }, -- 117.040 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 609, line = 602, spell = false, unsure = "secret amount" }, -- 117.140 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.333 s
	{ hit = 616, line = 615, spell = 18879, unsure = "secret amount" }, -- 117.483 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 619, line = 621, spell = 18879, unsure = "secret amount" }, -- 117.483 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 622, line = 625, spell = 11711, unsure = "secret amount" }, -- 118.083 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 626, line = 629, spell = 1316697, unsure = "secret amount" }, -- 118.222 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 630, line = 633, spell = 11671, unsure = "secret amount" }, -- 118.538 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 635, line = false, unsure = "secret amount" }, -- 118.916 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.476 s
	{ hit = 637, line = 640, spell = 11665, unsure = "secret amount" }, -- 119.023 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 642, line = 641, spell = 18879, unsure = "2 file events fit" }, -- 119.023 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 645, line = 647, spell = 18879, unsure = "secret amount" }, -- 119.023 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 648, line = 651, spell = 11711, unsure = "secret amount" }, -- 119.023 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 652, line = 634, spell = false, unsure = "secret amount" }, -- 119.041 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.326 s
	{ hit = 655, line = 658, spell = 1316697, unsure = "secret amount" }, -- 119.260 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 659, line = 662, spell = 11671, unsure = "2 file events fit" }, -- 120.010 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 663, line = 666, spell = 11711, unsure = "secret amount" }, -- 120.010 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 667, line = 670, spell = 1316697, unsure = "secret amount" }, -- 120.256 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 671, line = false, unsure = "secret amount" }, -- 120.448 player WOUND <secret> <- creature: Strike SPELL_DAMAGE -0.001 s
	{ hit = 674, line = false, unsure = "no file event fits" }, -- 120.448 player WOUND <secret> <- no file event 
	{ hit = 677, line = 680, spell = 11711, unsure = "secret amount" }, -- 121.051 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 681, line = 676, spell = false, unsure = "secret amount" }, -- 121.449 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.623 s
	{ hit = 684, line = 687, spell = 11671, unsure = "secret amount" }, -- 121.546 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 691, line = 694, spell = 11665, unsure = "secret amount" }, -- 121.947 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 696, line = 695, spell = 18879, unsure = "secret amount" }, -- 121.947 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 699, line = 701, spell = 18879, unsure = "secret amount" }, -- 121.947 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 702, line = 705, spell = 11711, unsure = "secret amount" }, -- 122.056 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 707, line = 710, spell = 1316697, unsure = "secret amount" }, -- 122.939 nameplate1 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 711, line = false, unsure = "secret amount" }, -- 122.976 player MISS <secret> <- creature: swing SWING_MISSED +0.512 s
	{ hit = 713, line = 716, spell = 11671, unsure = "2 file events fit" }, -- 123.039 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 717, line = 720, spell = 11711, unsure = "secret amount" }, -- 123.039 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 721, line = 706, spell = false, unsure = "secret amount" }, -- 123.082 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.257 s
	{ hit = 726, line = 729, spell = 11671, unsure = "secret amount" }, -- 124.457 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 732, line = false, unsure = "secret amount" }, -- 124.977 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.520 s
	{ hit = 735, line = 734, spell = 18879, unsure = "2 file events fit" }, -- 125.007 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 738, line = 741, spell = 11665, unsure = "secret amount" }, -- 125.007 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 742, line = 744, spell = 18879, unsure = "secret amount" }, -- 125.007 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 745, line = 748, spell = 11711, unsure = "secret amount" }, -- 125.007 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 749, line = 731, spell = false, unsure = "secret amount" }, -- 125.159 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.327 s
	{ hit = 755, line = false, unsure = "secret amount" }, -- 126.923 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.463 s
	{ hit = 757, line = 760, spell = 11711, unsure = "secret amount" }, -- 127.040 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 761, line = 754, spell = false, unsure = "secret amount" }, -- 127.409 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.619 s
	{ hit = 767, line = 766, spell = 18879, unsure = "secret amount" }, -- 127.946 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 770, line = 772, spell = 18879, unsure = "secret amount" }, -- 127.946 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 774, line = false, unsure = "secret amount" }, -- 128.909 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.460 s
	{ hit = 776, line = 779, spell = 11711, unsure = "secret amount" }, -- 129.048 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 782, line = 785, spell = 11671, unsure = "secret amount" }, -- 129.048 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 786, line = 773, spell = false, unsure = "secret amount" }, -- 129.173 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.329 s
	{ hit = 794, line = false, unsure = "secret amount" }, -- 130.907 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.531 s
	{ hit = 797, line = 796, spell = 18879, unsure = "secret amount" }, -- 130.946 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 800, line = 802, spell = 18879, unsure = "secret amount" }, -- 130.946 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 803, line = 793, spell = false, unsure = "secret amount" }, -- 131.075 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.260 s
	{ hit = 807, line = 806, spell = 7651, unsure = "secret amount" }, -- 131.617 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 810, line = 812, spell = 7651, unsure = "secret amount" }, -- 131.617 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 813, line = 816, spell = 11671, unsure = "secret amount" }, -- 132.115 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 818, line = 817, spell = 7651, unsure = "secret amount" }, -- 132.592 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 821, line = 823, spell = 7651, unsure = "secret amount" }, -- 132.592 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 828, line = 824, spell = false, unsure = "secret amount" }, -- 133.058 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.265 s
	{ hit = 831, line = false, unsure = "secret amount" }, -- 133.455 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.990 s
	{ hit = 835, line = 836, spell = 1261483, unsure = "secret amount" }, -- 134.856 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 839, line = 840, spell = 1261483, unsure = "secret amount" }, -- 136.815 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 841, line = 842, spell = 1261483, unsure = "secret amount" }, -- 138.792 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 848, line = 849, spell = 1261483, unsure = "secret amount" }, -- 140.810 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 850, line = 851, spell = 1261483, unsure = "secret amount" }, -- 142.874 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 866, line = 863, spell = false, unsure = "secret amount" }, -- 171.169 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.269 s
	{ hit = 870, line = false, unsure = "secret amount" }, -- 171.368 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.467 s
	{ hit = 875, line = 878, spell = 11711, unsure = "secret amount" }, -- 173.007 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 879, line = 874, spell = false, unsure = "secret amount" }, -- 173.081 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.266 s
	{ hit = 884, line = false, unsure = "secret amount" }, -- 173.283 pet MISS <secret> <- creature: swing SWING_MISSED +0.467 s
	{ hit = 890, line = 893, spell = 11711, unsure = "secret amount" }, -- 175.015 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 894, line = 889, spell = false, unsure = "secret amount" }, -- 175.123 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.283 s
	{ hit = 897, line = false, unsure = "secret amount" }, -- 175.300 pet MISS <secret> <- creature: swing SWING_MISSED +0.460 s
	{ hit = 899, line = 902, spell = 11671, unsure = "secret amount" }, -- 175.483 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 907, line = 906, spell = 18879, unsure = "secret amount" }, -- 176.923 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 910, line = 911, spell = 18879, unsure = "secret amount" }, -- 176.923 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 912, line = 915, spell = 11711, unsure = "secret amount" }, -- 176.923 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 916, line = false, unsure = "secret amount" }, -- 177.459 pet DODGE <secret> <- creature: swing SWING_MISSED +0.535 s
	{ hit = 921, line = 920, spell = 11665, unsure = "secret amount" }, -- 177.481 nameplate3 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.002 s
	{ hit = 924, line = 905, spell = false, unsure = "secret amount" }, -- 177.916 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.992 s
	{ hit = 927, line = 930, spell = 11671, unsure = "secret amount" }, -- 178.469 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 931, line = 934, spell = 11711, unsure = "secret amount" }, -- 179.015 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 939, line = 938, spell = 18879, unsure = "3 file events fit" }, -- 179.975 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 942, line = 944, spell = 18879, unsure = "secret amount" }, -- 179.975 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 945, line = 948, spell = 11671, unsure = "2 file events fit" }, -- 179.975 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 949, line = 952, spell = 11711, unsure = "secret amount" }, -- 179.975 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 953, line = 956, spell = 1316697, unsure = "secret amount" }, -- 180.298 nameplate3 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 957, line = false, unsure = "secret amount" }, -- 180.316 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.530 s
	{ hit = 959, line = 962, spell = 11665, unsure = "secret amount" }, -- 180.481 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 963, line = 966, spell = 11711, unsure = "secret amount" }, -- 181.006 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 967, line = 970, spell = 1316697, unsure = "secret amount" }, -- 181.298 nameplate3 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 972, line = 971, spell = 18879, unsure = "2 file events fit" }, -- 181.481 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 975, line = 977, spell = 18879, unsure = "secret amount" }, -- 181.481 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 978, line = 981, spell = 11671, unsure = "secret amount" }, -- 181.481 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 983, line = 986, spell = 11711, unsure = "secret amount" }, -- 182.012 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 987, line = false, unsure = "secret amount" }, -- 182.175 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.462 s
	{ hit = 989, line = 992, spell = 1316697, unsure = "secret amount" }, -- 182.298 nameplate3 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 993, line = 982, spell = false, unsure = "secret amount" }, -- 182.342 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.630 s
	{ hit = 997, line = 996, spell = 18879, unsure = "2 file events fit" }, -- 182.920 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1000, line = 1002, spell = 18879, unsure = "secret amount" }, -- 182.920 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1003, line = 1006, spell = 11671, unsure = "secret amount" }, -- 182.920 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1007, line = 1010, spell = 11711, unsure = "secret amount" }, -- 182.920 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1011, line = 1014, spell = 1316697, unsure = "secret amount" }, -- 183.366 nameplate3 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1015, line = 1018, spell = 11665, unsure = "secret amount" }, -- 183.473 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1020, line = false, unsure = "secret amount" }, -- 183.715 player WOUND <secret> <- creature: Strike SPELL_DAMAGE -0.001 s
	{ hit = 1023, line = false, unsure = "no file event fits" }, -- 183.715 player WOUND <secret> <- no file event 
	{ hit = 1025, line = 1019, spell = false, unsure = "secret amount" }, -- 183.984 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.269 s
	{ hit = 1028, line = 1031, spell = 11671, unsure = "secret amount" }, -- 184.485 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1032, line = 1035, spell = 11711, unsure = "secret amount" }, -- 184.958 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1041, line = 1040, spell = 18879, unsure = "3 file events fit" }, -- 185.981 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1044, line = 1046, spell = 18879, unsure = "secret amount" }, -- 185.981 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1047, line = 1050, spell = 11671, unsure = "2 file events fit" }, -- 185.981 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1051, line = 1054, spell = 11711, unsure = "secret amount" }, -- 185.981 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1055, line = 1039, spell = false, unsure = "secret amount" }, -- 186.048 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.323 s
	{ hit = 1058, line = 1061, spell = 1316697, unsure = "secret amount" }, -- 186.156 nameplate3 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1062, line = false, unsure = "secret amount" }, -- 186.248 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.522 s
	{ hit = 1064, line = 1067, spell = 11665, unsure = "secret amount" }, -- 186.481 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1068, line = 1071, spell = 11711, unsure = "secret amount" }, -- 187.006 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1072, line = 1075, spell = 1316697, unsure = "secret amount" }, -- 187.233 nameplate3 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1077, line = 1076, spell = 18879, unsure = "2 file events fit" }, -- 187.490 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1080, line = 1082, spell = 18879, unsure = "secret amount" }, -- 187.490 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1083, line = 1086, spell = 11671, unsure = "secret amount" }, -- 187.490 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1088, line = 1091, spell = 11711, unsure = "secret amount" }, -- 188.018 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1092, line = 1095, spell = 1316697, unsure = "secret amount" }, -- 188.179 nameplate3 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1096, line = 1099, spell = 1316697, unsure = "secret amount" }, -- 188.179 nameplate3 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1101, line = false, unsure = "secret amount" }, -- 188.256 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.532 s
	{ hit = 1103, line = 1087, spell = false, unsure = "secret amount" }, -- 188.358 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.634 s
	{ hit = 1107, line = 1106, spell = 18879, unsure = "2 file events fit" }, -- 188.973 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1110, line = 1112, spell = 18879, unsure = "secret amount" }, -- 188.973 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1113, line = 1116, spell = 11711, unsure = "secret amount" }, -- 188.973 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1120, line = 1123, spell = 11665, unsure = "secret amount" }, -- 189.398 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1126, line = false, unsure = "secret amount" }, -- 190.206 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.456 s
	{ hit = 1128, line = 1124, spell = false, unsure = "secret amount" }, -- 190.366 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.617 s
	{ hit = 1131, line = 1134, spell = 11671, unsure = "secret amount" }, -- 190.484 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1135, line = 1138, spell = 11711, unsure = "secret amount" }, -- 191.140 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1141, line = 1140, spell = 18879, unsure = "secret amount" }, -- 191.973 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1144, line = 1146, spell = 18879, unsure = "secret amount" }, -- 191.973 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1147, line = 1139, spell = false, unsure = "secret amount" }, -- 192.025 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.260 s
	{ hit = 1153, line = false, unsure = "secret amount" }, -- 192.217 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.451 s
	{ hit = 1155, line = 1158, spell = 11665, unsure = "secret amount" }, -- 192.483 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1159, line = 1162, spell = 11711, unsure = "2 file events fit" }, -- 193.095 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1163, line = 1166, spell = 1316697, unsure = "secret amount" }, -- 193.095 nameplate3 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1168, line = 1167, spell = 18879, unsure = "secret amount" }, -- 193.425 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1171, line = 1173, spell = 18879, unsure = "secret amount" }, -- 193.425 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1175, line = 1178, spell = 11711, unsure = "2 file events fit" }, -- 194.003 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1180, line = 1183, spell = 1316697, unsure = "secret amount" }, -- 194.003 nameplate3 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1186, line = 1174, spell = false, unsure = "secret amount" }, -- 194.373 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.624 s
	{ hit = 1190, line = false, unsure = "secret amount" }, -- 194.740 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.991 s
	{ hit = 1195, line = 1196, spell = 1261483, unsure = "secret amount" }, -- 196.092 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1203, line = 1204, spell = 1261483, unsure = "secret amount" }, -- 198.075 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1205, line = 1206, spell = 1261483, unsure = "secret amount" }, -- 200.083 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1207, line = 1208, spell = 1261483, unsure = "secret amount" }, -- 202.090 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1210, line = 1211, spell = 1261483, unsure = "secret amount" }, -- 204.084 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1216, line = false, unsure = "secret amount" }, -- 210.109 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.460 s
	{ hit = 1221, line = false, unsure = "no file event fits" }, -- 211.406 nameplate2 WOUND <secret> <- no file event 
	{ hit = 1227, line = false, unsure = "secret amount" }, -- 212.123 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.464 s
	{ hit = 1229, line = 1224, spell = false, unsure = "late by 1.08 s" }, -- 212.740 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +1.083 s
	{ hit = 1233, line = 1232, spell = 18879, unsure = "secret amount" }, -- 213.181 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1236, line = 1237, spell = 18879, unsure = "secret amount" }, -- 213.181 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1241, line = 1244, spell = 11711, unsure = "secret amount" }, -- 213.873 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1245, line = 1240, spell = false, unsure = "secret amount" }, -- 214.140 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.266 s
	{ hit = 1248, line = false, unsure = "secret amount" }, -- 214.340 pet MISS <secret> <- creature: swing SWING_MISSED +0.465 s
	{ hit = 1253, line = 1256, spell = 11711, unsure = "secret amount" }, -- 215.723 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1258, line = false, unsure = "secret amount" }, -- 215.723 pet WOUND <secret> <- creature: Strike SPELL_DAMAGE -0.002 s
	{ hit = 1260, line = false, unsure = "no file event fits" }, -- 215.723 pet WOUND <secret> <- no file event 
	{ hit = 1263, line = 1262, spell = 7651, unsure = "2 file events fit" }, -- 216.141 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1266, line = 1267, spell = 7651, unsure = "2 file events fit" }, -- 216.141 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 1269, line = 1268, spell = 18879, unsure = "secret amount" }, -- 216.141 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1272, line = 1273, spell = 18879, unsure = "secret amount" }, -- 216.141 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1274, line = 1277, spell = 11671, unsure = "secret amount" }, -- 216.246 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1278, line = 1257, spell = false, unsure = "late by 1.39 s" }, -- 217.117 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +1.393 s
	{ hit = 1282, line = 1281, spell = 7651, unsure = "secret amount" }, -- 217.150 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1285, line = 1287, spell = 7651, unsure = "secret amount" }, -- 217.150 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 1288, line = 1291, spell = 11711, unsure = "secret amount" }, -- 217.673 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1294, line = 1293, spell = 7651, unsure = "secret amount" }, -- 218.165 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1297, line = 1299, spell = 7651, unsure = "secret amount" }, -- 218.165 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 1300, line = false, unsure = "secret amount" }, -- 218.623 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.456 s
	{ hit = 1302, line = 1292, spell = false, unsure = "secret amount" }, -- 218.673 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.998 s
	{ hit = 1306, line = 1305, spell = 7651, unsure = "secret amount" }, -- 218.900 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1309, line = 1311, spell = 7651, unsure = "secret amount" }, -- 218.900 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 1314, line = 1313, spell = 18879, unsure = "2 file events fit" }, -- 219.175 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1317, line = 1319, spell = 18879, unsure = "secret amount" }, -- 219.175 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1320, line = 1323, spell = 11671, unsure = "secret amount" }, -- 219.175 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1327, line = 1330, spell = 11711, unsure = "secret amount" }, -- 219.665 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1333, line = 1332, spell = 7651, unsure = "secret amount" }, -- 220.181 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1336, line = 1338, spell = 7651, unsure = "secret amount" }, -- 220.181 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 1339, line = 1331, spell = false, unsure = "secret amount" }, -- 220.287 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.621 s
	{ hit = 1342, line = false, unsure = "secret amount" }, -- 220.699 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.517 s
	{ hit = 1345, line = 1344, spell = 7651, unsure = "secret amount" }, -- 221.290 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1348, line = 1350, spell = 7651, unsure = "secret amount" }, -- 221.290 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 1351, line = 1354, spell = 11711, unsure = "secret amount" }, -- 221.662 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1357, line = 1355, spell = false, unsure = "secret amount" }, -- 222.000 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.336 s
	{ hit = 1361, line = 1360, spell = 18879, unsure = "2 file events fit" }, -- 222.183 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1364, line = 1366, spell = 18879, unsure = "secret amount" }, -- 222.183 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1367, line = 1370, spell = 11671, unsure = "secret amount" }, -- 222.183 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1371, line = false, unsure = "secret amount" }, -- 222.656 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.472 s
	{ hit = 1373, line = 1376, spell = 11711, unsure = "secret amount" }, -- 223.662 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1378, line = 1377, spell = false, unsure = "secret amount" }, -- 223.929 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.265 s
	{ hit = 1383, line = false, unsure = "secret amount" }, -- 224.667 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.533 s
	{ hit = 1386, line = 1385, spell = 18879, unsure = "2 file events fit" }, -- 225.198 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1389, line = 1391, spell = 18879, unsure = "secret amount" }, -- 225.198 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1392, line = 1395, spell = 11671, unsure = "secret amount" }, -- 225.198 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1396, line = 1399, spell = 11711, unsure = "secret amount" }, -- 225.681 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1401, line = 1400, spell = false, unsure = "secret amount" }, -- 226.008 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.325 s
	{ hit = 1406, line = 1405, spell = 11665, unsure = "secret amount" }, -- 226.173 nameplate2 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.002 s
	{ hit = 1409, line = false, unsure = "secret amount" }, -- 226.634 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.459 s
	{ hit = 1414, line = 1417, spell = 11711, unsure = "on time, of 2 file events" }, -- 227.665 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1419, line = 1422, spell = 1316697, unsure = "secret amount" }, -- 227.763 nameplate2 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1424, line = 1423, spell = 18879, unsure = "2 file events fit" }, -- 228.187 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1427, line = 1429, spell = 18879, unsure = "secret amount" }, -- 228.187 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1430, line = 1433, spell = 11671, unsure = "secret amount" }, -- 228.187 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1434, line = 1418, spell = false, unsure = "secret amount" }, -- 228.290 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.624 s
	{ hit = 1437, line = false, unsure = "secret amount" }, -- 228.656 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.468 s
	{ hit = 1439, line = 1442, spell = 11711, unsure = "2 file events fit" }, -- 228.676 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1443, line = 1446, spell = 1316697, unsure = "secret amount" }, -- 228.676 nameplate2 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1447, line = 1450, spell = 11665, unsure = "secret amount" }, -- 229.090 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1451, line = 1454, spell = 11711, unsure = "3 file events fit" }, -- 229.658 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1456, line = 1455, spell = 18879, unsure = "2 file events fit" }, -- 229.658 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1459, line = 1461, spell = 18879, unsure = "secret amount" }, -- 229.658 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1463, line = 1466, spell = 11671, unsure = "secret amount" }, -- 229.658 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1467, line = 1470, spell = 1316697, unsure = "secret amount" }, -- 229.778 nameplate2 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1471, line = 1462, spell = false, unsure = "secret amount" }, -- 229.917 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.256 s
	{ hit = 1474, line = false, unsure = "secret amount" }, -- 230.199 player WOUND <secret> <- creature: Strike SPELL_DAMAGE -0.001 s
	{ hit = 1476, line = false, unsure = "no file event fits" }, -- 230.199 player WOUND <secret> <- no file event 
	{ hit = 1478, line = 1481, spell = 11711, unsure = "2 file events fit" }, -- 230.673 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1482, line = 1485, spell = 1316697, unsure = "secret amount" }, -- 230.673 nameplate2 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1487, line = 1486, spell = 18879, unsure = "secret amount" }, -- 231.125 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1490, line = 1492, spell = 18879, unsure = "secret amount" }, -- 231.125 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1493, line = 1496, spell = 11671, unsure = "secret amount" }, -- 231.250 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1497, line = 1500, spell = 11711, unsure = "on time, of 2 file events" }, -- 231.667 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1502, line = 1505, spell = 1316697, unsure = "secret amount" }, -- 231.767 nameplate2 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1506, line = 1509, spell = 11665, unsure = "secret amount" }, -- 232.175 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1510, line = 1501, spell = false, unsure = "secret amount" }, -- 232.302 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.634 s
	{ hit = 1513, line = 1516, spell = 11711, unsure = "2 file events fit" }, -- 232.673 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1518, line = 1517, spell = 18879, unsure = "on time, of 2 file events" }, -- 232.673 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1521, line = 1523, spell = 18879, unsure = "secret amount" }, -- 232.673 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1524, line = false, unsure = "secret amount" }, -- 232.692 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.515 s
	{ hit = 1526, line = 1529, spell = 1316697, unsure = "secret amount" }, -- 232.765 nameplate2 WOUND <secret> <- you: Wrack SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1534, line = 1537, spell = 11711, unsure = "secret amount" }, -- 233.674 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1539, line = 1538, spell = false, unsure = "secret amount" }, -- 233.990 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.314 s
	{ hit = 1543, line = 1542, spell = 18879, unsure = "secret amount" }, -- 234.181 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1546, line = 1548, spell = 18879, unsure = "secret amount" }, -- 234.181 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1549, line = false, unsure = "secret amount" }, -- 234.708 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.524 s
	{ hit = 1551, line = 1554, spell = 11665, unsure = "secret amount" }, -- 235.176 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1555, line = 1558, spell = 11711, unsure = "secret amount" }, -- 235.675 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1560, line = 1559, spell = false, unsure = "secret amount" }, -- 236.306 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.629 s
	{ hit = 1564, line = 1567, spell = 8289, unsure = "secret amount" }, -- 236.398 nameplate2 WOUND <secret> <- you: Drain Soul SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1572, line = false, unsure = "secret amount" }, -- 237.208 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.992 s
	{ hit = 1575, line = 1576, spell = 1261483, unsure = "secret amount" }, -- 238.617 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1577, line = 1578, spell = 1261483, unsure = "secret amount" }, -- 240.615 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1579, line = 1580, spell = 1261483, unsure = "secret amount" }, -- 242.615 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1581, line = 1582, spell = 1261483, unsure = "secret amount" }, -- 244.523 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
}

-- Log Lines with no Hit:
-- line 33 at 48.967 <- pet: swing SWING_DAMAGE
-- line 407 at 78.312 <- you:  PARTY_KILL
-- line 1179 at 194.003 <- you:  PARTY_KILL
-- line 1215 at 209.648 <- pet: swing SWING_DAMAGE
-- line 1563 at 236.398 <- you:  PARTY_KILL
