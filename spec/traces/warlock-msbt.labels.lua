-- Labels for warlock-msbt: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 16, line = false, unsure = "secret amount" }, -- 35.716 nameplate1 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.001 s
	{ hit = 30, line = false, unsure = "secret amount" }, -- 51.233 nameplate7 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD +0.000 s
	{ hit = 33, line = 32, spell = 7815, unsure = "secret amount" }, -- 51.233 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 36, line = 26, spell = false, unsure = "secret amount" }, -- 51.434 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 40, line = false, unsure = "secret amount" }, -- 51.736 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.718 s
	{ hit = 45, line = 46, spell = 6217, unsure = "secret amount" }, -- 52.300 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 48, line = 47, spell = false, unsure = "secret amount" }, -- 53.452 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.951 s
	{ hit = 51, line = false, unsure = "secret amount" }, -- 53.750 nameplate7 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 52, line = false, unsure = "secret amount" }, -- 53.750 nameplate7 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.001 s
	{ hit = 53, line = false, unsure = "secret amount" }, -- 53.750 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.733 s
	{ hit = 54, line = false, unsure = "secret amount" }, -- 53.902 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.550 s
	{ hit = 57, line = 58, spell = 6217, unsure = "secret amount" }, -- 54.350 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 60, line = false, unsure = "secret amount" }, -- 54.535 nameplate7 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.400 s
	{ hit = 61, line = 62, spell = 6223, unsure = "secret amount" }, -- 54.868 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 65, line = 59, spell = false, unsure = "secret amount" }, -- 55.402 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.952 s
	{ hit = 66, line = false, unsure = "secret amount" }, -- 55.517 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.550 s
	{ hit = 67, line = false, unsure = "secret amount" }, -- 55.734 nameplate7 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD +0.000 s
	{ hit = 68, line = false, unsure = "secret amount" }, -- 55.867 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.548 s
	{ hit = 71, line = 72, spell = 6217, unsure = "secret amount" }, -- 56.367 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 76, line = false, unsure = "secret amount" }, -- 56.684 nameplate7 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 77, line = 80, spell = 6217, unsure = "secret amount" }, -- 57.152 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 82, line = 73, spell = false, unsure = "secret amount" }, -- 57.417 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 85, line = false, unsure = "secret amount" }, -- 57.667 nameplate7 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD +0.000 s
	{ hit = 86, line = false, unsure = "on time, of 2 file events" }, -- 57.734 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.733 s
	{ hit = 88, line = false, unsure = "secret amount" }, -- 57.750 nameplate7 MISS <secret> <- other: swing SWING_MISSED +0.598 s
	{ hit = 89, line = 90, spell = 6223, unsure = "secret amount" }, -- 57.785 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 91, line = false, unsure = "secret amount" }, -- 57.919 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.568 s
	{ hit = 94, line = 95, spell = 6217, unsure = "secret amount" }, -- 58.300 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 100, line = 103, spell = 6217, unsure = "secret amount" }, -- 59.200 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 105, line = 97, spell = false, unsure = "secret amount" }, -- 59.467 nameplate2 DODGE <secret> <- pet: swing SWING_MISSED +0.950 s
	{ hit = 106, line = 107, spell = 6223, unsure = "secret amount" }, -- 59.652 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 109, line = false, unsure = "secret amount" }, -- 59.719 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.734 s
	{ hit = 111, line = false, unsure = "secret amount" }, -- 59.752 nameplate7 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 112, line = false, unsure = "secret amount" }, -- 59.752 nameplate7 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.001 s
	{ hit = 113, line = false, unsure = "secret amount" }, -- 59.867 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.566 s
	{ hit = 114, line = false, unsure = "secret amount" }, -- 59.968 nameplate7 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 116, line = 119, spell = 6217, unsure = "secret amount" }, -- 60.300 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 120, line = false, unsure = "secret amount" }, -- 60.317 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.348 s
	{ hit = 123, line = 126, spell = 6223, unsure = "secret amount" }, -- 60.786 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 129, line = 130, spell = 6217, unsure = "secret amount" }, -- 61.184 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 131, line = 121, spell = false, unsure = "secret amount" }, -- 61.484 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 132, line = false, unsure = "secret amount" }, -- 61.752 nameplate7 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD +0.000 s
	{ hit = 133, line = false, unsure = "secret amount" }, -- 61.850 nameplate7 WOUND <secret> <- other: Frost Shock SPELL_DAMAGE -0.001 s
	{ hit = 135, line = 138, spell = 6217, unsure = "secret amount" }, -- 62.284 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 142, line = 143, spell = 6223, unsure = "secret amount" }, -- 62.617 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 144, line = false, unsure = "2 file events fit" }, -- 62.717 nameplate7 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 146, line = false, unsure = "secret amount" }, -- 62.717 nameplate7 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 147, line = false, unsure = "secret amount" }, -- 62.917 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.733 s
	{ hit = 149, line = 145, spell = 5019, unsure = "secret amount" }, -- 62.934 nameplate1 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.216 s
	{ hit = 152, line = false, unsure = "secret amount" }, -- 63.067 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.349 s
	{ hit = 153, line = 154, spell = 6217, unsure = "secret amount" }, -- 63.150 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 155, line = 139, spell = false, unsure = "secret amount" }, -- 63.467 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 156, line = false, unsure = "secret amount" }, -- 63.734 nameplate7 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD +0.000 s
	{ hit = 157, line = 160, spell = 6223, unsure = "secret amount" }, -- 63.834 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 165, line = 168, spell = 6217, unsure = "on time, of 2 file events" }, -- 64.367 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 170, line = 164, spell = 5019, unsure = "secret amount" }, -- 64.484 nameplate1 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.233 s
	{ hit = 173, line = false, unsure = "secret amount" }, -- 64.717 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.566 s
	{ hit = 177, line = 176, spell = 7815, unsure = "secret amount" }, -- 65.050 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 180, line = 181, spell = 6217, unsure = "secret amount" }, -- 65.150 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 182, line = 169, spell = false, unsure = "secret amount" }, -- 65.434 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 187, line = false, unsure = "secret amount" }, -- 65.584 nameplate7 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 188, line = 189, spell = 6223, unsure = "secret amount" }, -- 65.700 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 191, line = false, unsure = "secret amount" }, -- 65.834 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.350 s
	{ hit = 192, line = 190, spell = 5019, unsure = "secret amount" }, -- 66.017 nameplate1 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.315 s
	{ hit = 195, line = 198, spell = 6217, unsure = "secret amount" }, -- 66.367 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 203, line = false, unsure = "secret amount" }, -- 67.134 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.983 s
	{ hit = 204, line = 205, spell = 6217, unsure = "secret amount" }, -- 67.167 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 206, line = false, unsure = "secret amount" }, -- 67.700 nameplate7 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.001 s
	{ hit = 209, line = false, unsure = "secret amount" }, -- 68.367 nameplate7 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 210, line = 211, spell = 6223, unsure = "secret amount" }, -- 68.717 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 212, line = false, unsure = "secret amount" }, -- 68.717 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.350 s
	{ hit = 216, line = 217, spell = 6217, unsure = "secret amount" }, -- 69.184 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 219, line = false, unsure = "secret amount" }, -- 69.517 nameplate1 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.001 s
	{ hit = 220, line = false, unsure = "secret amount" }, -- 69.750 nameplate1 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.001 s
	{ hit = 226, line = 229, spell = 6217, unsure = "secret amount" }, -- 71.184 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 230, line = 222, spell = false, unsure = "secret amount" }, -- 71.684 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 233, line = 236, spell = 6223, unsure = "secret amount" }, -- 71.751 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 241, line = 244, spell = 6217, unsure = "on time, of 2 file events" }, -- 73.134 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 246, line = 245, spell = 5019, unsure = "secret amount" }, -- 73.234 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.000 s
	{ hit = 250, line = 240, spell = false, unsure = "secret amount" }, -- 73.650 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 256, line = 255, spell = 5019, unsure = "secret amount" }, -- 74.317 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.066 s
	{ hit = 259, line = false, unsure = "secret amount" }, -- 74.467 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.549 s
	{ hit = 261, line = 264, spell = 6223, unsure = "secret amount" }, -- 74.700 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 270, line = 265, spell = false, unsure = "secret amount" }, -- 75.650 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 289, line = false, unsure = "secret amount" }, -- 97.250 nameplate4 DODGE <secret> <- other: Raptor Strike SPELL_MISSED -0.001 s
	{ hit = 292, line = false, unsure = "late by 1.10 s" }, -- 98.134 nameplate4 MISS <secret> <- other: swing SWING_MISSED +1.099 s
	{ hit = 293, line = false, unsure = "secret amount" }, -- 98.591 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.390 s
	{ hit = 294, line = false, unsure = "secret amount" }, -- 98.967 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.499 s
	{ hit = 299, line = 300, spell = 6217, unsure = "secret amount" }, -- 99.884 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 301, line = false, unsure = "secret amount" }, -- 99.901 nameplate4 MISS <secret> <- other: swing SWING_MISSED +0.349 s
	{ hit = 305, line = 304, spell = 7815, unsure = "secret amount" }, -- 100.350 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 306, line = false, unsure = "secret amount" }, -- 100.501 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.383 s
	{ hit = 309, line = false, unsure = "late by 1.15 s" }, -- 101.034 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +1.150 s
	{ hit = 310, line = false, unsure = "secret amount" }, -- 101.084 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.732 s
	{ hit = 311, line = 302, spell = false, unsure = "secret amount" }, -- 101.301 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 312, line = 313, spell = 6217, unsure = "secret amount" }, -- 101.883 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 314, line = false, unsure = "secret amount" }, -- 102.017 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.782 s
	{ hit = 315, line = false, unsure = "secret amount" }, -- 102.017 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.133 s
	{ hit = 317, line = 318, spell = 6223, unsure = "secret amount" }, -- 102.434 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 321, line = false, unsure = "secret amount" }, -- 102.451 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.333 s
	{ hit = 323, line = false, unsure = "secret amount" }, -- 102.884 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.549 s
	{ hit = 325, line = 326, spell = 6217, unsure = "secret amount" }, -- 102.967 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 327, line = 316, spell = false, unsure = "secret amount" }, -- 103.284 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 330, line = 333, spell = 6217, unsure = "secret amount" }, -- 103.884 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 338, line = false, unsure = "secret amount" }, -- 104.551 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.550 s
	{ hit = 340, line = false, unsure = "secret amount" }, -- 104.901 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.549 s
	{ hit = 341, line = 344, spell = 6217, unsure = "secret amount" }, -- 104.934 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 345, line = 336, spell = false, unsure = "secret amount" }, -- 105.301 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 346, line = 347, spell = 6223, unsure = "secret amount" }, -- 105.401 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 348, line = 351, spell = 6223, unsure = "secret amount" }, -- 105.501 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 353, line = 354, spell = 6217, unsure = "secret amount" }, -- 105.934 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 356, line = false, unsure = "secret amount" }, -- 106.667 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.731 s
	{ hit = 358, line = 361, spell = 6217, unsure = "secret amount" }, -- 106.901 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 364, line = 355, spell = false, unsure = "secret amount" }, -- 107.317 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 367, line = 368, spell = 6217, unsure = "secret amount" }, -- 107.934 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 370, line = 371, spell = 6223, unsure = "secret amount" }, -- 108.451 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 372, line = 375, spell = 6223, unsure = "secret amount" }, -- 108.451 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 376, line = false, unsure = "secret amount" }, -- 108.667 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.730 s
	{ hit = 378, line = 381, spell = 6217, unsure = "secret amount" }, -- 108.901 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 383, line = 369, spell = false, unsure = "secret amount" }, -- 109.301 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 386, line = 387, spell = 6217, unsure = "secret amount" }, -- 109.867 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 389, line = false, unsure = "secret amount" }, -- 110.534 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.549 s
	{ hit = 393, line = 392, spell = 1094, unsure = "secret amount" }, -- 110.834 nameplate3 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.002 s
	{ hit = 396, line = 399, spell = 6217, unsure = "secret amount" }, -- 110.967 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 401, line = 388, spell = false, unsure = "secret amount" }, -- 111.251 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 404, line = 405, spell = 6223, unsure = "secret amount" }, -- 111.401 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 406, line = 409, spell = 6223, unsure = "secret amount" }, -- 111.401 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 411, line = 412, spell = 6217, unsure = "secret amount" }, -- 111.967 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 419, line = 418, spell = 7815, unsure = "2 file events fit" }, -- 112.484 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 424, line = false, unsure = "secret amount" }, -- 112.534 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.565 s
	{ hit = 426, line = 422, spell = 5019, unsure = "secret amount" }, -- 112.701 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.215 s
	{ hit = 429, line = 432, spell = 6217, unsure = "secret amount" }, -- 112.917 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 433, line = 416, spell = false, unsure = "secret amount" }, -- 113.334 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 438, line = 441, spell = 1094, unsure = "secret amount" }, -- 113.767 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 444, line = 443, spell = 5019, unsure = "secret amount" }, -- 114.201 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.216 s
	{ hit = 449, line = 452, spell = 6223, unsure = "secret amount" }, -- 114.401 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 453, line = false, unsure = "secret amount" }, -- 114.717 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.732 s
	{ hit = 455, line = 458, spell = 6217, unsure = "secret amount" }, -- 114.951 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 459, line = 447, spell = false, unsure = "secret amount" }, -- 115.251 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 465, line = 464, spell = 5019, unsure = "secret amount" }, -- 115.751 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.233 s
	{ hit = 475, line = 470, spell = false, unsure = "secret amount" }, -- 117.317 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 477, line = false, unsure = "late by 1.48 s" }, -- 117.417 player WOUND <secret> <- creature: swing SWING_DAMAGE +1.481 s
	{ hit = 479, line = 480, spell = 6223, unsure = "secret amount" }, -- 117.451 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 482, line = 483, spell = 6217, unsure = "secret amount" }, -- 117.917 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 489, line = false, unsure = "outside the Combat Log File" }, -- 121.767 nameplate4 PARRY <secret> <- no file event 
	{ hit = 492, line = false, unsure = "outside the Combat Log File" }, -- 122.784 nameplate4 WOUND <secret> <- no file event 
	{ hit = 494, line = false, unsure = "outside the Combat Log File" }, -- 123.667 nameplate4 WOUND <secret> <- no file event 
	{ hit = 495, line = false, unsure = "outside the Combat Log File" }, -- 123.851 nameplate4 WOUND <secret> <- no file event 
	{ hit = 498, line = false, unsure = "outside the Combat Log File" }, -- 124.234 nameplate4 WOUND <secret> <- no file event 
	{ hit = 500, line = false, unsure = "outside the Combat Log File" }, -- 125.701 nameplate4 WOUND <secret> <- no file event 
}

-- Log Lines with no Hit:
-- line 199 at 66.484 <- pet: swing SWING_DAMAGE
-- line 442 at 113.867 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 448 at 114.401 <- you: Corruption SPELL_PERIODIC_DAMAGE
-- line 469 at 115.934 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 481 at 117.917 <- you:  PARTY_KILL
