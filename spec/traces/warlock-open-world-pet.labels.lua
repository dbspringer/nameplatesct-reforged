-- Labels for warlock-open-world-pet: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 1, line = false }, -- 0.050 nameplate1 WOUND 21 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 3, line = false }, -- 0.166 nameplate1 WOUND 36 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 5, line = false, unsure = "two creatures fit nameplate6" }, -- 0.200 nameplate6 WOUND 132 <- other: Windfury Weapon SPELL_DAMAGE +0.152 s
	{ hit = 7, line = false }, -- 0.283 nameplate1 PARRY 0 <- other: swing SWING_MISSED +0.434 s
	{ hit = 8, line = false, unsure = "two creatures fit nameplate6" }, -- 0.366 nameplate6 IMMUNE 0 <- creature: Earthbind SPELL_MISSED +0.000 s
	{ hit = 10, line = false, unsure = "2 file events fit" }, -- 0.366 nameplate1 MISS 0 <- other: Corruption SPELL_MISSED +0.000 s
	{ hit = 11, line = false }, -- 0.366 nameplate1 WOUND 41 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 12, line = false, unsure = "two creatures fit nameplate6" }, -- 0.450 nameplate6 WOUND 146 <- other: Windfury Weapon SPELL_DAMAGE +0.402 s
	{ hit = 13, line = false }, -- 0.600 nameplate1 MISS 0 <- creature: Shoot SPELL_MISSED -0.001 s
	{ hit = 14, line = false }, -- 0.700 nameplate1 WOUND 185 <- other: Stormstrike SPELL_DAMAGE +0.001 s
	{ hit = 15, line = false }, -- 0.850 nameplate1 WOUND 46 <- creature: Shoot SPELL_DAMAGE +0.051 s
	{ hit = 17, line = false }, -- 0.916 nameplate1 WOUND 576 <- other: Frostbolt SPELL_DAMAGE +0.017 s
	{ hit = 18, line = false, unsure = "two creatures fit nameplate6" }, -- 0.933 nameplate6 WOUND 120 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 19, line = false, unsure = "two creatures fit nameplate6" }, -- 1.000 nameplate6 WOUND 6 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 21, line = false }, -- 1.067 nameplate1 WOUND 127 <- other: swing SWING_DAMAGE +0.485 s
	{ hit = 22, line = false, unsure = "no file event fits" }, -- 1.150 nameplate6 DODGE 0 <- no file event 
	{ hit = 26, line = false, unsure = "two creatures fit nameplate6" }, -- 1.250 nameplate6 WOUND 50 <- other: Firebolt SPELL_DAMAGE +0.034 s
	{ hit = 32, line = false, unsure = "two creatures fit nameplate6" }, -- 1.533 nameplate6 WOUND 36 <- other: Auto Shot RANGE_DAMAGE +0.001 s
	{ hit = 34, line = false, unsure = "two creatures fit nameplate6" }, -- 1.700 nameplate6 DODGE 0 <- other: swing SWING_MISSED +0.368 s
	{ hit = 35, line = false, unsure = "two creatures fit nameplate6" }, -- 1.800 nameplate6 MISS 0 <- other: swing SWING_MISSED +0.368 s
	{ hit = 36, line = false, unsure = "two creatures fit nameplate6" }, -- 1.850 nameplate6 WOUND 16 <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.002 s
	{ hit = 39, line = false, unsure = "two creatures fit nameplate6" }, -- 1.983 nameplate6 WOUND 25 <- creature: Attack SPELL_DAMAGE +0.134 s
	{ hit = 43, line = false, unsure = "no file event fits" }, -- 2.783 nameplate6 WOUND 3 <- no file event 
	{ hit = 46, line = false, unsure = "two creatures fit nameplate6" }, -- 3.033 nameplate6 WOUND 41 <- creature: Shoot SPELL_DAMAGE +0.017 s
	{ hit = 55, line = false, unsure = "two creatures fit nameplate6" }, -- 3.333 nameplate6 IMMUNE 0 <- creature: Earthbind SPELL_MISSED +0.000 s
	{ hit = 58, line = false, unsure = "two creatures fit nameplate6" }, -- 3.433 nameplate6 WOUND 55 <- other: Firebolt SPELL_DAMAGE +0.000 s
	{ hit = 63, line = false, unsure = "two creatures fit nameplate6" }, -- 3.583 nameplate6 WOUND 62 <- other: swing SWING_DAMAGE +0.368 s
	{ hit = 70, line = false, unsure = "two creatures fit nameplate6" }, -- 3.966 nameplate6 WOUND 6 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 74, line = false, unsure = "two creatures fit nameplate6" }, -- 3.966 nameplate6 WOUND 68 <- other: Multi-Shot SPELL_DAMAGE +0.000 s
	{ hit = 77, line = false, unsure = "two creatures fit nameplate6" }, -- 4.383 nameplate6 WOUND 44 <- other: Auto Shot RANGE_DAMAGE +0.001 s
	{ hit = 80, line = false, unsure = "two creatures fit nameplate6" }, -- 4.400 nameplate6 WOUND 21 <- creature: Attack SPELL_DAMAGE +0.118 s
	{ hit = 86, line = false, unsure = "two creatures fit nameplate6" }, -- 4.683 nameplate6 WOUND 72 <- other: swing SWING_DAMAGE +0.301 s
	{ hit = 90, line = false, unsure = "two creatures fit nameplate6" }, -- 5.150 nameplate6 WOUND 25 <- other: Firebolt SPELL_DAMAGE +0.034 s
	{ hit = 93, line = false, unsure = "no file event fits" }, -- 5.233 nameplate6 WOUND 2 <- no file event 
	{ hit = 96, line = false, unsure = "two creatures fit nameplate6" }, -- 5.300 nameplate6 PARRY 0 <- other: swing SWING_MISSED +0.501 s
	{ hit = 99, line = false, unsure = "two creatures fit nameplate6" }, -- 5.450 nameplate6 WOUND 80 <- other: Firebolt SPELL_DAMAGE +0.018 s
	{ hit = 102, line = false, unsure = "two creatures fit nameplate6" }, -- 5.600 nameplate6 MISS 0 <- other: Shoot RANGE_MISSED +0.000 s
	{ hit = 107, line = false, unsure = "two creatures fit nameplate6" }, -- 5.750 nameplate6 WOUND 50 <- other: swing SWING_DAMAGE +0.851 s
	{ hit = 110, line = false, unsure = "two creatures fit nameplate6" }, -- 5.916 nameplate6 WOUND 54 <- other: Auto Shot RANGE_DAMAGE +0.051 s
	{ hit = 117, line = false, unsure = "two creatures fit nameplate6" }, -- 6.200 nameplate6 MISS 0 <- other: Stormstrike SPELL_MISSED +0.001 s
	{ hit = 121, line = false, unsure = "two creatures fit nameplate6" }, -- 6.500 nameplate6 WOUND 64 <- other: swing SWING_DAMAGE +0.301 s
	{ hit = 124, line = false, unsure = "two creatures fit nameplate6" }, -- 6.700 nameplate6 WOUND 52 <- creature: Shoot SPELL_DAMAGE +0.001 s
	{ hit = 127, line = false, unsure = "two creatures fit nameplate6" }, -- 6.833 nameplate6 WOUND 23 <- creature: Attack SPELL_DAMAGE +0.134 s
	{ hit = 130, line = false, unsure = "two creatures fit nameplate6" }, -- 6.850 nameplate6 WOUND 330 <- other: Windfury Weapon SPELL_DAMAGE +0.151 s
	{ hit = 133, line = false, unsure = "two creatures fit nameplate6" }, -- 7.016 nameplate6 WOUND 6 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 136, line = false, unsure = "two creatures fit nameplate6" }, -- 7.016 nameplate6 WOUND 71 <- other: Arcane Shot SPELL_DAMAGE +0.001 s
	{ hit = 139, line = false, unsure = "two creatures fit nameplate6" }, -- 7.066 nameplate6 WOUND 159 <- other: swing SWING_DAMAGE +0.367 s
	{ hit = 142, line = false, unsure = "two creatures fit nameplate6" }, -- 7.100 nameplate6 WOUND 191 <- other: Windfury Weapon SPELL_DAMAGE +0.402 s
	{ hit = 146, line = false, unsure = "two creatures fit nameplate6" }, -- 7.400 nameplate6 WOUND 140 <- other: swing SWING_DAMAGE +1.318 s
	{ hit = 149, line = false, unsure = "two creatures fit nameplate6" }, -- 7.433 nameplate6 WOUND 54 <- other: Auto Shot RANGE_DAMAGE +0.001 s
	{ hit = 152, line = false, unsure = "two creatures fit nameplate6" }, -- 7.450 nameplate6 WOUND 166 <- other: swing SWING_DAMAGE +0.851 s
	{ hit = 155, line = false, unsure = "no file event fits" }, -- 7.533 nameplate6 WOUND 2 <- no file event 
	{ hit = 158, line = false, unsure = "two creatures fit nameplate6" }, -- 7.566 nameplate6 WOUND 43 <- creature: Shoot SPELL_DAMAGE +0.034 s
	{ hit = 161, line = false, unsure = "two creatures fit nameplate6" }, -- 7.650 nameplate6 WOUND 90 <- other: Frost Shock SPELL_DAMAGE +0.001 s
	{ hit = 164, line = false, unsure = "two creatures fit nameplate6" }, -- 7.716 nameplate6 WOUND 51 <- creature: Shoot SPELL_DAMAGE +0.067 s
	{ hit = 168, line = false, unsure = "two creatures fit nameplate6" }, -- 8.266 nameplate6 WOUND 56 <- creature: Shoot SPELL_DAMAGE +0.001 s
	{ hit = 171, line = false, unsure = "two creatures fit nameplate6" }, -- 8.300 nameplate6 WOUND 54 <- other: Firebolt SPELL_DAMAGE +0.034 s
	{ hit = 174, line = false, unsure = "2 file events fit" }, -- 8.366 nameplate6 WOUND 69 <- other: swing SWING_DAMAGE -0.100 s
	{ hit = 179, line = false, unsure = "two creatures fit nameplate6" }, -- 8.533 nameplate6 PARRY 0 <- other: swing SWING_MISSED +0.367 s
	{ hit = 182, line = false, unsure = "two creatures fit nameplate6" }, -- 8.833 nameplate6 WOUND 69 <- other: swing SWING_DAMAGE +0.768 s
	{ hit = 185, line = false, unsure = "two creatures fit nameplate6" }, -- 9.000 nameplate6 WOUND 52 <- other: Auto Shot RANGE_DAMAGE +0.001 s
	{ hit = 188, line = false, unsure = "two creatures fit nameplate6" }, -- 9.000 nameplate6 WOUND 3 <- other: swing SWING_DAMAGE +0.635 s
	{ hit = 193, line = false, unsure = "two creatures fit nameplate6" }, -- 9.100 nameplate6 WOUND 167 <- other: Revenge SPELL_DAMAGE +0.001 s
	{ hit = 196, line = false, unsure = "two creatures fit nameplate6" }, -- 9.200 nameplate6 WOUND 47 <- other: Thunder Clap SPELL_DAMAGE +0.001 s
	{ hit = 199, line = false, unsure = "two creatures fit nameplate6" }, -- 9.200 nameplate6 DODGE 0 <- other: Stormstrike SPELL_MISSED +0.001 s
	{ hit = 202, line = false, unsure = "two creatures fit nameplate6" }, -- 9.216 nameplate6 WOUND 50 <- creature: Shoot SPELL_DAMAGE +0.017 s
	{ hit = 208, line = false, unsure = "two creatures fit nameplate6" }, -- 9.683 nameplate6 WOUND 20 <- creature: Attack SPELL_DAMAGE +0.050 s
	{ hit = 211, line = false, unsure = "two creatures fit nameplate6" }, -- 9.750 nameplate6 WOUND 27 <- other: Firebolt SPELL_DAMAGE +0.117 s
	{ hit = 214, line = false, unsure = "two creatures fit nameplate6" }, -- 9.783 nameplate6 WOUND 83 <- other: swing SWING_DAMAGE +0.368 s
	{ hit = 217, line = false, unsure = "two creatures fit nameplate6" }, -- 9.816 nameplate6 WOUND 166 <- other: swing SWING_DAMAGE +0.501 s
	{ hit = 220, line = false, unsure = "two creatures fit nameplate6" }, -- 9.983 nameplate6 WOUND 146 <- other: swing SWING_DAMAGE +0.568 s
	{ hit = 226, line = false, unsure = "two creatures fit nameplate6" }, -- 10.366 nameplate6 WOUND 69 <- other: Multi-Shot SPELL_DAMAGE +0.001 s
	{ hit = 229, line = false, unsure = "two creatures fit nameplate6" }, -- 10.366 nameplate6 WOUND 100 <- other: Earth Shock SPELL_DAMAGE +0.000 s
	{ hit = 232, line = false, unsure = "two creatures fit nameplate6" }, -- 10.466 nameplate6 WOUND 52 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 235, line = false, unsure = "two creatures fit nameplate6" }, -- 10.466 nameplate6 WOUND 53 <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 238, line = false, unsure = "two creatures fit nameplate6" }, -- 10.683 nameplate6 WOUND 78 <- other: Firebolt SPELL_DAMAGE +0.001 s
	{ hit = 241, line = false, unsure = "no file event fits" }, -- 11.400 nameplate6 WOUND 2 <- no file event 
	{ hit = 244, line = false, unsure = "two creatures fit nameplate6" }, -- 11.550 nameplate6 WOUND 44 <- creature: Shoot SPELL_DAMAGE +0.051 s
	{ hit = 247, line = false, unsure = "two creatures fit nameplate6" }, -- 11.600 nameplate6 WOUND 71 <- other: swing SWING_DAMAGE +1.351 s
	{ hit = 250, line = false, unsure = "two creatures fit nameplate6" }, -- 11.816 nameplate6 WOUND 73 <- other: Shoot RANGE_DAMAGE +0.000 s
	{ hit = 253, line = false, unsure = "two creatures fit nameplate6" }, -- 11.816 nameplate6 WOUND 158 <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 256, line = false, unsure = "two creatures fit nameplate6" }, -- 11.933 nameplate6 WOUND 94 <- other: Earth Shock SPELL_DAMAGE +0.000 s
	{ hit = 259, line = false, unsure = "two creatures fit nameplate6" }, -- 11.966 nameplate6 PARRY 0 <- other: swing SWING_MISSED +0.367 s
	{ hit = 262, line = false, unsure = "two creatures fit nameplate6" }, -- 12.033 nameplate6 WOUND 49 <- other: Auto Shot RANGE_DAMAGE +0.001 s
	{ hit = 270, line = false, unsure = "two creatures fit nameplate6" }, -- 12.666 nameplate6 WOUND 79 <- other: Sinister Strike SPELL_DAMAGE +0.000 s
	{ hit = 273, line = false, unsure = "two creatures fit nameplate6" }, -- 12.716 nameplate6 DODGE 0 <- other: swing SWING_MISSED +0.783 s
	{ hit = 276, line = false, unsure = "two creatures fit nameplate6" }, -- 12.800 nameplate6 WOUND 296 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 279, line = false, unsure = "two creatures fit nameplate6" }, -- 12.883 nameplate6 WOUND 55 <- creature: Shoot SPELL_DAMAGE +0.018 s
	{ hit = 282, line = false, unsure = "two creatures fit nameplate6" }, -- 12.966 nameplate6 WOUND 44 <- creature: Shoot SPELL_DAMAGE +0.001 s
	{ hit = 285, line = false, unsure = "two creatures fit nameplate6" }, -- 12.966 nameplate6 WOUND 21 <- creature: Attack SPELL_DAMAGE +0.001 s
	{ hit = 289, line = false, unsure = "two creatures fit nameplate6" }, -- 13.216 nameplate6 WOUND 52 <- other: Firebolt SPELL_DAMAGE +0.034 s
	{ hit = 292, line = false, unsure = "two creatures fit nameplate6" }, -- 13.266 nameplate6 MISS 0 <- creature: Shoot SPELL_MISSED -0.001 s
	{ hit = 295, line = false, unsure = "two creatures fit nameplate6" }, -- 13.300 nameplate6 WOUND 42 <- other: Auto Shot RANGE_DAMAGE +0.001 s
	{ hit = 298, line = false, unsure = "two creatures fit nameplate6" }, -- 13.400 nameplate6 WOUND 83 <- other: Holy Strike SPELL_DAMAGE +0.001 s
	{ hit = 301, line = false, unsure = "two creatures fit nameplate6" }, -- 13.616 nameplate6 WOUND 47 <- other: Auto Shot RANGE_DAMAGE +0.001 s
	{ hit = 304, line = false, unsure = "two creatures fit nameplate6" }, -- 13.616 nameplate6 PARRY 0 <- other: Sinister Strike SPELL_MISSED +0.000 s
	{ hit = 307, line = false, unsure = "two creatures fit nameplate6" }, -- 13.616 nameplate6 WOUND 132 <- other: Seal of Command SPELL_DAMAGE +0.000 s
	{ hit = 310, line = false, unsure = "two creatures fit nameplate6" }, -- 13.633 nameplate6 WOUND 54 <- other: swing SWING_DAMAGE +0.968 s
	{ hit = 315, line = false, unsure = "two creatures fit nameplate6" }, -- 13.933 nameplate6 WOUND 50 <- creature: Shoot SPELL_DAMAGE +0.001 s
	{ hit = 318, line = false, unsure = "two creatures fit nameplate6" }, -- 14.083 nameplate6 WOUND 58 <- other: swing SWING_DAMAGE +0.367 s
	{ hit = 321, line = false, unsure = "two creatures fit nameplate6" }, -- 14.117 nameplate6 WOUND 72 <- other: swing SWING_DAMAGE +0.602 s
	{ hit = 324, line = false, unsure = "two creatures fit nameplate6" }, -- 14.283 nameplate6 WOUND 71 <- other: Arcane Shot SPELL_DAMAGE +0.033 s
	{ hit = 327, line = false, unsure = "two creatures fit nameplate6" }, -- 14.316 nameplate6 MISS 0 <- other: Shoot RANGE_MISSED -0.001 s
	{ hit = 330, line = false, unsure = "no file event fits" }, -- 14.350 nameplate6 WOUND 2 <- no file event 
	{ hit = 333, line = false, unsure = "two creatures fit nameplate6" }, -- 14.450 nameplate6 WOUND 89 <- other: Frost Shock SPELL_DAMAGE +0.001 s
	{ hit = 337, line = false, unsure = "two creatures fit nameplate6" }, -- 14.602 nameplate6 WOUND 331 <- other: swing SWING_DAMAGE +0.986 s
	{ hit = 340, line = false, unsure = "two creatures fit nameplate6" }, -- 14.650 nameplate6 WOUND 71 <- other: Sinister Strike SPELL_DAMAGE +0.000 s
	{ hit = 343, line = false, unsure = "two creatures fit nameplate6" }, -- 14.650 nameplate6 IMMUNE 0 <- other: Earthshaker SPELL_MISSED -0.001 s
	{ hit = 346, line = false, unsure = "two creatures fit nameplate6" }, -- 14.716 nameplate6 IMMUNE 0 <- other: Concussive Shot SPELL_MISSED -0.002 s
	{ hit = 349, line = false, unsure = "two creatures fit nameplate6" }, -- 14.750 nameplate6 WOUND 78 <- other: Judgement of Command SPELL_DAMAGE +0.001 s
	{ hit = 352, line = false, unsure = "2 file events fit" }, -- 15.116 nameplate6 PARRY 0 <- other: swing SWING_MISSED +0.150 s
	{ hit = 355, line = false, unsure = "two creatures fit nameplate6" }, -- 15.166 nameplate6 WOUND 54 <- other: Auto Shot RANGE_DAMAGE +0.001 s
	{ hit = 358, line = false, unsure = "two creatures fit nameplate6" }, -- 15.166 nameplate6 WOUND 47 <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 363, line = false, unsure = "two creatures fit nameplate6" }, -- 15.333 nameplate6 DODGE 0 <- other: swing SWING_MISSED +0.367 s
	{ hit = 366, line = false, unsure = "two creatures fit nameplate6" }, -- 15.366 nameplate6 WOUND 149 <- other: swing SWING_DAMAGE +0.500 s
	{ hit = 369, line = false, unsure = "two creatures fit nameplate6" }, -- 15.383 nameplate6 WOUND 33 <- creature: Attack SPELL_DAMAGE +0.001 s
	{ hit = 372, line = false, unsure = "two creatures fit nameplate6" }, -- 15.466 nameplate6 PARRY 0 <- other: swing SWING_MISSED +1.117 s
	{ hit = 375, line = false, unsure = "no file event fits" }, -- 15.483 nameplate6 WOUND 2 <- no file event 
	{ hit = 378, line = false, unsure = "two creatures fit nameplate6" }, -- 15.500 nameplate6 WOUND 153 <- other: swing SWING_DAMAGE +0.849 s
	{ hit = 381, line = false, unsure = "two creatures fit nameplate6" }, -- 15.583 nameplate6 WOUND 82 <- other: Firebolt SPELL_DAMAGE +0.001 s
	{ hit = 384, line = false, unsure = "two creatures fit nameplate6" }, -- 15.583 nameplate6 WOUND 28 <- other: Seal of Righteousness SPELL_DAMAGE +0.000 s
	{ hit = 387, line = false, unsure = "two creatures fit nameplate6" }, -- 15.583 nameplate6 WOUND 170 <- other: Sinister Strike SPELL_DAMAGE +0.000 s
	{ hit = 390, line = false, unsure = "two creatures fit nameplate6" }, -- 15.700 nameplate6 WOUND 136 <- other: Judgement of Righteousness SPELL_DAMAGE +0.000 s
	{ hit = 393, line = false, unsure = "two creatures fit nameplate6" }, -- 15.800 nameplate6 WOUND 152 <- other: Stormstrike SPELL_DAMAGE +0.001 s
	{ hit = 396, line = false, unsure = "two creatures fit nameplate6" }, -- 15.850 nameplate6 WOUND 68 <- other: swing SWING_DAMAGE +0.367 s
	{ hit = 399, line = false, unsure = "two creatures fit nameplate6" }, -- 16.033 nameplate6 WOUND 52 <- creature: Shoot SPELL_DAMAGE +0.034 s
	{ hit = 402, line = false, unsure = "two creatures fit nameplate6" }, -- 16.083 nameplate6 WOUND 90 <- other: swing SWING_DAMAGE +0.818 s
	{ hit = 407, line = false, unsure = "two creatures fit nameplate6" }, -- 16.100 nameplate6 WOUND 132 <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 410, line = false, unsure = "two creatures fit nameplate6" }, -- 16.100 nameplate6 WOUND 61 <- other: Holy Strike SPELL_DAMAGE +0.000 s
	{ hit = 413, line = false, unsure = "two creatures fit nameplate6" }, -- 16.216 nameplate6 WOUND 48 <- creature: Shoot SPELL_DAMAGE +0.001 s
	{ hit = 416, line = false, unsure = "two creatures fit nameplate6" }, -- 16.316 nameplate6 WOUND 24 <- other: Firebolt SPELL_DAMAGE +0.000 s
	{ hit = 419, line = false, unsure = "two creatures fit nameplate6" }, -- 16.566 nameplate6 WOUND 86 <- other: swing SWING_DAMAGE +0.984 s
	{ hit = 422, line = false, unsure = "two creatures fit nameplate6" }, -- 16.583 nameplate6 WOUND 136 <- other: swing SWING_DAMAGE +1.317 s
	{ hit = 425, line = false, unsure = "two creatures fit nameplate6" }, -- 16.716 nameplate6 WOUND 47 <- other: Auto Shot RANGE_DAMAGE +0.001 s
	{ hit = 430, line = false, unsure = "two creatures fit nameplate6" }, -- 17.166 nameplate6 WOUND 70 <- other: swing SWING_DAMAGE +1.067 s
	{ hit = 433, line = false, unsure = "two creatures fit nameplate6" }, -- 17.166 nameplate6 MISS 0 <- other: swing SWING_MISSED +0.117 s
	{ hit = 436, line = false, unsure = "two creatures fit nameplate6" }, -- 17.217 nameplate6 WOUND 162 <- other: swing SWING_DAMAGE +0.501 s
	{ hit = 439, line = false, unsure = "two creatures fit nameplate6" }, -- 17.250 nameplate6 WOUND 168 <- other: Stormstrike SPELL_DAMAGE +0.001 s
	{ hit = 444, line = 443, spell = 7809, unsure = "two creatures fit nameplate6" }, -- 17.350 nameplate6 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 447, line = false, unsure = "no file event fits" }, -- 17.350 nameplate6 WOUND 0 <- no file event 
	{ hit = 450, line = false, unsure = "two creatures fit nameplate6" }, -- 17.350 nameplate6 WOUND 20 <- other: Raptor Strike SPELL_DAMAGE -0.001 s
	{ hit = 453, line = false, unsure = "two creatures fit nameplate6" }, -- 17.550 nameplate6 WOUND 64 <- other: Cleave SPELL_DAMAGE +0.001 s
	{ hit = 456, line = false, unsure = "two creatures fit nameplate6" }, -- 17.616 nameplate6 WOUND 77 <- other: swing SWING_DAMAGE +0.367 s
	{ hit = 459, line = false, unsure = "two creatures fit nameplate6" }, -- 17.650 nameplate6 WOUND 266 <- other: Holy Shock SPELL_DAMAGE +0.001 s
	{ hit = 462, line = false, unsure = "two creatures fit nameplate6" }, -- 17.650 nameplate6 WOUND 49 <- other: Flame Shock SPELL_DAMAGE +0.001 s
	{ hit = 465, line = false, unsure = "two creatures fit nameplate6" }, -- 17.650 nameplate6 WOUND 52 <- other: Firebolt SPELL_DAMAGE +0.101 s
	{ hit = 468, line = false, unsure = "two creatures fit nameplate6" }, -- 17.816 nameplate6 WOUND 135 <- other: swing SWING_DAMAGE +0.367 s
	{ hit = 471, line = false, unsure = "no file event fits" }, -- 17.966 nameplate6 WOUND 3 <- no file event 
	{ hit = 474, line = false, unsure = "two creatures fit nameplate6" }, -- 17.966 nameplate6 WOUND 113 <- other: Auto Shot RANGE_DAMAGE +0.000 s
	{ hit = 480, line = false, unsure = "two creatures fit nameplate6" }, -- 18.016 nameplate6 WOUND 52 <- creature: Shoot SPELL_DAMAGE +0.050 s
	{ hit = 483, line = false, unsure = "two creatures fit nameplate6" }, -- 18.066 nameplate6 WOUND 28 <- other: Seal of Righteousness SPELL_DAMAGE +0.001 s
	{ hit = 486, line = false, unsure = "two creatures fit nameplate6" }, -- 18.116 nameplate6 WOUND 56 <- creature: Shoot SPELL_DAMAGE +0.050 s
	{ hit = 489, line = false, unsure = "two creatures fit nameplate6" }, -- 18.150 nameplate6 WOUND 153 <- other: swing SWING_DAMAGE +0.501 s
	{ hit = 492, line = false, unsure = "two creatures fit nameplate6" }, -- 18.166 nameplate6 WOUND 289 <- other: Eviscerate SPELL_DAMAGE +0.000 s
	{ hit = 497, line = false, unsure = "two creatures fit nameplate6" }, -- 18.317 nameplate6 WOUND 81 <- other: swing SWING_DAMAGE +0.351 s
	{ hit = 498, line = false, unsure = "no file event fits" }, -- 18.333 nameplate6 WOUND 0 <- no file event 
	{ hit = 503, line = false, unsure = "2 file events fit" }, -- 19.283 target MISS 0 <- other: swing SWING_MISSED +0.501 s
	{ hit = 505, line = false }, -- 19.300 target WOUND 16 <- other: Instant Poison SPELL_DAMAGE +0.001 s
	{ hit = 508, line = false }, -- 19.366 target WOUND 82 <- other: swing SWING_DAMAGE +0.367 s
	{ hit = 510, line = false }, -- 19.400 target MISS 0 <- creature: Shoot SPELL_MISSED +0.899 s
	{ hit = 512, line = false }, -- 19.466 target WOUND 161 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 514, line = false, unsure = "2 file events fit" }, -- 19.766 target DODGE 0 <- other: swing SWING_MISSED +0.366 s
	{ hit = 517, line = false }, -- 19.866 target WOUND 325 <- creature: swing SWING_DAMAGE +0.466 s
	{ hit = 519, line = false }, -- 19.950 target PARRY 0 <- other: swing SWING_MISSED +0.751 s
	{ hit = 521, line = false }, -- 20.033 target WOUND 58 <- creature: Shoot SPELL_DAMAGE +0.001 s
	{ hit = 523, line = false }, -- 20.033 target WOUND 94 <- other: Earth Shock SPELL_DAMAGE +0.000 s
	{ hit = 525, line = false, unsure = "late by 1.32 s" }, -- 20.100 target WOUND 28 <- other: swing SWING_DAMAGE +1.318 s
	{ hit = 527, line = false }, -- 20.133 target WOUND 68 <- creature: Shoot SPELL_DAMAGE +0.001 s
	{ hit = 529, line = false }, -- 20.150 target WOUND 75 <- other: swing SWING_DAMAGE +0.435 s
	{ hit = 531, line = false }, -- 20.200 target WOUND 66 <- creature: Shoot SPELL_DAMAGE +0.067 s
	{ hit = 533, line = false }, -- 20.233 target WOUND 6 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 535, line = false }, -- 20.233 target WOUND 25 <- other: Claw SPELL_DAMAGE +0.000 s
	{ hit = 537, line = false }, -- 20.233 target WOUND 15 <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 539, line = false }, -- 20.316 target WOUND 378 <- other: swing SWING_DAMAGE +0.500 s
	{ hit = 541, line = false }, -- 20.433 target PARRY 0 <- other: Holy Strike SPELL_MISSED +0.001 s
	{ hit = 543, line = false }, -- 20.650 target PARRY 0 <- other: Rend SPELL_MISSED +0.001 s
	{ hit = 545, line = false, unsure = "late by 1.42 s" }, -- 20.717 target WOUND 108 <- other: swing SWING_DAMAGE +1.418 s
	{ hit = 547, line = false }, -- 20.766 target WOUND 1 <- other: swing SWING_DAMAGE +0.434 s
	{ hit = 549, line = false }, -- 20.800 target WOUND 189 <- other: swing SWING_DAMAGE +0.367 s
	{ hit = 551, line = false, unsure = "no file event fits" }, -- 20.850 target WOUND 0 <- no file event 
	{ hit = 553, line = false }, -- 20.850 target WOUND 199 <- other: Raptor Strike SPELL_DAMAGE +0.001 s
	{ hit = 555, line = false }, -- 20.966 target WOUND 28 <- other: Seal of Righteousness SPELL_DAMAGE +0.001 s
	{ hit = 557, line = false, unsure = "late by 1.42 s" }, -- 21.033 target MISS 0 <- other: swing SWING_MISSED +1.417 s
	{ hit = 559, line = false }, -- 21.066 target WOUND 67 <- creature: Shoot SPELL_DAMAGE +0.001 s
	{ hit = 562, line = false }, -- 21.066 target WOUND 17 <- other: Instant Poison SPELL_DAMAGE -0.001 s
	{ hit = 564, line = false }, -- 21.116 target WOUND 182 <- other: swing SWING_DAMAGE +0.372 s
	{ hit = 567, line = false }, -- 21.266 target WOUND 14 <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 569, line = false }, -- 21.350 target WOUND 85 <- other: swing SWING_DAMAGE +0.501 s
	{ hit = 571, line = false }, -- 21.500 target WOUND 30 <- creature: Attack SPELL_DAMAGE +0.035 s
	{ hit = 573, line = false }, -- 21.533 target MISS 0 <- other: Windfury Weapon SPELL_MISSED +0.494 s
	{ hit = 750, line = false }, -- 32.133 nameplate1 WOUND 48 <- creature: Shoot SPELL_DAMAGE +0.117 s
	{ hit = 787, line = false }, -- 34.383 nameplate1 WOUND 45 <- creature: Shoot SPELL_DAMAGE +0.034 s
	{ hit = 817, line = 816, spell = 7809 }, -- 38.050 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 826, line = 814, spell = false }, -- 39.033 nameplate1 PARRY 0 <- pet: swing SWING_MISSED +0.984 s
	{ hit = 831, line = false }, -- 39.583 nameplate1 WOUND 45 <- creature: Shoot SPELL_DAMAGE +0.284 s
	{ hit = 843, line = 838, spell = false }, -- 40.583 nameplate1 PARRY 0 <- pet: swing SWING_MISSED +0.534 s
	{ hit = 859, line = 854, spell = false }, -- 42.567 nameplate1 WOUND 2 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 905, line = false, unsure = "2 file events fit" }, -- 44.200 nameplate1 MISS 0 <- creature: Shoot SPELL_MISSED -0.002 s
	{ hit = 909, line = 903, spell = false }, -- 44.567 nameplate1 MISS 0 <- pet: swing SWING_MISSED +0.568 s
	{ hit = 931, line = false }, -- 45.870 nameplate1 WOUND 36 <- creature: swing SWING_DAMAGE +0.503 s
	{ hit = 949, line = 944, spell = false }, -- 46.583 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 959, line = false }, -- 47.917 nameplate1 WOUND 38 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 966, line = false, unsure = "no file event fits" }, -- 48.600 nameplate1 WOUND 0 <- no file event 
	{ hit = 975, line = false }, -- 49.933 nameplate1 WOUND 31 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 983, line = 979, spell = false }, -- 50.550 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 989, line = 988, spell = 7809 }, -- 51.033 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 998, line = false }, -- 51.817 nameplate1 DODGE 0 <- creature: swing SWING_MISSED +0.368 s
	{ hit = 1004, line = 1002, spell = false }, -- 52.600 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1016, line = false }, -- 53.833 nameplate1 WOUND 36 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1022, line = false, unsure = "no file event fits" }, -- 54.550 nameplate1 WOUND 0 <- no file event 
	{ hit = 1030, line = false }, -- 55.650 nameplate1 WOUND 36 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1035, line = false }, -- 55.933 nameplate1 WOUND 33 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1044, line = 1043, spell = 7809 }, -- 56.267 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 1048, line = 1039, spell = false }, -- 57.050 nameplate1 DODGE 0 <- pet: swing SWING_MISSED +0.984 s
	{ hit = 1051, line = false }, -- 57.050 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.467 s
	{ hit = 1056, line = false }, -- 57.783 nameplate1 WOUND 36 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1060, line = 1059, spell = false }, -- 58.567 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1063, line = false }, -- 58.667 nameplate1 WOUND 35 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1074, line = false }, -- 59.767 nameplate1 WOUND 34 <- creature: swing SWING_DAMAGE +0.368 s
	{ hit = 1081, line = false }, -- 60.300 nameplate1 DODGE 0 <- other: swing SWING_MISSED +0.568 s
	{ hit = 1084, line = 1080, spell = false }, -- 60.567 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 1090, line = false }, -- 61.650 nameplate1 WOUND 34 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1095, line = 1094, spell = 7809 }, -- 61.883 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 1098, line = false }, -- 61.950 nameplate1 WOUND 35 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 1113, line = 1110, spell = false }, -- 62.617 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1120, line = false }, -- 63.383 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.567 s
	{ hit = 1127, line = false }, -- 63.933 nameplate1 WOUND 32 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1153, line = false }, -- 64.617 nameplate1 WOUND 34 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 1156, line = 1130, spell = false }, -- 64.617 nameplate1 DODGE 0 <- pet: swing SWING_MISSED +0.534 s
	{ hit = 1161, line = false }, -- 65.850 nameplate1 WOUND 34 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1165, line = false }, -- 66.483 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.567 s
	{ hit = 1168, line = 1164, spell = false }, -- 66.583 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1173, line = 1172, spell = 7809 }, -- 67.183 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 1176, line = false }, -- 67.483 nameplate1 PARRY 0 <- creature: swing SWING_MISSED +0.500 s
	{ hit = 1181, line = false }, -- 67.700 nameplate1 WOUND 35 <- other: Serpent Sting SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1186, line = false }, -- 68.483 nameplate1 WOUND 32 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1190, line = 1184, spell = false }, -- 68.517 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 1196, line = false }, -- 69.517 nameplate1 WOUND 5 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 1202, line = false }, -- 70.467 nameplate1 WOUND 33 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1206, line = 1201, spell = false }, -- 70.617 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 1218, line = 1217, spell = 7809 }, -- 72.417 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.001 s
	{ hit = 1221, line = false }, -- 72.567 nameplate1 DODGE 0 <- creature: swing SWING_MISSED +0.368 s
	{ hit = 1224, line = false }, -- 72.650 nameplate1 WOUND 18 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 1229, line = 1215, spell = false }, -- 73.067 nameplate1 WOUND 2 <- pet: swing SWING_DAMAGE +0.984 s
	{ hit = 1233, line = 1232, spell = false }, -- 74.600 nameplate1 MISS 0 <- pet: swing SWING_MISSED +0.534 s
	{ hit = 1236, line = false }, -- 74.667 nameplate1 WOUND 37 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 1241, line = false }, -- 75.700 nameplate1 WOUND 16 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 1248, line = 1244, spell = false }, -- 76.600 nameplate1 WOUND 2 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1251, line = false }, -- 76.667 nameplate1 WOUND 31 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 1267, line = 1266, spell = 7809, unsure = "2 file events fit" }, -- 78.067 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 1270, line = false }, -- 78.167 nameplate1 MISS 0 <- other: Fireball SPELL_MISSED +0.001 s
	{ hit = 1274, line = false }, -- 78.600 nameplate1 WOUND 13 <- other: swing SWING_DAMAGE +0.434 s
	{ hit = 1277, line = false }, -- 78.667 nameplate1 DODGE 0 <- creature: swing SWING_MISSED +0.501 s
	{ hit = 1283, line = 1264, spell = false }, -- 79.050 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.984 s
	{ hit = 1290, line = false }, -- 80.550 nameplate1 PARRY 0 <- creature: swing SWING_MISSED +0.367 s
	{ hit = 1293, line = 1288, spell = false }, -- 80.617 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1298, line = false }, -- 81.800 nameplate1 WOUND 18 <- other: swing SWING_DAMAGE +0.467 s
	{ hit = 1304, line = false }, -- 82.567 nameplate1 WOUND 40 <- creature: swing SWING_DAMAGE +0.368 s
	{ hit = 1307, line = 1301, spell = false }, -- 82.617 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1316, line = 1315, spell = 7809 }, -- 83.700 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 1325, line = false }, -- 84.583 nameplate1 WOUND 31 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1328, line = 1323, spell = false }, -- 84.650 nameplate1 WOUND 2 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 1332, line = false }, -- 84.983 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.567 s
	{ hit = 1340, line = false }, -- 86.200 nameplate1 WOUND 48 <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 1343, line = false }, -- 86.567 nameplate1 MISS 0 <- creature: swing SWING_MISSED +0.367 s
	{ hit = 1346, line = 1339, spell = false }, -- 86.667 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1354, line = false }, -- 88.067 nameplate1 DODGE 0 <- other: swing SWING_MISSED +0.567 s
	{ hit = 1360, line = false }, -- 88.650 nameplate1 WOUND 46 <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 1363, line = 1357, spell = false }, -- 88.650 nameplate1 MISS 0 <- pet: swing SWING_MISSED +0.534 s
	{ hit = 1366, line = false }, -- 88.717 nameplate1 WOUND 33 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 1374, line = 1373, spell = 7809 }, -- 89.817 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 1384, line = false }, -- 90.600 nameplate1 WOUND 32 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1387, line = false, unsure = "2 file events fit" }, -- 90.667 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.084 s
	{ hit = 1390, line = false }, -- 90.683 nameplate1 WOUND 48 <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 1393, line = 1379, spell = false }, -- 91.017 nameplate1 MISS 0 <- pet: swing SWING_MISSED +0.884 s
	{ hit = 1402, line = false }, -- 92.533 nameplate1 WOUND 32 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1405, line = 1400, spell = false }, -- 92.617 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1408, line = false }, -- 93.050 nameplate1 WOUND 48 <- creature: Shoot SPELL_DAMAGE +0.050 s
	{ hit = 1417, line = false }, -- 94.100 nameplate1 MISS 0 <- other: swing SWING_MISSED +0.467 s
	{ hit = 1421, line = false }, -- 94.583 nameplate1 WOUND 39 <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 1424, line = 1415, spell = false }, -- 94.633 nameplate1 DODGE 0 <- pet: swing SWING_MISSED +0.567 s
	{ hit = 1427, line = false }, -- 94.667 nameplate1 WOUND 38 <- creature: swing SWING_DAMAGE +0.500 s
	{ hit = 1434, line = 1433, spell = 7809 }, -- 95.433 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED -0.001 s
	{ hit = 1442, line = false }, -- 96.317 nameplate1 WOUND 46 <- creature: Shoot SPELL_DAMAGE +0.033 s
	{ hit = 1445, line = 1440, spell = false }, -- 96.633 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 1448, line = false }, -- 96.684 nameplate1 WOUND 38 <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 1451, line = false }, -- 97.283 nameplate1 WOUND 20 <- other: swing SWING_DAMAGE +0.566 s
	{ hit = 1459, line = false }, -- 98.567 nameplate1 WOUND 37 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1462, line = 1458, spell = false }, -- 98.667 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1465, line = false }, -- 98.733 nameplate1 WOUND 44 <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 1477, line = false }, -- 100.250 nameplate1 WOUND 16 <- other: swing SWING_DAMAGE +0.467 s
	{ hit = 1480, line = false }, -- 100.583 nameplate1 WOUND 39 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1483, line = 1476, spell = false }, -- 100.667 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1488, line = 1487, spell = 7809 }, -- 100.733 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED -0.001 s
	{ hit = 1498, line = false }, -- 101.567 nameplate1 WOUND 40 <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 1505, line = 1504, spell = false }, -- 102.633 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 1508, line = false }, -- 102.700 nameplate1 MISS 0 <- creature: swing SWING_MISSED +0.499 s
	{ hit = 1512, line = false }, -- 103.517 nameplate1 WOUND 20 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 1521, line = false }, -- 104.567 nameplate1 PARRY 0 <- creature: swing SWING_MISSED +0.367 s
	{ hit = 1524, line = 1520, spell = false }, -- 104.650 nameplate1 DODGE 0 <- pet: swing SWING_MISSED +0.567 s
	{ hit = 1527, line = false }, -- 105.233 nameplate1 WOUND 48 <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 1532, line = false }, -- 105.900 nameplate1 WOUND 27 <- other: swing SWING_DAMAGE +0.567 s
	{ hit = 1538, line = false }, -- 106.400 nameplate1 WOUND 3 <- other: swing SWING_DAMAGE +0.434 s
	{ hit = 1541, line = 1537, spell = false }, -- 106.650 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1544, line = false }, -- 106.650 nameplate1 WOUND 30 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1549, line = 1548, spell = 7809 }, -- 106.917 nameplate1 MISS 0 <- pet: Torment SPELL_MISSED +0.000 s
	{ hit = 1556, line = false }, -- 107.717 nameplate1 WOUND 38 <- creature: Shoot SPELL_DAMAGE +0.067 s
	{ hit = 1562, line = false }, -- 108.650 nameplate1 WOUND 40 <- creature: swing SWING_DAMAGE +0.367 s
	{ hit = 1565, line = 1560, spell = false }, -- 108.750 nameplate1 WOUND 1 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1572, line = false }, -- 109.434 nameplate1 DODGE 0 <- other: swing SWING_MISSED +0.418 s
	{ hit = 1579, line = false, unsure = "outside the Combat Log File" }, -- 110.067 nameplate1 WOUND 48 <- no file event 
	{ hit = 1584, line = false, unsure = "outside the Combat Log File" }, -- 110.684 nameplate1 WOUND 8 <- no file event 
	{ hit = 1587, line = false, unsure = "outside the Combat Log File" }, -- 110.734 nameplate1 WOUND 1 <- no file event 
	{ hit = 1592, line = false, unsure = "outside the Combat Log File" }, -- 112.050 nameplate1 WOUND 41 <- no file event 
	{ hit = 1597, line = false, unsure = "outside the Combat Log File" }, -- 112.150 nameplate1 MISS 0 <- no file event 
	{ hit = 1600, line = false, unsure = "outside the Combat Log File" }, -- 112.484 nameplate1 WOUND 47 <- no file event 
	{ hit = 1603, line = false, unsure = "outside the Combat Log File" }, -- 112.517 nameplate1 WOUND 65 <- no file event 
}

-- Log Lines with no Hit:
-- line 561 at 21.066 <- pet: swing SWING_DAMAGE
-- line 1582 at 110.167 <- no file event
-- line 1596 at 112.150 <- no file event
