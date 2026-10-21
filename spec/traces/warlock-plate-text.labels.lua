-- Labels for warlock-plate-text: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 8, line = 7, spell = 707 }, -- 17.534 nameplate1 WOUND 29 <- you: Immolate SPELL_DAMAGE +0.000 s
	{ hit = 17, line = false }, -- 20.467 player WOUND 63 <- creature: swing SWING_DAMAGE +0.568 s
	{ hit = 19, line = 22, spell = 707 }, -- 20.550 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 25, line = 15, spell = false }, -- 20.984 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.985 s
	{ hit = 28, line = 31, spell = 6222 }, -- 21.117 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 32, line = 35, spell = 1014 }, -- 21.717 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 38, line = false }, -- 22.300 nameplate1 WOUND 0 <- no file event 
	{ hit = 40, line = false }, -- 22.334 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 42, line = 37, spell = false }, -- 22.534 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 45, line = 47, spell = 707 }, -- 23.551 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.002 s
	{ hit = 48, line = 50, spell = 1014 }, -- 23.717 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 51, line = false }, -- 23.800 nameplate1 WOUND 0 <- no file event 
	{ hit = 54, line = 56, spell = 6222 }, -- 24.117 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 57, line = false }, -- 24.317 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 59, line = 53, spell = false }, -- 24.584 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 63, line = 62, spell = false }, -- 25.300 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 65, line = 67, spell = 1014 }, -- 25.717 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 72, line = false }, -- 26.484 pet WOUND 20 <- creature: swing SWING_DAMAGE +0.568 s
	{ hit = 74, line = 76, spell = 707 }, -- 26.540 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 77, line = 69, spell = false }, -- 26.584 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 79, line = 71, spell = false }, -- 26.800 nameplate1 WOUND 2 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 81, line = 83, spell = 6222 }, -- 27.117 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 84, line = 86, spell = 1014 }, -- 27.717 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 90, line = 88, spell = false }, -- 28.317 nameplate1 WOUND 3 <- you: swing SWING_DAMAGE +0.368 s
	{ hit = 92, line = 89, spell = false }, -- 28.601 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 96, line = 98, spell = 707 }, -- 29.534 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 99, line = 101, spell = 1014 }, -- 29.717 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 102, line = 95, spell = false }, -- 29.817 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.368 s
	{ hit = 104, line = false }, -- 29.951 pet WOUND 21 <- no file event 
	{ hit = 107, line = 109, spell = 6222 }, -- 30.117 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 112, line = 106, spell = false }, -- 30.551 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 114, line = false }, -- 31.301 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.900 s
	{ hit = 116, line = false }, -- 31.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 119, line = 121, spell = 1014 }, -- 31.717 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 125, line = 124, spell = 707 }, -- 32.484 nameplate1 WOUND 30 <- you: Immolate SPELL_DAMAGE +0.001 s
	{ hit = 127, line = 122, spell = false }, -- 32.551 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 129, line = false }, -- 32.801 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.385 s
	{ hit = 131, line = 133, spell = 6222 }, -- 33.117 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 134, line = 136, spell = 1014 }, -- 33.717 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 140, line = false }, -- 34.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 142, line = 139, spell = false }, -- 34.617 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 144, line = false }, -- 34.851 pet MISS 0 <- creature: swing SWING_MISSED +0.435 s
	{ hit = 148, line = 150, spell = 707 }, -- 35.484 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 152, line = 155, spell = 1014 }, -- 35.717 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 156, line = 147, spell = false }, -- 35.801 nameplate1 WOUND 2 <- you: swing SWING_DAMAGE +0.385 s
	{ hit = 160, line = 159, spell = false }, -- 36.601 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 163, line = false }, -- 36.817 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 165, line = 168, spell = 6222 }, -- 36.934 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 172, line = false }, -- 37.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 175, line = 174, spell = 5019 }, -- 37.451 nameplate1 WOUND 36 <- you: Shoot RANGE_DAMAGE +0.002 s
	{ hit = 178, line = 181, spell = 1014 }, -- 37.717 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 183, line = 186, spell = 707 }, -- 38.484 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 187, line = 182, spell = false }, -- 38.617 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 190, line = false }, -- 38.851 pet WOUND 20 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 195, line = 194, spell = 5019 }, -- 39.151 nameplate1 WOUND 56 <- you: Shoot RANGE_DAMAGE +0.002 s
	{ hit = 198, line = 201, spell = 1014 }, -- 39.717 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 202, line = 205, spell = 6222 }, -- 39.934 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 207, line = false }, -- 40.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 209, line = 206, spell = false }, -- 40.584 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.535 s
	{ hit = 215, line = 214, spell = 5019 }, -- 40.867 nameplate1 WOUND 40 <- you: Shoot RANGE_DAMAGE +0.001 s
	{ hit = 218, line = false }, -- 41.001 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.568 s
	{ hit = 219, line = 222, spell = 707 }, -- 41.484 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 223, line = 226, spell = 1014 }, -- 41.717 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 231, line = 230, spell = 5019 }, -- 42.534 nameplate1 WOUND 27 <- you: Shoot RANGE_DAMAGE +0.035 s
	{ hit = 234, line = 227, spell = false }, -- 42.617 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 237, line = false }, -- 42.851 player WOUND 32 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 239, line = 242, spell = 6222 }, -- 42.934 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 244, line = false }, -- 43.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 245, line = 248, spell = 1014 }, -- 43.717 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 253, line = 252, spell = 5019 }, -- 44.234 nameplate1 WOUND 37 <- you: Shoot RANGE_DAMAGE +0.018 s
	{ hit = 256, line = 259, spell = 707 }, -- 44.484 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 260, line = 251, spell = false }, -- 44.634 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 263, line = false }, -- 44.851 player WOUND 32 <- creature: swing SWING_DAMAGE +0.402 s
	{ hit = 267, line = 270, spell = 6222 }, -- 45.934 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 272, line = false }, -- 46.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 273, line = 271, spell = false }, -- 46.634 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 276, line = false }, -- 46.884 player WOUND 33 <- creature: swing SWING_DAMAGE +0.435 s
	{ hit = 278, line = 281, spell = 707 }, -- 47.484 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 283, line = 282, spell = false }, -- 48.601 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.535 s
	{ hit = 287, line = false }, -- 48.851 player WOUND 32 <- creature: swing SWING_DAMAGE +0.402 s
	{ hit = 289, line = 292, spell = 6222 }, -- 48.934 nameplate1 WOUND 35 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 297, line = 296, spell = 707 }, -- 49.267 nameplate1 WOUND 29 <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 301, line = 300, spell = false }, -- 50.601 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 304, line = false }, -- 50.867 player WOUND 32 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 312, line = 310, spell = 5019 }, -- 51.734 nameplate1 WOUND 24 <- you: Shoot RANGE_DAMAGE +0.017 s
	{ hit = 326, line = 329, spell = 1014 }, -- 103.551 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 331, line = false }, -- 103.801 pet WOUND 19 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 333, line = 325, spell = false }, -- 104.384 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.984 s
	{ hit = 337, line = 340, spell = 1014 }, -- 105.534 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 341, line = false }, -- 105.801 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 343, line = 336, spell = false }, -- 105.968 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 347, line = 350, spell = 1014 }, -- 107.534 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 351, line = false }, -- 107.851 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.434 s
	{ hit = 353, line = 346, spell = false }, -- 107.951 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 358, line = 361, spell = 1014 }, -- 109.534 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 362, line = false }, -- 109.851 pet WOUND 19 <- creature: swing SWING_DAMAGE +0.434 s
	{ hit = 364, line = 357, spell = false }, -- 109.951 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 368, line = 371, spell = 1014 }, -- 111.534 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 372, line = false }, -- 111.851 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 374, line = 367, spell = false }, -- 111.984 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 454, line = 457, spell = 1014 }, -- 113.534 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 476, line = false }, -- 113.818 pet WOUND 19 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 486, line = 446, spell = false }, -- 113.951 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 565, line = false }, -- 115.518 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 568, line = false }, -- 116.001 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 571, line = false }, -- 117.034 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 574, line = 577, spell = 1014 }, -- 117.534 nameplate1 WOUND 24 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 578, line = false }, -- 117.651 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 580, line = 573, spell = false }, -- 118.001 nameplate1 WOUND 21 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 583, line = false }, -- 119.068 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 586, line = 589, spell = 1014 }, -- 119.534 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 590, line = 585, spell = false }, -- 120.001 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 593, line = false }, -- 120.651 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.001 s
	{ hit = 596, line = false }, -- 121.051 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.401 s
	{ hit = 599, line = 602, spell = 1014 }, -- 121.534 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 603, line = 598, spell = false }, -- 121.968 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 606, line = false }, -- 123.068 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 611, line = 614, spell = 1014 }, -- 123.534 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 615, line = false }, -- 123.651 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 617, line = 610, spell = false }, -- 124.001 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 620, line = false }, -- 125.051 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 624, line = 623, spell = 707 }, -- 125.334 nameplate1 WOUND 29 <- you: Immolate SPELL_DAMAGE +0.000 s
	{ hit = 628, line = 631, spell = 1014 }, -- 125.534 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 634, line = 627, spell = false }, -- 125.968 nameplate1 WOUND 25 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 638, line = false }, -- 126.651 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 640, line = false }, -- 127.051 pet WOUND 34 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 645, line = 644, spell = false }, -- 127.968 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 648, line = 651, spell = 707 }, -- 128.334 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 652, line = 655, spell = 6222 }, -- 128.685 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 658, line = false }, -- 129.101 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.434 s
	{ hit = 660, line = 663, spell = 1014 }, -- 129.201 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 665, line = false }, -- 129.651 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 667, line = 664, spell = false }, -- 130.018 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 670, line = false }, -- 131.068 pet MISS 0 <- creature: swing SWING_MISSED +0.401 s
	{ hit = 672, line = 675, spell = 1014 }, -- 131.184 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 676, line = 679, spell = 707 }, -- 131.334 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 684, line = 687, spell = 6222 }, -- 131.685 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 688, line = 680, spell = false }, -- 132.018 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 693, line = 692, spell = 705 }, -- 132.118 nameplate1 WOUND 72 <- you: Shadow Bolt SPELL_DAMAGE +0.001 s
	{ hit = 696, line = false }, -- 132.651 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 698, line = false }, -- 133.068 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 700, line = 703, spell = 1014 }, -- 133.184 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 705, line = 704, spell = false }, -- 134.001 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 708, line = 711, spell = 707 }, -- 134.334 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 715, line = 718, spell = 6222 }, -- 134.685 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 720, line = 719, spell = 705 }, -- 134.984 nameplate1 WOUND 78 <- you: Shadow Bolt SPELL_DAMAGE +0.000 s
	{ hit = 723, line = 726, spell = 1014 }, -- 135.185 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 727, line = false }, -- 135.251 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.567 s
	{ hit = 730, line = 729, spell = false }, -- 136.034 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 733, line = 736, spell = 1014 }, -- 137.168 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 738, line = 741, spell = 707 }, -- 137.335 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 745, line = 748, spell = 6222 }, -- 137.685 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 750, line = 749, spell = 705 }, -- 137.801 nameplate1 WOUND 76 <- you: Shadow Bolt SPELL_DAMAGE +0.001 s
	{ hit = 753, line = 742, spell = false }, -- 138.034 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 757, line = false }, -- 138.901 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 759, line = 762, spell = 1014 }, -- 139.185 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 763, line = false }, -- 139.518 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 765, line = false }, -- 140.018 nameplate1 DODGE 0 <- pet: swing SWING_MISSED +0.534 s
	{ hit = 768, line = 771, spell = 707 }, -- 140.334 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 773, line = 776, spell = 1120 }, -- 140.518 nameplate1 WOUND 26 <- you: Drain Soul SPELL_PERIODIC_DAMAGE +0.000 s (checked: line 772 is the white killing blow line)
	{ hit = 779, line = false }, -- 141.502 pet WOUND 19 <- creature: swing SWING_DAMAGE +1.001 s
	{ hit = 780, line = false }, -- 142.502 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 781, line = false }, -- 145.518 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 782, line = false }, -- 148.518 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 785, line = false }, -- 151.518 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 786, line = false }, -- 154.518 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 788, line = 789, spell = 17767 }, -- 156.518 pet HEAL 63 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 790, line = 791, spell = 17767 }, -- 158.535 pet HEAL 63 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.001 s
	{ hit = 792, line = 793, spell = 17767 }, -- 160.551 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 794, line = 795, spell = 17767 }, -- 162.535 pet HEAL 94 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.001 s
	{ hit = 796, line = 797, spell = 17767 }, -- 164.535 pet HEAL 94 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.001 s
	{ hit = 806, line = 805, spell = 707 }, -- 192.101 nameplate1 WOUND 30 <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 810, line = 813, spell = 707 }, -- 195.118 nameplate1 WOUND 17 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 819, line = false }, -- 196.485 pet WOUND 19 <- creature: swing SWING_DAMAGE +0.466 s
	{ hit = 823, line = 817, spell = false }, -- 197.018 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +1.000 s
	{ hit = 827, line = 830, spell = 707 }, -- 198.101 nameplate1 WOUND 18 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 831, line = 834, spell = 6222 }, -- 198.251 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 835, line = false }, -- 198.435 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 837, line = 826, spell = false }, -- 198.535 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 840, line = 843, spell = 1014 }, -- 198.751 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 844, line = false }, -- 200.452 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 846, line = false }, -- 200.585 nameplate1 DODGE 0 <- pet: swing SWING_MISSED +0.567 s
	{ hit = 849, line = 852, spell = 1014 }, -- 200.735 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 853, line = 856, spell = 707 }, -- 201.102 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 857, line = 860, spell = 6222 }, -- 201.252 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 865, line = 864, spell = false }, -- 202.535 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 868, line = 871, spell = 1014 }, -- 202.752 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 872, line = 876, spell = 755 }, -- 202.985 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 874, line = 873, spell = 755 }, -- 202.985 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 877, line = false }, -- 203.302 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 879, line = false }, -- 203.885 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 881, line = 882, spell = 755 }, -- 203.985 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 883, line = 885, spell = 755 }, -- 203.985 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 887, line = 890, spell = 707 }, -- 204.101 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 891, line = 894, spell = 6222 }, -- 204.235 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 895, line = 886, spell = false }, -- 204.585 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 898, line = 901, spell = 1014 }, -- 204.752 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 902, line = 906, spell = 755 }, -- 204.985 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 904, line = 903, spell = 755 }, -- 204.985 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 907, line = false }, -- 205.352 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.468 s
	{ hit = 909, line = 913, spell = 755 }, -- 205.985 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 911, line = 910, spell = 755 }, -- 205.985 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 915, line = 914, spell = false }, -- 206.602 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 918, line = 921, spell = 1014 }, -- 206.735 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 922, line = false }, -- 206.885 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.000 s
	{ hit = 924, line = 927, spell = 707 }, -- 207.102 nameplate1 WOUND 17 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 928, line = 931, spell = 6222 }, -- 207.252 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 933, line = false }, -- 207.352 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.467 s
	{ hit = 938, line = 937, spell = false }, -- 208.602 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 941, line = 944, spell = 1014 }, -- 208.752 nameplate1 WOUND 24 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 947, line = false }, -- 209.335 pet WOUND 15 <- creature: swing SWING_DAMAGE +0.434 s
	{ hit = 949, line = false }, -- 209.885 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 952, line = 955, spell = 6222 }, -- 210.252 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 956, line = 951, spell = false }, -- 210.552 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 959, line = 962, spell = 1014 }, -- 210.735 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 965, line = 964, spell = 707 }, -- 210.885 nameplate1 WOUND 30 <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 971, line = false }, -- 211.368 pet WOUND 15 <- creature: swing SWING_DAMAGE +0.467 s
	{ hit = 975, line = 973, spell = false }, -- 212.618 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 978, line = 981, spell = 1014 }, -- 212.752 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 982, line = false }, -- 212.902 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 987, line = false }, -- 213.335 pet WOUND 14 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 989, line = 992, spell = 707 }, -- 213.935 nameplate1 WOUND 17 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 994, line = 997, spell = 6222 }, -- 214.252 nameplate1 WOUND 35 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 998, line = 993, spell = false }, -- 214.585 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1001, line = 1004, spell = 1014 }, -- 214.735 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1005, line = false }, -- 215.368 pet WOUND 14 <- creature: swing SWING_DAMAGE +0.467 s
	{ hit = 1010, line = false }, -- 215.885 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1014, line = 1013, spell = 705 }, -- 216.318 nameplate1 WOUND 79 <- you: Shadow Bolt SPELL_DAMAGE +0.000 s
	{ hit = 1017, line = 1012, spell = false }, -- 216.602 nameplate1 WOUND 21 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1020, line = 1023, spell = 1014 }, -- 216.735 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1024, line = 1027, spell = 707 }, -- 216.885 nameplate1 WOUND 17 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1028, line = 1031, spell = 6222 }, -- 217.252 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1032, line = false }, -- 217.368 pet WOUND 14 <- creature: swing SWING_DAMAGE +0.467 s
	{ hit = 1035, line = 1034, spell = false }, -- 218.635 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1040, line = 1043, spell = 1014 }, -- 218.735 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1044, line = false }, -- 218.885 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1047, line = 1046, spell = 705 }, -- 219.202 nameplate1 WOUND 78 <- you: Shadow Bolt SPELL_DAMAGE +0.001 s
	{ hit = 1050, line = 1053, spell = 707 }, -- 219.885 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1055, line = 1058, spell = 6222 }, -- 220.252 nameplate1 WOUND 35 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1059, line = false }, -- 220.302 pet WOUND 15 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 1063, line = 1054, spell = false }, -- 220.602 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1066, line = 1069, spell = 1014 }, -- 220.735 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1070, line = false }, -- 220.902 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1072, line = false }, -- 222.352 pet WOUND 14 <- creature: swing SWING_DAMAGE +0.468 s
	{ hit = 1074, line = 1071, spell = false }, -- 222.652 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.584 s
	{ hit = 1077, line = 1080, spell = 707 }, -- 222.885 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1082, line = 1085, spell = 6222 }, -- 223.252 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s (checked: line 1081 is the white killing blow line)
	{ hit = 1088, line = false }, -- 223.902 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1089, line = false }, -- 226.902 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1094, line = false }, -- 229.885 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1095, line = false }, -- 232.919 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1100, line = false }, -- 235.902 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1101, line = 1102, spell = 17767 }, -- 236.336 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.001 s
	{ hit = 1103, line = 1104, spell = 17767 }, -- 238.336 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1105, line = 1106, spell = 17767 }, -- 240.336 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1107, line = 1108, spell = 17767 }, -- 242.336 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1110, line = 1111, spell = 17767 }, -- 244.336 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1120, line = 1123, spell = 1014 }, -- 256.336 nameplate2 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1127, line = false }, -- 257.119 pet WOUND 28 <- creature: swing SWING_DAMAGE +0.366 s
	{ hit = 1128, line = false }, -- 257.419 nameplate2 PARRY 0 <- pet: swing SWING_MISSED +0.983 s
	{ hit = 1131, line = false }, -- 258.319 player WOUND 44 <- creature: swing SWING_DAMAGE +0.366 s
	{ hit = 1133, line = 1136, spell = 1014 }, -- 258.336 nameplate2 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1138, line = 1137, spell = false }, -- 258.953 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 1140, line = false }, -- 259.186 nameplate2 IMMUNE 0 <- you: Fear SPELL_MISSED +0.000 s
	{ hit = 1143, line = false }, -- 259.769 pet WOUND 28 <- creature: swing SWING_DAMAGE +0.983 s
	{ hit = 1144, line = 1147, spell = 1014 }, -- 260.336 nameplate2 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1149, line = false }, -- 260.469 player MISS 0 <- creature: swing SWING_MISSED +0.500 s
	{ hit = 1152, line = 1148, spell = false }, -- 261.004 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.552 s
	{ hit = 1157, line = false }, -- 261.269 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1159, line = 1160, spell = 1014 }, -- 262.336 nameplate2 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1161, line = false }, -- 262.336 player WOUND 44 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1164, line = 1163, spell = false }, -- 262.986 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 1167, line = false }, -- 263.136 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1170, line = false }, -- 263.470 nameplate1 IMMUNE 0 <- you: Fear SPELL_MISSED +0.000 s
	{ hit = 1174, line = 1177, spell = 1014 }, -- 264.336 nameplate2 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1179, line = false }, -- 264.469 player WOUND 47 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1181, line = 1178, spell = false }, -- 264.986 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1182, line = false }, -- 265.269 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1185, line = 1188, spell = 1014 }, -- 266.336 nameplate2 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1190, line = false }, -- 266.469 player WOUND 48 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1192, line = 1189, spell = false }, -- 267.019 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1195, line = false }, -- 267.637 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.351 s
	{ hit = 1198, line = 1197, spell = 707 }, -- 267.969 nameplate2 WOUND 29 <- you: Immolate SPELL_DAMAGE -0.002 s
	{ hit = 1202, line = 1205, spell = 1014 }, -- 268.336 nameplate2 WOUND 24 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1206, line = false }, -- 268.336 player WOUND 45 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1212, line = 1210, spell = false }, -- 268.986 nameplate2 WOUND 9 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1213, line = false }, -- 269.653 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1217, line = 1218, spell = 1014 }, -- 270.336 nameplate2 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1219, line = false }, -- 270.353 player WOUND 47 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1221, line = 1222, spell = 707 }, -- 270.986 nameplate2 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1223, line = 1220, spell = false }, -- 271.036 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1224, line = 1225, spell = 6222 }, -- 271.369 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1226, line = false }, -- 271.653 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1230, line = 1229, spell = 707 }, -- 271.986 nameplate1 WOUND 29 <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 1233, line = 1234, spell = 1014 }, -- 272.336 nameplate2 WOUND 31 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1238, line = false }, -- 272.486 player WOUND 46 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1239, line = 1237, spell = false }, -- 273.003 nameplate2 WOUND 10 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1241, line = false }, -- 273.803 pet WOUND 31 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 1243, line = 1244, spell = 707 }, -- 273.986 nameplate2 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1245, line = 1246, spell = 1014 }, -- 274.336 nameplate2 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1247, line = 1248, spell = 6222 }, -- 274.369 nameplate2 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1250, line = false }, -- 274.486 pet WOUND 31 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1253, line = 1254, spell = 6262 }, -- 274.587 player HEAL 120 <- you: Minor Healthstone SPELL_HEAL +0.000 s
	{ hit = 1256, line = 1259, spell = 707 }, -- 275.003 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1260, line = 1249, spell = false }, -- 275.036 nameplate2 WOUND 10 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1261, line = 1264, spell = 6222 }, -- 275.419 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1265, line = false }, -- 275.669 pet WOUND 31 <- creature: swing SWING_DAMAGE +0.366 s
	{ hit = 1267, line = 1268, spell = 1014 }, -- 276.336 nameplate2 WOUND 31 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1269, line = false }, -- 276.370 pet WOUND 32 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1272, line = 1273, spell = 707 }, -- 276.986 nameplate2 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1274, line = 1271, spell = false }, -- 277.053 nameplate2 WOUND 9 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1275, line = 1276, spell = 6222 }, -- 277.369 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1277, line = false }, -- 277.803 pet WOUND 32 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 1279, line = 1282, spell = 707 }, -- 278.003 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1283, line = 1284, spell = 1014 }, -- 278.336 nameplate2 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1285, line = 1288, spell = 6222 }, -- 278.419 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1290, line = 1289, spell = false }, -- 279.053 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1291, line = false }, -- 279.819 pet WOUND 32 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1293, line = 1294, spell = 707 }, -- 279.986 nameplate2 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1295, line = false }, -- 280.320 player WOUND 49 <- creature: swing SWING_DAMAGE +0.484 s
	{ hit = 1296, line = 1297, spell = 6222 }, -- 280.370 nameplate2 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1298, line = 1301, spell = 707 }, -- 280.986 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1302, line = 1305, spell = 6222 }, -- 281.419 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1307, line = false }, -- 281.686 pet WOUND 32 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1308, line = false }, -- 282.203 player DODGE 0 <- creature: swing SWING_MISSED +0.367 s
	{ hit = 1310, line = 1313, spell = 707 }, -- 282.986 nameplate2 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1314, line = 1317, spell = 6222 }, -- 283.370 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1318, line = false }, -- 283.686 pet WOUND 31 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1319, line = 1320, spell = 707 }, -- 283.986 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1321, line = false }, -- 284.336 player WOUND 50 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1323, line = 1324, spell = 6222 }, -- 284.420 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1325, line = false }, -- 285.703 pet WOUND 31 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1326, line = false }, -- 286.836 player WOUND 50 <- creature: swing SWING_DAMAGE +0.983 s
	{ hit = 1328, line = 1329, spell = 707 }, -- 286.986 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1330, line = 1331, spell = 6222 }, -- 287.420 nameplate1 WOUND 35 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1332, line = false }, -- 287.703 pet WOUND 33 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1333, line = false }, -- 288.220 player WOUND 49 <- creature: swing SWING_DAMAGE +0.367 s
}

-- Log Lines with no Hit:
-- line 309 at 51.718 <- you:  PARTY_KILL
-- line 772 at 140.518 <- you:  PARTY_KILL
-- line 1081 at 223.252 <- you:  PARTY_KILL
