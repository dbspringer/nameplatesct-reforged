-- Labels for warlock-plate-text: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure`. Comments: Hit time, unit, action, amount;
-- the file event that made it; how long before the Hit it came.
return {
	{ hit = 8, line = 7 }, -- 17.534 nameplate1 WOUND 29 <- you: Immolate SPELL_DAMAGE +0.000 s
	{ hit = 17, line = false }, -- 20.467 player WOUND 63 <- creature: swing SWING_DAMAGE +0.568 s
	{ hit = 19, line = 22 }, -- 20.550 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 25, line = 15 }, -- 20.984 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.985 s
	{ hit = 28, line = 31 }, -- 21.117 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 32, line = 35 }, -- 21.717 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 38, line = false }, -- 22.300 nameplate1 WOUND 0 <- no file event 
	{ hit = 40, line = false }, -- 22.334 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 42, line = 37 }, -- 22.534 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 45, line = 47 }, -- 23.551 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.002 s
	{ hit = 48, line = 50 }, -- 23.717 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 51, line = false }, -- 23.800 nameplate1 WOUND 0 <- no file event 
	{ hit = 54, line = 56 }, -- 24.117 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 57, line = false }, -- 24.317 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 59, line = 53 }, -- 24.584 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 63, line = 62 }, -- 25.300 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 65, line = 67 }, -- 25.717 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 72, line = false }, -- 26.484 pet WOUND 20 <- creature: swing SWING_DAMAGE +0.568 s
	{ hit = 74, line = 76 }, -- 26.540 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 77, line = 69 }, -- 26.584 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 79, line = 71 }, -- 26.800 nameplate1 WOUND 2 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 81, line = 83 }, -- 27.117 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 84, line = 86 }, -- 27.717 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 90, line = 88 }, -- 28.317 nameplate1 WOUND 3 <- you: swing SWING_DAMAGE +0.368 s
	{ hit = 92, line = 89 }, -- 28.601 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 96, line = 98 }, -- 29.534 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 99, line = 101 }, -- 29.717 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 102, line = 95 }, -- 29.817 nameplate1 WOUND 1 <- you: swing SWING_DAMAGE +0.368 s
	{ hit = 104, line = false }, -- 29.951 pet WOUND 21 <- no file event 
	{ hit = 107, line = 109 }, -- 30.117 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 112, line = 106 }, -- 30.551 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 114, line = false }, -- 31.301 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.900 s
	{ hit = 116, line = false }, -- 31.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 119, line = 121 }, -- 31.717 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 125, line = 124 }, -- 32.484 nameplate1 WOUND 30 <- you: Immolate SPELL_DAMAGE +0.001 s
	{ hit = 127, line = 122 }, -- 32.551 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 129, line = false }, -- 32.801 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.385 s
	{ hit = 131, line = 133 }, -- 33.117 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 134, line = 136 }, -- 33.717 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 140, line = false }, -- 34.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 142, line = 139 }, -- 34.617 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 144, line = false }, -- 34.851 pet MISS 0 <- creature: swing SWING_MISSED +0.435 s
	{ hit = 148, line = 150 }, -- 35.484 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 152, line = 155 }, -- 35.717 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 156, line = 147 }, -- 35.801 nameplate1 WOUND 2 <- you: swing SWING_DAMAGE +0.385 s
	{ hit = 160, line = 159 }, -- 36.601 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 163, line = false }, -- 36.817 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 165, line = 168 }, -- 36.934 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 172, line = false }, -- 37.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 175, line = 174 }, -- 37.451 nameplate1 WOUND 36 <- you: Shoot RANGE_DAMAGE +0.002 s
	{ hit = 178, line = 181 }, -- 37.717 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 183, line = 186 }, -- 38.484 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 187, line = 182 }, -- 38.617 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 190, line = false }, -- 38.851 pet WOUND 20 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 195, line = 194 }, -- 39.151 nameplate1 WOUND 56 <- you: Shoot RANGE_DAMAGE +0.002 s
	{ hit = 198, line = 201 }, -- 39.717 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 202, line = 205 }, -- 39.934 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 207, line = false }, -- 40.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 209, line = 206 }, -- 40.584 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.535 s
	{ hit = 215, line = 214 }, -- 40.867 nameplate1 WOUND 40 <- you: Shoot RANGE_DAMAGE +0.001 s
	{ hit = 218, line = false }, -- 41.001 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.568 s
	{ hit = 219, line = 222 }, -- 41.484 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 223, line = 226 }, -- 41.717 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 231, line = 230 }, -- 42.534 nameplate1 WOUND 27 <- you: Shoot RANGE_DAMAGE +0.035 s
	{ hit = 234, line = 227 }, -- 42.617 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 237, line = false }, -- 42.851 player WOUND 32 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 239, line = 242 }, -- 42.934 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 244, line = false }, -- 43.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 245, line = 248 }, -- 43.717 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 253, line = 252 }, -- 44.234 nameplate1 WOUND 37 <- you: Shoot RANGE_DAMAGE +0.018 s
	{ hit = 256, line = 259 }, -- 44.484 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 260, line = 251 }, -- 44.634 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 263, line = false }, -- 44.851 player WOUND 32 <- creature: swing SWING_DAMAGE +0.402 s
	{ hit = 267, line = 270 }, -- 45.934 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 272, line = false }, -- 46.417 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 273, line = 271 }, -- 46.634 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 276, line = false }, -- 46.884 player WOUND 33 <- creature: swing SWING_DAMAGE +0.435 s
	{ hit = 278, line = 281 }, -- 47.484 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 283, line = 282 }, -- 48.601 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.535 s
	{ hit = 287, line = false }, -- 48.851 player WOUND 32 <- creature: swing SWING_DAMAGE +0.402 s
	{ hit = 289, line = 292 }, -- 48.934 nameplate1 WOUND 35 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 297, line = 296 }, -- 49.267 nameplate1 WOUND 29 <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 301, line = 300 }, -- 50.601 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 304, line = false }, -- 50.867 player WOUND 32 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 312, line = 310 }, -- 51.734 nameplate1 WOUND 24 <- you: Shoot RANGE_DAMAGE +0.017 s
	{ hit = 326, line = 329 }, -- 103.551 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 331, line = false }, -- 103.801 pet WOUND 19 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 333, line = 325 }, -- 104.384 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.984 s
	{ hit = 337, line = 340 }, -- 105.534 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 341, line = false }, -- 105.801 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 343, line = 336 }, -- 105.968 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 347, line = 350 }, -- 107.534 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 351, line = false }, -- 107.851 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.434 s
	{ hit = 353, line = 346 }, -- 107.951 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 358, line = 361 }, -- 109.534 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 362, line = false }, -- 109.851 pet WOUND 19 <- creature: swing SWING_DAMAGE +0.434 s
	{ hit = 364, line = 357 }, -- 109.951 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 368, line = 371 }, -- 111.534 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 372, line = false }, -- 111.851 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 374, line = 367 }, -- 111.984 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 454, line = 457 }, -- 113.534 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 476, line = false }, -- 113.818 pet WOUND 19 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 486, line = 446 }, -- 113.951 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 565, line = false }, -- 115.518 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 568, line = false }, -- 116.001 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 571, line = false }, -- 117.034 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 574, line = 577 }, -- 117.534 nameplate1 WOUND 24 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 578, line = false }, -- 117.651 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 580, line = 573 }, -- 118.001 nameplate1 WOUND 21 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 583, line = false }, -- 119.068 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 586, line = 589 }, -- 119.534 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 590, line = 585 }, -- 120.001 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 593, line = false }, -- 120.651 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.001 s
	{ hit = 596, line = false }, -- 121.051 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.401 s
	{ hit = 599, line = 602 }, -- 121.534 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 603, line = 598 }, -- 121.968 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 606, line = false }, -- 123.068 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 611, line = 614 }, -- 123.534 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 615, line = false }, -- 123.651 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 617, line = 610 }, -- 124.001 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 620, line = false }, -- 125.051 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 624, line = 623 }, -- 125.334 nameplate1 WOUND 29 <- you: Immolate SPELL_DAMAGE +0.000 s
	{ hit = 628, line = 631 }, -- 125.534 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 634, line = 627 }, -- 125.968 nameplate1 WOUND 25 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 638, line = false }, -- 126.651 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 640, line = false }, -- 127.051 pet WOUND 34 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 645, line = 644 }, -- 127.968 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 648, line = 651 }, -- 128.334 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 652, line = 655 }, -- 128.685 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 658, line = false }, -- 129.101 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.434 s
	{ hit = 660, line = 663 }, -- 129.201 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 665, line = false }, -- 129.651 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 667, line = 664 }, -- 130.018 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 670, line = false }, -- 131.068 pet MISS 0 <- creature: swing SWING_MISSED +0.401 s
	{ hit = 672, line = 675 }, -- 131.184 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 676, line = 679 }, -- 131.334 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 684, line = 687 }, -- 131.685 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 688, line = 680 }, -- 132.018 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 693, line = 692 }, -- 132.118 nameplate1 WOUND 72 <- you: Shadow Bolt SPELL_DAMAGE +0.001 s
	{ hit = 696, line = false }, -- 132.651 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 698, line = false }, -- 133.068 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 700, line = 703 }, -- 133.184 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 705, line = 704 }, -- 134.001 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 708, line = 711 }, -- 134.334 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 715, line = 718 }, -- 134.685 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 720, line = 719 }, -- 134.984 nameplate1 WOUND 78 <- you: Shadow Bolt SPELL_DAMAGE +0.000 s
	{ hit = 723, line = 726 }, -- 135.185 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 727, line = false }, -- 135.251 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.567 s
	{ hit = 730, line = 729 }, -- 136.034 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 733, line = 736 }, -- 137.168 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 738, line = 741 }, -- 137.335 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 745, line = 748 }, -- 137.685 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 750, line = 749 }, -- 137.801 nameplate1 WOUND 76 <- you: Shadow Bolt SPELL_DAMAGE +0.001 s
	{ hit = 753, line = 742 }, -- 138.034 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 757, line = false }, -- 138.901 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 759, line = 762 }, -- 139.185 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 763, line = false }, -- 139.518 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 765, line = false }, -- 140.018 nameplate1 DODGE 0 <- pet: swing SWING_MISSED +0.534 s
	{ hit = 768, line = 771 }, -- 140.334 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 773, line = 772 }, -- 140.518 nameplate1 WOUND 26 <- you: Drain Soul SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 779, line = false }, -- 141.502 pet WOUND 19 <- creature: swing SWING_DAMAGE +1.001 s
	{ hit = 780, line = false }, -- 142.502 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 781, line = false }, -- 145.518 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 782, line = false }, -- 148.518 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 785, line = false }, -- 151.518 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 786, line = false }, -- 154.518 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 788, line = 789 }, -- 156.518 pet HEAL 63 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 790, line = 791 }, -- 158.535 pet HEAL 63 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.001 s
	{ hit = 792, line = 793 }, -- 160.551 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 794, line = 795 }, -- 162.535 pet HEAL 94 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.001 s
	{ hit = 796, line = 797 }, -- 164.535 pet HEAL 94 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.001 s
	{ hit = 806, line = 805 }, -- 192.101 nameplate1 WOUND 30 <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 810, line = 813 }, -- 195.118 nameplate1 WOUND 17 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 819, line = false }, -- 196.485 pet WOUND 19 <- creature: swing SWING_DAMAGE +0.466 s
	{ hit = 823, line = 817 }, -- 197.018 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +1.000 s
	{ hit = 827, line = 830 }, -- 198.101 nameplate1 WOUND 18 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 831, line = 834 }, -- 198.251 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 835, line = false }, -- 198.435 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 837, line = 826 }, -- 198.535 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 840, line = 843 }, -- 198.751 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 844, line = false }, -- 200.452 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 846, line = false }, -- 200.585 nameplate1 DODGE 0 <- pet: swing SWING_MISSED +0.567 s
	{ hit = 849, line = 852 }, -- 200.735 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 853, line = 856 }, -- 201.102 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 857, line = 860 }, -- 201.252 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 865, line = 864 }, -- 202.535 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 868, line = 871 }, -- 202.752 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 872, line = 876 }, -- 202.985 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 874, line = 873 }, -- 202.985 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 877, line = false }, -- 203.302 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 879, line = false }, -- 203.885 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 881, line = 882 }, -- 203.985 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 883, line = 885 }, -- 203.985 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 887, line = 890 }, -- 204.101 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 891, line = 894 }, -- 204.235 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 895, line = 886 }, -- 204.585 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 898, line = 901 }, -- 204.752 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 902, line = 906 }, -- 204.985 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 904, line = 903 }, -- 204.985 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 907, line = false }, -- 205.352 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.468 s
	{ hit = 909, line = 913 }, -- 205.985 player WOUND 5 <- you: Health Funnel SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 911, line = 910 }, -- 205.985 pet HEAL 12 <- you: Health Funnel SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 915, line = 914 }, -- 206.602 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 918, line = 921 }, -- 206.735 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 922, line = false }, -- 206.885 pet WOUND 18 <- creature: swing SWING_DAMAGE +0.000 s
	{ hit = 924, line = 927 }, -- 207.102 nameplate1 WOUND 17 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 928, line = 931 }, -- 207.252 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 933, line = false }, -- 207.352 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.467 s
	{ hit = 938, line = 937 }, -- 208.602 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 941, line = 944 }, -- 208.752 nameplate1 WOUND 24 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 947, line = false }, -- 209.335 pet WOUND 15 <- creature: swing SWING_DAMAGE +0.434 s
	{ hit = 949, line = false }, -- 209.885 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 952, line = 955 }, -- 210.252 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 956, line = 951 }, -- 210.552 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 959, line = 962 }, -- 210.735 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 965, line = 964 }, -- 210.885 nameplate1 WOUND 30 <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 971, line = false }, -- 211.368 pet WOUND 15 <- creature: swing SWING_DAMAGE +0.467 s
	{ hit = 975, line = 973 }, -- 212.618 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 978, line = 981 }, -- 212.752 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 982, line = false }, -- 212.902 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 987, line = false }, -- 213.335 pet WOUND 14 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 989, line = 992 }, -- 213.935 nameplate1 WOUND 17 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 994, line = 997 }, -- 214.252 nameplate1 WOUND 35 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 998, line = 993 }, -- 214.585 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1001, line = 1004 }, -- 214.735 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1005, line = false }, -- 215.368 pet WOUND 14 <- creature: swing SWING_DAMAGE +0.467 s
	{ hit = 1010, line = false }, -- 215.885 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1014, line = 1013 }, -- 216.318 nameplate1 WOUND 79 <- you: Shadow Bolt SPELL_DAMAGE +0.000 s
	{ hit = 1017, line = 1012 }, -- 216.602 nameplate1 WOUND 21 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1020, line = 1023 }, -- 216.735 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1024, line = 1027 }, -- 216.885 nameplate1 WOUND 17 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1028, line = 1031 }, -- 217.252 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1032, line = false }, -- 217.368 pet WOUND 14 <- creature: swing SWING_DAMAGE +0.467 s
	{ hit = 1035, line = 1034 }, -- 218.635 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1040, line = 1043 }, -- 218.735 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1044, line = false }, -- 218.885 pet WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1047, line = 1046 }, -- 219.202 nameplate1 WOUND 78 <- you: Shadow Bolt SPELL_DAMAGE +0.001 s
	{ hit = 1050, line = 1053 }, -- 219.885 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1055, line = 1058 }, -- 220.252 nameplate1 WOUND 35 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1059, line = false }, -- 220.302 pet WOUND 15 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 1063, line = 1054 }, -- 220.602 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1066, line = 1069 }, -- 220.735 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1070, line = false }, -- 220.902 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1072, line = false }, -- 222.352 pet WOUND 14 <- creature: swing SWING_DAMAGE +0.468 s
	{ hit = 1074, line = 1071 }, -- 222.652 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.584 s
	{ hit = 1077, line = 1080 }, -- 222.885 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1082, line = 1081 }, -- 223.252 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1088, line = false }, -- 223.902 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1089, line = false }, -- 226.902 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1094, line = false }, -- 229.885 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1095, line = false }, -- 232.919 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1100, line = false }, -- 235.902 player WOUND 18 <- creature: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1101, line = 1102 }, -- 236.336 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.001 s
	{ hit = 1103, line = 1104 }, -- 238.336 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1105, line = 1106 }, -- 240.336 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1107, line = 1108 }, -- 242.336 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1110, line = 1111 }, -- 244.336 pet HEAL 62 <- pet: Consume Shadows SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1120, line = 1123 }, -- 256.336 nameplate2 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1127, line = false }, -- 257.119 pet WOUND 28 <- creature: swing SWING_DAMAGE +0.366 s
	{ hit = 1128, line = false }, -- 257.419 nameplate2 PARRY 0 <- pet: swing SWING_MISSED +0.983 s
	{ hit = 1131, line = false }, -- 258.319 player WOUND 44 <- creature: swing SWING_DAMAGE +0.366 s
	{ hit = 1133, line = 1136 }, -- 258.336 nameplate2 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1138, line = 1137 }, -- 258.953 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 1140, line = false }, -- 259.186 nameplate2 IMMUNE 0 <- you: Fear SPELL_MISSED +0.000 s
	{ hit = 1143, line = false }, -- 259.769 pet WOUND 28 <- creature: swing SWING_DAMAGE +0.983 s
	{ hit = 1144, line = 1147 }, -- 260.336 nameplate2 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1149, line = false }, -- 260.469 player MISS 0 <- creature: swing SWING_MISSED +0.500 s
	{ hit = 1152, line = 1148 }, -- 261.004 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.552 s
	{ hit = 1157, line = false }, -- 261.269 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1159, line = 1160 }, -- 262.336 nameplate2 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1161, line = false }, -- 262.336 player WOUND 44 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1164, line = 1163 }, -- 262.986 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 1167, line = false }, -- 263.136 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1170, line = false }, -- 263.470 nameplate1 IMMUNE 0 <- you: Fear SPELL_MISSED +0.000 s
	{ hit = 1174, line = 1177 }, -- 264.336 nameplate2 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1179, line = false }, -- 264.469 player WOUND 47 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1181, line = 1178 }, -- 264.986 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1182, line = false }, -- 265.269 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1185, line = 1188 }, -- 266.336 nameplate2 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1190, line = false }, -- 266.469 player WOUND 48 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1192, line = 1189 }, -- 267.019 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1195, line = false }, -- 267.637 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.351 s
	{ hit = 1198, line = 1197 }, -- 267.969 nameplate2 WOUND 29 <- you: Immolate SPELL_DAMAGE -0.002 s
	{ hit = 1202, line = 1205 }, -- 268.336 nameplate2 WOUND 24 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1206, line = false }, -- 268.336 player WOUND 45 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1212, line = 1210 }, -- 268.986 nameplate2 WOUND 9 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1213, line = false }, -- 269.653 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1217, line = 1218 }, -- 270.336 nameplate2 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1219, line = false }, -- 270.353 player WOUND 47 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1221, line = 1222 }, -- 270.986 nameplate2 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1223, line = 1220 }, -- 271.036 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1224, line = 1225 }, -- 271.369 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1226, line = false }, -- 271.653 pet WOUND 30 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1230, line = 1229 }, -- 271.986 nameplate1 WOUND 29 <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 1233, line = 1234 }, -- 272.336 nameplate2 WOUND 31 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1238, line = false }, -- 272.486 player WOUND 46 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1239, line = 1237 }, -- 273.003 nameplate2 WOUND 10 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1241, line = false }, -- 273.803 pet WOUND 31 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 1243, line = 1244 }, -- 273.986 nameplate2 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1245, line = 1246 }, -- 274.336 nameplate2 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1247, line = 1248 }, -- 274.369 nameplate2 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1250, line = false }, -- 274.486 pet WOUND 31 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1253, line = 1254 }, -- 274.587 player HEAL 120 <- you: Minor Healthstone SPELL_HEAL +0.000 s
	{ hit = 1256, line = 1259 }, -- 275.003 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1260, line = 1249 }, -- 275.036 nameplate2 WOUND 10 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1261, line = 1264 }, -- 275.419 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1265, line = false }, -- 275.669 pet WOUND 31 <- creature: swing SWING_DAMAGE +0.366 s
	{ hit = 1267, line = 1268 }, -- 276.336 nameplate2 WOUND 31 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1269, line = false }, -- 276.370 pet WOUND 32 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1272, line = 1273 }, -- 276.986 nameplate2 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1274, line = 1271 }, -- 277.053 nameplate2 WOUND 9 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1275, line = 1276 }, -- 277.369 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1277, line = false }, -- 277.803 pet WOUND 32 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 1279, line = 1282 }, -- 278.003 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1283, line = 1284 }, -- 278.336 nameplate2 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1285, line = 1288 }, -- 278.419 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1290, line = 1289 }, -- 279.053 nameplate2 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1291, line = false }, -- 279.819 pet WOUND 32 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1293, line = 1294 }, -- 279.986 nameplate2 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1295, line = false }, -- 280.320 player WOUND 49 <- creature: swing SWING_DAMAGE +0.484 s
	{ hit = 1296, line = 1297 }, -- 280.370 nameplate2 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1298, line = 1301 }, -- 280.986 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1302, line = 1305 }, -- 281.419 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1307, line = false }, -- 281.686 pet WOUND 32 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1308, line = false }, -- 282.203 player DODGE 0 <- creature: swing SWING_MISSED +0.367 s
	{ hit = 1310, line = 1313 }, -- 282.986 nameplate2 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1314, line = 1317 }, -- 283.370 nameplate2 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1318, line = false }, -- 283.686 pet WOUND 31 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1319, line = 1320 }, -- 283.986 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1321, line = false }, -- 284.336 player WOUND 50 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1323, line = 1324 }, -- 284.420 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1325, line = false }, -- 285.703 pet WOUND 31 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1326, line = false }, -- 286.836 player WOUND 50 <- creature: swing SWING_DAMAGE +0.983 s
	{ hit = 1328, line = 1329 }, -- 286.986 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1330, line = 1331 }, -- 287.420 nameplate1 WOUND 35 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1332, line = false }, -- 287.703 pet WOUND 33 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1333, line = false }, -- 288.220 player WOUND 49 <- creature: swing SWING_DAMAGE +0.367 s
}

-- Log Lines with no Hit:
-- line 309 at 51.718 <- you:  PARTY_KILL
-- line 776 at 140.518 <- you:  PARTY_KILL
-- line 1085 at 223.252 <- you:  PARTY_KILL
