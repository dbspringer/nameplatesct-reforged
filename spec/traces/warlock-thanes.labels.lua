-- Labels for warlock-thanes: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure`. Comments: Hit time, unit, action, amount;
-- the file event that made it; how long before the Hit it came.
return {
	{ hit = 7, line = 6 }, -- 10.400 nameplate1 WOUND 29 <- you: Immolate SPELL_DAMAGE +0.000 s
	{ hit = 13, line = 16 }, -- 13.400 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 19, line = false }, -- 13.800 pet WOUND 29 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 21, line = false }, -- 14.067 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.985 s
	{ hit = 24, line = 27 }, -- 15.100 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 30, line = false }, -- 15.650 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 33, line = 36 }, -- 15.667 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.002 s
	{ hit = 37, line = false }, -- 15.800 pet WOUND 29 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 39, line = 42 }, -- 16.400 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 43, line = false }, -- 17.633 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 46, line = 49 }, -- 17.650 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 51, line = 54 }, -- 18.100 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 55, line = false }, -- 18.384 pet WOUND 28 <- creature: swing SWING_DAMAGE +0.985 s
	{ hit = 58, line = 57 }, -- 18.584 nameplate1 WOUND 72 <- you: Shadow Bolt SPELL_DAMAGE +0.002 s
	{ hit = 64, line = 67 }, -- 19.400 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 68, line = 71 }, -- 19.650 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 72, line = false }, -- 19.667 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 75, line = false }, -- 19.800 pet WOUND 29 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 77, line = 80 }, -- 21.100 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 81, line = false }, -- 21.634 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 84, line = 87 }, -- 21.650 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 91, line = false }, -- 21.850 pet MISS 0 <- creature: swing SWING_MISSED +0.435 s
	{ hit = 93, line = 90 }, -- 21.867 nameplate1 WOUND 81 <- you: Shadow Bolt SPELL_DAMAGE +0.018 s
	{ hit = 96, line = 99 }, -- 22.417 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 102, line = false }, -- 23.634 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 105, line = 108 }, -- 23.650 nameplate1 WOUND 24 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 109, line = false }, -- 23.817 player WOUND 44 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 112, line = 115 }, -- 24.100 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 119, line = 118 }, -- 24.567 nameplate1 WOUND 22 <- you: Shoot RANGE_DAMAGE +0.035 s
	{ hit = 123, line = 126 }, -- 25.417 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 127, line = false }, -- 25.634 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 130, line = 133 }, -- 25.650 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 134, line = false }, -- 25.867 player WOUND 43 <- creature: swing SWING_DAMAGE +0.435 s
	{ hit = 139, line = 138 }, -- 26.284 nameplate1 WOUND 36 <- you: Shoot RANGE_DAMAGE +0.035 s
	{ hit = 142, line = 145 }, -- 27.100 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 146, line = 149 }, -- 27.650 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 150, line = false }, -- 27.667 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.535 s
	{ hit = 155, line = false }, -- 27.834 player WOUND 43 <- creature: swing SWING_DAMAGE +0.402 s
	{ hit = 158, line = 157 }, -- 28.000 nameplate1 WOUND 29 <- you: Shoot RANGE_DAMAGE +0.034 s
	{ hit = 163, line = 166 }, -- 29.650 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 167, line = false }, -- 29.667 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.535 s
	{ hit = 171, line = false }, -- 30.434 player WOUND 43 <- creature: swing SWING_DAMAGE +0.985 s
	{ hit = 173, line = 176 }, -- 31.650 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 177, line = false }, -- 31.684 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.535 s
	{ hit = 180, line = false }, -- 31.884 player WOUND 47 <- creature: swing SWING_DAMAGE +0.435 s
	{ hit = 186, line = 185 }, -- 32.450 nameplate1 WOUND 30 <- you: Immolate SPELL_DAMAGE +0.000 s
	{ hit = 191, line = 194 }, -- 33.650 nameplate1 WOUND 31 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 195, line = false }, -- 33.684 nameplate1 DODGE 0 <- pet: swing SWING_MISSED +0.535 s
	{ hit = 198, line = false }, -- 33.867 player WOUND 47 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 202, line = 205 }, -- 35.450 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 207, line = 212 }, -- 35.484 nameplate1 WOUND 17 <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.002 s
	{ hit = 210, line = 206 }, -- 35.484 player HEAL 15 <- you: Drain Life SPELL_HEAL +0.001 s
	{ hit = 213, line = 216 }, -- 35.650 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 217, line = false }, -- 35.684 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.535 s
	{ hit = 220, line = false }, -- 35.850 player WOUND 46 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 222, line = 225 }, -- 35.950 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 228, line = 227 }, -- 36.484 nameplate1 WOUND 17 <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.002 s
	{ hit = 231, line = 233 }, -- 36.484 player HEAL 15 <- you: Drain Life SPELL_HEAL +0.002 s
	{ hit = 234, line = 237 }, -- 37.667 nameplate1 WOUND 21 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 238, line = false }, -- 37.684 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.518 s
	{ hit = 241, line = false }, -- 37.867 player WOUND 47 <- creature: swing SWING_DAMAGE +0.401 s
	{ hit = 243, line = 246 }, -- 38.450 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 248, line = 250 }, -- 38.584 player HEAL 120 <- you: Minor Healthstone SPELL_HEAL +0.002 s
	{ hit = 252, line = 255 }, -- 38.950 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 256, line = false }, -- 39.734 nameplate1 WOUND 8 <- pet: swing SWING_DAMAGE +0.568 s
	{ hit = 259, line = false }, -- 39.884 player WOUND 46 <- creature: swing SWING_DAMAGE +0.418 s
	{ hit = 264, line = 263 }, -- 41.367 nameplate1 WOUND 17 <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 267, line = 269 }, -- 41.367 player HEAL 15 <- you: Drain Life SPELL_HEAL +0.001 s
	{ hit = 270, line = 273 }, -- 41.450 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 274, line = false }, -- 41.717 nameplate1 WOUND 9 <- pet: swing SWING_DAMAGE +0.535 s
	{ hit = 278, line = false }, -- 41.884 player WOUND 47 <- creature: swing SWING_DAMAGE +0.402 s
	{ hit = 280, line = 283 }, -- 41.950 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 285, line = 290 }, -- 42.384 nameplate1 WOUND 17 <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.002 s
	{ hit = 288, line = 284 }, -- 42.384 player HEAL 15 <- you: Drain Life SPELL_HEAL +0.001 s
	{ hit = 292, line = 291 }, -- 43.367 nameplate1 WOUND 17 <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 295, line = 297 }, -- 43.367 player HEAL 15 <- you: Drain Life SPELL_HEAL +0.001 s
	{ hit = 298, line = false }, -- 43.717 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 301, line = false }, -- 43.917 player WOUND 47 <- creature: swing SWING_DAMAGE +0.435 s
	{ hit = 303, line = 306 }, -- 44.450 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 310, line = 313 }, -- 44.950 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
}

-- Log Lines with no Hit:
-- line 309 at 44.950 <- you:  PARTY_KILL
