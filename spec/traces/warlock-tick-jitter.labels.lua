-- Labels for warlock-tick-jitter: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 3, line = false }, -- 4.030 player WOUND <secret> <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 9, line = 8, spell = 7815 }, -- 4.714 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 13, line = 16, spell = 6217 }, -- 4.958 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 17, line = 7, spell = false }, -- 5.571 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.958 s
	{ hit = 22, line = false }, -- 5.957 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.482 s
	{ hit = 25, line = 28, spell = 6217 }, -- 6.938 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 29, line = 32, spell = 6223 }, -- 7.450 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 33, line = 24, spell = false }, -- 7.629 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 38, line = false }, -- 7.940 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.483 s
	{ hit = 41, line = 44, spell = 6217 }, -- 8.942 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 46, line = 45, spell = 18265 }, -- 8.942 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 49, line = 50, spell = 18265 }, -- 8.942 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 54, line = 40, spell = false }, -- 9.663 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 57, line = false }, -- 9.967 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.487 s
	{ hit = 59, line = 62, spell = 6223 }, -- 10.457 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 63, line = 64, spell = 3699 }, -- 10.557 player WOUND <secret> <- you: Health Funnel SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 65, line = 67, spell = 3699 }, -- 10.557 pet HEAL <secret> <- you: Health Funnel SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 69, line = 72, spell = 6217 }, -- 10.946 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 77, line = 68, spell = false }, -- 11.624 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 81, line = 80, spell = 18265 }, -- 11.858 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 84, line = 86, spell = 18265 }, -- 11.858 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 88, line = 87, spell = 709 }, -- 12.655 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 91, line = 93, spell = 709 }, -- 12.655 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 94, line = false }, -- 12.662 player WOUND <secret> <- creature: Shoot SPELL_DAMAGE +0.005 s
	{ hit = 97, line = 100, spell = 6217 }, -- 12.932 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 101, line = 104, spell = 6223 }, -- 13.464 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 106, line = 105, spell = 709 }, -- 13.464 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 109, line = 111, spell = 709 }, -- 13.464 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 112, line = 96, spell = false }, -- 13.688 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.963 s
	{ hit = 116, line = 115, spell = 709 }, -- 14.500 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 119, line = 121, spell = 709 }, -- 14.500 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 123, line = 126, spell = 6217 }, -- 14.955 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 128, line = 127, spell = 18265 }, -- 14.955 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 131, line = 133, spell = 18265 }, -- 14.955 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 135, line = 134, spell = 709 }, -- 15.441 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 138, line = 140, spell = 709 }, -- 15.441 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 141, line = 122, spell = false }, -- 15.688 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.953 s
	{ hit = 144, line = false }, -- 16.313 player WOUND <secret> <- creature: Shoot SPELL_DAMAGE +0.000 s
	{ hit = 146, line = 149, spell = 6223 }, -- 16.463 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 152, line = 151, spell = 709 }, -- 16.463 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 156, line = 158, spell = 709 }, -- 16.463 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 169, line = false }, -- 22.850 player WOUND <secret> <- creature: Shoot SPELL_DAMAGE +0.161 s
	{ hit = 173, line = 176, spell = 6217 }, -- 23.388 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 179, line = false }, -- 24.941 player WOUND <secret> <- creature: Shoot SPELL_DAMAGE -0.001 s
	{ hit = 182, line = 181, spell = 7815 }, -- 24.941 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 187, line = 190, spell = 6217 }, -- 25.556 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 191, line = 186, spell = false }, -- 26.001 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 196, line = 199, spell = 6223 }, -- 26.288 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 201, line = false }, -- 26.788 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.498 s
	{ hit = 204, line = 207, spell = 6217 }, -- 27.334 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 209, line = 208, spell = 18265 }, -- 27.621 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 212, line = 213, spell = 18265 }, -- 27.621 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 217, line = 203, spell = false }, -- 28.148 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 220, line = false }, -- 28.621 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.494 s
	{ hit = 223, line = 222, spell = 709 }, -- 28.713 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 226, line = 227, spell = 709 }, -- 28.713 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 229, line = 232, spell = 6223 }, -- 29.201 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 233, line = 236, spell = 6217 }, -- 29.446 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 238, line = 237, spell = 709 }, -- 29.774 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 241, line = 243, spell = 709 }, -- 29.774 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 244, line = 228, spell = false }, -- 30.057 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.952 s
	{ hit = 248, line = 247, spell = 18265 }, -- 30.708 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 251, line = 253, spell = 18265 }, -- 30.708 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 255, line = 254, spell = 709 }, -- 30.708 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 258, line = 260, spell = 709 }, -- 30.708 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 261, line = false }, -- 30.718 player WOUND <secret> <- creature: Shoot SPELL_DAMAGE +0.008 s
	{ hit = 264, line = 267, spell = 6217 }, -- 31.438 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 269, line = 268, spell = 709 }, -- 31.742 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 272, line = 274, spell = 709 }, -- 31.742 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 275, line = 263, spell = false }, -- 32.043 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 278, line = 281, spell = 6223 }, -- 32.316 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 283, line = 282, spell = 709 }, -- 32.733 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 286, line = 288, spell = 709 }, -- 32.733 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 291, line = false }, -- 33.335 player WOUND <secret> <- creature: Shoot SPELL_DAMAGE -0.001 s
	{ hit = 296, line = 299, spell = 6217 }, -- 33.424 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 301, line = 300, spell = 18265 }, -- 33.688 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 304, line = 306, spell = 18265 }, -- 33.688 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 308, line = 307, spell = 709 }, -- 34.223 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 311, line = 313, spell = 709 }, -- 34.223 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 314, line = 290, spell = false }, -- 34.291 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 319, line = 322, spell = 6223 }, -- 35.143 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
}

-- Log Lines with no Hit:
-- line 150 at 16.463 <- you:  PARTY_KILL
-- line 317 at 35.143 <- pet: swing SWING_DAMAGE
-- line 318 at 35.143 <- you:  PARTY_KILL
