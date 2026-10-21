-- Labels for warlock-line-kind: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 10, line = 13, spell = 1014 }, -- 11.233 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 14, line = false }, -- 11.533 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 16, line = 6, spell = false }, -- 11.617 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.984 s
	{ hit = 24, line = 23, spell = 707 }, -- 13.067 nameplate1 WOUND 29 <- you: Immolate SPELL_DAMAGE -0.002 s
	{ hit = 27, line = 19, spell = false }, -- 13.167 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.534 s
	{ hit = 30, line = 33, spell = 1014 }, -- 13.233 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 34, line = false }, -- 13.717 pet WOUND 21 <- creature: swing SWING_DAMAGE +0.567 s
	{ hit = 39, line = 38, spell = false }, -- 15.167 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.534 s (checked: physical Hit, swing line; swapped with hit 42)
	{ hit = 42, line = 45, spell = 1014 }, -- 15.234 nameplate1 WOUND 10 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s (checked: Shadow Hit, tick line in its frame)
	{ hit = 46, line = false }, -- 15.717 pet WOUND 16 <- creature: swing SWING_DAMAGE +0.567 s
	{ hit = 48, line = 51, spell = 707 }, -- 16.250 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 52, line = 55, spell = 6222 }, -- 16.250 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 61, line = 64, spell = 1014 }, -- 17.233 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 66, line = 65, spell = 5019 }, -- 17.450 nameplate1 WOUND 41 <- you: Shoot RANGE_DAMAGE +0.000 s
	{ hit = 69, line = false }, -- 17.601 pet MISS 0 <- creature: swing SWING_MISSED +0.434 s
	{ hit = 71, line = 57, spell = false }, -- 17.633 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.983 s
	{ hit = 77, line = 80, spell = 707 }, -- 19.067 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 81, line = 84, spell = 6222 }, -- 19.067 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 86, line = 85, spell = 5019 }, -- 19.167 nameplate1 WOUND 35 <- you: Shoot RANGE_DAMAGE +0.000 s
	{ hit = 89, line = 76, spell = false }, -- 19.217 nameplate1 WOUND 13 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 92, line = 95, spell = 1014 }, -- 19.233 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 96, line = false }, -- 19.733 pet WOUND 17 <- creature: swing SWING_DAMAGE +0.566 s
	{ hit = 101, line = false }, -- 21.117 pet MISS 0 <- creature: Shadow Word: Pain SPELL_MISSED +0.000 s
	{ hit = 103, line = 100, spell = false }, -- 21.200 nameplate1 DODGE 0 <- pet: swing SWING_MISSED +0.533 s
	{ hit = 106, line = 109, spell = 1014 }, -- 21.233 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 110, line = 113, spell = 6222 }, -- 22.067 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 114, line = 117, spell = 707 }, -- 22.067 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 122, line = 119, spell = false }, -- 23.200 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 127, line = 130, spell = 1014 }, -- 23.233 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 132, line = 131, spell = 705 }, -- 23.300 nameplate1 WOUND 79 <- you: Shadow Bolt SPELL_DAMAGE +0.000 s
	{ hit = 135, line = false }, -- 23.517 pet WOUND 16 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 138, line = 140, spell = 707 }, -- 25.067 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 143, line = 137, spell = false }, -- 25.200 nameplate1 WOUND 12 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 145, line = 147, spell = 1014 }, -- 25.234 nameplate1 WOUND 15 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 148, line = 142, spell = false }, -- 25.467 nameplate1 WOUND 14 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 150, line = false }, -- 25.517 pet WOUND 16 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 152, line = 154, spell = 6222 }, -- 26.217 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 158, line = 156, spell = false }, -- 26.967 nameplate1 WOUND 9 <- you: swing SWING_DAMAGE +0.366 s
	{ hit = 160, line = 162, spell = 1014 }, -- 27.233 nameplate1 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 163, line = 157, spell = false }, -- 27.250 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 165, line = false }, -- 27.533 player WOUND 24 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 168, line = 170, spell = 707 }, -- 28.067 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 173, line = 172, spell = false }, -- 28.467 nameplate1 WOUND 26 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 176, line = 178, spell = 6222 }, -- 29.217 nameplate1 WOUND 35 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 179, line = 181, spell = 1014 }, -- 29.217 nameplate1 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 182, line = 175, spell = false }, -- 29.250 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 184, line = false }, -- 29.567 player WOUND 24 <- creature: swing SWING_DAMAGE +0.433 s
	{ hit = 188, line = 187, spell = false }, -- 29.967 nameplate1 WOUND 6 <- you: swing SWING_DAMAGE +0.367 s
	{ hit = 193, line = 195, spell = 1014 }, -- 31.233 nameplate1 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 196, line = 190, spell = false }, -- 31.267 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 200, line = 192, spell = false }, -- 31.483 nameplate1 MISS 0 <- you: swing SWING_MISSED +0.366 s
	{ hit = 202, line = false }, -- 31.550 player DODGE 0 <- creature: swing SWING_MISSED +0.400 s
	{ hit = 204, line = false }, -- 32.067 player MISS 0 <- creature: Shadow Word: Pain SPELL_MISSED +0.000 s
	{ hit = 206, line = 208, spell = 6222 }, -- 32.217 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 210, line = 212, spell = 1014 }, -- 33.233 nameplate1 WOUND 20 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 213, line = 209, spell = false }, -- 33.250 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.533 s
	{ hit = 219, line = 218, spell = 707 }, -- 33.317 nameplate1 WOUND 29 <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 222, line = false }, -- 34.484 player WOUND 24 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 229, line = 224, spell = false }, -- 35.284 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 231, line = 226, spell = false }, -- 35.800 nameplate1 WOUND 25 <- you: swing SWING_DAMAGE +0.983 s
	{ hit = 233, line = 235, spell = 6222 }, -- 36.317 nameplate1 WOUND 23 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 236, line = 238, spell = 707 }, -- 36.317 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 244, line = false }, -- 36.484 player WOUND 25 <- creature: swing SWING_DAMAGE +0.417 s
	{ hit = 247, line = 249, spell = 1014 }, -- 36.884 nameplate1 WOUND 16 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 250, line = 240, spell = false }, -- 37.234 nameplate1 WOUND 11 <- you: swing SWING_DAMAGE +0.834 s (checked: both orders fit with hit 252, two physical 11s; oldest line first)
	{ hit = 252, line = 246, spell = false }, -- 37.267 nameplate1 WOUND 11 <- pet: swing SWING_DAMAGE +0.550 s (checked: see hit 250)
	{ hit = 255, line = 254, spell = 689 }, -- 37.417 nameplate1 WOUND 17 <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 257, line = 259, spell = 689 }, -- 37.417 player HEAL 15 <- you: Drain Life SPELL_HEAL +0.000 s
	{ hit = 261, line = 260, spell = 689 }, -- 38.417 nameplate1 WOUND 17 <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 263, line = 265, spell = 689 }, -- 38.417 player HEAL 15 <- you: Drain Life SPELL_HEAL +0.000 s
	{ hit = 266, line = false }, -- 38.650 player WOUND 24 <- creature: swing SWING_DAMAGE +0.566 s
	{ hit = 269, line = 271, spell = 1014 }, -- 38.884 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 272, line = 268, spell = false }, -- 39.234 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.517 s
	{ hit = 274, line = 276, spell = 6222 }, -- 39.317 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 277, line = 279, spell = 707 }, -- 39.317 nameplate1 WOUND 11 <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 282, line = 281, spell = 689 }, -- 39.417 nameplate1 WOUND 17 <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 284, line = 286, spell = 689 }, -- 39.417 player HEAL 15 <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 288, line = false }, -- 40.484 player WOUND 24 <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 291, line = 293, spell = 1014 }, -- 40.884 nameplate1 WOUND 11 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 296, line = 295, spell = false }, -- 41.300 nameplate1 DODGE 0 <- you: swing SWING_MISSED +0.366 s
	{ hit = 298, line = 290, spell = false }, -- 41.300 nameplate1 WOUND 10 <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 301, line = 304, spell = 707 }, -- 42.317 nameplate1 WOUND 12 <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 306, line = 309, spell = 6222 }, -- 42.317 nameplate1 WOUND 24 <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 313, line = false }, -- 43.084 player WOUND 25 <- creature: swing SWING_DAMAGE +0.984 s
}

-- Log Lines with no Hit:
-- line 305 at 42.317 <- you:  PARTY_KILL
