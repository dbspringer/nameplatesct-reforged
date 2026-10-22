-- Labels for warlock-open-world: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 20, line = false, unsure = "two creatures fit nameplate1" }, -- 39.835 nameplate1 WOUND 85 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 22, line = false, unsure = "two creatures fit nameplate1" }, -- 39.835 nameplate1 WOUND 16 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 24, line = false, unsure = "two creatures fit nameplate1" }, -- 40.335 nameplate1 WOUND 32 <- other: swing SWING_DAMAGE +0.501 s
	{ hit = 30, line = false, unsure = "two creatures fit nameplate1" }, -- 41.268 nameplate1 PARRY 0 <- other: swing SWING_MISSED +1.434 s
	{ hit = 35, line = false, unsure = "two creatures fit nameplate1" }, -- 41.985 nameplate1 WOUND 43 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 38, line = false, unsure = "two creatures fit nameplate1" }, -- 42.301 nameplate1 PARRY 0 <- other: swing SWING_MISSED +0.967 s
	{ hit = 43, line = false, unsure = "two creatures fit nameplate1" }, -- 42.868 nameplate1 WOUND 16 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 48, line = false, unsure = "two creatures fit nameplate1" }, -- 44.618 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.467 s
	{ hit = 53, line = false, unsure = "two creatures fit nameplate1" }, -- 45.251 nameplate1 WOUND 129 <- other: Hemorrhage SPELL_DAMAGE -0.003 s
	{ hit = 58, line = false, unsure = "two creatures fit nameplate1" }, -- 45.635 nameplate1 WOUND 45 <- other: swing SWING_DAMAGE +1.484 s
	{ hit = 61, line = false, unsure = "two creatures fit nameplate1" }, -- 46.018 nameplate1 WOUND 16 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 64, line = false, unsure = "two creatures fit nameplate1" }, -- 46.518 nameplate1 WOUND 284 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 70, line = false, unsure = "two creatures fit nameplate1" }, -- 47.168 nameplate1 WOUND 39 <- other: swing SWING_DAMAGE +0.501 s
	{ hit = 73, line = false, unsure = "two creatures fit nameplate1" }, -- 47.318 nameplate1 WOUND 134 <- other: Hemorrhage SPELL_DAMAGE +0.001 s
	{ hit = 78, line = false, unsure = "two creatures fit nameplate1" }, -- 47.785 nameplate1 WOUND 128 <- other: swing SWING_DAMAGE +1.118 s
	{ hit = 81, line = false, unsure = "two creatures fit nameplate1" }, -- 48.018 nameplate1 WOUND 16 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 86, line = false, unsure = "two creatures fit nameplate1" }, -- 48.701 nameplate1 MISS 0 <- you: Corruption SPELL_MISSED +0.000 s
	{ hit = 93, line = false, unsure = "two creatures fit nameplate1" }, -- 49.685 nameplate1 DODGE 0 <- other: swing SWING_MISSED +0.984 s
	{ hit = 103, line = false, unsure = "two creatures fit nameplate1" }, -- 52.352 nameplate1 WOUND 117 <- other: Hemorrhage SPELL_DAMAGE +0.001 s
	{ hit = 106, line = false, unsure = "two creatures fit nameplate1" }, -- 52.352 nameplate1 WOUND 37 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 114, line = 113, spell = 1014, unsure = "two creatures fit nameplate1" }, -- 54.301 nameplate1 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 120, line = false, unsure = "two creatures fit nameplate1" }, -- 56.835 nameplate1 WOUND 24 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 123, line = false, unsure = "two creatures fit nameplate1" }, -- 57.335 nameplate1 WOUND 36 <- other: swing SWING_DAMAGE +0.501 s
	{ hit = 126, line = false, unsure = "two creatures fit nameplate1" }, -- 57.402 nameplate1 WOUND 115 <- other: Hemorrhage SPELL_DAMAGE -0.001 s
	{ hit = 131, line = false, unsure = "2 file events fit" }, -- 57.402 nameplate1 MISS 0 <- other: swing SWING_MISSED -0.002 s
	{ hit = 134, line = false, unsure = "two creatures fit nameplate1" }, -- 57.402 nameplate1 MISS 0 <- other: swing SWING_MISSED -0.002 s
	{ hit = 144, line = false, unsure = "two creatures fit nameplate1" }, -- 58.285 nameplate1 WOUND 265 <- other: swing SWING_DAMAGE +1.451 s
	{ hit = 154, line = false, unsure = "two creatures fit nameplate1" }, -- 59.340 nameplate1 WOUND 112 <- other: Hemorrhage SPELL_DAMAGE -0.001 s
	{ hit = 159, line = 158, spell = 7809, unsure = "two creatures fit nameplate1" }, -- 59.340 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED -0.002 s
	{ hit = 162, line = false, unsure = "two creatures fit nameplate1" }, -- 59.340 nameplate1 WOUND 25 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 166, line = false, unsure = "no file event fits" }, -- 59.468 nameplate1 MISS 0 <- no file event 
	{ hit = 169, line = 165, spell = false, unsure = "two creatures fit nameplate1" }, -- 59.852 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.510 s
	{ hit = 177, line = 176, spell = 1014, unsure = "two creatures fit nameplate1" }, -- 60.535 nameplate1 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 185, line = false, unsure = "no file event fits" }, -- 60.968 nameplate1 WOUND 47 <- no file event 
	{ hit = 188, line = false, unsure = "two creatures fit nameplate1" }, -- 61.152 nameplate1 WOUND 127 <- other: Hemorrhage SPELL_DAMAGE +0.001 s
	{ hit = 192, line = false, unsure = "two creatures fit nameplate1" }, -- 61.685 nameplate1 WOUND 25 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 200, line = 195, spell = false, unsure = "two creatures fit nameplate1" }, -- 62.202 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 210, line = 209, spell = 6222, unsure = "two creatures fit nameplate1" }, -- 62.335 nameplate1 MISS 0 <- you: Corruption SPELL_MISSED +0.000 s
	{ hit = 220, line = 219, spell = false, unsure = "two creatures fit nameplate1" }, -- 63.902 nameplate1 MISS 0 <- you: swing SWING_MISSED +0.368 s
	{ hit = 225, line = false, unsure = "two creatures fit nameplate1" }, -- 64.435 nameplate1 WOUND 41 <- creature: swing SWING_DAMAGE +0.350 s
	{ hit = 228, line = false, unsure = "two creatures fit nameplate1" }, -- 64.752 nameplate1 DODGE 0 <- other: Hemorrhage SPELL_MISSED +0.001 s
	{ hit = 230, line = false, unsure = "no file event fits" }, -- 64.835 nameplate1 WOUND 0 <- no file event 
	{ hit = 234, line = false, unsure = "two creatures fit nameplate1" }, -- 65.302 nameplate1 WOUND 84 <- other: swing SWING_DAMAGE +0.985 s
	{ hit = 239, line = 238, spell = 7809, unsure = "two creatures fit nameplate1" }, -- 65.335 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 243, line = false, unsure = "two creatures fit nameplate1" }, -- 65.752 nameplate1 WOUND 270 <- other: swing SWING_DAMAGE +1.435 s
	{ hit = 245, line = 242, spell = false, unsure = "two creatures fit nameplate1" }, -- 65.935 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 250, line = 249, spell = 6222, unsure = "two creatures fit nameplate1" }, -- 66.035 nameplate1 MISS 0 <- you: Corruption SPELL_MISSED +0.000 s
	{ hit = 252, line = false, unsure = "two creatures fit nameplate1" }, -- 66.035 nameplate1 WOUND 235 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 255, line = false, unsure = "two creatures fit nameplate1" }, -- 66.785 nameplate1 WOUND 93 <- other: swing SWING_DAMAGE +0.600 s
	{ hit = 257, line = false, unsure = "two creatures fit nameplate1" }, -- 66.935 nameplate1 WOUND 8 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 260, line = false, unsure = "two creatures fit nameplate1" }, -- 67.435 nameplate1 WOUND 32 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 262, line = false, unsure = "two creatures fit nameplate1" }, -- 67.502 nameplate1 WOUND 115 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 266, line = 259, spell = false, unsure = "two creatures fit nameplate1" }, -- 67.502 nameplate1 WOUND 2 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 268, line = 265, spell = false, unsure = "two creatures fit nameplate1" }, -- 67.868 nameplate1 WOUND 3 <- you: swing SWING_DAMAGE +0.366 s
	{ hit = 272, line = false, unsure = "two creatures fit nameplate1" }, -- 68.085 nameplate1 WOUND 116 <- other: swing SWING_DAMAGE +1.150 s
	{ hit = 274, line = false, unsure = "two creatures fit nameplate1" }, -- 69.368 nameplate1 WOUND 16 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 279, line = false, unsure = "no file event fits" }, -- 69.585 nameplate1 DODGE 0 <- no file event 
	{ hit = 281, line = 276, spell = false, unsure = "2 file events fit" }, -- 69.735 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.366 s
	{ hit = 283, line = false, unsure = "two creatures fit nameplate1" }, -- 69.735 nameplate1 WOUND 34 <- creature: swing SWING_DAMAGE +0.366 s
	{ hit = 285, line = 278, spell = false, unsure = "two creatures fit nameplate1" }, -- 69.902 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.533 s
	{ hit = 290, line = 289, spell = 1014, unsure = "two creatures fit nameplate1" }, -- 69.918 nameplate1 MISS 0 <- you: Bane of Agony SPELL_MISSED -0.001 s
	{ hit = 292, line = false, unsure = "two creatures fit nameplate1" }, -- 69.918 nameplate1 DODGE 0 <- other: Rupture SPELL_MISSED -0.001 s
	{ hit = 296, line = false, unsure = "two creatures fit nameplate1" }, -- 70.568 nameplate1 WOUND 81 <- other: swing SWING_DAMAGE +1.200 s
	{ hit = 300, line = 299, spell = 7809, unsure = "two creatures fit nameplate1" }, -- 70.585 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED -0.001 s
	{ hit = 302, line = false, unsure = "no file event fits" }, -- 71.035 nameplate1 WOUND 141 <- no file event 
	{ hit = 304, line = false, unsure = "two creatures fit nameplate1" }, -- 71.185 nameplate1 MISS 0 <- other: Deadly Poison SPELL_MISSED +0.000 s
	{ hit = 309, line = 307, spell = false, unsure = "two creatures fit nameplate1" }, -- 71.552 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 315, line = false, unsure = "two creatures fit nameplate1" }, -- 72.052 nameplate1 WOUND 82 <- other: swing SWING_DAMAGE +1.466 s
	{ hit = 317, line = false, unsure = "two creatures fit nameplate1" }, -- 72.052 nameplate1 WOUND 94 <- other: swing SWING_DAMAGE +0.301 s
	{ hit = 319, line = false, unsure = "two creatures fit nameplate1" }, -- 72.102 nameplate1 WOUND 30 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 322, line = 314, spell = false, unsure = "two creatures fit nameplate1" }, -- 72.285 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 326, line = false, unsure = "two creatures fit nameplate1" }, -- 72.652 nameplate1 WOUND 36 <- other: swing SWING_DAMAGE +0.500 s
	{ hit = 328, line = false, unsure = "two creatures fit nameplate1" }, -- 72.735 nameplate1 WOUND 16 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 335, line = 331, spell = false, unsure = "two creatures fit nameplate1" }, -- 73.102 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 337, line = false, unsure = "two creatures fit nameplate1" }, -- 73.118 nameplate1 PARRY 0 <- other: Hemorrhage SPELL_MISSED -0.001 s
	{ hit = 341, line = false, unsure = "two creatures fit nameplate1" }, -- 74.135 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.500 s
	{ hit = 343, line = false, unsure = "two creatures fit nameplate1" }, -- 74.135 nameplate1 WOUND 94 <- other: swing SWING_DAMAGE +0.130 s
	{ hit = 346, line = false, unsure = "two creatures fit nameplate1" }, -- 74.351 nameplate1 WOUND 84 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 349, line = false, unsure = "two creatures fit nameplate1" }, -- 74.502 nameplate1 WOUND 26 <- creature: swing SWING_DAMAGE +0.497 s
	{ hit = 351, line = 340, spell = false, unsure = "two creatures fit nameplate1" }, -- 74.535 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.530 s
	{ hit = 355, line = false, unsure = "no file event fits" }, -- 74.718 nameplate1 WOUND 0 <- no file event 
	{ hit = 357, line = false, unsure = "two creatures fit nameplate1" }, -- 74.935 nameplate1 WOUND 89 <- other: Hemorrhage SPELL_DAMAGE -0.001 s
	{ hit = 359, line = false, unsure = "two creatures fit nameplate1" }, -- 75.368 nameplate1 WOUND 33 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 361, line = false, unsure = "two creatures fit nameplate1" }, -- 75.568 nameplate1 WOUND 34 <- other: swing SWING_DAMAGE +0.500 s
	{ hit = 365, line = 364, spell = 7809, unsure = "two creatures fit nameplate1" }, -- 75.718 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED -0.002 s
	{ hit = 371, line = 375, spell = false, unsure = "two creatures fit nameplate1" }, -- 76.135 nameplate1 MISS 0 <- pet: swing SWING_MISSED -0.001 s
	{ hit = 373, line = false, unsure = "two creatures fit nameplate1" }, -- 76.135 nameplate1 WOUND 221 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 376, line = false, unsure = "two creatures fit nameplate1" }, -- 76.552 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 378, line = false, unsure = "two creatures fit nameplate1" }, -- 76.585 nameplate1 WOUND 96 <- other: swing SWING_DAMAGE +0.449 s
	{ hit = 380, line = false, unsure = "two creatures fit nameplate1" }, -- 76.635 nameplate1 WOUND 25 <- creature: swing SWING_DAMAGE +0.499 s
	{ hit = 382, line = 370, spell = 1014, unsure = "two creatures fit nameplate1" }, -- 76.652 nameplate1 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.517 s
	{ hit = 386, line = false, unsure = "two creatures fit nameplate1" }, -- 77.118 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.267 s
	{ hit = 390, line = 394, spell = 6222, unsure = "2 file events fit" }, -- 77.835 nameplate1 MISS 0 <- you: Corruption SPELL_MISSED -0.083 s
	{ hit = 395, line = false, unsure = "two creatures fit nameplate1" }, -- 77.918 nameplate1 MISS 0 <- other: Deadly Poison SPELL_MISSED +0.800 s
	{ hit = 398, line = false, unsure = "two creatures fit nameplate1" }, -- 78.468 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 400, line = false, unsure = "two creatures fit nameplate1" }, -- 78.468 nameplate1 WOUND 41 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 402, line = 389, spell = false, unsure = "two creatures fit nameplate1" }, -- 78.585 nameplate1 WOUND 2 <- you: swing SWING_DAMAGE +0.984 s
	{ hit = 404, line = false, unsure = "two creatures fit nameplate1" }, -- 78.835 nameplate1 WOUND 28 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 408, line = 397, spell = false, unsure = "two creatures fit nameplate1" }, -- 79.002 nameplate1 MISS 0 <- pet: swing SWING_MISSED +0.534 s
	{ hit = 412, line = false, unsure = "two creatures fit nameplate1" }, -- 79.452 nameplate1 WOUND 34 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 414, line = 411, spell = false, unsure = "two creatures fit nameplate1" }, -- 79.752 nameplate1 WOUND 2 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 419, line = 418, spell = 1014, unsure = "two creatures fit nameplate1" }, -- 79.885 nameplate1 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 421, line = false, unsure = "two creatures fit nameplate1" }, -- 80.102 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 423, line = false, unsure = "no file event fits" }, -- 80.435 nameplate1 WOUND 112 <- no file event 
	{ hit = 428, line = 425, spell = false, unsure = "2 file events fit" }, -- 80.935 nameplate1 MISS 0 <- pet: swing SWING_MISSED +0.283 s
	{ hit = 430, line = false, unsure = "two creatures fit nameplate1" }, -- 81.002 nameplate1 WOUND 32 <- creature: swing SWING_DAMAGE +0.350 s
	{ hit = 434, line = false, unsure = "two creatures fit nameplate1" }, -- 81.185 nameplate1 MISS 0 <- other: swing SWING_MISSED +1.184 s
	{ hit = 438, line = 437, spell = 7809, unsure = "two creatures fit nameplate1" }, -- 81.218 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 441, line = false, unsure = "two creatures fit nameplate1" }, -- 81.535 nameplate1 WOUND 229 <- other: swing SWING_DAMAGE +0.617 s
	{ hit = 443, line = false, unsure = "two creatures fit nameplate1" }, -- 81.685 nameplate1 WOUND 93 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 445, line = false, unsure = "two creatures fit nameplate1" }, -- 81.685 nameplate1 WOUND 41 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 447, line = false, unsure = "no file event fits" }, -- 81.685 nameplate1 WOUND 0 <- no file event 
	{ hit = 449, line = false, unsure = "two creatures fit nameplate1" }, -- 82.168 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 451, line = false, unsure = "two creatures fit nameplate1" }, -- 82.668 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.983 s
	{ hit = 456, line = 455, spell = 6222, unsure = "two creatures fit nameplate1" }, -- 82.818 nameplate1 MISS 0 <- you: Corruption SPELL_MISSED +0.000 s
	{ hit = 458, line = false, unsure = "two creatures fit nameplate1" }, -- 82.818 nameplate1 WOUND 90 <- other: Hemorrhage SPELL_DAMAGE -0.001 s
	{ hit = 463, line = false, unsure = "two creatures fit nameplate1" }, -- 83.185 nameplate1 WOUND 29 <- creature: swing SWING_DAMAGE +0.366 s
	{ hit = 465, line = 460, spell = false, unsure = "two creatures fit nameplate1" }, -- 83.351 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.532 s
	{ hit = 467, line = false, unsure = "2 file events fit" }, -- 83.918 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.499 s
	{ hit = 469, line = false, unsure = "two creatures fit nameplate1" }, -- 83.918 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.499 s
	{ hit = 476, line = 475, spell = 1014, unsure = "two creatures fit nameplate1" }, -- 84.202 nameplate1 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 478, line = false, unsure = "two creatures fit nameplate1" }, -- 84.385 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 480, line = false, unsure = "two creatures fit nameplate1" }, -- 84.385 nameplate1 WOUND 40 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 482, line = false, unsure = "two creatures fit nameplate1" }, -- 84.802 nameplate1 WOUND 105 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 484, line = false, unsure = "no file event fits" }, -- 84.968 nameplate1 WOUND 0 <- no file event 
	{ hit = 490, line = false, unsure = "two creatures fit nameplate1" }, -- 85.652 nameplate1 WOUND 82 <- other: Gutgore Ripper SPELL_DAMAGE +0.000 s
	{ hit = 493, line = false, unsure = "2 file events fit" }, -- 85.735 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.083 s
	{ hit = 495, line = false, unsure = "two creatures fit nameplate1" }, -- 85.785 nameplate1 WOUND 30 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 498, line = 486, spell = false, unsure = "two creatures fit nameplate1" }, -- 86.018 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.847 s
	{ hit = 500, line = false, unsure = "two creatures fit nameplate1" }, -- 86.268 nameplate1 WOUND 43 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 502, line = false, unsure = "two creatures fit nameplate1" }, -- 86.268 nameplate1 WOUND 32 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 504, line = false, unsure = "two creatures fit nameplate1" }, -- 86.735 nameplate1 IMMUNE 0 <- other: Kidney Shot SPELL_MISSED +0.000 s
	{ hit = 509, line = false, unsure = "two creatures fit nameplate1" }, -- 86.735 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.467 s
	{ hit = 513, line = 512, spell = 7809, unsure = "2 file events fit" }, -- 87.252 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED -0.001 s
	{ hit = 515, line = 508, spell = 6222, unsure = "two creatures fit nameplate1" }, -- 87.252 nameplate1 MISS 0 <- you: Corruption SPELL_MISSED +0.517 s
	{ hit = 518, line = false, unsure = "two creatures fit nameplate1" }, -- 87.735 nameplate1 WOUND 41 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 520, line = false, unsure = "two creatures fit nameplate1" }, -- 87.735 nameplate1 WOUND 31 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 524, line = false, unsure = "two creatures fit nameplate1" }, -- 87.868 nameplate1 WOUND 30 <- other: swing SWING_DAMAGE +0.500 s
	{ hit = 526, line = 517, spell = false, unsure = "two creatures fit nameplate1" }, -- 87.935 nameplate1 MISS 0 <- pet: swing SWING_MISSED +0.567 s
	{ hit = 530, line = false, unsure = "two creatures fit nameplate1" }, -- 88.185 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 532, line = 529, spell = false, unsure = "two creatures fit nameplate1" }, -- 88.552 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 535, line = false, unsure = "2 file events fit" }, -- 90.018 nameplate1 MISS 0 <- creature: swing SWING_MISSED +0.499 s
	{ hit = 539, line = 534, spell = false, unsure = "two creatures fit nameplate1" }, -- 90.052 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 543, line = 538, spell = false, unsure = "two creatures fit nameplate1" }, -- 90.418 nameplate1 WOUND 2 <- you: swing SWING_DAMAGE +0.366 s
	{ hit = 548, line = false, unsure = "two creatures fit nameplate1" }, -- 90.435 nameplate1 MISS 0 <- other: swing SWING_MISSED +1.267 s
	{ hit = 550, line = false, unsure = "two creatures fit nameplate1" }, -- 90.435 nameplate1 WOUND 41 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 552, line = 547, spell = 1014, unsure = "two creatures fit nameplate1" }, -- 90.768 nameplate1 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.333 s
	{ hit = 554, line = false, unsure = "no file event fits" }, -- 91.268 nameplate1 WOUND 73 <- no file event 
	{ hit = 556, line = false, unsure = "two creatures fit nameplate1" }, -- 91.768 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 561, line = false, unsure = "two creatures fit nameplate1" }, -- 92.068 nameplate1 WOUND 96 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 563, line = false, unsure = "no file event fits" }, -- 92.135 nameplate1 WOUND 0 <- no file event 
	{ hit = 565, line = false, unsure = "two creatures fit nameplate1" }, -- 92.135 nameplate1 WOUND 31 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 572, line = 558, spell = false, unsure = "two creatures fit nameplate1" }, -- 92.268 nameplate1 MISS 0 <- pet: swing SWING_MISSED +0.500 s
	{ hit = 574, line = 571, spell = 6222, unsure = "two creatures fit nameplate1" }, -- 92.302 nameplate1 MISS 0 <- you: Corruption SPELL_MISSED +0.033 s
	{ hit = 578, line = 577, spell = 7809, unsure = "two creatures fit nameplate1" }, -- 92.402 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED -0.001 s
	{ hit = 580, line = false, unsure = "no file event fits" }, -- 92.735 nameplate1 WOUND 39 <- no file event 
	{ hit = 582, line = false, unsure = "two creatures fit nameplate1" }, -- 92.802 nameplate1 WOUND 90 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 587, line = false, unsure = "two creatures fit nameplate1" }, -- 93.568 nameplate1 WOUND 40 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 589, line = false, unsure = "two creatures fit nameplate1" }, -- 93.568 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 591, line = false, unsure = "no file event fits" }, -- 93.718 nameplate1 WOUND 225 <- no file event 
	{ hit = 595, line = false, unsure = "no file event fits" }, -- 94.218 nameplate1 WOUND 73 <- no file event 
	{ hit = 597, line = false, unsure = "two creatures fit nameplate1" }, -- 94.218 nameplate1 WOUND 36 <- other: swing SWING_DAMAGE +0.016 s
	{ hit = 601, line = 593, spell = false, unsure = "two creatures fit nameplate1" }, -- 94.368 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 603, line = false, unsure = "two creatures fit nameplate1" }, -- 94.785 nameplate1 DODGE 0 <- creature: swing SWING_MISSED +0.983 s
	{ hit = 607, line = false, unsure = "two creatures fit nameplate1" }, -- 95.152 nameplate1 WOUND 120 <- other: swing SWING_DAMAGE +0.950 s
	{ hit = 611, line = false, unsure = "two creatures fit nameplate1" }, -- 95.518 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 615, line = false }, -- 95.618 nameplate24 PARRY 0 <- other: Wing Clip SPELL_MISSED +0.000 s
	{ hit = 617, line = 616, spell = false, unsure = "2 file events fit" }, -- 95.985 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.067 s
	{ hit = 620, line = false, unsure = "two creatures fit nameplate1" }, -- 96.418 nameplate1 DODGE 0 <- creature: swing SWING_MISSED +0.500 s
	{ hit = 623, line = 614, spell = false, unsure = "two creatures fit nameplate1" }, -- 96.452 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.834 s
	{ hit = 625, line = false, unsure = "two creatures fit nameplate1" }, -- 96.585 nameplate1 WOUND 41 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 631, line = false, unsure = "two creatures fit nameplate1" }, -- 97.052 nameplate1 WOUND 95 <- other: Hemorrhage SPELL_DAMAGE -0.001 s
	{ hit = 635, line = false, unsure = "two creatures fit nameplate1" }, -- 97.568 nameplate1 IMMUNE 0 <- other: Goblin Mortar SPELL_MISSED -0.003 s
	{ hit = 637, line = false, unsure = "two creatures fit nameplate1" }, -- 97.668 nameplate1 WOUND 29 <- other: swing SWING_DAMAGE +1.083 s
	{ hit = 642, line = false, unsure = "two creatures fit nameplate1" }, -- 97.818 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 646, line = 645, spell = false, unsure = "two creatures fit nameplate1" }, -- 98.185 nameplate1 PARRY 0 <- you: swing SWING_MISSED +0.367 s
	{ hit = 650, line = 649, spell = 7809, unsure = "two creatures fit nameplate1" }, -- 98.402 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED -0.001 s
	{ hit = 652, line = false, unsure = "two creatures fit nameplate1" }, -- 98.452 nameplate1 DODGE 0 <- creature: swing SWING_MISSED +0.350 s
	{ hit = 654, line = false, unsure = "no file event fits" }, -- 98.535 nameplate24 WOUND 57 <- no file event 
	{ hit = 660, line = false, unsure = "no file event fits" }, -- 99.085 nameplate1 WOUND 0 <- no file event 
	{ hit = 663, line = false, unsure = "two creatures fit nameplate1" }, -- 99.152 nameplate1 WOUND 115 <- other: swing SWING_DAMAGE +0.450 s
	{ hit = 668, line = false, unsure = "two creatures fit nameplate1" }, -- 99.452 nameplate1 WOUND 61 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 670, line = false, unsure = "two creatures fit nameplate1" }, -- 99.452 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 676, line = false, unsure = "two creatures fit nameplate1" }, -- 99.835 nameplate1 MISS 0 <- other: swing SWING_MISSED +1.133 s
	{ hit = 679, line = false }, -- 100.035 nameplate24 WOUND 3 <- other: Wing Clip SPELL_DAMAGE +0.000 s
	{ hit = 683, line = false, unsure = "two creatures fit nameplate1" }, -- 100.485 nameplate1 WOUND 25 <- creature: swing SWING_DAMAGE +0.350 s
	{ hit = 687, line = false, unsure = "two creatures fit nameplate1" }, -- 100.685 nameplate1 WOUND 111 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 691, line = 690, spell = false, unsure = "2 file events fit" }, -- 100.702 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.017 s
	{ hit = 693, line = false }, -- 100.768 nameplate24 WOUND 58 <- other: swing SWING_DAMAGE +0.633 s
	{ hit = 694, line = 681, spell = false, unsure = "two creatures fit nameplate1" }, -- 101.052 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.917 s
	{ hit = 696, line = false, unsure = "two creatures fit nameplate1" }, -- 101.302 nameplate1 WOUND 29 <- other: swing SWING_DAMAGE +1.167 s
	{ hit = 700, line = false, unsure = "two creatures fit nameplate1" }, -- 101.469 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 704, line = false, unsure = "two creatures fit nameplate1" }, -- 101.752 nameplate1 WOUND 239 <- other: swing SWING_DAMAGE +1.067 s
	{ hit = 712, line = false, unsure = "two creatures fit nameplate1" }, -- 102.385 nameplate1 WOUND 41 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 714, line = false, unsure = "no file event fits" }, -- 102.502 nameplate1 WOUND 0 <- no file event 
	{ hit = 717, line = false, unsure = "two creatures fit nameplate1" }, -- 102.635 nameplate1 WOUND 31 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 719, line = 710, spell = false, unsure = "two creatures fit nameplate1" }, -- 102.702 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 721, line = false, unsure = "two creatures fit nameplate1" }, -- 102.935 nameplate1 WOUND 93 <- other: Hemorrhage SPELL_DAMAGE -0.002 s
	{ hit = 723, line = false, unsure = "no file event fits" }, -- 103.268 nameplate1 WOUND 39 <- no file event 
	{ hit = 725, line = false }, -- 103.368 nameplate24 IMMUNE 0 <- other: Concussive Shot SPELL_MISSED -0.002 s
	{ hit = 726, line = false, unsure = "two creatures fit nameplate1" }, -- 103.518 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 735, line = 732, spell = false, unsure = "two creatures fit nameplate1" }, -- 104.101 nameplate1 MISS 0 <- you: swing SWING_MISSED +0.366 s
	{ hit = 737, line = 734, spell = 7809, unsure = "two creatures fit nameplate1" }, -- 104.101 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED -0.002 s
	{ hit = 739, line = false, unsure = "two creatures fit nameplate1" }, -- 104.268 nameplate1 WOUND 234 <- other: swing SWING_DAMAGE +1.500 s
	{ hit = 742, line = false, unsure = "no file event fits" }, -- 104.752 nameplate1 PARRY 0 <- no file event 
	{ hit = 744, line = false, unsure = "two creatures fit nameplate1" }, -- 104.752 nameplate1 WOUND 31 <- other: swing SWING_DAMAGE +0.316 s
	{ hit = 746, line = false, unsure = "two creatures fit nameplate1" }, -- 104.935 nameplate1 WOUND 25 <- creature: swing SWING_DAMAGE +0.499 s
	{ hit = 748, line = false, unsure = "2 file events fit" }, -- 104.952 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.067 s
	{ hit = 756, line = false, unsure = "two creatures fit nameplate1" }, -- 105.469 nameplate1 WOUND 84 <- other: Rupture SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 758, line = false, unsure = "two creatures fit nameplate1" }, -- 105.735 nameplate1 IMMUNE 0 <- other: Iron Grenade SPELL_MISSED -0.003 s
	{ hit = 760, line = 755, spell = false, unsure = "2 file events fit" }, -- 105.835 nameplate1 MISS 0 <- you: swing SWING_MISSED +0.364 s
	{ hit = 763, line = false, unsure = "two creatures fit nameplate1" }, -- 106.602 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.550 s
	{ hit = 765, line = false, unsure = "two creatures fit nameplate1" }, -- 106.736 nameplate1 PARRY 0 <- creature: swing SWING_MISSED +0.367 s
	{ hit = 767, line = false, unsure = "two creatures fit nameplate1" }, -- 106.752 nameplate1 WOUND 111 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 769, line = false, unsure = "two creatures fit nameplate1" }, -- 106.752 nameplate1 WOUND 8 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 771, line = false }, -- 106.918 nameplate24 WOUND 50 <- other: Summon Hawk SPELL_DAMAGE +0.450 s
	{ hit = 772, line = false }, -- 107.003 nameplate24 WOUND 23 <- creature: swing SWING_DAMAGE +0.535 s
	{ hit = 773, line = 762, spell = false, unsure = "two creatures fit nameplate1" }, -- 107.036 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 777, line = false, unsure = "two creatures fit nameplate1" }, -- 107.170 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.000 s
	{ hit = 782, line = 776, spell = false, unsure = "two creatures fit nameplate1" }, -- 107.537 nameplate1 WOUND 2 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 784, line = 788, spell = 6222, unsure = "two creatures fit nameplate1" }, -- 107.537 nameplate1 MISS 0 <- you: Corruption SPELL_MISSED -0.066 s
	{ hit = 789, line = false, unsure = "no file event fits" }, -- 107.603 nameplate1 MISS 0 <- no file event 
	{ hit = 793, line = false, unsure = "two creatures fit nameplate1" }, -- 108.585 nameplate1 WOUND 29 <- other: swing SWING_DAMAGE +1.415 s
	{ hit = 795, line = false }, -- 108.885 nameplate24 WOUND 27 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 796, line = false, unsure = "two creatures fit nameplate1" }, -- 108.985 nameplate1 WOUND 28 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 798, line = 792, spell = false, unsure = "two creatures fit nameplate1" }, -- 109.019 nameplate1 WOUND 2 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 805, line = 804, spell = 1014, unsure = "two creatures fit nameplate1" }, -- 109.235 nameplate1 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 809, line = false, unsure = "two creatures fit nameplate1" }, -- 109.469 nameplate1 WOUND 17 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 811, line = false, unsure = "two creatures fit nameplate1" }, -- 109.568 nameplate1 WOUND 36 <- other: swing SWING_DAMAGE +1.082 s
	{ hit = 815, line = 814, spell = 7809, unsure = "two creatures fit nameplate1" }, -- 109.918 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED -0.001 s
	{ hit = 817, line = 801, spell = false, unsure = "two creatures fit nameplate1" }, -- 110.035 nameplate1 WOUND 2 <- you: swing SWING_DAMAGE +1.000 s
	{ hit = 821, line = false, unsure = "two creatures fit nameplate1" }, -- 110.502 nameplate1 WOUND 206 <- other: swing SWING_DAMAGE +1.267 s
	{ hit = 824, line = false, unsure = "2 file events fit" }, -- 110.852 nameplate1 DODGE 0 <- creature: swing SWING_MISSED +0.367 s
	{ hit = 828, line = false, unsure = "two creatures fit nameplate1" }, -- 110.885 nameplate1 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 830, line = 820, spell = false, unsure = "two creatures fit nameplate1" }, -- 111.018 nameplate1 DODGE 0 <- pet: swing SWING_MISSED +0.533 s
	{ hit = 832, line = false, unsure = "two creatures fit nameplate1" }, -- 111.168 nameplate1 WOUND 87 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 834, line = false, unsure = "2 file events fit" }, -- 111.252 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.083 s
	{ hit = 839, line = false, unsure = "two creatures fit nameplate1" }, -- 112.018 nameplate1 WOUND 30 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.414 s
	{ hit = 843, line = false, unsure = "no file event fits" }, -- 112.469 nameplate1 MISS 0 <- no file event 
	{ hit = 845, line = false, unsure = "two creatures fit nameplate1" }, -- 112.469 nameplate1 WOUND 58 <- other: swing SWING_DAMAGE +1.300 s
	{ hit = 847, line = false, unsure = "two creatures fit nameplate1" }, -- 112.602 nameplate1 WOUND 16 <- other: Deadly Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 850, line = 842, spell = false, unsure = "two creatures fit nameplate1" }, -- 112.768 nameplate1 MISS 0 <- you: swing SWING_MISSED +0.366 s
	{ hit = 852, line = false, unsure = "two creatures fit nameplate1" }, -- 112.868 nameplate1 WOUND 85 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 854, line = false, unsure = "two creatures fit nameplate1" }, -- 113.102 nameplate1 PARRY 0 <- creature: swing SWING_MISSED +0.500 s
	{ hit = 856, line = 849, spell = false, unsure = "two creatures fit nameplate1" }, -- 113.169 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 858, line = false, unsure = "two creatures fit nameplate1" }, -- 113.502 nameplate1 WOUND 63 <- other: swing SWING_DAMAGE +0.900 s
	{ hit = 865, line = false, unsure = "two creatures fit nameplate1" }, -- 114.202 nameplate1 WOUND 131 <- other: Ghostly Strike SPELL_DAMAGE +0.000 s
	{ hit = 867, line = 864, spell = false, unsure = "two creatures fit nameplate1" }, -- 114.252 nameplate1 WOUND 2 <- you: swing SWING_DAMAGE +0.367 s
}

-- Log Lines with no Hit:
-- line 90 at 49.135 <- no file event
-- line 130 at 57.402 <- you: Immolate SPELL_MISSED
-- line 497 at 85.968 <- no file event
-- line 741 at 104.435 <- pet: swing SWING_MISSED
-- line 827 at 110.885 <- you: swing SWING_MISSED
