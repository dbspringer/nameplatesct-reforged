-- Labels for warlock-open-world-2: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 1, line = false }, -- 0.117 nameplate4 WOUND 35 <- creature: swing SWING_DAMAGE +0.984 s
	{ hit = 3, line = false }, -- 0.467 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 5, line = false }, -- 0.467 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 8, line = false }, -- 0.567 nameplate4 WOUND 71 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 10, line = false, unsure = "late by 1.00 s" }, -- 0.667 nameplate4 WOUND 37 <- other: swing SWING_DAMAGE +1.001 s
	{ hit = 12, line = false }, -- 1.000 nameplate4 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 15, line = false }, -- 1.234 nameplate4 WOUND 49 <- creature: Shoot SPELL_DAMAGE +0.034 s
	{ hit = 17, line = false }, -- 1.384 nameplate4 WOUND 35 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 20, line = false, unsure = "late by 1.00 s" }, -- 1.467 nameplate4 WOUND 32 <- creature: swing SWING_DAMAGE +1.001 s
	{ hit = 22, line = false }, -- 1.467 nameplate4 WOUND 36 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 29, line = false }, -- 2.600 nameplate4 WOUND 33 <- other: swing SWING_DAMAGE +0.982 s
	{ hit = 32, line = false }, -- 2.834 nameplate4 WOUND 34 <- creature: swing SWING_DAMAGE +0.378 s
	{ hit = 35, line = false }, -- 3.017 nameplate4 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 37, line = false, unsure = "2 file events fit" }, -- 3.267 nameplate4 WOUND 33 <- creature: swing SWING_DAMAGE +0.151 s
	{ hit = 40, line = false }, -- 3.550 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 42, line = false }, -- 3.550 nameplate4 WOUND 21 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 46, line = false }, -- 3.617 nameplate4 WOUND 33 <- creature: swing SWING_DAMAGE +0.717 s
	{ hit = 48, line = false }, -- 3.651 nameplate4 WOUND 71 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 50, line = false }, -- 3.884 nameplate2 MISS 0 <- other: swing SWING_MISSED +0.334 s
	{ hit = 51, line = false }, -- 3.967 nameplate2 WOUND 25 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 52, line = false }, -- 3.984 nameplate2 WOUND 3 <- other: swing SWING_DAMAGE +0.434 s
	{ hit = 53, line = false }, -- 4.634 nameplate4 WOUND 35 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 58, line = false }, -- 4.867 nameplate4 WOUND 45 <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 62, line = false }, -- 5.067 nameplate4 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 65, line = false }, -- 5.317 nameplate4 WOUND 31 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 68, line = false }, -- 5.701 nameplate2 PARRY 0 <- other: swing SWING_MISSED +0.751 s
	{ hit = 69, line = false }, -- 6.084 nameplate4 WOUND 252 <- other: Shadow Bolt SPELL_DAMAGE +0.001 s
	{ hit = 75, line = 74, spell = 1014 }, -- 6.184 nameplate4 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 78, line = false }, -- 6.284 nameplate2 WOUND 11 <- other: Claw SPELL_DAMAGE +0.001 s
	{ hit = 81, line = false }, -- 6.501 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 84, line = false }, -- 6.501 nameplate4 WOUND 44 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 89, line = false }, -- 6.584 nameplate4 WOUND 35 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 92, line = false }, -- 6.601 nameplate4 WOUND 34 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 96, line = false }, -- 6.901 nameplate4 DODGE 0 <- creature: swing SWING_MISSED +0.501 s
	{ hit = 99, line = false }, -- 6.934 nameplate2 WOUND 89 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 100, line = false }, -- 7.034 nameplate2 WOUND 25 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 101, line = false }, -- 7.034 nameplate4 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 104, line = false }, -- 7.118 nameplate2 WOUND 49 <- other: Summon Hawk SPELL_DAMAGE +0.084 s
	{ hit = 106, line = false, unsure = "2 file events fit" }, -- 7.151 nameplate2 WOUND 2 <- creature: swing SWING_DAMAGE -0.017 s
	{ hit = 107, line = false }, -- 7.301 nameplate4 WOUND 36 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 110, line = false }, -- 7.518 nameplate4 WOUND 48 <- creature: Shoot SPELL_DAMAGE +0.117 s
	{ hit = 113, line = false, unsure = "late by 1.35 s" }, -- 7.752 nameplate2 WOUND 2 <- other: swing SWING_DAMAGE +1.352 s
	{ hit = 114, line = false }, -- 8.185 nameplate4 WOUND 39 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 117, line = false }, -- 8.251 nameplate2 WOUND 12 <- other: Claw SPELL_DAMAGE -0.006 s
	{ hit = 118, line = false }, -- 8.518 nameplate4 MISS 0 <- creature: swing SWING_MISSED +0.367 s
	{ hit = 123, line = false }, -- 8.718 nameplate2 WOUND 2 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 124, line = false }, -- 8.835 nameplate4 WOUND 40 <- creature: swing SWING_DAMAGE +0.368 s
	{ hit = 128, line = false }, -- 9.018 nameplate4 WOUND 93 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 132, line = false }, -- 9.268 nameplate4 WOUND 38 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 137, line = 136, spell = 7809 }, -- 9.435 nameplate4 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 140, line = false }, -- 9.551 nameplate4 WOUND 60 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 143, line = false }, -- 9.551 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 149, line = 131, spell = false }, -- 10.101 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.981 s
	{ hit = 154, line = false, unsure = "2 file events fit" }, -- 10.551 nameplate4 WOUND 34 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 157, line = false }, -- 10.635 nameplate4 WOUND 34 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 160, line = false }, -- 10.901 nameplate4 WOUND 33 <- creature: swing SWING_DAMAGE +0.499 s
	{ hit = 163, line = false }, -- 11.001 nameplate4 WOUND 93 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 171, line = false }, -- 11.502 nameplate4 WOUND 34 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 174, line = 166, spell = false }, -- 11.635 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 177, line = 180, spell = 6222 }, -- 11.668 nameplate4 WOUND 30 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 183, line = false }, -- 12.235 nameplate4 WOUND 33 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 186, line = false }, -- 12.551 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 189, line = false }, -- 12.551 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 194, line = false }, -- 13.051 nameplate4 WOUND 47 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 197, line = false }, -- 13.085 nameplate4 WOUND 47 <- creature: Shoot SPELL_DAMAGE +0.334 s
	{ hit = 201, line = false }, -- 13.519 nameplate4 WOUND 37 <- creature: swing SWING_DAMAGE +0.352 s
	{ hit = 204, line = false }, -- 13.702 nameplate4 WOUND 71 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 207, line = 200, spell = false }, -- 13.719 nameplate4 MISS 0 <- pet: swing SWING_MISSED +0.552 s
	{ hit = 210, line = false }, -- 14.002 nameplate4 WOUND 36 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 213, line = false }, -- 14.002 nameplate4 WOUND 34 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 216, line = 219, spell = 6222 }, -- 14.685 nameplate4 WOUND 30 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 222, line = 221, spell = 7809 }, -- 14.685 nameplate4 MISS 0 <- pet: Torment SPELL_MISSED -0.001 s
	{ hit = 225, line = false }, -- 14.685 nameplate4 WOUND 35 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 228, line = false }, -- 15.018 nameplate4 WOUND 47 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 234, line = false }, -- 15.501 nameplate4 WOUND 35 <- creature: swing SWING_DAMAGE +0.366 s
	{ hit = 237, line = false }, -- 15.551 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 242, line = false }, -- 15.551 nameplate4 WOUND 48 <- other: Lash of Pain SPELL_DAMAGE +0.000 s
	{ hit = 245, line = 233, spell = false }, -- 15.668 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 248, line = false }, -- 15.818 nameplate4 WOUND 39 <- creature: swing SWING_DAMAGE +0.368 s
	{ hit = 251, line = false }, -- 15.818 nameplate4 WOUND 32 <- creature: swing SWING_DAMAGE +0.368 s
	{ hit = 254, line = false }, -- 16.135 nameplate4 WOUND 135 <- other: Immolate SPELL_DAMAGE +0.001 s
	{ hit = 257, line = false }, -- 16.251 nameplate4 WOUND 35 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 260, line = false }, -- 16.668 nameplate4 WOUND 71 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 263, line = false }, -- 16.802 nameplate4 WOUND 40 <- creature: Shoot SPELL_DAMAGE +0.001 s
	{ hit = 266, line = false }, -- 17.035 nameplate4 WOUND 55 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 272, line = false }, -- 17.502 nameplate4 WOUND 36 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 275, line = 278, spell = 6222 }, -- 17.651 nameplate4 WOUND 30 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 279, line = 269, spell = false }, -- 17.668 nameplate4 MISS 0 <- pet: swing SWING_MISSED +0.533 s
	{ hit = 282, line = false }, -- 18.218 nameplate4 WOUND 35 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 285, line = false }, -- 18.335 nameplate4 WOUND 30 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 288, line = false }, -- 18.335 nameplate4 DODGE 0 <- creature: swing SWING_MISSED +0.367 s
	{ hit = 291, line = false }, -- 18.518 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 299, line = 298, spell = 1014 }, -- 18.735 nameplate4 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 302, line = false }, -- 19.052 nameplate4 WOUND 55 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 305, line = false }, -- 19.151 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 309, line = false }, -- 19.652 nameplate4 WOUND 32 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 312, line = false }, -- 19.685 nameplate4 WOUND 71 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 315, line = false }, -- 19.718 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 318, line = false }, -- 20.252 nameplate4 WOUND 41 <- other: swing SWING_DAMAGE +0.568 s
	{ hit = 323, line = 322, spell = 7809 }, -- 20.335 nameplate4 MISS 0 <- pet: Torment SPELL_MISSED +0.001 s
	{ hit = 326, line = false }, -- 20.368 nameplate4 WOUND 33 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 329, line = false }, -- 20.502 nameplate4 WOUND 32 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 332, line = 335, spell = 6222 }, -- 20.652 nameplate4 WOUND 30 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 339, line = 338, spell = 1014 }, -- 20.652 nameplate4 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 342, line = false }, -- 20.968 nameplate4 WOUND 55 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 346, line = false }, -- 21.551 nameplate4 WOUND 35 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 349, line = false }, -- 21.568 nameplate4 WOUND 44 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 354, line = 345, spell = false }, -- 21.718 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 357, line = false }, -- 22.102 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 360, line = false }, -- 22.235 nameplate4 WOUND 38 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 363, line = false }, -- 22.352 nameplate4 WOUND 33 <- creature: swing SWING_DAMAGE +0.368 s
	{ hit = 366, line = false }, -- 22.651 nameplate4 WOUND 247 <- other: Shadow Bolt SPELL_DAMAGE +0.000 s
	{ hit = 372, line = 371, spell = 6222 }, -- 22.651 nameplate4 MISS 0 <- you: Corruption SPELL_MISSED -0.001 s
	{ hit = 375, line = false }, -- 22.751 nameplate4 WOUND 71 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 378, line = false }, -- 23.052 nameplate4 WOUND 55 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 383, line = false }, -- 23.618 nameplate4 WOUND 30 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 386, line = 381, spell = false }, -- 23.702 nameplate4 PARRY 0 <- pet: swing SWING_MISSED +0.517 s
	{ hit = 390, line = false }, -- 24.285 nameplate4 WOUND 33 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 393, line = false }, -- 24.285 nameplate4 WOUND 35 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 396, line = false }, -- 24.452 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 403, line = 402, spell = 1014 }, -- 24.985 nameplate4 MISS 0 <- you: Bane of Agony SPELL_MISSED -0.001 s
	{ hit = 406, line = false }, -- 25.102 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 409, line = false }, -- 25.102 nameplate4 WOUND 57 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 415, line = 414, spell = 7809 }, -- 25.685 nameplate4 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 418, line = false }, -- 25.685 nameplate4 WOUND 70 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 421, line = 412, spell = false }, -- 26.185 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.984 s
	{ hit = 424, line = false }, -- 26.252 nameplate4 WOUND 32 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 428, line = false }, -- 27.052 nameplate4 WOUND 47 <- creature: Shoot SPELL_DAMAGE +0.134 s
	{ hit = 434, line = 433, spell = 6222 }, -- 27.135 nameplate4 MISS 0 <- you: Corruption SPELL_MISSED +0.000 s
	{ hit = 437, line = false }, -- 27.135 nameplate4 WOUND 57 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 441, line = 440, spell = false }, -- 27.652 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.516 s
	{ hit = 445, line = false }, -- 27.918 nameplate4 WOUND 43 <- creature: Shoot SPELL_DAMAGE +0.150 s
	{ hit = 448, line = false }, -- 28.085 nameplate4 WOUND 32 <- other: Lash of Pain SPELL_DAMAGE +0.000 s
	{ hit = 451, line = false }, -- 28.085 nameplate4 WOUND 60 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 455, line = false }, -- 28.635 nameplate4 WOUND 35 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 458, line = false }, -- 28.735 nameplate4 WOUND 70 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 461, line = false }, -- 28.735 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 468, line = false }, -- 29.168 nameplate4 WOUND 57 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 472, line = false }, -- 29.218 nameplate4 WOUND 42 <- creature: Shoot SPELL_DAMAGE +0.051 s
	{ hit = 475, line = false }, -- 29.268 nameplate4 WOUND 45 <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 478, line = false }, -- 29.402 nameplate4 WOUND 44 <- creature: Shoot SPELL_DAMAGE +0.134 s
	{ hit = 483, line = 471, spell = false }, -- 29.735 nameplate4 PARRY 0 <- pet: swing SWING_MISSED +0.567 s
	{ hit = 486, line = false }, -- 30.235 nameplate4 WOUND 90 <- other: Immolate SPELL_DAMAGE +0.000 s
	{ hit = 491, line = false }, -- 30.685 nameplate4 WOUND 36 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 494, line = false }, -- 30.902 nameplate4 WOUND 40 <- creature: Shoot SPELL_DAMAGE +0.001 s
	{ hit = 497, line = false }, -- 31.102 nameplate4 WOUND 57 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 503, line = 502, spell = 7809 }, -- 31.302 nameplate4 MISS 0 <- pet: Torment SPELL_MISSED +0.001 s
	{ hit = 508, line = false }, -- 31.752 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 516, line = 515, spell = 1014 }, -- 31.852 nameplate4 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.001 s
	{ hit = 519, line = 500, spell = false }, -- 32.185 nameplate4 PARRY 0 <- pet: swing SWING_MISSED +0.984 s
	{ hit = 522, line = false }, -- 32.735 nameplate4 WOUND 41 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 525, line = false }, -- 33.001 nameplate4 WOUND 37 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 528, line = false }, -- 33.185 nameplate4 WOUND 69 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 532, line = false }, -- 33.302 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 536, line = 531, spell = false }, -- 33.702 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 542, line = 541, spell = 6222 }, -- 33.752 nameplate4 MISS 0 <- you: Corruption SPELL_MISSED +0.001 s
	{ hit = 546, line = false }, -- 34.718 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 551, line = false }, -- 34.735 nameplate4 WOUND 35 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 559, line = false }, -- 34.968 nameplate4 WOUND 37 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 562, line = false }, -- 35.135 nameplate4 WOUND 69 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 566, line = false }, -- 35.352 nameplate4 WOUND 71 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 569, line = false }, -- 35.452 nameplate4 WOUND 44 <- other: Shoot RANGE_DAMAGE +0.001 s
	{ hit = 572, line = 565, spell = false }, -- 35.702 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 577, line = false }, -- 36.235 nameplate4 WOUND 38 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 580, line = false }, -- 36.301 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 585, line = false }, -- 36.968 nameplate4 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 588, line = false }, -- 37.002 nameplate4 WOUND 38 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 591, line = false }, -- 37.185 nameplate4 WOUND 69 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 596, line = false }, -- 37.285 nameplate4 WOUND 44 <- creature: Shoot SPELL_DAMAGE +0.317 s
	{ hit = 599, line = false }, -- 37.718 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 602, line = false }, -- 37.735 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 608, line = false }, -- 38.402 nameplate4 WOUND 70 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 613, line = false }, -- 38.718 nameplate4 WOUND 40 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 616, line = false }, -- 38.868 nameplate4 WOUND 45 <- other: Shoot RANGE_DAMAGE +0.000 s
	{ hit = 620, line = false }, -- 39.185 nameplate4 WOUND 69 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 623, line = false }, -- 39.302 nameplate4 WOUND 60 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 627, line = false, unsure = "no file event fits" }, -- 39.702 nameplate4 WOUND 0 <- no file event 
	{ hit = 634, line = false }, -- 40.652 nameplate4 WOUND 32 <- other: Lash of Pain SPELL_DAMAGE +0.001 s
	{ hit = 637, line = false }, -- 40.752 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 642, line = false }, -- 40.752 nameplate4 WOUND 40 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 645, line = false }, -- 40.752 nameplate4 MISS 0 <- other: swing SWING_MISSED +0.451 s
	{ hit = 648, line = false }, -- 41.168 nameplate4 WOUND 81 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 651, line = false }, -- 41.385 nameplate4 WOUND 70 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 654, line = false, unsure = "no file event fits" }, -- 41.702 nameplate4 WOUND 0 <- no file event 
	{ hit = 657, line = false }, -- 41.902 nameplate4 WOUND 45 <- other: Shoot RANGE_DAMAGE +0.000 s
	{ hit = 660, line = false }, -- 42.302 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 665, line = 664, spell = 7809 }, -- 42.652 nameplate4 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 668, line = false }, -- 42.685 nameplate4 WOUND 39 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 675, line = false }, -- 43.102 nameplate4 WOUND 81 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 685, line = 684, spell = 6222 }, -- 43.502 nameplate4 MISS 0 <- you: Corruption SPELL_MISSED +0.000 s
	{ hit = 689, line = false }, -- 43.718 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 694, line = 678, spell = false }, -- 43.735 nameplate4 PARRY 0 <- pet: swing SWING_MISSED +0.534 s
	{ hit = 698, line = false }, -- 44.285 nameplate4 WOUND 41 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 701, line = false }, -- 44.335 nameplate4 WOUND 140 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 708, line = false }, -- 45.168 nameplate4 WOUND 81 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 715, line = false }, -- 45.268 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 721, line = 720, spell = 1014 }, -- 45.268 nameplate4 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 724, line = false }, -- 45.602 nameplate4 WOUND 40 <- creature: Shoot SPELL_DAMAGE +0.134 s
	{ hit = 728, line = 711, spell = false }, -- 45.735 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 734, line = false }, -- 46.335 nameplate4 WOUND 40 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 737, line = false }, -- 46.402 nameplate4 WOUND 90 <- other: Shoot RANGE_DAMAGE +0.001 s
	{ hit = 740, line = false }, -- 46.735 nameplate4 WOUND 43 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 746, line = false }, -- 47.135 nameplate4 WOUND 81 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 752, line = 751, spell = 6222 }, -- 47.135 nameplate4 MISS 0 <- you: Corruption SPELL_MISSED -0.001 s
	{ hit = 756, line = false }, -- 47.352 nameplate4 WOUND 70 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 759, line = 755, spell = false }, -- 47.752 nameplate4 PARRY 0 <- pet: swing SWING_MISSED +0.517 s
	{ hit = 762, line = false }, -- 48.335 nameplate4 WOUND 38 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 766, line = 769, spell = 7809 }, -- 48.385 nameplate4 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 773, line = 772, spell = 1014 }, -- 48.718 nameplate4 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 783, line = false }, -- 49.785 nameplate4 WOUND 44 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 788, line = 779, spell = false }, -- 49.785 nameplate4 MISS 0 <- pet: swing SWING_MISSED +0.533 s
	{ hit = 795, line = false }, -- 50.735 nameplate4 WOUND 70 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 798, line = false }, -- 50.768 nameplate4 WOUND 36 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 804, line = false }, -- 51.168 nameplate4 WOUND 49 <- creature: Shoot SPELL_DAMAGE +0.333 s
	{ hit = 807, line = false }, -- 51.235 nameplate4 WOUND 43 <- creature: Shoot SPELL_DAMAGE +0.400 s
	{ hit = 812, line = false }, -- 51.252 nameplate4 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 818, line = 811, spell = false }, -- 51.818 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 829, line = false }, -- 52.518 nameplate4 WOUND 132 <- other: Aimed Shot SPELL_DAMAGE -0.001 s
	{ hit = 835, line = false }, -- 52.735 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 840, line = false }, -- 52.768 nameplate4 DODGE 0 <- other: swing SWING_MISSED +0.984 s
	{ hit = 843, line = false }, -- 52.835 nameplate4 WOUND 32 <- other: Lash of Pain SPELL_DAMAGE +0.000 s
	{ hit = 847, line = false }, -- 52.935 nameplate4 WOUND 90 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 855, line = 854, spell = false, unsure = "2 file events fit" }, -- 53.268 nameplate4 MISS 0 <- pet: swing SWING_MISSED +0.000 s
	{ hit = 858, line = false }, -- 53.268 nameplate4 WOUND 76 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 864, line = false }, -- 53.685 nameplate4 PARRY 0 <- other: Strider Kick SPELL_MISSED +0.000 s
	{ hit = 867, line = false }, -- 53.685 nameplate4 WOUND 70 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 870, line = false }, -- 53.802 nameplate4 MISS 0 <- other: Growl SPELL_MISSED +0.534 s
	{ hit = 876, line = false }, -- 54.252 nameplate4 WOUND 6 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 879, line = false, unsure = "2 file events fit" }, -- 54.352 nameplate4 DODGE 0 <- other: swing SWING_MISSED +0.567 s
	{ hit = 884, line = 883, spell = 7809 }, -- 54.402 nameplate4 MISS 0 <- pet: Torment SPELL_MISSED -0.001 s
	{ hit = 887, line = false }, -- 54.402 nameplate4 WOUND 11 <- other: Claw SPELL_DAMAGE -0.001 s
	{ hit = 894, line = false }, -- 54.718 nameplate4 WOUND 90 <- other: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 900, line = false }, -- 54.935 nameplate4 WOUND 6 <- other: swing SWING_DAMAGE +0.434 s
	{ hit = 906, line = false, unsure = "late by 1.48 s" }, -- 55.168 nameplate4 DODGE 0 <- other: swing SWING_MISSED +1.483 s
	{ hit = 910, line = false }, -- 55.235 nameplate4 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 918, line = false, unsure = "2 file events fit" }, -- 55.802 nameplate4 PARRY 0 <- other: swing SWING_MISSED -0.083 s
	{ hit = 924, line = false }, -- 56.502 nameplate4 WOUND 10 <- other: Claw SPELL_DAMAGE +0.000 s
	{ hit = 927, line = false }, -- 56.502 nameplate4 MISS 0 <- other: Raptor Strike SPELL_MISSED +0.000 s
	{ hit = 931, line = false }, -- 56.702 nameplate4 WOUND 70 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 934, line = false }, -- 56.769 nameplate4 WOUND 33 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 937, line = false, unsure = "no file event fits" }, -- 56.868 nameplate4 PARRY 0 <- no file event 
	{ hit = 944, line = false }, -- 57.235 nameplate4 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 949, line = false }, -- 57.518 nameplate4 WOUND 42 <- creature: Shoot SPELL_DAMAGE +0.282 s
	{ hit = 956, line = false }, -- 57.535 nameplate4 WOUND 48 <- creature: Shoot SPELL_DAMAGE +0.299 s
	{ hit = 959, line = false }, -- 57.535 nameplate4 WOUND 39 <- creature: Shoot SPELL_DAMAGE +0.299 s
	{ hit = 965, line = 943, spell = false }, -- 57.768 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 968, line = false }, -- 57.785 nameplate4 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 971, line = false }, -- 57.885 nameplate4 MISS 0 <- other: swing SWING_MISSED +0.750 s
	{ hit = 975, line = false }, -- 58.119 nameplate4 WOUND 10 <- other: Claw SPELL_DAMAGE -0.001 s
	{ hit = 990, line = 989, spell = 6222 }, -- 58.551 nameplate4 MISS 0 <- you: Corruption SPELL_MISSED +0.000 s
	{ hit = 994, line = false }, -- 58.768 nameplate4 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 999, line = false }, -- 58.768 nameplate4 WOUND 35 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 1013, line = false }, -- 59.285 nameplate4 WOUND 46 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1017, line = false }, -- 59.435 nameplate4 WOUND 6 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 1024, line = 1009, spell = false }, -- 59.702 nameplate4 WOUND 1 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 1027, line = false }, -- 59.735 nameplate4 WOUND 70 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1157, line = 1156, spell = 6222 }, -- 72.868 nameplate1 MISS 0 <- you: Corruption SPELL_MISSED -0.001 s
	{ hit = 1163, line = 1162, spell = 7809 }, -- 74.235 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED -0.001 s
	{ hit = 1167, line = false }, -- 74.869 nameplate1 MISS 0 <- other: Fire Blast SPELL_MISSED +0.001 s
	{ hit = 1171, line = false, unsure = "no file event fits" }, -- 75.119 nameplate1 WOUND 0 <- no file event 
	{ hit = 1183, line = false, unsure = "no file event fits" }, -- 77.085 nameplate1 WOUND 0 <- no file event 
	{ hit = 1204, line = 1199, spell = false }, -- 79.085 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 1244, line = false }, -- 81.118 nameplate1 MISS 0 <- other: Arcane Blast SPELL_MISSED +0.000 s
	{ hit = 1255, line = false, unsure = "late by 1.39 s" }, -- 81.784 nameplate3 WOUND 90 <- other: Shoot RANGE_DAMAGE +1.393 s
	{ hit = 1260, line = false }, -- 81.968 nameplate3 WOUND 118 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1270, line = false }, -- 82.668 nameplate3 WOUND 8 <- creature: swing SWING_DAMAGE +0.701 s
	{ hit = 1272, line = false }, -- 82.934 nameplate3 MISS 0 <- other: Firebolt SPELL_MISSED -0.002 s
	{ hit = 1277, line = false }, -- 83.418 nameplate3 WOUND 64 <- other: Flame Shock SPELL_DAMAGE +0.000 s
	{ hit = 1286, line = false }, -- 84.451 nameplate3 MISS 0 <- other: Shadow Word: Pain SPELL_MISSED +0.000 s
	{ hit = 1290, line = false }, -- 84.835 nameplate3 WOUND 10 <- creature: swing SWING_DAMAGE +0.701 s
	{ hit = 1295, line = false }, -- 84.968 nameplate3 WOUND 117 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1298, line = false }, -- 85.201 nameplate3 WOUND 69 <- other: swing SWING_DAMAGE +0.433 s
	{ hit = 1302, line = false }, -- 85.501 nameplate3 WOUND 62 <- other: Flame Shock SPELL_DAMAGE +0.000 s
	{ hit = 1305, line = false }, -- 85.818 nameplate3 MISS 0 <- other: Shadow Word: Pain SPELL_MISSED +0.000 s
	{ hit = 1310, line = false }, -- 86.351 nameplate3 WOUND 22 <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1314, line = false }, -- 86.451 nameplate3 WOUND 27 <- other: Firebolt SPELL_DAMAGE -0.001 s
	{ hit = 1316, line = false, unsure = "no file event fits" }, -- 86.485 nameplate3 WOUND 26 <- no file event 
	{ hit = 1318, line = false }, -- 86.518 nameplate3 WOUND 74 <- other: swing SWING_DAMAGE +0.501 s
	{ hit = 1324, line = false }, -- 86.901 nameplate3 WOUND 143 <- other: swing SWING_DAMAGE +0.667 s
	{ hit = 1327, line = false }, -- 86.968 nameplate3 WOUND 48 <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 1329, line = false }, -- 86.968 nameplate3 WOUND 57 <- other: Firebolt SPELL_DAMAGE +0.000 s
	{ hit = 1331, line = false }, -- 86.968 nameplate3 WOUND 46 <- other: Firebolt SPELL_DAMAGE +0.000 s
	{ hit = 1333, line = false }, -- 87.068 nameplate3 WOUND 31 <- other: swing SWING_DAMAGE +0.417 s
	{ hit = 1337, line = false }, -- 87.168 nameplate3 WOUND 55 <- other: Windfury Weapon SPELL_DAMAGE +0.200 s
	{ hit = 1340, line = false }, -- 87.334 nameplate3 WOUND 259 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 1342, line = false }, -- 87.468 nameplate3 WOUND 54 <- other: Windfury Weapon SPELL_DAMAGE +0.500 s
	{ hit = 1344, line = false }, -- 87.484 nameplate3 WOUND 125 <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 1347, line = false, unsure = "late by 1.12 s" }, -- 87.868 nameplate3 WOUND 20 <- other: swing SWING_DAMAGE +1.117 s
	{ hit = 1349, line = false }, -- 87.918 nameplate3 WOUND 59 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1352, line = false }, -- 88.084 nameplate3 WOUND 26 <- creature: swing SWING_DAMAGE +0.700 s
	{ hit = 1354, line = false }, -- 88.268 nameplate3 WOUND 28 <- other: Firebolt SPELL_DAMAGE +0.134 s
	{ hit = 1359, line = false }, -- 88.451 nameplate3 WOUND 22 <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1366, line = false }, -- 88.968 nameplate3 WOUND 63 <- other: Judgement of Command SPELL_DAMAGE +0.000 s
	{ hit = 1369, line = false }, -- 88.968 nameplate3 WOUND 48 <- other: swing SWING_DAMAGE +0.417 s
	{ hit = 1374, line = false }, -- 89.284 nameplate3 WOUND 69 <- other: Moonfire SPELL_DAMAGE +0.000 s
	{ hit = 1377, line = false }, -- 89.334 nameplate3 WOUND 84 <- other: swing SWING_DAMAGE +0.366 s
	{ hit = 1380, line = false }, -- 89.384 nameplate3 WOUND 33 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1383, line = false }, -- 89.751 nameplate3 WOUND 6 <- other: swing SWING_DAMAGE +0.667 s
	{ hit = 1386, line = false }, -- 89.801 nameplate3 WOUND 65 <- other: Holy Strike SPELL_DAMAGE +0.000 s
	{ hit = 1391, line = false }, -- 90.184 nameplate3 WOUND 10 <- creature: swing SWING_DAMAGE +0.599 s
	{ hit = 1394, line = false }, -- 90.334 nameplate3 WOUND 44 <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1397, line = false }, -- 90.368 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.367 s
	{ hit = 1401, line = false }, -- 90.568 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.567 s
	{ hit = 1404, line = false }, -- 90.601 nameplate3 WOUND 28 <- other: Firebolt SPELL_DAMAGE +0.384 s
	{ hit = 1408, line = false }, -- 90.751 nameplate3 WOUND 32 <- other: Moonfire SPELL_DAMAGE -0.001 s
	{ hit = 1411, line = false }, -- 90.768 nameplate3 WOUND 38 <- other: swing SWING_DAMAGE +0.434 s
	{ hit = 1417, line = 1416, spell = 6222 }, -- 90.851 nameplate3 MISS 0 <- you: Corruption SPELL_MISSED -0.002 s
	{ hit = 1420, line = false }, -- 90.851 nameplate3 DODGE 0 <- other: Claw SPELL_MISSED -0.002 s
	{ hit = 1423, line = false }, -- 90.851 nameplate3 WOUND 53 <- other: Bite SPELL_DAMAGE -0.003 s
	{ hit = 1428, line = false }, -- 90.968 nameplate3 WOUND 117 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1434, line = false, unsure = "2 file events fit" }, -- 91.284 nameplate3 MISS 0 <- other: Stormstrike SPELL_MISSED +0.000 s
	{ hit = 1437, line = false }, -- 91.335 nameplate3 MISS 0 <- other: Shoot RANGE_MISSED -0.001 s
	{ hit = 1440, line = false }, -- 91.501 nameplate3 WOUND 21 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1443, line = false }, -- 91.501 nameplate3 WOUND 18 <- other: swing SWING_DAMAGE +0.749 s
	{ hit = 1448, line = false }, -- 91.734 nameplate3 WOUND 43 <- other: swing SWING_DAMAGE +0.982 s
	{ hit = 1452, line = false }, -- 91.818 nameplate3 WOUND 140 <- other: Aimed Shot SPELL_DAMAGE +0.000 s
	{ hit = 1460, line = false }, -- 92.168 nameplate3 WOUND 147 <- other: Windfury Weapon SPELL_DAMAGE +0.249 s
	{ hit = 1464, line = false }, -- 92.234 nameplate3 WOUND 34 <- other: Moonfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1467, line = false }, -- 92.234 nameplate3 WOUND 103 <- other: Auto Shot RANGE_DAMAGE -0.001 s
	{ hit = 1473, line = 1472, spell = 1014 }, -- 92.334 nameplate3 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 1476, line = false }, -- 92.351 nameplate3 WOUND 67 <- other: swing SWING_DAMAGE +0.433 s
	{ hit = 1479, line = false }, -- 92.418 nameplate3 WOUND 126 <- other: Windfury Weapon SPELL_DAMAGE +0.499 s
	{ hit = 1482, line = false }, -- 92.434 nameplate3 WOUND 22 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1486, line = false }, -- 92.434 nameplate3 IMMUNE 0 <- other: Hammer of Justice SPELL_MISSED -0.001 s
	{ hit = 1490, line = false }, -- 92.568 nameplate3 WOUND 63 <- other: swing SWING_DAMAGE +0.432 s
	{ hit = 1494, line = false }, -- 92.751 nameplate3 WOUND 53 <- other: Summon Hawk SPELL_DAMAGE +0.000 s
	{ hit = 1497, line = false, unsure = "2 file events fit" }, -- 92.751 nameplate3 DODGE 0 <- other: Sinister Strike SPELL_MISSED +0.000 s
	{ hit = 1500, line = false }, -- 92.768 nameplate3 WOUND 90 <- other: swing SWING_DAMAGE +0.850 s
	{ hit = 1504, line = false }, -- 92.851 nameplate3 WOUND 31 <- other: Claw SPELL_DAMAGE -0.001 s
	{ hit = 1507, line = false }, -- 92.901 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.150 s
	{ hit = 1510, line = false }, -- 92.951 nameplate3 WOUND 179 <- other: Earth Shock SPELL_DAMAGE -0.001 s
	{ hit = 1513, line = false }, -- 92.951 nameplate3 WOUND 62 <- other: Lightning Shield SPELL_DAMAGE -0.001 s
	{ hit = 1517, line = false }, -- 93.101 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.567 s
	{ hit = 1522, line = false }, -- 93.236 nameplate3 MISS 0 <- other: Firebolt SPELL_MISSED +0.333 s
	{ hit = 1525, line = false }, -- 93.268 nameplate3 WOUND 144 <- other: Earth Shock SPELL_DAMAGE +0.000 s
	{ hit = 1528, line = false }, -- 93.268 nameplate3 WOUND 44 <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1533, line = false }, -- 93.501 nameplate3 MISS 0 <- creature: Attack SPELL_MISSED -0.002 s
	{ hit = 1536, line = false }, -- 93.734 nameplate3 WOUND 41 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 1539, line = false }, -- 93.784 nameplate3 DODGE 0 <- other: Hemorrhage SPELL_MISSED +0.000 s
	{ hit = 1542, line = false }, -- 93.784 nameplate3 WOUND 11 <- other: Moonfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1545, line = false, unsure = "2 file events fit" }, -- 93.834 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.367 s
	{ hit = 1548, line = false }, -- 93.884 nameplate3 MISS 0 <- other: Arcane Blast SPELL_MISSED -0.001 s
	{ hit = 1551, line = false }, -- 93.901 nameplate3 WOUND 61 <- other: Shoot RANGE_DAMAGE +0.333 s
	{ hit = 1558, line = 1557, spell = 6222 }, -- 94.001 nameplate3 MISS 0 <- you: Corruption SPELL_MISSED +0.000 s
	{ hit = 1568, line = false }, -- 94.418 nameplate3 WOUND 106 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 1571, line = false }, -- 94.418 nameplate3 WOUND 21 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1574, line = false }, -- 94.534 nameplate3 IMMUNE 0 <- other: Intercept Stun SPELL_MISSED +0.000 s
	{ hit = 1577, line = false }, -- 94.534 nameplate3 WOUND 54 <- other: Holy Strike SPELL_DAMAGE -0.001 s
	{ hit = 1580, line = false }, -- 94.534 nameplate3 WOUND 318 <- other: Thunderfury SPELL_DAMAGE -0.001 s
	{ hit = 1583, line = false }, -- 94.534 nameplate3 WOUND 13 <- other: Seal of Righteousness SPELL_DAMAGE -0.001 s
	{ hit = 1588, line = false, unsure = "late by 1.45 s" }, -- 94.718 nameplate3 PARRY 0 <- other: swing SWING_MISSED +1.449 s
	{ hit = 1591, line = false }, -- 94.734 nameplate3 WOUND 230 <- other: Hemorrhage SPELL_DAMAGE -0.001 s
	{ hit = 1601, line = false, unsure = "2 file events fit" }, -- 94.951 nameplate3 MISS 0 <- other: Bite SPELL_MISSED +0.000 s
	{ hit = 1604, line = false, unsure = "2 file events fit" }, -- 95.068 nameplate3 WOUND 50 <- other: swing SWING_DAMAGE +0.750 s
	{ hit = 1607, line = false }, -- 95.068 nameplate3 WOUND 58 <- other: swing SWING_DAMAGE +0.433 s
	{ hit = 1610, line = false }, -- 95.068 nameplate3 WOUND 13 <- other: swing SWING_DAMAGE +0.533 s
	{ hit = 1613, line = false }, -- 95.168 nameplate3 WOUND 45 <- other: Moonfire SPELL_DAMAGE +0.000 s
	{ hit = 1616, line = false }, -- 95.268 nameplate3 WOUND 34 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1619, line = false }, -- 95.368 nameplate3 WOUND 144 <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 1622, line = false }, -- 95.368 nameplate3 WOUND 22 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1629, line = false }, -- 95.668 nameplate3 WOUND 27 <- other: Firebolt SPELL_DAMAGE +0.400 s
	{ hit = 1632, line = false, unsure = "late by 1.38 s" }, -- 95.701 nameplate3 WOUND 50 <- other: swing SWING_DAMAGE +1.383 s
	{ hit = 1636, line = false, unsure = "no file event fits" }, -- 95.901 nameplate3 WOUND 3 <- no file event 
	{ hit = 1639, line = false, unsure = "2 file events fit" }, -- 95.918 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.117 s
	{ hit = 1642, line = 1625, spell = false }, -- 95.934 nameplate3 DODGE 0 <- pet: swing SWING_MISSED +0.566 s
	{ hit = 1645, line = false }, -- 96.018 nameplate3 WOUND 81 <- other: Judgement of Righteousness SPELL_DAMAGE +0.000 s
	{ hit = 1648, line = false }, -- 96.018 nameplate3 WOUND 318 <- other: Thunderfury SPELL_DAMAGE +0.000 s
	{ hit = 1651, line = false }, -- 96.018 nameplate3 WOUND 132 <- other: Ghostly Strike SPELL_DAMAGE +0.000 s
	{ hit = 1655, line = false }, -- 96.051 nameplate3 WOUND 5 <- other: swing SWING_DAMAGE +0.366 s
	{ hit = 1659, line = false }, -- 96.101 nameplate3 WOUND 88 <- other: Auto Shot RANGE_DAMAGE +0.083 s
	{ hit = 1662, line = false, unsure = "2 file events fit" }, -- 96.118 nameplate3 MISS 0 <- other: Shadow Word: Pain SPELL_MISSED -0.001 s
	{ hit = 1669, line = 1668, spell = 7809, unsure = "2 file events fit" }, -- 96.218 nameplate3 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 1672, line = false }, -- 96.234 nameplate3 WOUND 55 <- other: swing SWING_DAMAGE +0.433 s
	{ hit = 1675, line = false }, -- 96.318 nameplate3 WOUND 44 <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1681, line = 1680, spell = 1014 }, -- 96.318 nameplate3 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.000 s
	{ hit = 1688, line = false, unsure = "no file event fits" }, -- 96.684 nameplate3 WOUND 23 <- no file event 
	{ hit = 1691, line = false, unsure = "2 file events fit" }, -- 96.801 nameplate3 MISS 0 <- other: Shoot RANGE_MISSED -0.002 s
	{ hit = 1694, line = false }, -- 96.834 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.400 s
	{ hit = 1697, line = false }, -- 96.868 nameplate3 WOUND 94 <- other: Frost Shock SPELL_DAMAGE +0.000 s
	{ hit = 1700, line = false }, -- 96.968 nameplate3 PARRY 0 <- other: Claw SPELL_MISSED +0.000 s
	{ hit = 1703, line = false }, -- 96.968 nameplate3 WOUND 63 <- other: Judgement of Command SPELL_DAMAGE +0.000 s
	{ hit = 1706, line = false }, -- 97.068 nameplate3 WOUND 203 <- other: Fireball SPELL_DAMAGE +0.000 s
	{ hit = 1710, line = false }, -- 97.101 nameplate3 WOUND 27 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 1713, line = false }, -- 97.184 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.650 s
	{ hit = 1719, line = false }, -- 97.485 nameplate3 WOUND 21 <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1723, line = false }, -- 97.601 nameplate3 WOUND 146 <- other: Arcane Blast SPELL_DAMAGE +0.000 s
	{ hit = 1729, line = false, unsure = "late by 1.32 s" }, -- 97.751 nameplate3 WOUND 12 <- other: swing SWING_DAMAGE +1.317 s
	{ hit = 1732, line = false, unsure = "2 file events fit" }, -- 97.818 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.330 s
	{ hit = 1735, line = false, unsure = "2 file events fit" }, -- 97.851 nameplate3 MISS 0 <- other: Shoot RANGE_MISSED -0.085 s
	{ hit = 1738, line = false }, -- 97.884 nameplate3 WOUND 89 <- other: Auto Shot RANGE_DAMAGE +0.083 s
	{ hit = 1741, line = 1717, spell = false }, -- 97.918 nameplate3 WOUND 2 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 1744, line = false }, -- 97.918 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.533 s
	{ hit = 1747, line = false, unsure = "no file event fits" }, -- 97.934 nameplate3 MISS 0 <- no file event 
	{ hit = 1753, line = 1752, spell = 6222 }, -- 98.118 nameplate3 MISS 0 <- you: Corruption SPELL_MISSED +0.000 s
	{ hit = 1756, line = false }, -- 98.118 nameplate3 WOUND 11 <- other: Moonfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1759, line = false }, -- 98.218 nameplate3 WOUND 34 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1764, line = false }, -- 98.468 nameplate3 WOUND 240 <- other: swing SWING_DAMAGE +0.450 s
	{ hit = 1767, line = false }, -- 98.534 nameplate3 WOUND 16 <- other: Claw SPELL_DAMAGE -0.001 s
	{ hit = 1774, line = false }, -- 98.868 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.534 s
	{ hit = 1777, line = false, unsure = "no file event fits" }, -- 98.868 nameplate3 WOUND 132 <- no file event 
	{ hit = 1781, line = false }, -- 98.951 nameplate3 WOUND 56 <- other: Lightning Shield SPELL_DAMAGE -0.001 s
	{ hit = 1784, line = false }, -- 98.951 nameplate3 WOUND 52 <- other: Lightning Shield SPELL_DAMAGE -0.001 s
	{ hit = 1787, line = false }, -- 98.951 nameplate3 WOUND 57 <- other: Lightning Shield SPELL_DAMAGE -0.001 s
	{ hit = 1791, line = false }, -- 99.051 nameplate3 WOUND 2 <- other: Fireball SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1794, line = false }, -- 99.168 nameplate3 WOUND 40 <- other: Ignite SPELL_DAMAGE +0.000 s
	{ hit = 1798, line = false }, -- 99.268 nameplate3 DODGE 0 <- other: Hemorrhage SPELL_MISSED +0.000 s
	{ hit = 1801, line = false }, -- 99.268 nameplate3 WOUND 44 <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1806, line = false }, -- 99.418 nameplate3 WOUND 28 <- other: Firebolt SPELL_DAMAGE +0.150 s
	{ hit = 1810, line = false }, -- 99.468 nameplate3 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1813, line = false }, -- 99.568 nameplate3 WOUND 98 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 1817, line = false }, -- 99.635 nameplate3 WOUND 3 <- other: swing SWING_DAMAGE +0.367 s
	{ hit = 1820, line = false }, -- 99.701 nameplate3 WOUND 34 <- other: swing SWING_DAMAGE +0.750 s
	{ hit = 1823, line = false, unsure = "no file event fits" }, -- 99.785 nameplate3 WOUND 22 <- no file event 
	{ hit = 1826, line = false, unsure = "no file event fits" }, -- 99.884 nameplate3 WOUND 3 <- no file event 
	{ hit = 1829, line = 1809, spell = false }, -- 100.001 nameplate3 WOUND 1 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 1832, line = false }, -- 100.184 nameplate3 WOUND 266 <- other: Holy Shock SPELL_DAMAGE -0.001 s
	{ hit = 1835, line = false }, -- 100.184 nameplate3 WOUND 91 <- other: Hemorrhage SPELL_DAMAGE -0.001 s
	{ hit = 1843, line = false }, -- 100.518 nameplate3 WOUND 139 <- other: Fire Blast SPELL_DAMAGE -0.001 s
	{ hit = 1846, line = false }, -- 100.584 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.398 s
	{ hit = 1849, line = false }, -- 100.618 nameplate3 WOUND 34 <- other: Claw SPELL_DAMAGE +0.000 s
	{ hit = 1853, line = false }, -- 101.034 nameplate3 WOUND 150 <- other: swing SWING_DAMAGE +0.732 s
	{ hit = 1856, line = false }, -- 101.134 nameplate3 WOUND 1 <- other: Fireball SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1859, line = false }, -- 101.134 nameplate3 WOUND 11 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1862, line = false }, -- 101.134 nameplate3 WOUND 41 <- other: Ignite SPELL_DAMAGE -0.001 s
	{ hit = 1865, line = false }, -- 101.234 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.199 s
	{ hit = 1868, line = false }, -- 101.251 nameplate3 WOUND 91 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 1872, line = false }, -- 101.251 nameplate3 WOUND 34 <- other: Moonfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1876, line = false, unsure = "no file event fits" }, -- 101.351 nameplate3 WOUND 3 <- no file event 
	{ hit = 1881, line = 1888, spell = false }, -- 101.351 nameplate3 MISS 0 <- pet: swing SWING_MISSED -0.100 s
	{ hit = 1884, line = false }, -- 101.351 nameplate3 DODGE 0 <- other: Seal of Command SPELL_MISSED -0.001 s
	{ hit = 1887, line = false }, -- 101.401 nameplate23 WOUND 103 <- other: swing SWING_DAMAGE +0.466 s
	{ hit = 1889, line = false }, -- 101.451 nameplate3 WOUND 43 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1892, line = false }, -- 101.501 nameplate3 WOUND 44 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 1896, line = false }, -- 101.551 nameplate3 WOUND 28 <- other: Moonfire SPELL_DAMAGE -0.001 s
	{ hit = 1902, line = false }, -- 101.651 nameplate3 WOUND 129 <- other: Judgement of Righteousness SPELL_DAMAGE +0.000 s
	{ hit = 1908, line = false }, -- 101.951 nameplate3 MISS 0 <- other: Shoot RANGE_MISSED -0.002 s
	{ hit = 1911, line = false }, -- 101.968 nameplate3 WOUND 121 <- other: Fireball SPELL_DAMAGE +0.000 s
	{ hit = 1914, line = false }, -- 102.001 nameplate3 WOUND 28 <- other: Firebolt SPELL_DAMAGE +0.250 s
	{ hit = 1917, line = 1880, spell = 7809 }, -- 102.018 nameplate3 MISS 0 <- pet: Torment SPELL_MISSED +0.666 s
	{ hit = 1920, line = false, unsure = "late by 1.13 s" }, -- 102.168 nameplate3 WOUND 10 <- other: swing SWING_DAMAGE +1.134 s
	{ hit = 1923, line = false }, -- 102.168 nameplate3 WOUND 76 <- other: swing SWING_DAMAGE +0.417 s
	{ hit = 1926, line = false, unsure = "no file event fits" }, -- 102.218 nameplate3 WOUND 35 <- no file event 
	{ hit = 1929, line = false }, -- 102.268 nameplate3 WOUND 43 <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1932, line = 1935, spell = 1014 }, -- 102.368 nameplate3 WOUND 14 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1937, line = false }, -- 102.584 nameplate3 WOUND 16 <- other: Claw SPELL_DAMAGE -0.001 s
	{ hit = 1942, line = false, unsure = "late by 1.32 s" }, -- 102.668 nameplate3 WOUND 11 <- other: swing SWING_DAMAGE +1.317 s
	{ hit = 1945, line = false, unsure = "no file event fits" }, -- 102.751 nameplate3 MISS 0 <- no file event 
	{ hit = 1949, line = false }, -- 102.818 nameplate3 WOUND 121 <- other: Arcane Missiles SPELL_DAMAGE +0.016 s
	{ hit = 1957, line = false, unsure = "2 file events fit" }, -- 103.051 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.033 s
	{ hit = 1960, line = false, unsure = "no file event fits" }, -- 103.118 nameplate3 WOUND 3 <- no file event 
	{ hit = 1963, line = false }, -- 103.118 nameplate3 WOUND 103 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 1966, line = false }, -- 103.218 nameplate3 WOUND 94 <- other: Frost Shock SPELL_DAMAGE +0.000 s
	{ hit = 1970, line = 1977, spell = false }, -- 103.318 nameplate3 MISS 0 <- pet: swing SWING_MISSED -0.100 s
	{ hit = 1973, line = false }, -- 103.351 nameplate3 WOUND 43 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 1978, line = false }, -- 103.418 nameplate3 WOUND 85 <- other: Rupture SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1984, line = 1983, spell = 6222, unsure = "2 file events fit" }, -- 103.418 nameplate3 MISS 0 <- you: Corruption SPELL_MISSED -0.001 s
	{ hit = 1988, line = false }, -- 103.518 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.832 s
	{ hit = 1991, line = false }, -- 103.585 nameplate3 MISS 0 <- other: Shoot RANGE_MISSED -0.001 s
	{ hit = 1994, line = false, unsure = "no file event fits" }, -- 103.618 nameplate3 WOUND 131 <- no file event 
	{ hit = 2000, line = false, unsure = "2 file events fit" }, -- 103.784 nameplate3 MISS 0 <- other: Arcane Missiles SPELL_MISSED -0.002 s
	{ hit = 2004, line = false }, -- 103.934 nameplate3 WOUND 1 <- other: Fireball SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2007, line = false }, -- 103.951 nameplate3 MISS 0 <- other: Mind Blast SPELL_MISSED +0.632 s
	{ hit = 2010, line = false }, -- 103.984 nameplate3 WOUND 132 <- other: Arcane Missiles SPELL_DAMAGE +0.150 s
	{ hit = 2013, line = false }, -- 104.051 nameplate3 WOUND 132 <- other: swing SWING_DAMAGE +0.732 s
	{ hit = 2016, line = false }, -- 104.068 nameplate3 WOUND 28 <- other: Firebolt SPELL_DAMAGE +0.334 s
	{ hit = 2020, line = false }, -- 104.218 nameplate3 MISS 0 <- other: Frostbolt SPELL_MISSED -0.002 s
	{ hit = 2025, line = 2028, spell = 1014 }, -- 104.351 nameplate3 WOUND 14 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2029, line = false }, -- 104.351 nameplate3 WOUND 265 <- other: Arcane Missiles SPELL_DAMAGE +0.000 s
	{ hit = 2033, line = false }, -- 104.468 nameplate3 WOUND 151 <- other: Fireball SPELL_DAMAGE +0.000 s
	{ hit = 2036, line = false }, -- 104.468 nameplate3 WOUND 66 <- other: Moonfire SPELL_DAMAGE +0.000 s
	{ hit = 2040, line = false }, -- 104.568 nameplate3 WOUND 11 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2043, line = false, unsure = "no file event fits" }, -- 104.618 nameplate3 PARRY 0 <- no file event 
	{ hit = 2046, line = false }, -- 104.618 nameplate3 WOUND 21 <- other: swing SWING_DAMAGE +0.566 s
	{ hit = 2049, line = false, unsure = "2 file events fit" }, -- 104.668 nameplate3 MISS 0 <- other: Stormstrike SPELL_MISSED +0.000 s
	{ hit = 2052, line = false }, -- 104.668 nameplate3 WOUND 14 <- other: Claw SPELL_DAMAGE +0.000 s
	{ hit = 2055, line = false }, -- 104.668 nameplate3 MISS 0 <- other: swing SWING_MISSED -0.100 s
	{ hit = 2062, line = false }, -- 104.834 nameplate3 WOUND 4 <- other: swing SWING_DAMAGE +0.366 s
	{ hit = 2065, line = false }, -- 104.951 nameplate3 WOUND 121 <- other: Arcane Missiles SPELL_DAMAGE +0.083 s
	{ hit = 2068, line = false }, -- 104.984 nameplate3 WOUND 64 <- other: Moonfire SPELL_DAMAGE -0.001 s
	{ hit = 2073, line = false }, -- 104.984 nameplate3 WOUND 80 <- other: Judgement of Command SPELL_DAMAGE -0.001 s
	{ hit = 2076, line = false }, -- 104.984 nameplate3 WOUND 60 <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 2079, line = false }, -- 105.051 nameplate3 MISS 0 <- other: Shoot RANGE_MISSED -0.002 s
	{ hit = 2083, line = false }, -- 105.301 nameplate3 WOUND 43 <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2086, line = false }, -- 105.334 nameplate3 WOUND 120 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2092, line = 2095, spell = false }, -- 105.401 nameplate3 MISS 0 <- pet: swing SWING_MISSED -0.002 s
	{ hit = 2096, line = false }, -- 105.401 nameplate3 WOUND 43 <- other: Rupture SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2100, line = false }, -- 105.451 nameplate3 WOUND 123 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2107, line = false }, -- 105.718 nameplate3 MISS 0 <- other: swing SWING_MISSED -0.100 s
	{ hit = 2110, line = false }, -- 105.718 nameplate3 WOUND 92 <- other: Holy Strike SPELL_DAMAGE -0.001 s
	{ hit = 2114, line = false, unsure = "3 file events fit" }, -- 105.918 nameplate3 MISS 0 <- other: Smite SPELL_MISSED +0.200 s
	{ hit = 2117, line = 2091, spell = 1014, unsure = "2 file events fit" }, -- 105.968 nameplate3 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.566 s
	{ hit = 2120, line = false, unsure = "2 file events fit" }, -- 106.085 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.467 s
	{ hit = 2124, line = false }, -- 106.135 nameplate3 WOUND 148 <- other: Arcane Blast SPELL_DAMAGE +0.000 s
	{ hit = 2127, line = false }, -- 106.135 nameplate3 WOUND 276 <- other: Frostbolt SPELL_DAMAGE +0.000 s
	{ hit = 2130, line = false }, -- 106.234 nameplate3 WOUND 19 <- other: Bite SPELL_DAMAGE -0.001 s
	{ hit = 2133, line = false, unsure = "no file event fits" }, -- 106.268 nameplate3 MISS 0 <- no file event 
	{ hit = 2136, line = 2139, spell = 1014 }, -- 106.335 nameplate3 WOUND 14 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 2140, line = false }, -- 106.451 nameplate3 WOUND 1 <- other: Fireball SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2143, line = false, unsure = "late by 1.32 s" }, -- 106.501 nameplate3 PARRY 0 <- other: swing SWING_MISSED +1.317 s
	{ hit = 2146, line = false }, -- 106.601 nameplate3 WOUND 1 <- other: swing SWING_DAMAGE +0.367 s
	{ hit = 2149, line = false }, -- 106.651 nameplate3 WOUND 146 <- other: Scorch SPELL_DAMAGE +0.000 s
	{ hit = 2152, line = false, unsure = "late by 1.43 s" }, -- 106.934 nameplate3 DODGE 0 <- other: swing SWING_MISSED +1.433 s
	{ hit = 2155, line = false }, -- 106.934 nameplate3 WOUND 32 <- other: swing SWING_DAMAGE +0.799 s
	{ hit = 2161, line = false }, -- 107.085 nameplate3 WOUND 56 <- other: swing SWING_DAMAGE +0.750 s
	{ hit = 2167, line = false }, -- 107.268 nameplate3 WOUND 46 <- other: Sinister Strike SPELL_DAMAGE +0.000 s
	{ hit = 2172, line = false }, -- 107.485 nameplate3 WOUND 85 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 2175, line = false }, -- 107.485 nameplate3 WOUND 60 <- other: Flame Shock SPELL_DAMAGE +0.000 s
	{ hit = 2178, line = false }, -- 107.485 nameplate3 WOUND 33 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2181, line = false }, -- 107.535 nameplate3 WOUND 27 <- other: Firebolt SPELL_DAMAGE +0.567 s
	{ hit = 2184, line = false }, -- 107.585 nameplate3 WOUND 11 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 2187, line = false }, -- 107.585 nameplate3 DODGE 0 <- other: Heroic Strike SPELL_MISSED +0.000 s
	{ hit = 2191, line = false, unsure = "3 file events fit" }, -- 107.801 nameplate3 MISS 0 <- other: Claw SPELL_MISSED -0.001 s
	{ hit = 2195, line = false, unsure = "2 file events fit" }, -- 107.801 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.533 s
	{ hit = 2198, line = false }, -- 107.918 nameplate3 WOUND 43 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2201, line = false }, -- 107.918 nameplate3 WOUND 111 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 2206, line = false, unsure = "no file event fits" }, -- 108.051 nameplate3 WOUND 0 <- no file event 
	{ hit = 2210, line = false, unsure = "2 file events fit" }, -- 108.251 nameplate3 MISS 0 <- other: Sinister Strike SPELL_MISSED -0.084 s
	{ hit = 2213, line = false }, -- 108.334 nameplate3 WOUND 66 <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2216, line = 2219, spell = 1014 }, -- 108.334 nameplate3 WOUND 14 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2220, line = false }, -- 108.334 nameplate3 MISS 0 <- other: Smite SPELL_MISSED +0.533 s
	{ hit = 2224, line = false, unsure = "no file event fits" }, -- 108.368 nameplate3 MISS 0 <- no file event 
	{ hit = 2227, line = false }, -- 108.385 nameplate3 WOUND 2 <- other: swing SWING_DAMAGE +0.367 s
	{ hit = 2231, line = false }, -- 108.434 nameplate3 WOUND 146 <- other: Scorch SPELL_DAMAGE -0.001 s
	{ hit = 2234, line = false }, -- 108.434 nameplate3 WOUND 1 <- other: Fireball SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2237, line = false }, -- 108.768 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.433 s
	{ hit = 2240, line = false }, -- 108.851 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.317 s
	{ hit = 2247, line = false, unsure = "late by 1.50 s" }, -- 108.868 nameplate3 PARRY 0 <- other: swing SWING_MISSED +1.500 s
	{ hit = 2250, line = false }, -- 108.868 nameplate3 WOUND 25 <- other: swing SWING_DAMAGE +0.850 s
	{ hit = 2254, line = false, unsure = "2 file events fit" }, -- 109.101 nameplate3 MISS 0 <- other: Frostbolt SPELL_MISSED -0.052 s
	{ hit = 2257, line = false }, -- 109.151 nameplate3 MISS 0 <- other: Flame Shock SPELL_MISSED +0.300 s
	{ hit = 2260, line = false }, -- 109.151 nameplate3 WOUND 2 <- other: swing SWING_DAMAGE +0.300 s
	{ hit = 2264, line = false }, -- 109.485 nameplate3 WOUND 42 <- other: swing SWING_DAMAGE +0.433 s
	{ hit = 2267, line = false }, -- 109.501 nameplate3 WOUND 43 <- other: Rupture SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2270, line = false, unsure = "no file event fits" }, -- 109.601 nameplate3 WOUND 0 <- no file event 
	{ hit = 2273, line = false }, -- 109.601 nameplate3 WOUND 114 <- other: Heroic Strike SPELL_DAMAGE +0.000 s
	{ hit = 2276, line = false }, -- 109.718 nameplate3 WOUND 18 <- other: Rend SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2279, line = false }, -- 109.718 nameplate3 WOUND 155 <- other: Arcane Missiles SPELL_DAMAGE +0.000 s
	{ hit = 2283, line = false, unsure = "late by 1.22 s" }, -- 109.851 nameplate3 WOUND 56 <- other: swing SWING_DAMAGE +1.216 s
	{ hit = 2286, line = false }, -- 109.851 nameplate3 WOUND 20 <- other: swing SWING_DAMAGE +0.566 s
	{ hit = 2289, line = false }, -- 109.918 nameplate3 WOUND 15 <- other: Claw SPELL_DAMAGE +0.000 s
	{ hit = 2292, line = false, unsure = "no file event fits" }, -- 110.068 nameplate3 WOUND 0 <- no file event 
	{ hit = 2296, line = false }, -- 110.085 nameplate3 WOUND 5 <- other: swing SWING_DAMAGE +0.367 s
	{ hit = 2299, line = false }, -- 110.135 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.217 s
	{ hit = 2303, line = 2306, spell = 6222 }, -- 110.235 nameplate3 WOUND 30 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2307, line = 2310, spell = 1014 }, -- 110.335 nameplate3 WOUND 19 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2311, line = false, unsure = "2 file events fit" }, -- 110.335 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.000 s
	{ hit = 2314, line = false }, -- 110.451 nameplate3 WOUND 20 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2319, line = false }, -- 110.551 nameplate3 WOUND 34 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2322, line = false }, -- 110.551 nameplate3 WOUND 10 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2325, line = false }, -- 110.685 nameplate3 MISS 0 <- other: Sinister Strike SPELL_MISSED +0.350 s
	{ hit = 2328, line = false, unsure = "3 file events fit" }, -- 110.735 nameplate3 MISS 0 <- other: Arcane Missiles SPELL_MISSED -0.001 s
	{ hit = 2332, line = false }, -- 110.768 nameplate3 WOUND 102 <- other: Arcane Missiles SPELL_DAMAGE +0.000 s
	{ hit = 2336, line = false, unsure = "2 file events fit" }, -- 110.768 nameplate3 MISS 0 <- other: Firebolt SPELL_MISSED +0.082 s
	{ hit = 2340, line = false }, -- 110.835 nameplate3 MISS 0 <- other: Scorch SPELL_MISSED +0.700 s
	{ hit = 2343, line = false }, -- 110.868 nameplate3 PARRY 0 <- other: Hemorrhage SPELL_MISSED +0.000 s
	{ hit = 2347, line = false }, -- 110.868 nameplate3 WOUND 150 <- other: Scorch SPELL_DAMAGE -0.001 s
	{ hit = 2352, line = false }, -- 110.968 nameplate3 WOUND 29 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2357, line = false }, -- 110.968 nameplate3 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 2360, line = false }, -- 111.068 nameplate3 WOUND 126 <- other: Fire Blast SPELL_DAMAGE +0.000 s
	{ hit = 2363, line = false }, -- 111.118 nameplate3 WOUND 7 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2367, line = false }, -- 111.185 nameplate3 WOUND 281 <- other: Frostbolt SPELL_DAMAGE +0.001 s
	{ hit = 2370, line = false }, -- 111.285 nameplate3 WOUND 102 <- other: Arcane Missiles SPELL_DAMAGE +0.001 s
	{ hit = 2373, line = false }, -- 111.285 nameplate3 WOUND 44 <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2378, line = false }, -- 111.385 nameplate3 WOUND 22 <- other: swing SWING_DAMAGE +0.834 s
	{ hit = 2381, line = false }, -- 111.401 nameplate3 DODGE 0 <- other: Sinister Strike SPELL_MISSED +0.000 s
	{ hit = 2386, line = false }, -- 111.401 nameplate3 WOUND 42 <- other: Rupture SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2390, line = false }, -- 111.501 nameplate3 WOUND 50 <- other: Firebolt SPELL_DAMAGE -0.001 s
	{ hit = 2393, line = false }, -- 111.501 nameplate3 WOUND 27 <- other: Claw SPELL_DAMAGE -0.001 s
	{ hit = 2397, line = false }, -- 111.701 nameplate3 WOUND 6 <- other: swing SWING_DAMAGE +0.300 s
	{ hit = 2400, line = false }, -- 111.735 nameplate3 WOUND 103 <- other: Arcane Missiles SPELL_DAMAGE +0.017 s
	{ hit = 2403, line = false, unsure = "2 file events fit" }, -- 111.768 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.150 s
	{ hit = 2408, line = false }, -- 111.818 nameplate3 WOUND 96 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 2411, line = false, unsure = "2 file events fit" }, -- 111.868 nameplate3 WOUND 1 <- other: swing SWING_DAMAGE +0.366 s
	{ hit = 2415, line = false, unsure = "2 file events fit" }, -- 111.918 nameplate3 DODGE 0 <- other: Sunder Armor SPELL_MISSED +0.000 s
	{ hit = 2418, line = false }, -- 111.985 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.584 s
	{ hit = 2422, line = 2389, spell = false }, -- 112.061 nameplate3 WOUND 1 <- pet: swing SWING_DAMAGE +0.560 s
	{ hit = 2425, line = false }, -- 112.085 nameplate3 WOUND 7 <- other: swing SWING_DAMAGE +0.467 s
	{ hit = 2429, line = false, unsure = "2 file events fit" }, -- 112.151 nameplate3 DODGE 0 <- other: Sinister Strike SPELL_MISSED -0.001 s
	{ hit = 2432, line = false }, -- 112.251 nameplate3 WOUND 139 <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 2437, line = 2440, spell = 1014 }, -- 112.351 nameplate3 WOUND 19 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2441, line = false, unsure = "4 file events fit" }, -- 112.351 nameplate3 MISS 0 <- other: Sinister Strike SPELL_MISSED -0.001 s
	{ hit = 2444, line = false, unsure = "3 file events fit" }, -- 112.351 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.199 s
	{ hit = 2447, line = false }, -- 112.568 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.650 s
	{ hit = 2450, line = false }, -- 112.601 nameplate3 WOUND 23 <- creature: Attack SPELL_DAMAGE +0.250 s
	{ hit = 2453, line = false }, -- 112.668 nameplate3 WOUND 17 <- other: Rend SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2458, line = false, unsure = "2 file events fit" }, -- 112.668 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.850 s
	{ hit = 2461, line = false, unsure = "late by 1.48 s" }, -- 112.668 nameplate3 MISS 0 <- other: swing SWING_MISSED +1.483 s
	{ hit = 2464, line = false }, -- 112.784 nameplate3 WOUND 48 <- other: swing SWING_DAMAGE +0.432 s
	{ hit = 2468, line = false }, -- 112.968 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.300 s
	{ hit = 2471, line = false }, -- 113.035 nameplate3 WOUND 34 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 2474, line = false }, -- 113.051 nameplate3 WOUND 27 <- other: Firebolt SPELL_DAMAGE +0.483 s
	{ hit = 2477, line = false, unsure = "2 file events fit" }, -- 113.101 nameplate3 MISS 0 <- other: Smite SPELL_MISSED +0.000 s
	{ hit = 2480, line = 2483, spell = 6222 }, -- 113.201 nameplate3 WOUND 30 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2484, line = false }, -- 113.201 nameplate3 WOUND 143 <- other: Scorch SPELL_DAMAGE -0.001 s
	{ hit = 2487, line = false }, -- 113.235 nameplate3 MISS 0 <- other: Shoot RANGE_MISSED -0.002 s
	{ hit = 2490, line = false }, -- 113.301 nameplate3 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 2493, line = 2457, spell = 7809 }, -- 113.368 nameplate3 MISS 0 <- pet: Torment SPELL_MISSED +0.698 s
	{ hit = 2499, line = false }, -- 113.518 nameplate3 WOUND 20 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2502, line = false }, -- 113.518 nameplate3 WOUND 273 <- other: Frostbolt SPELL_DAMAGE +0.000 s
	{ hit = 2505, line = false }, -- 113.518 nameplate3 WOUND 32 <- other: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 2508, line = false }, -- 113.518 nameplate3 WOUND 33 <- other: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 2511, line = false }, -- 113.518 nameplate3 WOUND 34 <- other: Moonfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2514, line = false, unsure = "2 file events fit" }, -- 113.518 nameplate3 MISS 0 <- other: Firebolt SPELL_MISSED -0.001 s
	{ hit = 2517, line = false }, -- 113.518 nameplate3 WOUND 88 <- other: Sinister Strike SPELL_DAMAGE -0.001 s
	{ hit = 2521, line = false }, -- 113.618 nameplate3 WOUND 11 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2524, line = false }, -- 113.618 nameplate3 MISS 0 <- other: Scorch SPELL_MISSED +0.000 s
	{ hit = 2529, line = false }, -- 113.885 nameplate3 WOUND 249 <- other: Arcane Shot SPELL_DAMAGE +0.050 s
	{ hit = 2532, line = false }, -- 113.935 nameplate3 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 2535, line = false }, -- 113.935 nameplate3 WOUND 29 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2541, line = 2496, spell = false }, -- 113.985 nameplate3 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 2548, line = false }, -- 114.101 nameplate3 WOUND 2 <- other: swing SWING_DAMAGE +0.366 s
	{ hit = 2551, line = false, unsure = "2 file events fit" }, -- 114.235 nameplate3 WOUND 3 <- other: swing SWING_DAMAGE +0.084 s
	{ hit = 2554, line = false, unsure = "no file event fits" }, -- 114.318 nameplate3 WOUND 36 <- no file event 
	{ hit = 2557, line = 2560, spell = 1014 }, -- 114.351 nameplate3 WOUND 19 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2561, line = false }, -- 114.451 nameplate3 WOUND 198 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 2564, line = false }, -- 114.451 nameplate3 WOUND 3 <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 2567, line = false }, -- 114.451 nameplate3 WOUND 43 <- other: Firebolt SPELL_DAMAGE -0.001 s
	{ hit = 2570, line = false }, -- 114.468 nameplate3 WOUND 39 <- other: swing SWING_DAMAGE +0.949 s
	{ hit = 2573, line = false }, -- 114.501 nameplate3 WOUND 35 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2576, line = false }, -- 114.551 nameplate3 MISS 0 <- other: Sinister Strike SPELL_MISSED -0.001 s
	{ hit = 2579, line = false }, -- 114.551 nameplate3 MISS 0 <- other: Smite SPELL_MISSED -0.002 s
	{ hit = 2586, line = false }, -- 114.718 nameplate3 WOUND 3 <- other: swing SWING_DAMAGE +0.783 s
	{ hit = 2589, line = false }, -- 114.768 nameplate3 WOUND 250 <- other: Scorch SPELL_DAMAGE +0.000 s
	{ hit = 2592, line = false, unsure = "no file event fits" }, -- 114.768 nameplate3 WOUND 4 <- no file event 
	{ hit = 2595, line = false }, -- 114.768 nameplate3 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 2598, line = false }, -- 114.768 nameplate39 MISS 0 <- other: Flame Shock SPELL_MISSED -0.001 s
	{ hit = 2601, line = false }, -- 115.085 nameplate3 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2604, line = false }, -- 115.135 nameplate3 WOUND 75 <- other: swing SWING_DAMAGE +0.366 s
	{ hit = 2609, line = false }, -- 115.185 nameplate3 WOUND 48 <- other: Lash of Pain SPELL_DAMAGE +0.000 s
	{ hit = 2612, line = false }, -- 115.301 nameplate3 WOUND 113 <- other: Hemorrhage SPELL_DAMAGE +0.000 s
	{ hit = 2615, line = false, unsure = "2 file events fit" }, -- 115.401 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.215 s
	{ hit = 2620, line = false }, -- 115.485 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.300 s
	{ hit = 2626, line = false }, -- 115.501 nameplate3 WOUND 33 <- other: Claw SPELL_DAMAGE -0.002 s
	{ hit = 2630, line = false }, -- 115.601 nameplate3 WOUND 178 <- other: Judgement of Command SPELL_DAMAGE +0.000 s
	{ hit = 2633, line = false, unsure = "no file event fits" }, -- 115.601 nameplate3 WOUND 0 <- no file event 
	{ hit = 2636, line = false }, -- 115.601 nameplate3 WOUND 114 <- other: Heroic Strike SPELL_DAMAGE -0.001 s
	{ hit = 2639, line = false }, -- 115.601 nameplate3 WOUND 261 <- other: Frostbolt SPELL_DAMAGE +0.099 s
	{ hit = 2644, line = false, unsure = "no file event fits" }, -- 115.785 nameplate3 WOUND 27 <- no file event 
	{ hit = 2647, line = false }, -- 115.868 nameplate3 WOUND 61 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2650, line = false, unsure = "no file event fits" }, -- 115.868 nameplate3 WOUND 3 <- no file event 
	{ hit = 2654, line = false }, -- 116.018 nameplate3 WOUND 40 <- other: Firebolt SPELL_DAMAGE +0.000 s
	{ hit = 2657, line = 2624, spell = false }, -- 116.068 nameplate3 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 2660, line = false }, -- 116.068 nameplate3 WOUND 39 <- other: swing SWING_DAMAGE +0.566 s
	{ hit = 2663, line = false }, -- 116.135 nameplate3 WOUND 9 <- other: swing SWING_DAMAGE +0.433 s
	{ hit = 2666, line = false }, -- 116.168 nameplate3 WOUND 20 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2670, line = 2673, spell = 6222 }, -- 116.218 nameplate3 WOUND 30 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2674, line = false }, -- 116.218 nameplate3 WOUND 264 <- other: Fire Blast SPELL_DAMAGE +0.000 s
	{ hit = 2678, line = false }, -- 116.285 nameplate3 MISS 0 <- other: Judgement of Command SPELL_MISSED +0.883 s
	{ hit = 2681, line = false }, -- 116.285 nameplate3 WOUND 68 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2685, line = 2688, spell = 1014 }, -- 116.318 nameplate3 WOUND 19 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2689, line = false }, -- 116.318 nameplate3 WOUND 75 <- other: Sinister Strike SPELL_DAMAGE -0.001 s
	{ hit = 2692, line = false }, -- 116.318 nameplate3 WOUND 70 <- other: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2696, line = false }, -- 116.368 nameplate3 WOUND 27 <- creature: Attack SPELL_DAMAGE +0.466 s
	{ hit = 2699, line = false }, -- 116.368 nameplate3 WOUND 21 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 2702, line = false }, -- 116.418 nameplate3 PARRY 0 <- other: Holy Strike SPELL_MISSED +0.000 s
	{ hit = 2705, line = false }, -- 116.451 nameplate3 WOUND 23 <- other: swing SWING_DAMAGE +0.949 s
	{ hit = 2709, line = false }, -- 116.535 nameplate3 WOUND 20 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2712, line = false }, -- 116.535 nameplate3 WOUND 34 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2718, line = false }, -- 116.718 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.300 s
	{ hit = 2721, line = false }, -- 116.735 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.200 s
	{ hit = 2725, line = false, unsure = "late by 1.25 s" }, -- 116.751 nameplate3 WOUND 3 <- other: swing SWING_DAMAGE +1.249 s
	{ hit = 2728, line = false }, -- 116.851 nameplate3 WOUND 32 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2731, line = false }, -- 116.851 nameplate3 WOUND 50 <- other: Ignite SPELL_DAMAGE -0.001 s
	{ hit = 2734, line = false }, -- 116.851 nameplate3 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2740, line = false }, -- 116.951 nameplate3 WOUND 29 <- other: Moonfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2744, line = false }, -- 117.001 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.466 s
	{ hit = 2750, line = false }, -- 117.068 nameplate3 WOUND 57 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2754, line = false }, -- 117.101 nameplate3 WOUND 102 <- other: Auto Shot RANGE_DAMAGE +0.033 s
	{ hit = 2758, line = false }, -- 117.118 nameplate39 MISS 0 <- other: swing SWING_MISSED +0.365 s
	{ hit = 2759, line = false }, -- 117.168 nameplate3 WOUND 3 <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 2764, line = false }, -- 117.268 nameplate3 WOUND 156 <- other: swing SWING_DAMAGE +0.850 s
	{ hit = 2767, line = false }, -- 117.268 nameplate3 MISS 0 <- other: Firebolt SPELL_MISSED +0.531 s
	{ hit = 2770, line = false }, -- 117.285 nameplate3 WOUND 47 <- other: Firebolt SPELL_DAMAGE -0.002 s
	{ hit = 2775, line = false, unsure = "no file event fits" }, -- 117.285 nameplate3 WOUND 2 <- no file event 
	{ hit = 2778, line = false }, -- 117.285 nameplate3 WOUND 57 <- other: Lightning Shield SPELL_DAMAGE -0.002 s
	{ hit = 2781, line = false }, -- 117.285 nameplate3 WOUND 51 <- other: Lightning Shield SPELL_DAMAGE -0.002 s
	{ hit = 2784, line = false, unsure = "no file event fits" }, -- 117.285 nameplate3 WOUND 3 <- no file event 
	{ hit = 2788, line = false }, -- 117.285 nameplate3 WOUND 45 <- other: swing SWING_DAMAGE +0.433 s
	{ hit = 2793, line = false }, -- 117.485 nameplate3 WOUND 17 <- other: Rend SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2797, line = false }, -- 117.585 nameplate3 WOUND 22 <- other: Bite SPELL_DAMAGE +0.000 s
	{ hit = 2800, line = false }, -- 117.585 nameplate3 WOUND 78 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2803, line = false, unsure = "late by 1.32 s" }, -- 117.735 nameplate3 WOUND 6 <- other: swing SWING_DAMAGE +1.317 s
	{ hit = 2807, line = false, unsure = "no file event fits" }, -- 117.901 nameplate4 WOUND 0 <- no file event 
	{ hit = 2808, line = false }, -- 118.001 nameplate3 WOUND 467 <- other: Pyroblast SPELL_DAMAGE -0.001 s
	{ hit = 2811, line = false, unsure = "2 file events fit" }, -- 118.001 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.300 s
	{ hit = 2814, line = 2792, spell = false }, -- 118.018 nameplate3 PARRY 0 <- pet: swing SWING_MISSED +0.532 s
	{ hit = 2817, line = false }, -- 118.051 nameplate3 WOUND 8 <- other: swing SWING_DAMAGE +0.466 s
	{ hit = 2820, line = false, unsure = "no file event fits" }, -- 118.101 nameplate33 WOUND 2 <- no file event 
	{ hit = 2821, line = false }, -- 118.101 nameplate3 WOUND 9 <- other: swing SWING_DAMAGE +0.816 s
	{ hit = 2825, line = false, unsure = "no file event fits" }, -- 118.101 nameplate33 WOUND 3 <- no file event 
	{ hit = 2826, line = false }, -- 118.101 nameplate3 DODGE 0 <- other: Sinister Strike SPELL_MISSED -0.004 s
	{ hit = 2829, line = false }, -- 118.118 nameplate3 WOUND 23 <- creature: Attack SPELL_DAMAGE +0.013 s
	{ hit = 2832, line = false }, -- 118.152 nameplate3 WOUND 35 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2836, line = false }, -- 118.207 nameplate3 WOUND 114 <- other: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 2839, line = false }, -- 118.207 nameplate3 WOUND 29 <- other: Moonfire SPELL_DAMAGE -0.001 s
	{ hit = 2845, line = 2848, spell = 1014 }, -- 118.319 nameplate3 WOUND 25 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2850, line = false }, -- 118.435 nameplate3 WOUND 26 <- other: swing SWING_DAMAGE +0.948 s
	{ hit = 2853, line = false }, -- 118.469 nameplate3 WOUND 24 <- other: swing SWING_DAMAGE +0.982 s
	{ hit = 2856, line = false }, -- 118.569 nameplate3 MISS 0 <- other: Ice Lance SPELL_MISSED -0.004 s
	{ hit = 2861, line = false }, -- 118.637 nameplate3 WOUND 54 <- other: Arcane Shot SPELL_DAMAGE +0.000 s
	{ hit = 2866, line = false }, -- 118.752 nameplate3 WOUND 124 <- other: Arcane Shot SPELL_DAMAGE -0.001 s
	{ hit = 2871, line = false }, -- 118.752 nameplate3 MISS 0 <- pet: Torment SPELL_MISSED -0.004 s
	{ hit = 2875, line = false }, -- 118.852 nameplate3 WOUND 50 <- other: Ignite SPELL_DAMAGE +0.000 s
	{ hit = 2878, line = false }, -- 118.852 nameplate3 WOUND 32 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2881, line = false }, -- 118.852 nameplate3 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2884, line = false }, -- 118.869 nameplate3 WOUND 23 <- creature: Attack SPELL_DAMAGE +0.017 s
	{ hit = 2888, line = false }, -- 118.952 nameplate3 WOUND 90 <- other: Judgement of Fury SPELL_DAMAGE -0.001 s
	{ hit = 2891, line = false }, -- 118.952 nameplate3 WOUND 58 <- other: Auto Shot RANGE_DAMAGE -0.001 s
	{ hit = 2895, line = false }, -- 119.069 nameplate3 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2898, line = false }, -- 119.069 nameplate3 WOUND 49 <- other: Sinister Strike SPELL_DAMAGE +0.000 s
	{ hit = 2902, line = 2905, spell = 6222 }, -- 119.169 nameplate3 WOUND 44 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2906, line = false }, -- 119.270 nameplate3 WOUND 151 <- other: Seal of Command SPELL_DAMAGE +0.000 s
	{ hit = 2909, line = false }, -- 119.270 nameplate3 WOUND 115 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 2912, line = false }, -- 119.335 nameplate3 WOUND 145 <- other: Aimed Shot SPELL_DAMAGE +0.064 s
	{ hit = 2915, line = false }, -- 119.385 nameplate3 WOUND 71 <- other: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2918, line = false }, -- 119.385 nameplate3 WOUND 19 <- other: Seal of Fury SPELL_DAMAGE -0.001 s
	{ hit = 2921, line = false }, -- 119.385 nameplate3 WOUND 111 <- other: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 2926, line = false }, -- 119.486 nameplate3 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 2930, line = false }, -- 119.486 nameplate3 WOUND 40 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2933, line = false }, -- 119.486 nameplate3 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2936, line = false }, -- 119.486 nameplate3 WOUND 20 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2940, line = false, unsure = "2 file events fit" }, -- 119.586 nameplate3 PARRY 0 <- other: Claw SPELL_MISSED +0.000 s
	{ hit = 2943, line = false }, -- 119.619 nameplate3 WOUND 36 <- other: swing SWING_DAMAGE +0.348 s
	{ hit = 2946, line = false, unsure = "no file event fits" }, -- 119.702 nameplate3 WOUND 4 <- no file event 
	{ hit = 2949, line = false }, -- 119.702 nameplate3 WOUND 212 <- other: Searing Pain SPELL_DAMAGE +0.000 s
	{ hit = 2952, line = false }, -- 119.836 nameplate3 WOUND 39 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2956, line = false, unsure = "no file event fits" }, -- 119.919 nameplate4 HEAL 427 <- no file event 
	{ hit = 2957, line = false }, -- 120.019 nameplate39 WOUND 36 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2958, line = false }, -- 120.052 nameplate3 WOUND 7 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2961, line = 2929, spell = false }, -- 120.052 nameplate3 PARRY 0 <- pet: swing SWING_MISSED +0.566 s
	{ hit = 2964, line = false }, -- 120.052 nameplate3 WOUND 17 <- other: swing SWING_DAMAGE +0.466 s
	{ hit = 2968, line = false }, -- 120.119 nameplate3 DODGE 0 <- other: Sinister Strike SPELL_MISSED +0.000 s
	{ hit = 2973, line = false }, -- 120.152 nameplate3 WOUND 35 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2976, line = false }, -- 120.152 nameplate3 WOUND 27 <- other: swing SWING_DAMAGE +0.566 s
	{ hit = 2980, line = false }, -- 120.219 nameplate3 WOUND 29 <- other: Firebolt SPELL_DAMAGE +0.000 s
	{ hit = 2983, line = 2986, spell = 1014 }, -- 120.319 nameplate3 WOUND 25 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2987, line = false, unsure = "no file event fits" }, -- 120.419 nameplate34 HEAL 292 <- no file event 
	{ hit = 2988, line = false, unsure = "late by 1.32 s" }, -- 120.485 nameplate3 WOUND 9 <- other: swing SWING_DAMAGE +1.316 s
	{ hit = 2991, line = false }, -- 120.536 nameplate3 WOUND 17 <- other: Rend SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 2994, line = false }, -- 120.536 nameplate3 WOUND 40 <- other: swing SWING_DAMAGE +0.950 s
	{ hit = 2997, line = false }, -- 120.636 nameplate3 WOUND 78 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3002, line = false }, -- 120.835 nameplate3 WOUND 8 <- other: swing SWING_DAMAGE +0.299 s
	{ hit = 3005, line = false }, -- 120.852 nameplate3 WOUND 32 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3008, line = false }, -- 120.852 nameplate3 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3011, line = false }, -- 120.952 nameplate3 WOUND 61 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3014, line = false, unsure = "2 file events fit" }, -- 120.985 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.565 s
	{ hit = 3018, line = false }, -- 120.985 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.566 s
	{ hit = 3021, line = false }, -- 121.002 nameplate3 WOUND 33 <- other: swing SWING_DAMAGE +0.466 s
	{ hit = 3024, line = false }, -- 121.069 nameplate3 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3027, line = false }, -- 121.069 nameplate3 WOUND 60 <- other: Sinister Strike SPELL_DAMAGE -0.001 s
	{ hit = 3035, line = false }, -- 121.169 nameplate3 WOUND 54 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3038, line = false }, -- 121.169 nameplate3 WOUND 11 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3042, line = false }, -- 121.252 nameplate3 WOUND 69 <- other: Auto Shot RANGE_DAMAGE +0.083 s
	{ hit = 3046, line = false, unsure = "no file event fits" }, -- 121.286 nameplate37 WOUND 49 <- no file event 
	{ hit = 3047, line = false }, -- 121.286 nameplate3 MISS 0 <- other: Judgement of Command SPELL_MISSED +0.000 s
	{ hit = 3053, line = false, unsure = "2 file events fit" }, -- 121.404 nameplate3 DODGE 0 <- other: swing SWING_MISSED -0.098 s
	{ hit = 3059, line = false }, -- 121.602 nameplate3 WOUND 18 <- other: Claw SPELL_DAMAGE -0.001 s
	{ hit = 3063, line = false }, -- 121.702 nameplate3 WOUND 103 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 3067, line = false }, -- 121.836 nameplate3 WOUND 27 <- creature: Attack SPELL_DAMAGE +0.234 s
	{ hit = 3070, line = false }, -- 121.836 nameplate3 WOUND 147 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 3075, line = false, unsure = "late by 1.30 s" }, -- 121.935 nameplate3 PARRY 0 <- other: swing SWING_MISSED +1.299 s
	{ hit = 3078, line = false }, -- 122.019 nameplate39 WOUND 36 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3079, line = false }, -- 122.019 nameplate3 WOUND 73 <- other: Multi-Shot SPELL_DAMAGE -0.001 s
	{ hit = 3082, line = 3057, spell = false }, -- 122.069 nameplate3 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 3086, line = false, unsure = "no file event fits" }, -- 122.119 nameplate4 WOUND 0 <- no file event 
	{ hit = 3088, line = 3091, spell = 6222 }, -- 122.219 nameplate3 WOUND 30 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3095, line = false }, -- 122.269 nameplate39 WOUND 42 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 3096, line = 3099, spell = 1014 }, -- 122.319 nameplate3 WOUND 25 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3100, line = false }, -- 122.319 nameplate3 WOUND 71 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3103, line = false }, -- 122.319 nameplate3 WOUND 3 <- other: swing SWING_DAMAGE +0.299 s
	{ hit = 3108, line = false }, -- 122.436 nameplate3 WOUND 60 <- other: Flame Shock SPELL_DAMAGE -0.001 s
	{ hit = 3111, line = false }, -- 122.436 nameplate3 WOUND 52 <- other: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3114, line = false, unsure = "no file event fits" }, -- 122.436 nameplate30 MISS 0 <- no file event 
	{ hit = 3115, line = false, unsure = "no file event fits" }, -- 122.436 nameplate17 WOUND 137 <- no file event 
	{ hit = 3116, line = false, unsure = "late by 1.50 s" }, -- 122.452 nameplate3 DODGE 0 <- other: swing SWING_MISSED +1.500 s
	{ hit = 3119, line = false }, -- 122.486 nameplate3 WOUND 35 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 3122, line = false, unsure = "no file event fits" }, -- 122.519 nameplate17 MISS 0 <- no file event 
	{ hit = 3123, line = false }, -- 122.535 nameplate3 WOUND 41 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3126, line = false }, -- 122.535 nameplate3 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3129, line = false, unsure = "no file event fits" }, -- 122.535 nameplate17 WOUND 2 <- no file event 
	{ hit = 3132, line = false }, -- 122.585 nameplate3 WOUND 17 <- other: swing SWING_DAMAGE +0.982 s
	{ hit = 3136, line = false, unsure = "no file event fits" }, -- 122.736 nameplate17 WOUND 2 <- no file event 
	{ hit = 3137, line = false }, -- 122.752 nameplate39 MISS 0 <- other: Multi-Shot SPELL_MISSED -0.004 s
	{ hit = 3141, line = false }, -- 122.835 nameplate3 WOUND 32 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3144, line = false, unsure = "no file event fits" }, -- 122.835 nameplate30 WOUND 98 <- no file event 
	{ hit = 3145, line = false }, -- 122.835 nameplate3 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3149, line = false, unsure = "no file event fits" }, -- 122.936 nameplate17 WOUND 46 <- no file event 
	{ hit = 3154, line = false }, -- 123.052 nameplate3 WOUND 46 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3160, line = false }, -- 123.169 nameplate3 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 3167, line = false }, -- 123.202 nameplate3 WOUND 70 <- other: swing SWING_DAMAGE +0.765 s
	{ hit = 3170, line = false, unsure = "no file event fits" }, -- 123.202 nameplate9 DODGE 0 <- no file event 
	{ hit = 3171, line = false }, -- 123.269 nameplate3 WOUND 20 <- other: Claw SPELL_DAMAGE +0.000 s
	{ hit = 3174, line = false, unsure = "no file event fits" }, -- 123.369 nameplate34 HEAL 292 <- no file event 
	{ hit = 3176, line = false, unsure = "3 file events fit" }, -- 123.486 nameplate3 MISS 0 <- other: Sinister Strike SPELL_MISSED +0.000 s
	{ hit = 3181, line = false }, -- 123.486 nameplate3 WOUND 17 <- other: Rend SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3184, line = 3179, spell = false, unsure = "2 file events fit" }, -- 123.486 nameplate3 MISS 0 <- pet: swing SWING_MISSED -0.001 s
	{ hit = 3187, line = false, unsure = "no file event fits" }, -- 123.585 nameplate17 WOUND 77 <- no file event 
	{ hit = 3188, line = false, unsure = "no file event fits" }, -- 123.585 nameplate30 WOUND 82 <- no file event 
	{ hit = 3189, line = false, unsure = "no file event fits" }, -- 123.585 nameplate3 WOUND 3 <- no file event 
	{ hit = 3192, line = false }, -- 123.585 nameplate3 WOUND 78 <- other: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3196, line = false }, -- 123.669 nameplate3 WOUND 273 <- other: Shadow Bolt SPELL_DAMAGE +0.500 s
	{ hit = 3203, line = false }, -- 123.702 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.116 s
	{ hit = 3206, line = false, unsure = "no file event fits" }, -- 123.752 nameplate30 WOUND 191 <- no file event 
	{ hit = 3207, line = false }, -- 123.885 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.300 s
	{ hit = 3210, line = false, unsure = "no file event fits" }, -- 123.902 nameplate9 WOUND 171 <- no file event 
	{ hit = 3211, line = false }, -- 123.902 nameplate3 WOUND 62 <- other: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3214, line = false, unsure = "no file event fits" }, -- 123.902 nameplate9 WOUND 9 <- no file event 
	{ hit = 3216, line = false, unsure = "no file event fits" }, -- 124.002 nameplate17 WOUND 130 <- no file event 
	{ hit = 3217, line = false, unsure = "no file event fits" }, -- 124.002 nameplate17 WOUND 369 <- no file event 
	{ hit = 3218, line = false }, -- 124.002 nameplate39 WOUND 36 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3219, line = false }, -- 124.002 nameplate3 WOUND 90 <- other: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 3222, line = false, unsure = "no file event fits" }, -- 124.002 nameplate17 WOUND 2 <- no file event 
	{ hit = 3223, line = false, unsure = "no file event fits" }, -- 124.002 nameplate17 WOUND 2 <- no file event 
	{ hit = 3224, line = 3233, spell = 7809, unsure = "3 file events fit" }, -- 124.019 nameplate3 MISS 0 <- pet: Torment SPELL_MISSED -0.084 s
	{ hit = 3227, line = 3202, spell = 6222, unsure = "2 file events fit" }, -- 124.052 nameplate3 MISS 0 <- you: Corruption SPELL_MISSED +0.347 s
	{ hit = 3234, line = false }, -- 124.102 nameplate3 MISS 0 <- other: Frostbolt SPELL_MISSED +0.611 s
	{ hit = 3239, line = false }, -- 124.135 nameplate3 WOUND 26 <- creature: Attack SPELL_DAMAGE +0.032 s
	{ hit = 3242, line = false }, -- 124.219 nameplate3 WOUND 53 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3245, line = false }, -- 124.219 nameplate3 WOUND 11 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3248, line = false, unsure = "no file event fits" }, -- 124.219 nameplate3 WOUND 3 <- no file event 
	{ hit = 3251, line = false }, -- 124.219 nameplate3 WOUND 123 <- other: swing SWING_DAMAGE +0.417 s
	{ hit = 3256, line = 3259, spell = 1014 }, -- 124.319 nameplate3 WOUND 25 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3263, line = false, unsure = "5 file events fit" }, -- 124.369 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.267 s
	{ hit = 3266, line = false }, -- 124.419 nameplate3 MISS 0 <- other: Sinister Strike SPELL_MISSED +0.000 s
	{ hit = 3269, line = false, unsure = "4 file events fit" }, -- 124.452 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.650 s
	{ hit = 3272, line = false, unsure = "no file event fits" }, -- 124.519 nameplate17 WOUND 2 <- no file event 
	{ hit = 3273, line = false, unsure = "3 file events fit" }, -- 124.535 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.733 s
	{ hit = 3276, line = false, unsure = "2 file events fit" }, -- 124.569 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.984 s
	{ hit = 3279, line = false }, -- 124.685 nameplate39 WOUND 34 <- other: swing SWING_DAMAGE +0.979 s
	{ hit = 3281, line = false, unsure = "no file event fits" }, -- 124.719 nameplate17 WOUND 48 <- no file event 
	{ hit = 3282, line = false }, -- 124.752 nameplate3 WOUND 123 <- other: Arcane Shot SPELL_DAMAGE +0.033 s
	{ hit = 3285, line = false }, -- 124.769 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.767 s
	{ hit = 3288, line = false }, -- 124.835 nameplate3 WOUND 40 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3291, line = false }, -- 124.835 nameplate3 IMMUNE 0 <- other: Psychic Scream SPELL_MISSED -0.001 s
	{ hit = 3294, line = false }, -- 124.835 nameplate3 WOUND 46 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3297, line = false, unsure = "2 file events fit" }, -- 124.835 nameplate3 PARRY 0 <- other: Claw SPELL_MISSED -0.002 s
	{ hit = 3300, line = false }, -- 124.935 nameplate3 WOUND 121 <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 3303, line = false }, -- 124.935 nameplate3 DODGE 0 <- other: Sinister Strike SPELL_MISSED -0.002 s
	{ hit = 3306, line = false, unsure = "no file event fits" }, -- 124.935 nameplate34 WOUND 44 <- no file event 
	{ hit = 3307, line = false }, -- 124.935 nameplate3 WOUND 41 <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 3310, line = false }, -- 124.935 nameplate3 MISS 0 <- other: Smite SPELL_MISSED -0.002 s
	{ hit = 3313, line = false }, -- 125.052 nameplate3 WOUND 46 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3321, line = false }, -- 125.152 player WOUND 160 <- other: Rain of Fire SPELL_DAMAGE -0.003 s
	{ hit = 3323, line = false }, -- 125.336 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.284 s
	{ hit = 3326, line = false }, -- 125.469 nameplate3 WOUND 21 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3329, line = false }, -- 125.469 nameplate3 WOUND 52 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3332, line = false }, -- 125.469 nameplate3 WOUND 51 <- other: Sinister Strike SPELL_DAMAGE +0.000 s
	{ hit = 3335, line = false }, -- 125.469 nameplate3 WOUND 41 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3338, line = false }, -- 125.469 nameplate3 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3343, line = false, unsure = "late by 1.30 s" }, -- 125.519 nameplate3 WOUND 290 <- other: Shadow Bolt SPELL_DAMAGE +1.297 s
	{ hit = 3346, line = false, unsure = "no file event fits" }, -- 125.585 nameplate3 WOUND 3 <- no file event 
	{ hit = 3349, line = false }, -- 125.702 nameplate3 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 3355, line = false }, -- 125.736 nameplate3 WOUND 279 <- other: Frostbolt SPELL_DAMAGE +0.265 s
	{ hit = 3359, line = false, unsure = "3 file events fit" }, -- 125.769 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.184 s
	{ hit = 3366, line = false }, -- 125.802 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.332 s
	{ hit = 3369, line = false }, -- 125.852 nameplate3 WOUND 127 <- other: Arcane Shot SPELL_DAMAGE +0.266 s
	{ hit = 3372, line = 3365, spell = 1014 }, -- 125.902 nameplate3 MISS 0 <- you: Bane of Agony SPELL_MISSED +0.099 s
	{ hit = 3375, line = false, unsure = "3 file events fit" }, -- 125.919 nameplate3 PARRY 0 <- other: Sinister Strike SPELL_MISSED +0.000 s
	{ hit = 3378, line = false }, -- 125.919 nameplate3 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 3381, line = false }, -- 125.919 nameplate3 WOUND 258 <- other: Shadow Bolt SPELL_DAMAGE +0.000 s
	{ hit = 3385, line = false }, -- 126.019 nameplate39 WOUND 36 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3386, line = false, unsure = "no file event fits" }, -- 126.019 nameplate9 RESIST 0 <- no file event 
	{ hit = 3387, line = false }, -- 126.019 nameplate39 IMMUNE 0 <- other: Psychic Scream SPELL_MISSED +0.000 s
	{ hit = 3388, line = false, unsure = "no file event fits" }, -- 126.019 nameplate9 WOUND 9 <- no file event 
	{ hit = 3390, line = false, unsure = "no file event fits" }, -- 126.019 nameplate17 WOUND 74 <- no file event 
	{ hit = 3391, line = false, unsure = "2 file events fit" }, -- 126.036 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.451 s
	{ hit = 3394, line = false }, -- 126.036 nameplate39 WOUND 64 <- other: swing SWING_DAMAGE +0.566 s
	{ hit = 3395, line = false }, -- 126.136 nameplate3 WOUND 32 <- other: Lash of Pain SPELL_DAMAGE +0.000 s
	{ hit = 3398, line = false }, -- 126.136 nameplate3 WOUND 33 <- other: Lash of Pain SPELL_DAMAGE +0.000 s
	{ hit = 3401, line = false }, -- 126.136 nameplate3 WOUND 39 <- other: Demonic Brand SPELL_DAMAGE +0.000 s
	{ hit = 3405, line = false, unsure = "no file event fits" }, -- 126.235 nameplate17 WOUND 124 <- no file event 
	{ hit = 3410, line = false, unsure = "no file event fits" }, -- 126.436 nameplate34 HEAL 292 <- no file event 
	{ hit = 3411, line = false, unsure = "no file event fits" }, -- 126.436 nameplate9 MISS 0 <- no file event 
	{ hit = 3412, line = false }, -- 126.436 nameplate3 MISS 0 <- other: Smite SPELL_MISSED -0.001 s
	{ hit = 3416, line = 3342, spell = false, unsure = "late by 1.07 s" }, -- 126.536 nameplate3 PARRY 0 <- pet: swing SWING_MISSED +1.066 s
	{ hit = 3420, line = false }, -- 126.552 nameplate3 WOUND 17 <- other: Rend SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3423, line = false }, -- 126.552 nameplate3 WOUND 78 <- other: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3426, line = false, unsure = "no file event fits" }, -- 126.569 nameplate3 PARRY 0 <- no file event 
	{ hit = 3430, line = false }, -- 126.636 nameplate3 WOUND 23 <- creature: Attack SPELL_DAMAGE +0.082 s
	{ hit = 3433, line = false, unsure = "no file event fits" }, -- 126.752 nameplate37 WOUND 142 <- no file event 
	{ hit = 3434, line = false }, -- 126.752 nameplate3 WOUND 40 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3437, line = false, unsure = "late by 1.17 s" }, -- 126.752 nameplate3 WOUND 2 <- other: swing SWING_DAMAGE +1.166 s
	{ hit = 3442, line = false }, -- 126.852 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.298 s
	{ hit = 3445, line = false }, -- 126.869 nameplate3 WOUND 61 <- other: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3448, line = false }, -- 126.969 nameplate3 WOUND 39 <- other: Claw SPELL_DAMAGE +0.000 s
	{ hit = 3451, line = false, unsure = "no file event fits" }, -- 126.969 nameplate3 WOUND 2 <- no file event 
	{ hit = 3454, line = false }, -- 126.969 nameplate3 WOUND 70 <- other: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3457, line = false }, -- 126.969 nameplate3 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3460, line = false }, -- 126.969 nameplate3 WOUND 125 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 3464, line = false, unsure = "no file event fits" }, -- 127.052 nameplate17 DODGE 0 <- no file event 
	{ hit = 3465, line = false }, -- 127.069 nameplate3 WOUND 46 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3471, line = false }, -- 127.169 nameplate3 WOUND 54 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3474, line = false }, -- 127.169 nameplate3 WOUND 11 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3477, line = false }, -- 127.269 nameplate3 WOUND 8 <- other: swing SWING_DAMAGE +0.832 s
	{ hit = 3480, line = false }, -- 127.285 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.316 s
	{ hit = 3483, line = false }, -- 127.335 nameplate3 MISS 0 <- other: Seal of Command SPELL_MISSED +0.049 s
	{ hit = 3487, line = false, unsure = "no file event fits" }, -- 127.419 nameplate9 MISS 0 <- no file event 
	{ hit = 3490, line = false }, -- 127.486 nameplate3 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3498, line = false }, -- 127.502 nameplate3 WOUND 47 <- other: swing SWING_DAMAGE +0.433 s
	{ hit = 3502, line = false, unsure = "no file event fits" }, -- 127.552 nameplate9 MISS 0 <- no file event 
	{ hit = 3503, line = false }, -- 127.602 nameplate3 WOUND 38 <- other: Demonic Brand SPELL_DAMAGE +0.000 s
	{ hit = 3509, line = false }, -- 127.703 nameplate3 WOUND 48 <- other: Lash of Pain SPELL_DAMAGE +0.000 s
	{ hit = 3512, line = false }, -- 127.703 nameplate17 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE +0.733 s
	{ hit = 3513, line = false }, -- 127.736 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.567 s
	{ hit = 3516, line = false, unsure = "no file event fits" }, -- 127.752 nameplate17 WOUND 375 <- no file event 
	{ hit = 3517, line = false }, -- 127.786 nameplate3 WOUND 440 <- other: Shadow Bolt SPELL_DAMAGE +0.616 s
	{ hit = 3520, line = false, unsure = "no file event fits" }, -- 127.819 nameplate30 WOUND 188 <- no file event 
	{ hit = 3522, line = false }, -- 128.019 nameplate3 MISS 0 <- other: Smite SPELL_MISSED +0.000 s
	{ hit = 3525, line = false }, -- 128.019 nameplate39 WOUND 87 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3526, line = false, unsure = "no file event fits" }, -- 128.019 nameplate17 WOUND 74 <- no file event 
	{ hit = 3527, line = false, unsure = "no file event fits" }, -- 128.019 nameplate9 WOUND 9 <- no file event 
	{ hit = 3528, line = false }, -- 128.052 nameplate3 WOUND 26 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 3531, line = 3493, spell = false }, -- 128.052 nameplate3 WOUND 1 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 3534, line = false, unsure = "no file event fits" }, -- 128.069 nameplate37 WOUND 200 <- no file event 
	{ hit = 3537, line = false, unsure = "no file event fits" }, -- 128.119 nameplate9 WOUND 59 <- no file event 
	{ hit = 3538, line = false }, -- 128.119 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.300 s
	{ hit = 3542, line = false }, -- 128.302 nameplate3 WOUND 4 <- other: swing SWING_DAMAGE +0.882 s
	{ hit = 3545, line = false, unsure = "no file event fits" }, -- 128.335 nameplate17 WOUND 262 <- no file event 
	{ hit = 3546, line = false }, -- 128.436 nameplate3 WOUND 21 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3549, line = false }, -- 128.436 nameplate3 WOUND 103 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3552, line = false, unsure = "no file event fits" }, -- 128.436 nameplate17 WOUND 193 <- no file event 
	{ hit = 3553, line = false }, -- 128.436 nameplate3 WOUND 41 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3556, line = false, unsure = "late by 1.31 s" }, -- 128.485 nameplate3 WOUND 28 <- other: swing SWING_DAMAGE +1.315 s
	{ hit = 3559, line = false }, -- 128.552 nameplate3 WOUND 42 <- other: swing SWING_DAMAGE +0.950 s
	{ hit = 3562, line = false }, -- 128.586 nameplate3 WOUND 44 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 3569, line = false, unsure = "no file event fits" }, -- 128.752 nameplate37 WOUND 34 <- no file event 
	{ hit = 3570, line = false }, -- 128.752 nameplate39 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 3572, line = false }, -- 128.852 nameplate3 WOUND 40 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3575, line = false, unsure = "no file event fits" }, -- 128.852 nameplate37 WOUND 114 <- no file event 
	{ hit = 3577, line = false }, -- 128.952 nameplate3 MISS 0 <- other: Bite SPELL_MISSED +0.000 s
	{ hit = 3581, line = false }, -- 129.052 nameplate3 WOUND 46 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3584, line = false }, -- 129.052 nameplate39 WOUND 129 <- other: swing SWING_DAMAGE +0.300 s
	{ hit = 3586, line = false }, -- 129.152 nameplate3 WOUND 112 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 3589, line = false }, -- 129.252 nameplate3 MISS 0 <- other: Cursed Murloc Eye SPELL_MISSED -0.001 s
	{ hit = 3592, line = false, unsure = "no file event fits" }, -- 129.252 nameplate37 WOUND 79 <- no file event 
	{ hit = 3593, line = false }, -- 129.302 nameplate3 WOUND 41 <- other: swing SWING_DAMAGE +0.766 s
	{ hit = 3597, line = false, unsure = "2 file events fit" }, -- 129.369 nameplate3 PARRY 0 <- other: swing SWING_MISSED +0.216 s
	{ hit = 3600, line = false }, -- 129.419 nameplate9 DODGE 0 <- other: swing SWING_MISSED +0.983 s
	{ hit = 3601, line = false, unsure = "no file event fits" }, -- 129.469 nameplate34 HEAL 292 <- no file event 
	{ hit = 3602, line = false, unsure = "2 file events fit" }, -- 129.469 nameplate3 MISS 0 <- other: Smite SPELL_MISSED +0.000 s
	{ hit = 3605, line = false, unsure = "no file event fits" }, -- 129.469 nameplate3 WOUND 0 <- no file event 
	{ hit = 3608, line = false, unsure = "no file event fits" }, -- 129.469 nameplate3 WOUND 0 <- no file event 
	{ hit = 3612, line = false }, -- 129.486 nameplate3 MISS 0 <- other: Frostbolt SPELL_MISSED -0.003 s
	{ hit = 3615, line = false }, -- 129.519 nameplate3 WOUND 23 <- creature: Attack SPELL_DAMAGE +0.266 s
	{ hit = 3618, line = false, unsure = "no file event fits" }, -- 129.569 nameplate30 WOUND 503 <- no file event 
	{ hit = 3619, line = false, unsure = "no file event fits" }, -- 129.569 nameplate3 WOUND 0 <- no file event 
	{ hit = 3622, line = false }, -- 129.569 nameplate3 WOUND 14 <- other: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3626, line = false }, -- 129.602 nameplate3 MISS 0 <- other: Aimed Shot SPELL_MISSED -0.002 s
	{ hit = 3629, line = false, unsure = "no file event fits" }, -- 129.669 nameplate9 PARRY 0 <- no file event 
	{ hit = 3630, line = false }, -- 129.669 nameplate3 WOUND 182 <- other: Holy Shock SPELL_DAMAGE -0.001 s
	{ hit = 3633, line = false }, -- 129.669 nameplate3 WOUND 96 <- other: Judgement of Fury SPELL_DAMAGE -0.001 s
	{ hit = 3640, line = false }, -- 129.769 player WOUND 359 <- creature: Cleave SPELL_DAMAGE -0.001 s
	{ hit = 3648, line = false }, -- 129.769 nameplate4 PARRY 0 <- other: swing SWING_MISSED +0.916 s
	{ hit = 3649, line = false, unsure = "no file event fits" }, -- 129.769 nameplate3 WOUND 3 <- no file event 
	{ hit = 3652, line = false }, -- 129.769 nameplate3 WOUND 57 <- other: Lightning Shield SPELL_DAMAGE -0.003 s
	{ hit = 3658, line = 3657, spell = 6222 }, -- 129.886 nameplate3 MISS 0 <- you: Corruption SPELL_MISSED +0.000 s
	{ hit = 3661, line = false }, -- 129.886 nameplate3 WOUND 61 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3664, line = false }, -- 129.986 nameplate39 WOUND 44 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3665, line = false }, -- 129.986 nameplate3 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3669, line = false }, -- 129.986 nameplate3 WOUND 71 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3672, line = false }, -- 129.986 nameplate3 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3675, line = false, unsure = "no file event fits" }, -- 129.986 nameplate3 WOUND 0 <- no file event 
	{ hit = 3681, line = false }, -- 130.052 nameplate3 WOUND 44 <- other: swing SWING_DAMAGE +0.999 s
	{ hit = 3684, line = false }, -- 130.102 nameplate3 WOUND 54 <- other: Sinister Strike SPELL_DAMAGE -0.001 s
	{ hit = 3687, line = false, unsure = "no file event fits" }, -- 130.102 nameplate30 WOUND 331 <- no file event 
	{ hit = 3688, line = false, unsure = "no file event fits" }, -- 130.136 nameplate37 WOUND 168 <- no file event 
	{ hit = 3690, line = false }, -- 130.202 nameplate3 WOUND 54 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3693, line = false }, -- 130.202 nameplate3 WOUND 11 <- other: Moonfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3696, line = false, unsure = "no file event fits" }, -- 130.202 nameplate37 WOUND 146 <- no file event 
	{ hit = 3699, line = false, unsure = "no file event fits" }, -- 130.352 nameplate3 PARRY 0 <- no file event 
	{ hit = 3704, line = false }, -- 130.419 nameplate3 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 3708, line = false, unsure = "no file event fits" }, -- 130.552 nameplate3 WOUND 0 <- no file event 
	{ hit = 3713, line = false, unsure = "no file event fits" }, -- 130.719 nameplate4 DODGE 0 <- no file event 
	{ hit = 3714, line = false }, -- 130.736 nameplate3 WOUND 140 <- other: Windfury Weapon SPELL_DAMAGE +0.217 s
	{ hit = 3718, line = false }, -- 130.819 nameplate3 WOUND 278 <- other: Shadow Bolt SPELL_DAMAGE +0.517 s
	{ hit = 3721, line = false, unsure = "late by 1.45 s" }, -- 130.819 nameplate3 PARRY 0 <- other: swing SWING_MISSED +1.450 s
	{ hit = 3724, line = false }, -- 130.836 nameplate3 WOUND 40 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3727, line = false }, -- 130.852 nameplate3 WOUND 123 <- other: Arcane Shot SPELL_DAMAGE +0.131 s
	{ hit = 3731, line = false }, -- 130.952 nameplate3 WOUND 67 <- other: swing SWING_DAMAGE +0.433 s
	{ hit = 3738, line = false, unsure = "no file event fits" }, -- 130.986 nameplate9 WOUND 18 <- no file event 
	{ hit = 3740, line = false }, -- 131.019 nameplate3 WOUND 145 <- other: Windfury Weapon SPELL_DAMAGE +0.500 s
	{ hit = 3748, line = false }, -- 131.136 nameplate3 WOUND 55 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3752, line = false }, -- 131.185 nameplate3 WOUND 20 <- other: swing SWING_DAMAGE +0.566 s
	{ hit = 3755, line = false }, -- 131.236 nameplate3 MISS 0 <- other: swing SWING_MISSED +0.716 s
	{ hit = 3758, line = false, unsure = "no file event fits" }, -- 131.236 nameplate9 WOUND 83 <- no file event 
	{ hit = 3759, line = false, unsure = "no file event fits" }, -- 131.236 nameplate37 WOUND 63 <- no file event 
	{ hit = 3763, line = 3762, spell = 7809, unsure = "2 file events fit" }, -- 131.352 nameplate3 MISS 0 <- pet: Torment SPELL_MISSED -0.001 s
	{ hit = 3766, line = false }, -- 131.352 nameplate3 WOUND 17 <- other: Claw SPELL_DAMAGE -0.001 s
	{ hit = 3769, line = false }, -- 131.352 nameplate3 IMMUNE 0 <- other: Charge Stun SPELL_MISSED -0.002 s
	{ hit = 3772, line = false, unsure = "no file event fits" }, -- 131.419 nameplate37 WOUND 172 <- no file event 
	{ hit = 3774, line = false }, -- 131.452 nameplate3 WOUND 21 <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3777, line = false }, -- 131.452 nameplate3 WOUND 52 <- other: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3780, line = false, unsure = "no file event fits" }, -- 131.452 nameplate3 WOUND 2 <- no file event 
	{ hit = 3783, line = false }, -- 131.452 nameplate3 WOUND 40 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3786, line = false }, -- 131.452 nameplate3 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3789, line = false }, -- 131.469 nameplate3 MISS 0 <- other: Smite SPELL_MISSED +0.233 s
	{ hit = 3794, line = false, unsure = "late by 1.15 s" }, -- 131.569 nameplate3 WOUND 129 <- other: swing SWING_DAMAGE +1.150 s
	{ hit = 3798, line = false }, -- 131.602 nameplate3 WOUND 1 <- other: swing SWING_DAMAGE +0.566 s
	{ hit = 3801, line = false }, -- 131.686 nameplate3 WOUND 125 <- other: Auto Shot RANGE_DAMAGE +0.233 s
	{ hit = 3809, line = false }, -- 132.019 nameplate3 WOUND 36 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 3812, line = false, unsure = "no file event fits" }, -- 132.069 nameplate3 WOUND 3 <- no file event 
	{ hit = 3815, line = false }, -- 132.069 nameplate3 WOUND 149 <- other: Searing Pain SPELL_DAMAGE -0.003 s
	{ hit = 3819, line = 3793, spell = false }, -- 132.120 nameplate3 PARRY 0 <- pet: swing SWING_MISSED +0.567 s
	{ hit = 3823, line = false, unsure = "2 file events fit" }, -- 132.269 nameplate3 MISS 0 <- other: Frostbolt SPELL_MISSED -0.002 s
	{ hit = 3826, line = false, unsure = "no file event fits" }, -- 132.286 nameplate33 WOUND 165 <- no file event 
	{ hit = 3827, line = false, unsure = "no file event fits" }, -- 132.286 nameplate37 WOUND 16 <- no file event 
	{ hit = 3828, line = false, unsure = "no file event fits" }, -- 132.286 nameplate9 WOUND 19 <- no file event 
	{ hit = 3832, line = 3831, spell = 1014 }, -- 132.286 nameplate3 MISS 0 <- you: Bane of Agony SPELL_MISSED -0.001 s
	{ hit = 3835, line = false, unsure = "no file event fits" }, -- 132.386 nameplate34 HEAL 292 <- no file event 
	{ hit = 3836, line = false }, -- 132.469 nameplate3 DODGE 0 <- other: swing SWING_MISSED +0.299 s
	{ hit = 3839, line = false, unsure = "no file event fits" }, -- 132.469 nameplate4 WOUND 0 <- no file event 
	{ hit = 3841, line = false }, -- 132.502 nameplate3 WOUND 17 <- other: Rend SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3845, line = false }, -- 132.619 nameplate3 WOUND 54 <- other: Sinister Strike SPELL_DAMAGE +0.000 s
	{ hit = 3848, line = false }, -- 132.619 nameplate3 WOUND 78 <- other: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3851, line = false }, -- 132.619 nameplate3 WOUND 38 <- other: Demonic Brand SPELL_DAMAGE -0.001 s
	{ hit = 3854, line = false, unsure = "no file event fits" }, -- 132.619 nameplate4 WOUND 0 <- no file event 
	{ hit = 3855, line = false }, -- 132.719 nameplate3 MISS 0 <- other: Smite SPELL_MISSED +0.000 s
	{ hit = 3858, line = false, unsure = "no file event fits" }, -- 132.719 nameplate4 WOUND 110 <- no file event 
	{ hit = 3859, line = false }, -- 132.719 nameplate3 WOUND 55 <- other: Arcane Shot SPELL_DAMAGE -0.001 s
	{ hit = 3862, line = false, unsure = "late by 1.27 s" }, -- 132.719 nameplate4 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE +1.266 s
	{ hit = 3864, line = false }, -- 132.786 nameplate3 WOUND 25 <- creature: Attack SPELL_DAMAGE +0.167 s
	{ hit = 3867, line = false }, -- 132.819 nameplate3 WOUND 70 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3872, line = false, unsure = "no file event fits" }, -- 132.852 nameplate9 PARRY 0 <- no file event 
	{ hit = 3882, line = false }, -- 132.936 nameplate3 WOUND 58 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 3885, line = false }, -- 132.936 nameplate3 WOUND 61 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3889, line = false }, -- 132.936 nameplate3 DODGE 0 <- other: Claw SPELL_MISSED -0.001 s
	{ hit = 3896, line = false, unsure = "no file event fits" }, -- 132.986 nameplate33 DODGE 0 <- no file event 
	{ hit = 3900, line = false }, -- 133.036 nameplate3 WOUND 22 <- other: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3904, line = false }, -- 133.036 nameplate3 WOUND 141 <- other: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3907, line = false }, -- 133.036 nameplate3 WOUND 40 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3910, line = false }, -- 133.036 nameplate3 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 3917, line = false }, -- 133.136 nameplate3 WOUND 55 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3920, line = false }, -- 133.136 nameplate3 WOUND 53 <- other: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3934, line = false }, -- 133.369 nameplate3 WOUND 256 <- other: Shadow Bolt SPELL_DAMAGE +0.333 s
	{ hit = 3937, line = false }, -- 133.369 nameplate3 WOUND 11 <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 3940, line = false }, -- 133.452 nameplate3 WOUND 38 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3943, line = false, unsure = "2 file events fit" }, -- 133.486 nameplate3 WOUND 36 <- other: swing SWING_DAMAGE +0.867 s
	{ hit = 3948, line = false, unsure = "late by 1.07 s" }, -- 133.569 nameplate3 WOUND 36 <- other: swing SWING_DAMAGE +1.066 s
	{ hit = 3951, line = false, unsure = "no file event fits" }, -- 133.586 nameplate34 WOUND 169 <- no file event 
	{ hit = 3953, line = false, unsure = "no file event fits" }, -- 133.652 nameplate33 WOUND 196 <- no file event 
	{ hit = 3954, line = false }, -- 133.652 nameplate3 WOUND 53 <- other: Sinister Strike SPELL_DAMAGE -0.001 s
	{ hit = 3957, line = false }, -- 133.652 nameplate3 WOUND 2 <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 3960, line = false, unsure = "no file event fits" }, -- 133.669 nameplate33 WOUND 143 <- no file event 
	{ hit = 3966, line = false }, -- 133.969 nameplate16 WOUND 44 <- other: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3967, line = false }, -- 134.019 nameplate3 MISS 0 <- other: Windfury Weapon SPELL_MISSED -0.007 s
	{ hit = 3970, line = false }, -- 134.036 nameplate3 WOUND 122 <- other: Auto Shot RANGE_DAMAGE +0.383 s
	{ hit = 3973, line = false }, -- 134.069 nameplate16 WOUND 67 <- other: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3975, line = 3946, spell = false }, -- 134.086 nameplate3 WOUND 1 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 3983, line = false }, -- 134.169 nameplate3 MISS 0 <- other: Smite SPELL_MISSED -0.001 s
	{ hit = 3987, line = false, unsure = "no file event fits" }, -- 134.169 nameplate4 WOUND 143 <- no file event 
	{ hit = 3988, line = false }, -- 134.169 nameplate4 DODGE 0 <- other: swing SWING_MISSED +0.815 s
	{ hit = 3990, line = false, unsure = "no file event fits" }, -- 134.269 nameplate4 WOUND 2 <- no file event 
	{ hit = 3991, line = false, unsure = "no file event fits" }, -- 134.269 nameplate4 WOUND 162 <- no file event 
	{ hit = 3992, line = false }, -- 134.269 nameplate16 WOUND 20 <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3993, line = false, unsure = "no file event fits" }, -- 134.269 nameplate9 WOUND 19 <- no file event 
	{ hit = 3994, line = false, unsure = "no file event fits" }, -- 134.269 nameplate37 WOUND 18 <- no file event 
	{ hit = 3995, line = false, unsure = "no file event fits" }, -- 134.336 nameplate3 DODGE 0 <- no file event 
	{ hit = 3998, line = false }, -- 134.386 nameplate3 MISS 0 <- other: Rend SPELL_MISSED +0.000 s
	{ hit = 4001, line = false }, -- 134.386 nameplate3 WOUND 21 <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4004, line = false }, -- 134.386 nameplate3 WOUND 52 <- other: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4009, line = false }, -- 134.419 nameplate3 WOUND 260 <- other: Auto Shot RANGE_DAMAGE +0.148 s
	{ hit = 4012, line = false, unsure = "no file event fits" }, -- 134.486 nameplate3 WOUND 3 <- no file event 
	{ hit = 4016, line = false, unsure = "outside the Combat Log File" }, -- 134.536 nameplate37 WOUND 166 <- no file event 
	{ hit = 4039, line = false, unsure = "outside the Combat Log File" }, -- 134.586 player WOUND 391 <- no file event 
	{ hit = 4041, line = false, unsure = "outside the Combat Log File" }, -- 134.586 nameplate3 WOUND 37 <- no file event 
	{ hit = 4044, line = false, unsure = "outside the Combat Log File" }, -- 134.586 nameplate3 IMMUNE 0 <- no file event 
	{ hit = 4048, line = false, unsure = "outside the Combat Log File" }, -- 134.586 nameplate3 RESIST 0 <- no file event 
	{ hit = 4050, line = false, unsure = "outside the Combat Log File" }, -- 134.586 nameplate3 WOUND 7 <- no file event 
	{ hit = 4052, line = false, unsure = "outside the Combat Log File" }, -- 134.586 nameplate3 WOUND 16 <- no file event 
	{ hit = 4057, line = false, unsure = "outside the Combat Log File" }, -- 134.787 nameplate4 WOUND 40 <- no file event 
	{ hit = 4058, line = false, unsure = "outside the Combat Log File" }, -- 134.787 nameplate3 WOUND 47 <- no file event 
	{ hit = 4059, line = false, unsure = "outside the Combat Log File" }, -- 134.897 nameplate33 WOUND 87 <- no file event 
	{ hit = 4060, line = false, unsure = "outside the Combat Log File" }, -- 134.897 nameplate37 WOUND 247 <- no file event 
	{ hit = 4063, line = false, unsure = "outside the Combat Log File" }, -- 134.985 nameplate3 WOUND 5 <- no file event 
	{ hit = 4066, line = false, unsure = "outside the Combat Log File" }, -- 135.107 nameplate3 WOUND 55 <- no file event 
	{ hit = 4085, line = false, unsure = "outside the Combat Log File" }, -- 135.418 nameplate4 WOUND 278 <- no file event 
	{ hit = 4086, line = false, unsure = "outside the Combat Log File" }, -- 135.418 nameplate4 WOUND 2 <- no file event 
	{ hit = 4105, line = false, unsure = "outside the Combat Log File" }, -- 136.235 nameplate22 WOUND 21 <- no file event 
	{ hit = 4122, line = false, unsure = "outside the Combat Log File" }, -- 136.785 nameplate4 WOUND 39 <- no file event 
	{ hit = 4126, line = false, unsure = "outside the Combat Log File" }, -- 137.085 nameplate15 WOUND 55 <- no file event 
	{ hit = 4127, line = false, unsure = "outside the Combat Log File" }, -- 137.085 nameplate22 WOUND 67 <- no file event 
	{ hit = 4132, line = false, unsure = "outside the Combat Log File" }, -- 137.218 nameplate15 WOUND 63 <- no file event 
	{ hit = 4134, line = false, unsure = "outside the Combat Log File" }, -- 137.401 nameplate15 WOUND 53 <- no file event 
	{ hit = 4135, line = false, unsure = "outside the Combat Log File" }, -- 137.501 nameplate15 WOUND 47 <- no file event 
	{ hit = 4136, line = false, unsure = "outside the Combat Log File" }, -- 137.501 nameplate15 DODGE 0 <- no file event 
	{ hit = 4137, line = false, unsure = "outside the Combat Log File" }, -- 137.535 nameplate15 DODGE 0 <- no file event 
	{ hit = 4139, line = false, unsure = "outside the Combat Log File" }, -- 137.618 nameplate15 WOUND 75 <- no file event 
	{ hit = 4144, line = false, unsure = "outside the Combat Log File" }, -- 137.918 nameplate15 WOUND 246 <- no file event 
	{ hit = 4146, line = false, unsure = "outside the Combat Log File" }, -- 138.001 nameplate15 WOUND 4 <- no file event 
	{ hit = 4195, line = false, unsure = "outside the Combat Log File" }, -- 139.285 nameplate15 WOUND 99 <- no file event 
}

-- Log Lines with no Hit:
-- line 308 at 19.218 <- no file event
-- line 389 at 23.751 <- no file event
-- line 594 at 37.268 <- no file event
-- line 595 at 37.268 <- no file event
-- line 909 at 55.235 <- pet: swing SWING_MISSED
-- line 2887 at 118.885 <- no file event
-- line 3611 at 129.469 <- pet: swing SWING_MISSED
