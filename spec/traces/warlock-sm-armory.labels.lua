-- Labels for warlock-sm-armory: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 20, line = false, unsure = "on time, of 2 file events" }, -- 27.442 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.030 s
	{ hit = 25, line = false, unsure = "secret amount" }, -- 27.515 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 26, line = false, unsure = "secret amount" }, -- 27.515 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 36, line = false, unsure = "secret amount" }, -- 29.494 nameplate6 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.001 s
	{ hit = 39, line = 42, spell = 11711, unsure = "secret amount" }, -- 29.505 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 45, line = false, unsure = "on time, of 2 file events" }, -- 30.004 nameplate6 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE +0.000 s
	{ hit = 48, line = false, unsure = "secret amount" }, -- 30.063 nameplate6 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE +0.000 s
	{ hit = 55, line = false, unsure = "secret amount" }, -- 30.324 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 63, line = 64, spell = 11711, unsure = "secret amount" }, -- 31.520 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 65, line = false, unsure = "secret amount" }, -- 31.520 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.133 s
	{ hit = 70, line = false, unsure = "no file event fits" }, -- 32.013 nameplate6 WOUND <secret> <- no file event 
	{ hit = 71, line = false, unsure = "secret amount" }, -- 32.154 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE +0.000 s
	{ hit = 74, line = false, unsure = "secret amount" }, -- 32.271 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 77, line = false, unsure = "secret amount" }, -- 32.357 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 81, line = false, unsure = "secret amount" }, -- 32.786 nameplate7 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 87, line = false, unsure = "secret amount" }, -- 33.314 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 90, line = false, unsure = "secret amount" }, -- 33.430 nameplate7 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE +0.000 s
	{ hit = 93, line = 94, spell = 7648, unsure = "secret amount" }, -- 33.463 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 95, line = false, unsure = "secret amount" }, -- 33.463 nameplate7 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 98, line = false, unsure = "secret amount" }, -- 33.486 nameplate7 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE +0.000 s
	{ hit = 101, line = false, unsure = "secret amount" }, -- 33.486 nameplate6 DODGE <secret> <- other: Windfury Totem SPELL_MISSED -0.001 s
	{ hit = 102, line = 103, spell = 11711, unsure = "secret amount" }, -- 33.503 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 106, line = false, unsure = "on time, of 2 file events" }, -- 33.636 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 107, line = false, unsure = "secret amount" }, -- 33.661 nameplate6 DODGE <secret> <- other: Windfury Totem SPELL_MISSED +0.000 s
	{ hit = 108, line = 111, spell = 11711, unsure = "secret amount" }, -- 33.945 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 116, line = false, unsure = "secret amount" }, -- 34.478 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.000 s
	{ hit = 117, line = false, unsure = "secret amount" }, -- 34.621 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 118, line = false, unsure = "secret amount" }, -- 34.621 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 121, line = false, unsure = "secret amount" }, -- 34.621 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 122, line = false, unsure = "2 file events fit" }, -- 34.670 nameplate7 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 125, line = false, unsure = "secret amount" }, -- 34.670 nameplate7 WOUND <secret> <- other: Mind Blast SPELL_DAMAGE +0.000 s
	{ hit = 128, line = false, unsure = "late by 1.49 s" }, -- 34.924 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.494 s
	{ hit = 129, line = false, unsure = "on time, of 2 file events" }, -- 34.952 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE +0.000 s
	{ hit = 130, line = false, unsure = "secret amount" }, -- 35.186 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 134, line = 135, spell = 11711, unsure = "secret amount" }, -- 35.504 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 136, line = false, unsure = "secret amount" }, -- 35.532 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.625 s
	{ hit = 137, line = false, unsure = "secret amount" }, -- 35.605 nameplate7 MISS <secret> <- other: Consecration SPELL_MISSED +0.000 s
	{ hit = 138, line = false, unsure = "secret amount" }, -- 35.621 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 139, line = false, unsure = "secret amount" }, -- 35.621 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 145, line = false, unsure = "secret amount" }, -- 35.704 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 148, line = false, unsure = "secret amount" }, -- 35.704 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 149, line = false, unsure = "secret amount" }, -- 35.704 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 150, line = false, unsure = "secret amount" }, -- 35.787 nameplate7 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 151, line = false, unsure = "secret amount" }, -- 35.828 nameplate9 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.075 s
	{ hit = 154, line = 155, spell = 11711, unsure = "secret amount" }, -- 35.936 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 160, line = false, unsure = "secret amount" }, -- 36.323 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 163, line = 164, spell = 7648, unsure = "secret amount" }, -- 36.429 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 165, line = 166, spell = 7648, unsure = "secret amount" }, -- 36.464 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 167, line = false, unsure = "secret amount" }, -- 36.630 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 168, line = false, unsure = "secret amount" }, -- 36.630 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 171, line = false, unsure = "secret amount" }, -- 36.630 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 172, line = 175, spell = 11711, unsure = "secret amount" }, -- 36.919 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 176, line = false, unsure = "on time, of 2 file events" }, -- 37.238 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.400 s
	{ hit = 178, line = false, unsure = "secret amount" }, -- 37.407 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 179, line = false, unsure = "late by 1.33 s" }, -- 37.503 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.331 s
	{ hit = 180, line = 181, spell = 11711, unsure = "secret amount" }, -- 37.513 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 182, line = false, unsure = "secret amount" }, -- 37.586 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 183, line = false, unsure = "secret amount" }, -- 37.621 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 186, line = false, unsure = "secret amount" }, -- 37.621 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 187, line = false, unsure = "secret amount" }, -- 37.621 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 188, line = false, unsure = "secret amount" }, -- 37.621 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 189, line = false, unsure = "secret amount" }, -- 37.654 nameplate7 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 195, line = 196, spell = 11711, unsure = "secret amount" }, -- 37.938 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 205, line = false, unsure = "secret amount" }, -- 38.609 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.001 s
	{ hit = 206, line = false, unsure = "secret amount" }, -- 38.609 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 207, line = false, unsure = "secret amount" }, -- 38.609 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 210, line = false, unsure = "secret amount" }, -- 38.609 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 211, line = false, unsure = "secret amount" }, -- 38.738 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 212, line = false, unsure = "secret amount" }, -- 38.786 nameplate7 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 213, line = 214, spell = 11711, unsure = "secret amount" }, -- 38.911 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 217, line = false, unsure = "secret amount" }, -- 39.080 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.636 s
	{ hit = 218, line = false, unsure = "secret amount" }, -- 39.168 nameplate10 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE +0.000 s
	{ hit = 224, line = false, unsure = "secret amount" }, -- 39.241 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.363 s
	{ hit = 228, line = false, unsure = "secret amount" }, -- 39.319 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 229, line = 230, spell = 7648, unsure = "secret amount" }, -- 39.392 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 231, line = 232, spell = 7648, unsure = "secret amount" }, -- 39.446 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 233, line = 234, spell = 7648, unsure = "on time, of 2 file events" }, -- 39.463 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 235, line = 236, spell = 11711, unsure = "secret amount" }, -- 39.528 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 237, line = false, unsure = "secret amount" }, -- 39.571 nameplate9 IMMUNE <secret> <- other: Fire Nova SPELL_MISSED +0.000 s
	{ hit = 238, line = false, unsure = "secret amount" }, -- 39.571 nameplate10 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE +0.000 s
	{ hit = 241, line = false, unsure = "secret amount" }, -- 39.571 nameplate7 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE +0.000 s
	{ hit = 242, line = false, unsure = "secret amount" }, -- 39.571 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE +0.000 s
	{ hit = 243, line = false, unsure = "secret amount" }, -- 39.619 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 244, line = false, unsure = "secret amount" }, -- 39.619 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 245, line = false, unsure = "secret amount" }, -- 39.619 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 246, line = false, unsure = "secret amount" }, -- 39.619 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 251, line = false, unsure = "secret amount" }, -- 39.864 nameplate10 WOUND <secret> <- other: Shield Bash SPELL_DAMAGE +0.000 s
	{ hit = 254, line = 255, spell = 11711, unsure = "secret amount" }, -- 39.944 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 256, line = false, unsure = "secret amount" }, -- 40.178 nameplate9 IMMUNE <secret> <- creature: Magma Totem SPELL_MISSED +0.000 s
	{ hit = 257, line = false, unsure = "secret amount" }, -- 40.178 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 260, line = false, unsure = "secret amount" }, -- 40.178 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 261, line = false, unsure = "secret amount" }, -- 40.178 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 262, line = false, unsure = "secret amount" }, -- 40.279 nameplate7 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 265, line = false, unsure = "secret amount" }, -- 40.421 nameplate7 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE +0.000 s
	{ hit = 266, line = false, unsure = "secret amount" }, -- 40.421 nameplate7 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE +0.000 s
	{ hit = 267, line = false, unsure = "on time, of 2 file events" }, -- 40.455 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE +0.000 s
	{ hit = 271, line = false, unsure = "secret amount" }, -- 40.619 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 272, line = false, unsure = "secret amount" }, -- 40.619 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 275, line = false, unsure = "secret amount" }, -- 40.619 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 276, line = false, unsure = "secret amount" }, -- 40.619 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 277, line = false, unsure = "secret amount" }, -- 40.655 nameplate7 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 283, line = 284, spell = 11711, unsure = "secret amount" }, -- 40.913 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 288, line = false, unsure = "on time, of 2 file events" }, -- 41.347 nameplate10 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 291, line = 292, spell = 11711, unsure = "secret amount" }, -- 41.505 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 293, line = false, unsure = "secret amount" }, -- 41.611 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 294, line = false, unsure = "secret amount" }, -- 41.611 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 297, line = false, unsure = "secret amount" }, -- 41.611 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 298, line = false, unsure = "secret amount" }, -- 41.611 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 299, line = 287, spell = false, unsure = "on time, of 2 file events" }, -- 41.646 nameplate10 WOUND <secret> <- pet: swing SWING_DAMAGE +0.337 s
	{ hit = 302, line = false, unsure = "secret amount" }, -- 41.736 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 303, line = false, unsure = "late by 1.49 s" }, -- 41.736 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.492 s
	{ hit = 304, line = false, unsure = "secret amount" }, -- 41.772 nameplate7 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 305, line = 308, spell = 11711, unsure = "secret amount" }, -- 41.820 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 312, line = 313, spell = 11711, unsure = "secret amount" }, -- 41.956 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 314, line = false, unsure = "on time, of 2 file events" }, -- 41.956 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.378 s
	{ hit = 317, line = false, unsure = "secret amount" }, -- 42.043 nameplate10 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 320, line = false, unsure = "secret amount" }, -- 42.158 nameplate10 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 323, line = false, unsure = "secret amount" }, -- 42.182 nameplate9 IMMUNE <secret> <- creature: Magma Totem SPELL_MISSED -0.002 s
	{ hit = 324, line = false, unsure = "secret amount" }, -- 42.182 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 327, line = false, unsure = "secret amount" }, -- 42.182 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 328, line = false, unsure = "secret amount" }, -- 42.182 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 329, line = false, unsure = "secret amount" }, -- 42.182 nameplate10 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 332, line = false, unsure = "secret amount" }, -- 42.222 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 333, line = false, unsure = "secret amount" }, -- 42.330 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 334, line = 335, spell = 7648, unsure = "secret amount" }, -- 42.405 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 336, line = 337, spell = 7648, unsure = "secret amount" }, -- 42.439 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 338, line = 339, spell = 7648, unsure = "secret amount" }, -- 42.470 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 347, line = 348, spell = 11711, unsure = "secret amount" }, -- 42.913 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 353, line = false, unsure = "on time, of 3 file events" }, -- 43.319 nameplate10 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.026 s
	{ hit = 356, line = false, unsure = "secret amount" }, -- 43.344 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 357, line = false, unsure = "secret amount" }, -- 43.344 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 358, line = 352, spell = false, unsure = "2 file events fit" }, -- 43.344 nameplate10 WOUND <secret> <- pet: swing SWING_DAMAGE +0.025 s
	{ hit = 361, line = false, unsure = "secret amount" }, -- 43.344 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 362, line = 363, spell = 11711, unsure = "secret amount" }, -- 43.500 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 364, line = false, unsure = "no file event fits" }, -- 43.578 nameplate10 WOUND <secret> <- no file event 
	{ hit = 367, line = false, unsure = "secret amount" }, -- 43.655 nameplate7 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 370, line = false, unsure = "secret amount" }, -- 43.688 nameplate10 WOUND <secret> <- other: Shoot RANGE_DAMAGE +0.000 s
	{ hit = 373, line = 376, spell = 11711, unsure = "secret amount" }, -- 43.811 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 380, line = 381, spell = 11711, unsure = "secret amount" }, -- 43.944 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 383, line = false, unsure = "secret amount" }, -- 44.169 nameplate6 MISS <secret> <- creature: Magma Totem SPELL_MISSED +0.000 s
	{ hit = 384, line = false, unsure = "secret amount" }, -- 44.169 nameplate9 IMMUNE <secret> <- creature: Magma Totem SPELL_MISSED +0.000 s
	{ hit = 385, line = false, unsure = "secret amount" }, -- 44.169 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 386, line = false, unsure = "secret amount" }, -- 44.169 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 389, line = false, unsure = "secret amount" }, -- 44.178 nameplate7 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE +0.000 s
	{ hit = 390, line = false, unsure = "secret amount" }, -- 44.286 nameplate10 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.001 s
	{ hit = 393, line = false, unsure = "2 file events fit" }, -- 44.286 nameplate7 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.001 s
	{ hit = 394, line = false, unsure = "no file event fits" }, -- 44.286 nameplate10 WOUND <secret> <- no file event 
	{ hit = 397, line = 400, spell = 7648, unsure = "secret amount" }, -- 44.286 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 401, line = false, unsure = "secret amount" }, -- 44.311 nameplate10 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE +0.000 s
	{ hit = 404, line = false, unsure = "secret amount" }, -- 44.736 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 405, line = false, unsure = "secret amount" }, -- 44.769 nameplate7 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 406, line = 407, spell = 11711, unsure = "secret amount" }, -- 44.917 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 412, line = false, unsure = "late by 1.48 s" }, -- 45.120 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.476 s
	{ hit = 416, line = false, unsure = "secret amount" }, -- 45.161 nameplate10 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 421, line = false, unsure = "secret amount" }, -- 45.319 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 423, line = 424, spell = 7648, unsure = "secret amount" }, -- 45.394 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 425, line = 426, spell = 7648, unsure = "secret amount" }, -- 45.438 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 427, line = 428, spell = 7648, unsure = "secret amount" }, -- 45.469 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 429, line = 430, spell = 11711, unsure = "secret amount" }, -- 45.511 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 431, line = false, unsure = "2 file events fit" }, -- 45.588 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 432, line = false, unsure = "secret amount" }, -- 45.613 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE +0.000 s
	{ hit = 433, line = 422, spell = false, unsure = "on time, of 2 file events" }, -- 45.655 nameplate10 WOUND <secret> <- pet: swing SWING_DAMAGE +0.336 s
	{ hit = 439, line = false, unsure = "secret amount" }, -- 45.725 nameplate10 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE +0.000 s
	{ hit = 442, line = false, unsure = "secret amount" }, -- 45.736 nameplate10 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 446, line = 445, spell = 18879, unsure = "2 file events fit" }, -- 45.786 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 449, line = 450, spell = 18879, unsure = "secret amount" }, -- 45.786 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 451, line = 454, spell = 11711, unsure = "secret amount" }, -- 45.811 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 455, line = 456, spell = 11711, unsure = "secret amount" }, -- 45.954 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 458, line = 457, spell = 1949, unsure = "secret amount" }, -- 45.963 nameplate9 IMMUNE <secret> <- you: Hellfire Effect SPELL_MISSED +0.000 s
	{ hit = 459, line = 460, spell = 1949, unsure = "secret amount" }, -- 45.963 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 462, line = 461, spell = 1949, unsure = "secret amount" }, -- 45.963 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.001 s
	{ hit = 464, line = 463, spell = 1949, unsure = "secret amount" }, -- 45.963 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 468, line = 467, spell = 1949, unsure = "secret amount" }, -- 45.963 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 469, line = false, unsure = "secret amount" }, -- 46.172 nameplate9 IMMUNE <secret> <- creature: Magma Totem SPELL_MISSED +0.001 s
	{ hit = 470, line = false, unsure = "secret amount" }, -- 46.172 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 471, line = false, unsure = "secret amount" }, -- 46.172 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 474, line = false, unsure = "secret amount" }, -- 46.172 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 478, line = false, unsure = "secret amount" }, -- 46.669 nameplate7 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 481, line = 482, spell = 11711, unsure = "secret amount" }, -- 46.911 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 484, line = 483, spell = 1949, unsure = "secret amount" }, -- 46.950 nameplate9 IMMUNE <secret> <- you: Hellfire Effect SPELL_MISSED +0.000 s
	{ hit = 485, line = 486, spell = 1949, unsure = "secret amount" }, -- 46.950 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 488, line = 487, spell = 1949, unsure = "secret amount" }, -- 46.950 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 490, line = 489, spell = 1949, unsure = "secret amount" }, -- 46.950 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 494, line = 493, spell = 1949, unsure = "secret amount" }, -- 46.950 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 495, line = false, unsure = "on time, of 2 file events" }, -- 46.990 nameplate7 WOUND <secret> <- other: Cleave SPELL_DAMAGE +0.000 s
	{ hit = 496, line = false, unsure = "2 file events fit" }, -- 46.990 nameplate6 WOUND <secret> <- other: Cleave SPELL_DAMAGE +0.000 s
	{ hit = 497, line = false, unsure = "secret amount" }, -- 46.990 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE -0.058 s
	{ hit = 498, line = false, unsure = "secret amount" }, -- 47.017 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE +0.000 s
	{ hit = 499, line = false, unsure = "secret amount" }, -- 47.017 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 500, line = false, unsure = "secret amount" }, -- 47.081 nameplate7 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE +0.000 s
	{ hit = 501, line = false, unsure = "secret amount" }, -- 47.111 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE +0.000 s
	{ hit = 505, line = false, unsure = "no file event fits" }, -- 47.286 nameplate10 MISS <secret> <- no file event 
	{ hit = 508, line = 511, spell = 7648, unsure = "secret amount" }, -- 47.297 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 516, line = 517, spell = 11711, unsure = "secret amount" }, -- 47.507 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 518, line = 512, spell = false, unsure = "secret amount" }, -- 47.586 nameplate10 WOUND <secret> <- pet: swing SWING_DAMAGE +0.258 s
	{ hit = 523, line = false, unsure = "secret amount" }, -- 47.741 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 524, line = false, unsure = "secret amount" }, -- 47.785 nameplate9 IMMUNE <secret> <- other: Devouring Plague SPELL_MISSED +0.000 s
	{ hit = 525, line = false, unsure = "secret amount" }, -- 47.785 nameplate7 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 526, line = 529, spell = 11711, unsure = "secret amount" }, -- 47.821 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 531, line = 530, spell = 1949, unsure = "secret amount" }, -- 47.972 nameplate9 IMMUNE <secret> <- you: Hellfire Effect SPELL_MISSED +0.000 s
	{ hit = 532, line = 533, spell = 1949, unsure = "secret amount" }, -- 47.972 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 535, line = 534, spell = 1949, unsure = "secret amount" }, -- 47.972 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.001 s
	{ hit = 537, line = 536, spell = 1949, unsure = "secret amount" }, -- 47.972 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 540, line = false, unsure = "no file event fits" }, -- 48.048 nameplate7 WOUND <secret> <- no file event 
	{ hit = 545, line = false, unsure = "secret amount" }, -- 48.121 nameplate10 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 548, line = false, unsure = "secret amount" }, -- 48.161 nameplate10 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 551, line = false, unsure = "secret amount" }, -- 48.161 nameplate9 IMMUNE <secret> <- creature: Magma Totem SPELL_MISSED -0.001 s
	{ hit = 552, line = false, unsure = "secret amount" }, -- 48.161 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 555, line = false, unsure = "secret amount" }, -- 48.161 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 556, line = false, unsure = "secret amount" }, -- 48.328 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 557, line = 558, spell = 7648, unsure = "secret amount" }, -- 48.405 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 559, line = 560, spell = 7648, unsure = "secret amount" }, -- 48.463 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 562, line = 561, spell = 18879, unsure = "secret amount" }, -- 48.788 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 565, line = 566, spell = 18879, unsure = "secret amount" }, -- 48.788 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 567, line = 568, spell = 11711, unsure = "secret amount" }, -- 48.920 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 570, line = 569, spell = 1949, unsure = "secret amount" }, -- 48.957 nameplate9 IMMUNE <secret> <- you: Hellfire Effect SPELL_MISSED +0.000 s
	{ hit = 571, line = 572, spell = 1949, unsure = "secret amount" }, -- 48.957 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 574, line = 573, spell = 1949, unsure = "secret amount" }, -- 48.957 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.001 s
	{ hit = 578, line = 577, spell = 1949, unsure = "secret amount" }, -- 48.957 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 580, line = false, unsure = "on time, of 2 file events" }, -- 49.445 nameplate9 IMMUNE <secret> <- other: Devouring Plague SPELL_MISSED +0.000 s
	{ hit = 581, line = false, unsure = "secret amount" }, -- 49.445 nameplate10 WOUND <secret> <- other: Mind Blast SPELL_DAMAGE +0.000 s
	{ hit = 586, line = false, unsure = "secret amount" }, -- 49.521 nameplate9 IMMUNE <secret> <- other: Devouring Plague SPELL_MISSED +0.000 s
	{ hit = 588, line = 589, spell = 11711, unsure = "secret amount" }, -- 49.521 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 592, line = 593, spell = 1949, unsure = "secret amount" }, -- 49.961 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 595, line = 596, spell = 1949, unsure = "secret amount" }, -- 50.961 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 616, line = false, unsure = "secret amount" }, -- 57.836 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.357 s
	{ hit = 625, line = 626, spell = 1260270, unsure = "secret amount" }, -- 59.144 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 627, line = false, unsure = "secret amount" }, -- 59.203 player HEAL <secret> <- other: Heal SPELL_HEAL +0.000 s
	{ hit = 628, line = false, unsure = "on time, of 2 file events" }, -- 59.290 nameplate6 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE +0.000 s
	{ hit = 629, line = false, unsure = "secret amount" }, -- 59.342 nameplate6 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE +0.000 s
	{ hit = 630, line = false, unsure = "secret amount" }, -- 59.986 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 631, line = false, unsure = "secret amount" }, -- 59.986 nameplate1 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 632, line = false, unsure = "secret amount" }, -- 59.986 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 633, line = 634, spell = 1260270, unsure = "secret amount" }, -- 60.348 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 639, line = false, unsure = "secret amount" }, -- 60.603 nameplate6 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE +0.000 s
	{ hit = 640, line = false, unsure = "late by 1.49 s" }, -- 60.796 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.490 s
	{ hit = 641, line = false, unsure = "secret amount" }, -- 61.403 nameplate1 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 642, line = false, unsure = "2 file events fit" }, -- 61.480 nameplate6 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE +0.000 s
	{ hit = 643, line = 644, spell = 1260270, unsure = "secret amount" }, -- 61.536 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 647, line = false, unsure = "on time, of 3 file events" }, -- 61.939 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.493 s
	{ hit = 648, line = false, unsure = "on time, of 2 file events" }, -- 61.995 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 649, line = false, unsure = "secret amount" }, -- 62.088 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.968 s
	{ hit = 652, line = false, unsure = "secret amount" }, -- 62.369 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 653, line = 654, spell = 1260270, unsure = "secret amount" }, -- 62.753 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 655, line = false, unsure = "secret amount" }, -- 62.753 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 656, line = false, unsure = "secret amount" }, -- 62.753 nameplate6 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 659, line = false, unsure = "secret amount" }, -- 62.982 nameplate1 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 661, line = false, unsure = "secret amount" }, -- 63.269 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 662, line = false, unsure = "secret amount" }, -- 63.269 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 663, line = false, unsure = "secret amount" }, -- 63.269 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 672, line = false, unsure = "secret amount" }, -- 63.820 nameplate1 WOUND <secret> <- other: Cleave SPELL_DAMAGE +0.000 s
	{ hit = 675, line = false, unsure = "secret amount" }, -- 63.820 nameplate2 WOUND <secret> <- other: Cleave SPELL_DAMAGE +0.000 s
	{ hit = 676, line = false, unsure = "no file event fits" }, -- 63.820 nameplate1 WOUND <secret> <- no file event 
	{ hit = 679, line = false, unsure = "secret amount" }, -- 64.161 nameplate6 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 689, line = false, unsure = "secret amount" }, -- 64.174 pet HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL +0.000 s
	{ hit = 695, line = false, unsure = "secret amount" }, -- 64.174 player HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL -0.001 s
	{ hit = 696, line = false, unsure = "late by 1.49 s" }, -- 64.206 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.487 s
	{ hit = 697, line = false, unsure = "secret amount" }, -- 64.281 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 698, line = false, unsure = "secret amount" }, -- 64.281 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 699, line = false, unsure = "secret amount" }, -- 64.281 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 702, line = false, unsure = "secret amount" }, -- 64.963 nameplate2 PARRY <secret> <- other: Rend SPELL_MISSED +0.000 s
	{ hit = 708, line = false, unsure = "secret amount" }, -- 65.269 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 709, line = false, unsure = "secret amount" }, -- 65.269 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 712, line = false, unsure = "secret amount" }, -- 65.269 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 714, line = false, unsure = "secret amount" }, -- 65.651 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 717, line = false, unsure = "secret amount" }, -- 65.667 player HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL +0.000 s
	{ hit = 723, line = false, unsure = "secret amount" }, -- 65.667 pet HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL +0.000 s
	{ hit = 726, line = 727, spell = 11711, unsure = "secret amount" }, -- 65.764 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 728, line = false, unsure = "secret amount" }, -- 65.836 nameplate6 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.033 s
	{ hit = 732, line = false, unsure = "secret amount" }, -- 66.211 nameplate1 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 733, line = false, unsure = "secret amount" }, -- 66.219 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 736, line = false, unsure = "secret amount" }, -- 66.271 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 737, line = false, unsure = "secret amount" }, -- 66.271 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 740, line = false, unsure = "secret amount" }, -- 66.271 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 741, line = false, unsure = "secret amount" }, -- 66.554 nameplate1 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 742, line = false, unsure = "secret amount" }, -- 66.554 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 743, line = false, unsure = "secret amount" }, -- 66.554 nameplate2 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 752, line = false, unsure = "secret amount" }, -- 66.703 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.590 s
	{ hit = 755, line = false, unsure = "secret amount" }, -- 67.128 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.592 s
	{ hit = 758, line = false, unsure = "3 file events fit" }, -- 67.153 nameplate6 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 761, line = false, unsure = "2 file events fit" }, -- 67.153 nameplate6 WOUND <secret> <- other: Mind Blast SPELL_DAMAGE +0.000 s
	{ hit = 771, line = false, unsure = "3 file events fit" }, -- 67.186 player HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL +0.000 s
	{ hit = 772, line = false, unsure = "3 file events fit" }, -- 67.186 pet HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL -0.001 s
	{ hit = 775, line = false, unsure = "secret amount" }, -- 67.186 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 776, line = false, unsure = "2 file events fit" }, -- 67.186 pet HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL -0.001 s
	{ hit = 777, line = false, unsure = "2 file events fit" }, -- 67.186 player HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL -0.001 s
	{ hit = 794, line = false, unsure = "secret amount" }, -- 67.219 player HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL -0.001 s
	{ hit = 797, line = false, unsure = "secret amount" }, -- 67.219 pet HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL -0.001 s
	{ hit = 798, line = false, unsure = "secret amount" }, -- 67.253 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 799, line = false, unsure = "secret amount" }, -- 67.253 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 802, line = false, unsure = "secret amount" }, -- 67.253 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 803, line = false, unsure = "secret amount" }, -- 67.271 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 806, line = false, unsure = "secret amount" }, -- 67.271 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 807, line = false, unsure = "secret amount" }, -- 67.271 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 808, line = false, unsure = "secret amount" }, -- 67.469 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 811, line = 812, spell = 11711, unsure = "secret amount" }, -- 67.761 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 813, line = false, unsure = "secret amount" }, -- 67.786 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.491 s
	{ hit = 818, line = 819, spell = 7648, unsure = "secret amount" }, -- 68.239 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 820, line = false, unsure = "secret amount" }, -- 68.271 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 821, line = false, unsure = "secret amount" }, -- 68.271 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 824, line = false, unsure = "secret amount" }, -- 68.271 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 829, line = false, unsure = "secret amount" }, -- 68.650 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 841, line = false, unsure = "secret amount" }, -- 68.678 pet HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL +0.000 s
	{ hit = 842, line = false, unsure = "secret amount" }, -- 68.678 player HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL +0.000 s
	{ hit = 843, line = 844, spell = 11711, unsure = "secret amount" }, -- 68.744 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 848, line = false, unsure = "secret amount" }, -- 68.986 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 855, line = false, unsure = "secret amount" }, -- 69.239 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 858, line = false, unsure = "secret amount" }, -- 69.239 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 859, line = false, unsure = "secret amount" }, -- 69.239 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 860, line = false, unsure = "secret amount" }, -- 69.269 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 863, line = false, unsure = "secret amount" }, -- 69.269 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 864, line = false, unsure = "secret amount" }, -- 69.269 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 868, line = 869, spell = 11711, unsure = "secret amount" }, -- 69.753 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 870, line = false, unsure = "secret amount" }, -- 69.782 nameplate6 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE +0.000 s
	{ hit = 873, line = false, unsure = "secret amount" }, -- 69.828 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.598 s
	{ hit = 875, line = false, unsure = "secret amount" }, -- 69.994 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 876, line = false, unsure = "secret amount" }, -- 70.149 nameplate6 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 887, line = false, unsure = "secret amount" }, -- 70.180 pet HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL +0.000 s
	{ hit = 888, line = false, unsure = "secret amount" }, -- 70.180 player HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL +0.000 s
	{ hit = 889, line = false, unsure = "secret amount" }, -- 70.263 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 890, line = false, unsure = "secret amount" }, -- 70.263 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 891, line = false, unsure = "secret amount" }, -- 70.263 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 893, line = 892, spell = 7641, unsure = "2 file events fit" }, -- 70.394 nameplate6 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.000 s
	{ hit = 894, line = false, unsure = "secret amount" }, -- 70.394 nameplate6 WOUND <secret> <- other: Mind Flay SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 899, line = false, unsure = "secret amount" }, -- 70.419 pet HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL -0.001 s
	{ hit = 900, line = false, unsure = "secret amount" }, -- 70.419 player HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL -0.001 s
	{ hit = 905, line = false, unsure = "2 file events fit" }, -- 70.465 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 906, line = false, unsure = "on time, of 2 file events" }, -- 70.465 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 907, line = false, unsure = "secret amount" }, -- 70.465 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 908, line = false, unsure = "secret amount" }, -- 70.465 nameplate1 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 910, line = 911, spell = 11711, unsure = "secret amount" }, -- 70.728 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 914, line = false, unsure = "secret amount" }, -- 71.031 nameplate1 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 915, line = false, unsure = "secret amount" }, -- 71.160 nameplate6 WOUND <secret> <- other: Shadow Word: Death SPELL_DAMAGE +0.000 s
	{ hit = 918, line = false, unsure = "secret amount" }, -- 71.177 nameplate6 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.001 s
	{ hit = 919, line = false, unsure = "secret amount" }, -- 71.184 pet HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL +0.000 s
	{ hit = 920, line = false, unsure = "secret amount" }, -- 71.184 player HEAL <secret> <- other: Vampiric Embrace SPELL_HEAL +0.000 s
	{ hit = 927, line = 928, spell = 7648, unsure = "secret amount" }, -- 71.203 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 930, line = 932, spell = 7648, unsure = "secret amount" }, -- 71.235 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 933, line = false, unsure = "secret amount" }, -- 71.235 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 934, line = false, unsure = "secret amount" }, -- 71.235 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 938, line = false, unsure = "secret amount" }, -- 71.450 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.627 s
	{ hit = 946, line = 949, spell = 11711, unsure = "secret amount" }, -- 71.753 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 951, line = 954, spell = 11711, unsure = "secret amount" }, -- 72.728 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 957, line = false, unsure = "secret amount" }, -- 73.237 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 958, line = false, unsure = "secret amount" }, -- 73.237 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 961, line = false, unsure = "secret amount" }, -- 73.429 nameplate1 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 962, line = 963, spell = 11711, unsure = "secret amount" }, -- 73.769 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 970, line = false, unsure = "secret amount" }, -- 73.961 nameplate1 WOUND <secret> <- other: Chain Lightning SPELL_DAMAGE -0.001 s
	{ hit = 971, line = false, unsure = "secret amount" }, -- 73.961 nameplate2 WOUND <secret> <- other: Chain Lightning SPELL_DAMAGE -0.001 s
	{ hit = 974, line = false, unsure = "secret amount" }, -- 74.171 nameplate8 MISS <secret> <- other: Throw RANGE_MISSED -0.002 s
	{ hit = 975, line = false, unsure = "2 file events fit" }, -- 74.188 nameplate2 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 978, line = false, unsure = "on time, of 2 file events" }, -- 74.188 nameplate1 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 983, line = 986, spell = 7648, unsure = "secret amount" }, -- 74.198 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 987, line = 988, spell = 7648, unsure = "secret amount" }, -- 74.238 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 992, line = 991, spell = 18879, unsure = "secret amount" }, -- 74.439 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 993, line = 994, spell = 18879, unsure = "secret amount" }, -- 74.439 player HEAL <secret> <- you: Siphon Life SPELL_HEAL +0.000 s
	{ hit = 995, line = 998, spell = 11711, unsure = "secret amount" }, -- 74.720 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 999, line = false, unsure = "secret amount" }, -- 74.801 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.669 s
	{ hit = 1002, line = false, unsure = "secret amount" }, -- 75.243 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1003, line = false, unsure = "secret amount" }, -- 75.243 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1006, line = 1007, spell = 11711, unsure = "secret amount" }, -- 75.753 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1011, line = 1010, spell = 18879, unsure = "secret amount" }, -- 75.922 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1014, line = 1015, spell = 18879, unsure = "secret amount" }, -- 75.922 player HEAL <secret> <- you: Siphon Life SPELL_HEAL +0.000 s
	{ hit = 1016, line = false, unsure = "secret amount" }, -- 76.167 nameplate9 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE +0.000 s
	{ hit = 1026, line = false, unsure = "2 file events fit" }, -- 76.688 nameplate2 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1029, line = 1032, spell = 11711, unsure = "secret amount" }, -- 76.717 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1033, line = false, unsure = "secret amount" }, -- 76.869 nameplate2 WOUND <secret> <- other: Mind Blast SPELL_DAMAGE -0.001 s
	{ hit = 1036, line = false, unsure = "secret amount" }, -- 77.028 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.990 s
	{ hit = 1037, line = false, unsure = "2 file events fit" }, -- 77.188 nameplate2 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1040, line = false, unsure = "on time, of 2 file events" }, -- 77.188 nameplate1 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1045, line = 1048, spell = 7648, unsure = "secret amount" }, -- 77.203 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1049, line = 1050, spell = 7648, unsure = "secret amount" }, -- 77.236 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1051, line = false, unsure = "secret amount" }, -- 77.247 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 1055, line = 1054, spell = 18879, unsure = "secret amount" }, -- 77.438 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1056, line = 1057, spell = 18879, unsure = "secret amount" }, -- 77.438 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1058, line = false, unsure = "secret amount" }, -- 77.586 nameplate2 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE +0.000 s
	{ hit = 1062, line = false, unsure = "secret amount" }, -- 77.678 nameplate8 WOUND <secret> <- other: Shield Bash SPELL_DAMAGE -0.001 s
	{ hit = 1066, line = 1067, spell = 11711, unsure = "secret amount" }, -- 77.761 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1069, line = false, unsure = "on time, of 2 file events" }, -- 77.995 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.503 s
	{ hit = 1070, line = false, unsure = "secret amount" }, -- 78.034 nameplate2 WOUND <secret> <- other: Mind Flay SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1071, line = false, unsure = "secret amount" }, -- 78.311 nameplate2 DODGE <secret> <- other: Stormstrike SPELL_MISSED +0.000 s
	{ hit = 1084, line = 1085, spell = 11711, unsure = "secret amount" }, -- 78.718 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1087, line = 1086, spell = 18879, unsure = "secret amount" }, -- 78.913 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1088, line = 1089, spell = 18879, unsure = "secret amount" }, -- 78.913 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1092, line = false, unsure = "secret amount" }, -- 79.030 nameplate2 WOUND <secret> <- other: Mind Flay SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1093, line = false, unsure = "late by 1.48 s" }, -- 79.036 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.483 s
	{ hit = 1095, line = false, unsure = "secret amount" }, -- 79.211 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1096, line = false, unsure = "secret amount" }, -- 79.211 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1097, line = false, unsure = "on time, of 2 file events" }, -- 79.211 nameplate8 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1100, line = false, unsure = "secret amount" }, -- 79.211 nameplate1 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1101, line = false, unsure = "secret amount" }, -- 79.678 nameplate2 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1103, line = 1104, spell = 11711, unsure = "secret amount" }, -- 79.761 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1105, line = false, unsure = "on time, of 2 file events" }, -- 79.780 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 1108, line = false, unsure = "secret amount" }, -- 79.869 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1111, line = false, unsure = "secret amount" }, -- 79.869 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1112, line = false, unsure = "secret amount" }, -- 79.869 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1113, line = false, unsure = "secret amount" }, -- 79.869 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1114, line = false, unsure = "2 file events fit" }, -- 80.194 nameplate2 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1115, line = false, unsure = "on time, of 2 file events" }, -- 80.194 nameplate1 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1118, line = 1119, spell = 7648, unsure = "secret amount" }, -- 80.203 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1120, line = 1121, spell = 7648, unsure = "secret amount" }, -- 80.241 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1125, line = false, unsure = "late by 1.06 s" }, -- 80.311 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +1.058 s
	{ hit = 1129, line = 1128, spell = 18879, unsure = "secret amount" }, -- 80.428 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1130, line = 1131, spell = 18879, unsure = "secret amount" }, -- 80.428 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1138, line = false, unsure = "secret amount" }, -- 80.644 nameplate1 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 1139, line = 1140, spell = 11711, unsure = "secret amount" }, -- 80.730 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1141, line = false, unsure = "secret amount" }, -- 80.886 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1142, line = false, unsure = "secret amount" }, -- 80.886 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1145, line = false, unsure = "secret amount" }, -- 80.886 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1146, line = false, unsure = "secret amount" }, -- 80.886 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1147, line = false, unsure = "secret amount" }, -- 80.988 nameplate2 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE +0.000 s
	{ hit = 1148, line = 1151, spell = 11711, unsure = "secret amount" }, -- 81.003 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1155, line = false, unsure = "secret amount" }, -- 81.163 nameplate1 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 1158, line = 1159, spell = 11711, unsure = "secret amount" }, -- 81.761 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1160, line = false, unsure = "secret amount" }, -- 81.878 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1163, line = false, unsure = "secret amount" }, -- 81.878 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1164, line = false, unsure = "secret amount" }, -- 81.878 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1167, line = false, unsure = "on time, of 2 file events" }, -- 81.989 nameplate1 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 1168, line = false, unsure = "secret amount" }, -- 82.196 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 1171, line = false, unsure = "secret amount" }, -- 82.554 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.600 s
	{ hit = 1175, line = false, unsure = "secret amount" }, -- 82.880 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1176, line = false, unsure = "secret amount" }, -- 82.880 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1177, line = false, unsure = "secret amount" }, -- 82.880 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1183, line = false, unsure = "on time, of 2 file events" }, -- 82.997 nameplate1 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE +0.000 s
	{ hit = 1184, line = 1187, spell = 11711, unsure = "secret amount" }, -- 82.997 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1188, line = false, unsure = "secret amount" }, -- 83.045 nameplate1 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 1189, line = 1190, spell = 7648, unsure = "secret amount" }, -- 83.246 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1195, line = 1194, spell = 18879, unsure = "secret amount" }, -- 83.429 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1196, line = 1197, spell = 18879, unsure = "secret amount" }, -- 83.429 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1200, line = false, unsure = "secret amount" }, -- 83.706 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1201, line = 1202, spell = 11711, unsure = "secret amount" }, -- 83.761 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1203, line = false, unsure = "secret amount" }, -- 83.871 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1204, line = false, unsure = "secret amount" }, -- 83.871 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1205, line = false, unsure = "secret amount" }, -- 83.871 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1209, line = false, unsure = "secret amount" }, -- 84.007 nameplate1 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1212, line = false, unsure = "secret amount" }, -- 84.346 nameplate1 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE +0.000 s
	{ hit = 1214, line = false, unsure = "secret amount" }, -- 84.390 nameplate1 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE +0.000 s
	{ hit = 1216, line = false, unsure = "on time, of 2 file events" }, -- 84.390 nameplate1 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 1220, line = false, unsure = "secret amount" }, -- 84.668 nameplate9 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.001 s
	{ hit = 1221, line = false, unsure = "on time, of 2 file events" }, -- 84.668 nameplate1 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.001 s
	{ hit = 1224, line = false, unsure = "no file event fits" }, -- 84.668 nameplate9 WOUND <secret> <- no file event 
	{ hit = 1225, line = false, unsure = "secret amount" }, -- 84.805 nameplate9 IMMUNE <secret> <- other: Devouring Plague SPELL_MISSED +0.000 s
	{ hit = 1228, line = false, unsure = "secret amount" }, -- 84.878 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1229, line = false, unsure = "secret amount" }, -- 84.878 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1230, line = 1231, spell = 7648, unsure = "2 file events fit" }, -- 84.978 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1232, line = 1233, spell = 11711, unsure = "secret amount" }, -- 84.994 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1242, line = false, unsure = "secret amount" }, -- 85.867 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1243, line = false, unsure = "secret amount" }, -- 85.867 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1247, line = false, unsure = "secret amount" }, -- 86.705 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1249, line = false, unsure = "secret amount" }, -- 86.880 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1250, line = false, unsure = "secret amount" }, -- 86.880 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1253, line = 1256, spell = 11711, unsure = "secret amount" }, -- 86.995 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1262, line = false, unsure = "secret amount" }, -- 87.820 nameplate8 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1267, line = false, unsure = "secret amount" }, -- 87.894 nameplate8 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.001 s
	{ hit = 1270, line = 1273, spell = 7648, unsure = "secret amount" }, -- 87.975 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1274, line = false, unsure = "secret amount" }, -- 88.146 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.622 s
	{ hit = 1278, line = false, unsure = "late by 1.02 s" }, -- 88.395 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +1.017 s
	{ hit = 1281, line = false, unsure = "secret amount" }, -- 88.419 nameplate8 MISS <secret> <- other: swing SWING_MISSED +0.664 s
	{ hit = 1284, line = false, unsure = "secret amount" }, -- 88.628 player HEAL <secret> <- other: Heal SPELL_HEAL +0.000 s
	{ hit = 1287, line = false, unsure = "secret amount" }, -- 88.990 nameplate8 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE +0.000 s
	{ hit = 1290, line = 1293, spell = 11711, unsure = "secret amount" }, -- 89.007 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1295, line = 1294, spell = false, unsure = "on time, of 2 file events" }, -- 89.294 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.265 s
	{ hit = 1298, line = false, unsure = "on time, of 2 file events" }, -- 89.380 nameplate8 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 1301, line = false, unsure = "secret amount" }, -- 89.380 nameplate8 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 1304, line = false, unsure = "secret amount" }, -- 89.433 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 1307, line = false, unsure = "secret amount" }, -- 89.705 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1311, line = false, unsure = "secret amount" }, -- 90.095 nameplate8 PARRY <secret> <- other: Windfury Totem SPELL_MISSED +0.000 s
	{ hit = 1322, line = false, unsure = "secret amount" }, -- 90.655 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.585 s
	{ hit = 1325, line = false, unsure = "secret amount" }, -- 90.896 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 1328, line = 1331, spell = 7648, unsure = "2 file events fit" }, -- 90.969 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1332, line = 1335, spell = 11711, unsure = "secret amount" }, -- 90.996 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1338, line = 1337, spell = 7651, unsure = "secret amount" }, -- 91.129 nameplate8 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1341, line = 1342, spell = 7651, unsure = "secret amount" }, -- 91.129 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 1343, line = false, unsure = "secret amount" }, -- 91.175 nameplate8 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE +0.000 s
	{ hit = 1349, line = 1336, spell = false, unsure = "secret amount" }, -- 91.286 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.258 s
	{ hit = 1356, line = 1355, spell = 18879, unsure = "secret amount" }, -- 91.653 nameplate8 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1359, line = 1360, spell = 18879, unsure = "secret amount" }, -- 91.653 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1362, line = 1361, spell = 7651, unsure = "secret amount" }, -- 92.130 nameplate8 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1365, line = 1366, spell = 7651, unsure = "secret amount" }, -- 92.130 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 1370, line = false, unsure = "late by 1.49 s" }, -- 92.639 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +1.495 s
	{ hit = 1373, line = false, unsure = "secret amount" }, -- 92.678 nameplate8 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE +0.000 s
	{ hit = 1376, line = false, unsure = "secret amount" }, -- 92.696 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1377, line = 1380, spell = 11711, unsure = "secret amount" }, -- 92.996 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1383, line = 1382, spell = 7651, unsure = "secret amount" }, -- 93.128 nameplate8 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1386, line = 1387, spell = 7651, unsure = "secret amount" }, -- 93.128 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 1388, line = false, unsure = "on time, of 3 file events" }, -- 93.128 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.350 s
	{ hit = 1391, line = false, unsure = "on time, of 3 file events" }, -- 93.253 nameplate8 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 1394, line = false, unsure = "on time, of 2 file events" }, -- 93.465 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.502 s
	{ hit = 1397, line = 1381, spell = false, unsure = "secret amount" }, -- 93.669 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.628 s
	{ hit = 1403, line = 1406, spell = 7648, unsure = "secret amount" }, -- 93.974 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1407, line = false, unsure = "secret amount" }, -- 94.121 nameplate8 WOUND <secret> <- other: Shadow Word: Death SPELL_DAMAGE -0.001 s
	{ hit = 1423, line = false, unsure = "secret amount" }, -- 95.703 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1448, line = false, unsure = "secret amount" }, -- 102.980 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.394 s
	{ hit = 1458, line = false, unsure = "secret amount" }, -- 104.994 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.403 s
	{ hit = 1460, line = false, unsure = "secret amount" }, -- 105.644 nameplate5 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.001 s
	{ hit = 1469, line = false, unsure = "secret amount" }, -- 106.280 nameplate5 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE +0.000 s
	{ hit = 1472, line = false, unsure = "secret amount" }, -- 107.003 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.397 s
	{ hit = 1475, line = false, unsure = "late by 1.49 s" }, -- 107.136 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.491 s
	{ hit = 1480, line = false, unsure = "secret amount" }, -- 107.530 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1498, line = false, unsure = "secret amount" }, -- 109.032 nameplate9 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1501, line = false, unsure = "secret amount" }, -- 109.073 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 1504, line = false, unsure = "secret amount" }, -- 109.073 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 1511, line = false, unsure = "secret amount" }, -- 110.045 nameplate9 WOUND <secret> <- other: Mind Blast SPELL_DAMAGE -0.001 s
	{ hit = 1518, line = false, unsure = "late by 1.49 s" }, -- 110.536 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.492 s
	{ hit = 1519, line = false, unsure = "secret amount" }, -- 110.544 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1520, line = 1521, spell = 11711, unsure = "secret amount" }, -- 110.544 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1522, line = false, unsure = "secret amount" }, -- 110.569 nameplate5 MISS <secret> <- other: Judgement of Command SPELL_MISSED -0.001 s
	{ hit = 1523, line = false, unsure = "4 file events fit" }, -- 110.711 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1524, line = false, unsure = "secret amount" }, -- 110.711 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1525, line = false, unsure = "2 file events fit" }, -- 110.711 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1526, line = false, unsure = "secret amount" }, -- 110.711 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1532, line = false, unsure = "secret amount" }, -- 110.853 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 1533, line = false, unsure = "3 file events fit" }, -- 110.853 nameplate11 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 1534, line = false, unsure = "2 file events fit" }, -- 110.853 nameplate8 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 1535, line = false, unsure = "secret amount" }, -- 110.853 nameplate10 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1541, line = false, unsure = "secret amount" }, -- 111.141 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 1545, line = false, unsure = "secret amount" }, -- 111.694 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1546, line = false, unsure = "secret amount" }, -- 111.694 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1549, line = false, unsure = "2 file events fit" }, -- 111.694 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1550, line = false, unsure = "secret amount" }, -- 111.694 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1551, line = false, unsure = "secret amount" }, -- 111.939 nameplate2 MISS <secret> <- other: Throw RANGE_MISSED -0.002 s
	{ hit = 1559, line = false, unsure = "secret amount" }, -- 112.419 nameplate11 MISS <secret> <- other: Stormstrike SPELL_MISSED -0.001 s
	{ hit = 1560, line = false, unsure = "on time, of 2 file events" }, -- 112.465 nameplate5 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 1561, line = 1562, spell = 11711, unsure = "secret amount" }, -- 112.548 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1565, line = false, unsure = "on time, of 2 file events" }, -- 112.603 nameplate11 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 1567, line = false, unsure = "secret amount" }, -- 112.703 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1568, line = false, unsure = "3 file events fit" }, -- 112.703 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1569, line = false, unsure = "secret amount" }, -- 112.703 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1572, line = false, unsure = "secret amount" }, -- 112.703 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1575, line = 1576, spell = 7648, unsure = "secret amount" }, -- 113.022 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1580, line = false, unsure = "secret amount" }, -- 113.113 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.668 s
	{ hit = 1589, line = false, unsure = "secret amount" }, -- 113.692 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1600, line = false, unsure = "secret amount" }, -- 114.139 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.001 s
	{ hit = 1601, line = 1604, spell = 11711, unsure = "secret amount" }, -- 114.194 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1608, line = 1609, spell = 11711, unsure = "secret amount" }, -- 114.538 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1610, line = false, unsure = "secret amount" }, -- 114.698 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1611, line = false, unsure = "on time, of 2 file events" }, -- 114.698 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1612, line = false, unsure = "secret amount" }, -- 114.698 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1615, line = false, unsure = "on time, of 2 file events" }, -- 114.698 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1616, line = false, unsure = "on time, of 2 file events" }, -- 114.698 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1620, line = false, unsure = "on time, of 2 file events" }, -- 115.028 nameplate2 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1628, line = false, unsure = "secret amount" }, -- 115.469 nameplate10 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1634, line = false, unsure = "secret amount" }, -- 115.694 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1635, line = false, unsure = "secret amount" }, -- 115.694 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1636, line = false, unsure = "secret amount" }, -- 115.694 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1637, line = false, unsure = "secret amount" }, -- 115.694 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1638, line = false, unsure = "secret amount" }, -- 115.694 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1641, line = false, unsure = "secret amount" }, -- 115.694 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1642, line = false, unsure = "secret amount" }, -- 115.694 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1643, line = false, unsure = "late by 1.33 s" }, -- 115.804 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.333 s
	{ hit = 1647, line = 1648, spell = 7648, unsure = "secret amount" }, -- 116.031 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1649, line = false, unsure = "secret amount" }, -- 116.038 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 1650, line = false, unsure = "secret amount" }, -- 116.065 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.596 s
	{ hit = 1651, line = 1652, spell = 11711, unsure = "secret amount" }, -- 116.186 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1657, line = false, unsure = "secret amount" }, -- 116.375 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 1658, line = false, unsure = "secret amount" }, -- 116.375 nameplate4 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 1659, line = false, unsure = "secret amount" }, -- 116.375 nameplate1 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 1662, line = false, unsure = "secret amount" }, -- 116.375 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 1663, line = false, unsure = "secret amount" }, -- 116.375 nameplate2 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 1664, line = false, unsure = "secret amount" }, -- 116.375 nameplate10 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 1665, line = false, unsure = "secret amount" }, -- 116.375 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 1666, line = false, unsure = "on time, of 2 file events" }, -- 116.386 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 1667, line = false, unsure = "secret amount" }, -- 116.386 nameplate5 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.001 s
	{ hit = 1671, line = false, unsure = "on time, of 2 file events" }, -- 116.411 nameplate5 MISS <secret> <- other: Seal of Command SPELL_MISSED +0.000 s
	{ hit = 1672, line = false, unsure = "secret amount" }, -- 116.488 nameplate5 MISS <secret> <- other: Holy Strike SPELL_MISSED -0.001 s
	{ hit = 1673, line = false, unsure = "secret amount" }, -- 116.537 nameplate2 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1674, line = 1675, spell = 11711, unsure = "secret amount" }, -- 116.537 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1676, line = false, unsure = "secret amount" }, -- 116.537 nameplate10 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 1679, line = 1680, spell = 7648, unsure = "secret amount" }, -- 116.669 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1681, line = false, unsure = "secret amount" }, -- 116.698 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1682, line = false, unsure = "secret amount" }, -- 116.698 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1683, line = false, unsure = "secret amount" }, -- 116.698 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1684, line = false, unsure = "secret amount" }, -- 116.698 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1685, line = false, unsure = "secret amount" }, -- 116.698 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1688, line = false, unsure = "secret amount" }, -- 116.698 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1689, line = false, unsure = "secret amount" }, -- 116.698 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1693, line = false, unsure = "on time, of 2 file events" }, -- 116.904 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 1694, line = false, unsure = "secret amount" }, -- 116.911 nameplate1 MISS <secret> <- creature: Magma Totem SPELL_MISSED +0.000 s
	{ hit = 1697, line = false, unsure = "secret amount" }, -- 116.911 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1698, line = false, unsure = "secret amount" }, -- 116.911 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1699, line = false, unsure = "secret amount" }, -- 116.911 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1700, line = false, unsure = "secret amount" }, -- 116.911 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1701, line = false, unsure = "secret amount" }, -- 116.911 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1702, line = false, unsure = "secret amount" }, -- 116.911 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1703, line = false, unsure = "secret amount" }, -- 116.978 nameplate1 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1706, line = false, unsure = "on time, of 2 file events" }, -- 117.111 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1707, line = false, unsure = "secret amount" }, -- 117.111 nameplate1 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1710, line = false, unsure = "secret amount" }, -- 117.111 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1711, line = false, unsure = "secret amount" }, -- 117.111 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1721, line = false, unsure = "secret amount" }, -- 117.411 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 1722, line = false, unsure = "secret amount" }, -- 117.697 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1723, line = false, unsure = "secret amount" }, -- 117.697 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1724, line = false, unsure = "secret amount" }, -- 117.697 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1725, line = false, unsure = "secret amount" }, -- 117.697 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1726, line = false, unsure = "secret amount" }, -- 117.697 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1727, line = false, unsure = "secret amount" }, -- 117.697 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1730, line = false, unsure = "secret amount" }, -- 117.697 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1734, line = false, unsure = "late by 1.49 s" }, -- 117.840 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.486 s
	{ hit = 1735, line = false, unsure = "secret amount" }, -- 118.022 nameplate2 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1741, line = 1740, spell = 18879, unsure = "2 file events fit" }, -- 118.161 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1742, line = 1743, spell = 18879, unsure = "secret amount" }, -- 118.161 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1744, line = 1745, spell = 11711, unsure = "secret amount" }, -- 118.180 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1747, line = false, unsure = "secret amount" }, -- 118.478 nameplate10 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1748, line = false, unsure = "secret amount" }, -- 118.478 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1751, line = 1752, spell = 11711, unsure = "secret amount" }, -- 118.545 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1753, line = false, unsure = "on time, of 2 file events" }, -- 118.616 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE +0.000 s
	{ hit = 1754, line = 1755, spell = 11711, unsure = "secret amount" }, -- 118.653 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1762, line = false, unsure = "secret amount" }, -- 118.913 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 1763, line = false, unsure = "secret amount" }, -- 118.913 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1764, line = false, unsure = "secret amount" }, -- 118.913 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1765, line = false, unsure = "secret amount" }, -- 118.913 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1766, line = false, unsure = "secret amount" }, -- 118.913 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1767, line = false, unsure = "secret amount" }, -- 118.913 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1768, line = false, unsure = "secret amount" }, -- 118.913 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1771, line = 1772, spell = 7648, unsure = "secret amount" }, -- 119.028 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1773, line = false, unsure = "secret amount" }, -- 119.028 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1774, line = false, unsure = "secret amount" }, -- 119.028 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1775, line = false, unsure = "secret amount" }, -- 119.028 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1776, line = false, unsure = "secret amount" }, -- 119.028 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1777, line = false, unsure = "secret amount" }, -- 119.028 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1778, line = false, unsure = "secret amount" }, -- 119.028 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1781, line = false, unsure = "secret amount" }, -- 119.028 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1782, line = false, unsure = "secret amount" }, -- 119.042 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.355 s
	{ hit = 1792, line = false, unsure = "secret amount" }, -- 119.521 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.493 s
	{ hit = 1793, line = false, unsure = "secret amount" }, -- 119.536 nameplate2 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1796, line = 1797, spell = 7648, unsure = "secret amount" }, -- 119.669 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1801, line = false, unsure = "secret amount" }, -- 119.972 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1802, line = false, unsure = "secret amount" }, -- 119.972 nameplate1 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1803, line = false, unsure = "secret amount" }, -- 120.022 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1804, line = false, unsure = "secret amount" }, -- 120.022 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1805, line = false, unsure = "secret amount" }, -- 120.022 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1806, line = false, unsure = "secret amount" }, -- 120.022 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1807, line = false, unsure = "secret amount" }, -- 120.022 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1808, line = false, unsure = "secret amount" }, -- 120.022 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1809, line = false, unsure = "secret amount" }, -- 120.022 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1812, line = false, unsure = "secret amount" }, -- 120.113 nameplate1 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 1813, line = 1814, spell = 11711, unsure = "secret amount" }, -- 120.183 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1818, line = false, unsure = "secret amount" }, -- 120.363 nameplate5 MISS <secret> <- other: swing SWING_MISSED +0.596 s
	{ hit = 1819, line = 1820, spell = 11711, unsure = "secret amount" }, -- 120.541 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1821, line = 1822, spell = 11711, unsure = "secret amount" }, -- 120.644 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1823, line = false, unsure = "secret amount" }, -- 120.907 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1824, line = false, unsure = "secret amount" }, -- 120.907 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1825, line = false, unsure = "secret amount" }, -- 120.907 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1826, line = false, unsure = "secret amount" }, -- 120.907 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1827, line = false, unsure = "secret amount" }, -- 120.907 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1828, line = false, unsure = "secret amount" }, -- 120.907 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1831, line = false, unsure = "secret amount" }, -- 120.907 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1835, line = false, unsure = "secret amount" }, -- 121.021 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1836, line = false, unsure = "secret amount" }, -- 121.021 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1837, line = false, unsure = "secret amount" }, -- 121.021 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1838, line = false, unsure = "on time, of 2 file events" }, -- 121.021 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1839, line = false, unsure = "secret amount" }, -- 121.021 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1840, line = false, unsure = "secret amount" }, -- 121.021 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1843, line = false, unsure = "secret amount" }, -- 121.021 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1844, line = false, unsure = "secret amount" }, -- 121.031 nameplate2 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1847, line = false, unsure = "secret amount" }, -- 121.063 nameplate5 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.001 s
	{ hit = 1853, line = 1854, spell = 7648, unsure = "secret amount" }, -- 121.125 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1856, line = 1855, spell = 18879, unsure = "secret amount" }, -- 121.163 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1857, line = 1858, spell = 18879, unsure = "secret amount" }, -- 121.163 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1863, line = false, unsure = "secret amount" }, -- 121.486 nameplate10 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1864, line = false, unsure = "secret amount" }, -- 121.486 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1868, line = false, unsure = "secret amount" }, -- 121.521 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.358 s
	{ hit = 1869, line = 1870, spell = 11711, unsure = "secret amount" }, -- 121.610 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1871, line = false, unsure = "secret amount" }, -- 121.836 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.511 s
	{ hit = 1872, line = false, unsure = "secret amount" }, -- 121.869 nameplate1 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 1876, line = false, unsure = "secret amount" }, -- 121.895 nameplate1 DODGE <secret> <- other: Windfury Totem SPELL_MISSED +0.000 s
	{ hit = 1877, line = false, unsure = "secret amount" }, -- 122.023 nameplate3 MISS <secret> <- other: Consecration SPELL_MISSED +0.000 s
	{ hit = 1878, line = 1879, spell = 7648, unsure = "secret amount" }, -- 122.023 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1880, line = false, unsure = "secret amount" }, -- 122.023 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1881, line = false, unsure = "secret amount" }, -- 122.023 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1884, line = false, unsure = "secret amount" }, -- 122.023 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1885, line = false, unsure = "secret amount" }, -- 122.023 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1886, line = false, unsure = "secret amount" }, -- 122.023 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1887, line = false, unsure = "secret amount" }, -- 122.023 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 1888, line = 1889, spell = 11711, unsure = "secret amount" }, -- 122.189 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1893, line = false, unsure = "secret amount" }, -- 122.212 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 1894, line = false, unsure = "secret amount" }, -- 122.533 nameplate2 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1895, line = 1896, spell = 11711, unsure = "secret amount" }, -- 122.533 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1899, line = false, unsure = "on time, of 2 file events" }, -- 122.578 nameplate1 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 1900, line = 1901, spell = 11711, unsure = "secret amount" }, -- 122.639 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1902, line = 1903, spell = 7648, unsure = "secret amount" }, -- 122.669 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1907, line = false, unsure = "secret amount" }, -- 122.843 nameplate4 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 1910, line = false, unsure = "secret amount" }, -- 122.919 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1911, line = false, unsure = "secret amount" }, -- 122.919 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1912, line = false, unsure = "secret amount" }, -- 122.919 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1915, line = false, unsure = "secret amount" }, -- 122.919 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1916, line = false, unsure = "secret amount" }, -- 122.919 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1917, line = false, unsure = "secret amount" }, -- 122.919 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1918, line = false, unsure = "secret amount" }, -- 122.919 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 1919, line = false, unsure = "secret amount" }, -- 122.971 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1920, line = false, unsure = "secret amount" }, -- 122.971 nameplate1 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1921, line = false, unsure = "secret amount" }, -- 123.023 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1922, line = false, unsure = "secret amount" }, -- 123.023 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1925, line = false, unsure = "secret amount" }, -- 123.023 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1926, line = false, unsure = "secret amount" }, -- 123.023 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1927, line = false, unsure = "secret amount" }, -- 123.023 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1928, line = false, unsure = "secret amount" }, -- 123.023 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1929, line = false, unsure = "secret amount" }, -- 123.023 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1930, line = false, unsure = "on time, of 2 file events" }, -- 123.036 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.490 s
	{ hit = 1931, line = false, unsure = "secret amount" }, -- 123.111 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1932, line = false, unsure = "secret amount" }, -- 123.111 nameplate1 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1933, line = false, unsure = "secret amount" }, -- 123.111 nameplate10 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1934, line = false, unsure = "secret amount" }, -- 123.111 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1937, line = false, unsure = "secret amount" }, -- 123.196 nameplate5 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 1938, line = false, unsure = "on time, of 2 file events" }, -- 123.196 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 1950, line = 1951, spell = 11711, unsure = "secret amount" }, -- 123.622 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1955, line = false, unsure = "secret amount" }, -- 123.762 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.599 s
	{ hit = 1956, line = false, unsure = "on time, of 2 file events" }, -- 123.953 nameplate2 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.016 s
	{ hit = 1957, line = false, unsure = "secret amount" }, -- 124.021 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1960, line = false, unsure = "secret amount" }, -- 124.021 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1961, line = false, unsure = "secret amount" }, -- 124.021 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1962, line = false, unsure = "secret amount" }, -- 124.021 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1963, line = false, unsure = "secret amount" }, -- 124.021 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1964, line = false, unsure = "secret amount" }, -- 124.021 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1965, line = false, unsure = "secret amount" }, -- 124.021 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 1966, line = false, unsure = "secret amount" }, -- 124.049 nameplate2 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1971, line = 1972, spell = 7648, unsure = "secret amount" }, -- 124.090 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1973, line = false, unsure = "secret amount" }, -- 124.090 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.357 s
	{ hit = 1974, line = 1975, spell = 7648, unsure = "secret amount" }, -- 124.128 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1980, line = 1979, spell = 18879, unsure = "2 file events fit" }, -- 124.153 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1981, line = 1982, spell = 18879, unsure = "secret amount" }, -- 124.153 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 1983, line = 1984, spell = 11711, unsure = "secret amount" }, -- 124.171 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1986, line = false, unsure = "secret amount" }, -- 124.221 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.361 s
	{ hit = 1987, line = false, unsure = "secret amount" }, -- 124.478 nameplate10 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1988, line = false, unsure = "secret amount" }, -- 124.478 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1992, line = 1993, spell = 11711, unsure = "secret amount" }, -- 124.541 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1994, line = 1995, spell = 11711, unsure = "secret amount" }, -- 124.585 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1999, line = false, unsure = "secret amount" }, -- 124.615 nameplate6 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE +0.000 s
	{ hit = 2000, line = 2001, spell = 11711, unsure = "secret amount" }, -- 124.646 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2002, line = false, unsure = "secret amount" }, -- 124.903 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 2003, line = false, unsure = "secret amount" }, -- 124.903 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 2006, line = false, unsure = "secret amount" }, -- 124.903 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 2007, line = false, unsure = "secret amount" }, -- 124.903 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 2008, line = false, unsure = "secret amount" }, -- 124.903 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 2009, line = false, unsure = "secret amount" }, -- 124.903 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 2010, line = false, unsure = "secret amount" }, -- 124.903 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 2014, line = 2015, spell = 7648, unsure = "secret amount" }, -- 125.019 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2016, line = false, unsure = "secret amount" }, -- 125.019 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 2017, line = false, unsure = "secret amount" }, -- 125.019 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 2020, line = false, unsure = "secret amount" }, -- 125.019 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 2021, line = false, unsure = "secret amount" }, -- 125.019 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 2022, line = false, unsure = "secret amount" }, -- 125.019 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 2023, line = false, unsure = "secret amount" }, -- 125.019 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 2024, line = false, unsure = "secret amount" }, -- 125.019 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 2025, line = false, unsure = "secret amount" }, -- 125.530 nameplate2 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2031, line = 2032, spell = 11711, unsure = "secret amount" }, -- 125.621 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2033, line = 2034, spell = 7648, unsure = "secret amount" }, -- 125.667 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2041, line = false, unsure = "secret amount" }, -- 125.978 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 2042, line = false, unsure = "secret amount" }, -- 125.978 nameplate1 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2043, line = false, unsure = "secret amount" }, -- 126.030 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2044, line = false, unsure = "secret amount" }, -- 126.030 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2047, line = false, unsure = "secret amount" }, -- 126.030 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2048, line = false, unsure = "secret amount" }, -- 126.030 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2049, line = false, unsure = "secret amount" }, -- 126.030 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2050, line = false, unsure = "secret amount" }, -- 126.030 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2051, line = false, unsure = "secret amount" }, -- 126.030 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2052, line = false, unsure = "secret amount" }, -- 126.113 nameplate10 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.001 s
	{ hit = 2053, line = 2054, spell = 11711, unsure = "secret amount" }, -- 126.190 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2055, line = false, unsure = "secret amount" }, -- 126.378 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE +0.000 s
	{ hit = 2058, line = false, unsure = "secret amount" }, -- 126.378 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE +0.000 s
	{ hit = 2059, line = false, unsure = "secret amount" }, -- 126.378 nameplate4 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE +0.000 s
	{ hit = 2060, line = false, unsure = "secret amount" }, -- 126.378 nameplate1 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 2061, line = false, unsure = "secret amount" }, -- 126.378 nameplate2 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 2062, line = false, unsure = "secret amount" }, -- 126.378 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 2063, line = false, unsure = "secret amount" }, -- 126.378 nameplate10 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 2067, line = false, unsure = "secret amount" }, -- 126.503 nameplate6 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE +0.000 s
	{ hit = 2068, line = 2069, spell = 11711, unsure = "secret amount" }, -- 126.536 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2072, line = false, unsure = "secret amount" }, -- 126.571 nameplate10 WOUND <secret> <- other: Cleave SPELL_DAMAGE +0.000 s
	{ hit = 2073, line = false, unsure = "secret amount" }, -- 126.571 nameplate3 WOUND <secret> <- other: Cleave SPELL_DAMAGE +0.000 s
	{ hit = 2076, line = false, unsure = "no file event fits" }, -- 126.571 nameplate10 WOUND <secret> <- no file event 
	{ hit = 2077, line = 2078, spell = 11711, unsure = "secret amount" }, -- 126.585 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2079, line = false, unsure = "secret amount" }, -- 126.609 nameplate1 WOUND <secret> <- other: Shoot RANGE_DAMAGE +0.000 s
	{ hit = 2080, line = 2081, spell = 11711, unsure = "secret amount" }, -- 126.636 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2082, line = false, unsure = "secret amount" }, -- 126.711 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.633 s
	{ hit = 2085, line = false, unsure = "secret amount" }, -- 126.939 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2086, line = false, unsure = "secret amount" }, -- 126.939 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2087, line = false, unsure = "secret amount" }, -- 126.939 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2088, line = false, unsure = "secret amount" }, -- 126.939 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2091, line = false, unsure = "secret amount" }, -- 126.939 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2094, line = false, unsure = "secret amount" }, -- 127.034 nameplate2 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2095, line = false, unsure = "on time, of 2 file events" }, -- 127.034 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 2098, line = 2099, spell = 7648, unsure = "secret amount" }, -- 127.072 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2100, line = 2101, spell = 7648, unsure = "secret amount" }, -- 127.088 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2102, line = 2103, spell = 7648, unsure = "secret amount" }, -- 127.132 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2105, line = 2104, spell = 18879, unsure = "secret amount" }, -- 127.153 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2106, line = 2107, spell = 18879, unsure = "secret amount" }, -- 127.153 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 2108, line = false, unsure = "secret amount" }, -- 127.153 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.582 s
	{ hit = 2112, line = false, unsure = "secret amount" }, -- 127.471 nameplate10 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2113, line = false, unsure = "secret amount" }, -- 127.471 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2118, line = 2120, spell = 11711, unsure = "secret amount" }, -- 127.553 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2121, line = false, unsure = "secret amount" }, -- 127.603 nameplate4 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 2122, line = 2123, spell = 11711, unsure = "secret amount" }, -- 127.603 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2125, line = false, unsure = "secret amount" }, -- 127.844 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 2128, line = 2129, spell = 7648, unsure = "secret amount" }, -- 128.022 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2130, line = 2131, spell = 11711, unsure = "secret amount" }, -- 128.188 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2136, line = false, unsure = "secret amount" }, -- 128.544 nameplate2 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2137, line = 2138, spell = 11711, unsure = "secret amount" }, -- 128.544 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2139, line = 2140, spell = 11711, unsure = "secret amount" }, -- 128.579 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2142, line = 2145, spell = 11711, unsure = "secret amount" }, -- 128.641 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2146, line = 2147, spell = 7648, unsure = "secret amount" }, -- 128.679 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2150, line = false, unsure = "secret amount" }, -- 128.979 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 2151, line = false, unsure = "secret amount" }, -- 128.979 nameplate1 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2154, line = false, unsure = "secret amount" }, -- 129.014 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2155, line = false, unsure = "secret amount" }, -- 129.014 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2156, line = false, unsure = "secret amount" }, -- 129.014 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2159, line = false, unsure = "secret amount" }, -- 129.014 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2160, line = false, unsure = "secret amount" }, -- 129.014 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2161, line = false, unsure = "secret amount" }, -- 129.014 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2165, line = false, unsure = "secret amount" }, -- 129.119 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 2166, line = false, unsure = "secret amount" }, -- 129.119 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 2167, line = false, unsure = "secret amount" }, -- 129.119 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 2168, line = false, unsure = "secret amount" }, -- 129.119 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 2169, line = false, unsure = "secret amount" }, -- 129.271 nameplate10 WOUND <secret> <- other: Cleave SPELL_DAMAGE +0.000 s
	{ hit = 2170, line = false, unsure = "secret amount" }, -- 129.271 nameplate2 WOUND <secret> <- other: Cleave SPELL_DAMAGE +0.000 s
	{ hit = 2171, line = false, unsure = "no file event fits" }, -- 129.271 nameplate10 WOUND <secret> <- no file event 
	{ hit = 2172, line = 2173, spell = 11711, unsure = "secret amount" }, -- 129.556 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2174, line = 2175, spell = 11711, unsure = "secret amount" }, -- 129.613 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2183, line = false, unsure = "secret amount" }, -- 130.001 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 2184, line = false, unsure = "secret amount" }, -- 130.001 nameplate4 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 2185, line = false, unsure = "secret amount" }, -- 130.015 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2186, line = false, unsure = "secret amount" }, -- 130.015 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2187, line = false, unsure = "secret amount" }, -- 130.015 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2188, line = false, unsure = "secret amount" }, -- 130.015 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2189, line = false, unsure = "2 file events fit" }, -- 130.015 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2190, line = false, unsure = "secret amount" }, -- 130.015 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2193, line = false, unsure = "secret amount" }, -- 130.027 nameplate2 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2196, line = 2197, spell = 7648, unsure = "secret amount" }, -- 130.036 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2198, line = false, unsure = "secret amount" }, -- 130.036 nameplate6 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 2199, line = 2200, spell = 7648, unsure = "secret amount" }, -- 130.064 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2201, line = 2202, spell = 7648, unsure = "secret amount" }, -- 130.098 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2203, line = 2206, spell = 7648, unsure = "secret amount" }, -- 130.111 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2208, line = 2207, spell = 18879, unsure = "2 file events fit" }, -- 130.171 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2209, line = 2210, spell = 18879, unsure = "secret amount" }, -- 130.171 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 2211, line = 2212, spell = 11711, unsure = "secret amount" }, -- 130.186 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2213, line = false, unsure = "secret amount" }, -- 130.186 nameplate4 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.013 s
	{ hit = 2214, line = false, unsure = "secret amount" }, -- 130.261 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 2217, line = false, unsure = "secret amount" }, -- 130.471 nameplate10 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2218, line = false, unsure = "secret amount" }, -- 130.471 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2225, line = 2226, spell = 11711, unsure = "secret amount" }, -- 130.536 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2227, line = false, unsure = "secret amount" }, -- 130.561 nameplate6 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.001 s
	{ hit = 2228, line = 2229, spell = 11711, unsure = "secret amount" }, -- 130.586 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2230, line = 2233, spell = 11711, unsure = "secret amount" }, -- 130.653 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2240, line = 2241, spell = 1949, unsure = "secret amount" }, -- 130.775 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2243, line = 2242, spell = 1949, unsure = "secret amount" }, -- 130.775 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.001 s
	{ hit = 2245, line = 2244, spell = 1949, unsure = "secret amount" }, -- 130.775 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2247, line = 2246, spell = 1949, unsure = "secret amount" }, -- 130.775 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2251, line = 2250, spell = 1949, unsure = "secret amount" }, -- 130.775 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2253, line = 2252, spell = 1949, unsure = "secret amount" }, -- 130.775 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2255, line = 2254, spell = 1949, unsure = "secret amount" }, -- 130.775 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2256, line = false, unsure = "secret amount" }, -- 130.911 nameplate12 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2257, line = false, unsure = "secret amount" }, -- 130.948 nameplate12 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 2258, line = false, unsure = "secret amount" }, -- 130.957 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.695 s
	{ hit = 2259, line = false, unsure = "secret amount" }, -- 131.014 nameplate12 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2260, line = false, unsure = "secret amount" }, -- 131.014 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2261, line = false, unsure = "secret amount" }, -- 131.014 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2262, line = false, unsure = "secret amount" }, -- 131.014 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2263, line = false, unsure = "secret amount" }, -- 131.014 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2264, line = false, unsure = "secret amount" }, -- 131.014 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2265, line = false, unsure = "secret amount" }, -- 131.014 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2273, line = false, unsure = "no file event fits" }, -- 131.469 nameplate6 WOUND <secret> <- no file event 
	{ hit = 2274, line = 2215, spell = false, unsure = "late by 1.28 s" }, -- 131.544 nameplate12 WOUND <secret> <- pet: swing SWING_DAMAGE +1.282 s
	{ hit = 2275, line = 2276, spell = 11711, unsure = "secret amount" }, -- 131.561 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2277, line = 2278, spell = 11711, unsure = "secret amount" }, -- 131.620 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2279, line = 2280, spell = 7648, unsure = "secret amount" }, -- 131.661 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2281, line = 2282, spell = 1949, unsure = "secret amount" }, -- 131.798 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2284, line = 2283, spell = 1949, unsure = "secret amount" }, -- 131.798 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.001 s
	{ hit = 2288, line = 2287, spell = 1949, unsure = "secret amount" }, -- 131.798 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2290, line = 2289, spell = 1949, unsure = "secret amount" }, -- 131.798 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2292, line = 2291, spell = 1949, unsure = "secret amount" }, -- 131.798 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2294, line = 2293, spell = 1949, unsure = "secret amount" }, -- 131.798 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2296, line = 2295, spell = 1949, unsure = "secret amount" }, -- 131.798 nameplate12 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2298, line = 2297, spell = 1949, unsure = "secret amount" }, -- 131.798 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2299, line = false, unsure = "secret amount" }, -- 131.828 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 2300, line = false, unsure = "secret amount" }, -- 131.972 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 2301, line = false, unsure = "secret amount" }, -- 131.972 nameplate1 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2304, line = false, unsure = "secret amount" }, -- 132.010 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2305, line = false, unsure = "secret amount" }, -- 132.010 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2306, line = false, unsure = "secret amount" }, -- 132.010 nameplate12 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2307, line = false, unsure = "secret amount" }, -- 132.010 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2308, line = false, unsure = "secret amount" }, -- 132.010 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2309, line = false, unsure = "secret amount" }, -- 132.010 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2312, line = false, unsure = "secret amount" }, -- 132.010 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2313, line = 2314, spell = 11711, unsure = "secret amount" }, -- 132.183 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2319, line = false, unsure = "on time, of 2 file events" }, -- 132.281 nameplate12 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 2323, line = false, unsure = "secret amount" }, -- 132.361 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.497 s
	{ hit = 2324, line = 2325, spell = 11711, unsure = "secret amount" }, -- 132.545 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2326, line = 2327, spell = 11711, unsure = "secret amount" }, -- 132.580 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2328, line = 2318, spell = false, unsure = "on time, of 2 file events" }, -- 132.604 nameplate12 WOUND <secret> <- pet: swing SWING_DAMAGE +0.332 s
	{ hit = 2329, line = 2332, spell = 11711, unsure = "secret amount" }, -- 132.644 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2333, line = 2334, spell = 1949, unsure = "secret amount" }, -- 132.786 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2336, line = 2335, spell = 1949, unsure = "secret amount" }, -- 132.786 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2338, line = 2337, spell = 1949, unsure = "secret amount" }, -- 132.786 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2340, line = 2339, spell = 1949, unsure = "secret amount" }, -- 132.786 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2342, line = 2341, spell = 1949, unsure = "secret amount" }, -- 132.786 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2346, line = 2345, spell = 1949, unsure = "secret amount" }, -- 132.786 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2348, line = 2347, spell = 1949, unsure = "secret amount" }, -- 132.786 nameplate12 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 2350, line = 2349, spell = 1949, unsure = "secret amount" }, -- 132.786 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 2352, line = false, unsure = "secret amount" }, -- 132.915 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2353, line = false, unsure = "secret amount" }, -- 132.915 nameplate12 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2354, line = false, unsure = "secret amount" }, -- 132.915 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2357, line = false, unsure = "secret amount" }, -- 132.915 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2358, line = false, unsure = "secret amount" }, -- 132.915 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2359, line = false, unsure = "secret amount" }, -- 132.915 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2366, line = false, unsure = "secret amount" }, -- 133.028 nameplate12 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2367, line = false, unsure = "secret amount" }, -- 133.028 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2368, line = false, unsure = "secret amount" }, -- 133.028 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2369, line = false, unsure = "secret amount" }, -- 133.028 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2370, line = false, unsure = "secret amount" }, -- 133.028 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2373, line = false, unsure = "secret amount" }, -- 133.028 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2374, line = false, unsure = "secret amount" }, -- 133.028 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2375, line = 2376, spell = 7648, unsure = "secret amount" }, -- 133.036 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2380, line = 2381, spell = 7648, unsure = "secret amount" }, -- 133.063 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2382, line = false, unsure = "secret amount" }, -- 133.063 nameplate12 WOUND <secret> <- other: swing SWING_DAMAGE +0.585 s
	{ hit = 2383, line = 2384, spell = 7648, unsure = "secret amount" }, -- 133.094 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2385, line = 2388, spell = 7648, unsure = "secret amount" }, -- 133.128 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2390, line = 2389, spell = 18879, unsure = "secret amount" }, -- 133.161 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2391, line = 2392, spell = 18879, unsure = "secret amount" }, -- 133.161 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 2396, line = false, unsure = "secret amount" }, -- 133.369 nameplate10 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 2397, line = false, unsure = "secret amount" }, -- 133.403 nameplate6 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE +0.000 s
	{ hit = 2398, line = false, unsure = "secret amount" }, -- 133.469 nameplate10 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2399, line = false, unsure = "secret amount" }, -- 133.469 nameplate6 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2403, line = 2404, spell = 11711, unsure = "secret amount" }, -- 133.553 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2408, line = 2409, spell = 1949, unsure = "secret amount" }, -- 133.780 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2411, line = 2410, spell = 1949, unsure = "secret amount" }, -- 133.780 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.001 s
	{ hit = 2413, line = 2412, spell = 1949, unsure = "secret amount" }, -- 133.780 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2415, line = 2414, spell = 1949, unsure = "secret amount" }, -- 133.780 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2417, line = 2416, spell = 1949, unsure = "secret amount" }, -- 133.780 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2419, line = 2418, spell = 1949, unsure = "secret amount" }, -- 133.780 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2423, line = 2422, spell = 1949, unsure = "secret amount" }, -- 133.780 nameplate12 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2427, line = false, unsure = "secret amount" }, -- 134.008 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2428, line = false, unsure = "secret amount" }, -- 134.008 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2429, line = false, unsure = "secret amount" }, -- 134.008 nameplate12 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2430, line = false, unsure = "secret amount" }, -- 134.008 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2433, line = false, unsure = "secret amount" }, -- 134.008 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2434, line = false, unsure = "secret amount" }, -- 134.008 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2435, line = 2436, spell = 11711, unsure = "secret amount" }, -- 134.176 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2438, line = 2437, spell = false, unsure = "secret amount" }, -- 134.528 nameplate12 WOUND <secret> <- pet: swing SWING_DAMAGE +0.250 s
	{ hit = 2439, line = 2440, spell = 11711, unsure = "secret amount" }, -- 134.578 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2441, line = 2444, spell = 11711, unsure = "secret amount" }, -- 134.653 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2445, line = false, unsure = "secret amount" }, -- 134.744 nameplate12 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.001 s
	{ hit = 2446, line = 2447, spell = 1949, unsure = "secret amount" }, -- 134.778 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2449, line = 2448, spell = 1949, unsure = "secret amount" }, -- 134.778 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.001 s
	{ hit = 2451, line = 2450, spell = 1949, unsure = "secret amount" }, -- 134.778 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2453, line = 2452, spell = 1949, unsure = "secret amount" }, -- 134.778 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2455, line = 2454, spell = 1949, unsure = "secret amount" }, -- 134.778 nameplate12 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2457, line = 2456, spell = 1949, unsure = "secret amount" }, -- 134.778 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2461, line = 2460, spell = 1949, unsure = "secret amount" }, -- 134.778 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2465, line = false, unsure = "secret amount" }, -- 134.919 nameplate12 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2466, line = false, unsure = "secret amount" }, -- 134.919 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2467, line = false, unsure = "secret amount" }, -- 134.919 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2468, line = false, unsure = "secret amount" }, -- 134.919 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2471, line = false, unsure = "secret amount" }, -- 134.919 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2472, line = false, unsure = "secret amount" }, -- 134.969 nameplate1 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2475, line = false, unsure = "secret amount" }, -- 135.017 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2476, line = false, unsure = "secret amount" }, -- 135.017 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2477, line = false, unsure = "secret amount" }, -- 135.017 nameplate12 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2478, line = false, unsure = "secret amount" }, -- 135.017 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2481, line = false, unsure = "secret amount" }, -- 135.017 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2482, line = false, unsure = "secret amount" }, -- 135.017 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2483, line = false, unsure = "secret amount" }, -- 135.186 nameplate12 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.001 s
	{ hit = 2484, line = false, unsure = "secret amount" }, -- 135.186 nameplate3 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.001 s
	{ hit = 2485, line = false, unsure = "no file event fits" }, -- 135.186 nameplate12 WOUND <secret> <- no file event 
	{ hit = 2489, line = false, unsure = "secret amount" }, -- 135.328 nameplate12 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 2490, line = false, unsure = "secret amount" }, -- 135.361 nameplate12 MISS <secret> <- other: Windfury Totem SPELL_MISSED -0.001 s
	{ hit = 2494, line = 2495, spell = 11711, unsure = "secret amount" }, -- 135.544 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2499, line = 2500, spell = 1949, unsure = "secret amount" }, -- 135.786 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2501, line = false, unsure = "secret amount" }, -- 135.786 nameplate10 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 2503, line = 2502, spell = 1949, unsure = "secret amount" }, -- 135.786 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2505, line = 2504, spell = 1949, unsure = "secret amount" }, -- 135.786 nameplate12 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2507, line = 2506, spell = 1949, unsure = "secret amount" }, -- 135.786 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2511, line = 2510, spell = 1949, unsure = "secret amount" }, -- 135.786 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2513, line = 2512, spell = 1949, unsure = "secret amount" }, -- 135.786 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2515, line = 2514, spell = 1949, unsure = "secret amount" }, -- 135.786 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2518, line = false, unsure = "secret amount" }, -- 136.003 nameplate12 WOUND <secret> <- other: swing SWING_DAMAGE +0.616 s
	{ hit = 2519, line = false, unsure = "secret amount" }, -- 136.019 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2520, line = false, unsure = "secret amount" }, -- 136.019 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2521, line = false, unsure = "secret amount" }, -- 136.019 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2522, line = false, unsure = "secret amount" }, -- 136.019 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2525, line = false, unsure = "secret amount" }, -- 136.019 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2526, line = false, unsure = "secret amount" }, -- 136.019 nameplate12 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2527, line = 2528, spell = 7648, unsure = "secret amount" }, -- 136.036 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2529, line = 2530, spell = 7648, unsure = "secret amount" }, -- 136.061 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2531, line = 2534, spell = 7648, unsure = "secret amount" }, -- 136.119 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2536, line = 2535, spell = 18879, unsure = "2 file events fit" }, -- 136.169 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2537, line = 2538, spell = 18879, unsure = "secret amount" }, -- 136.169 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 2541, line = 2542, spell = 11711, unsure = "secret amount" }, -- 136.186 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2546, line = false, unsure = "secret amount" }, -- 136.469 nameplate10 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2547, line = false, unsure = "on time, of 2 file events" }, -- 136.503 nameplate12 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE +0.000 s
	{ hit = 2548, line = false, unsure = "on time, of 2 file events" }, -- 136.503 nameplate12 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE +0.000 s
	{ hit = 2549, line = false, unsure = "2 file events fit" }, -- 136.528 nameplate12 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE +0.000 s
	{ hit = 2550, line = false, unsure = "secret amount" }, -- 136.553 nameplate12 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE +0.000 s
	{ hit = 2551, line = false, unsure = "secret amount" }, -- 136.553 nameplate12 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE +0.000 s
	{ hit = 2552, line = 2545, spell = false, unsure = "secret amount" }, -- 136.553 nameplate12 WOUND <secret> <- pet: swing SWING_DAMAGE +0.267 s
	{ hit = 2553, line = 2554, spell = 11711, unsure = "secret amount" }, -- 136.586 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2555, line = 2558, spell = 11711, unsure = "secret amount" }, -- 136.644 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2559, line = 2560, spell = 1949, unsure = "secret amount" }, -- 136.782 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2562, line = 2561, spell = 1949, unsure = "secret amount" }, -- 136.782 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2564, line = 2563, spell = 1949, unsure = "secret amount" }, -- 136.782 nameplate12 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2566, line = 2565, spell = 1949, unsure = "secret amount" }, -- 136.782 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2568, line = 2567, spell = 1949, unsure = "secret amount" }, -- 136.782 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2572, line = 2571, spell = 1949, unsure = "secret amount" }, -- 136.782 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2574, line = 2573, spell = 1949, unsure = "secret amount" }, -- 136.782 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2575, line = false, unsure = "on time, of 2 file events" }, -- 136.958 nameplate12 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 2576, line = false, unsure = "secret amount" }, -- 137.378 nameplate12 WOUND <secret> <- other: swing SWING_DAMAGE +0.595 s
	{ hit = 2578, line = 2579, spell = 11711, unsure = "secret amount" }, -- 137.546 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2580, line = false, unsure = "secret amount" }, -- 137.728 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.527 s
	{ hit = 2581, line = 2582, spell = 1949, unsure = "secret amount" }, -- 137.782 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2584, line = 2583, spell = 1949, unsure = "secret amount" }, -- 137.782 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.001 s
	{ hit = 2586, line = 2585, spell = 1949, unsure = "secret amount" }, -- 137.782 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2588, line = 2587, spell = 1949, unsure = "secret amount" }, -- 137.782 nameplate12 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2590, line = 2589, spell = 1949, unsure = "secret amount" }, -- 137.782 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2593, line = false, unsure = "secret amount" }, -- 137.903 nameplate12 WOUND <secret> <- other: Cleave SPELL_DAMAGE +0.000 s
	{ hit = 2594, line = false, unsure = "secret amount" }, -- 137.903 nameplate3 WOUND <secret> <- other: Cleave SPELL_DAMAGE +0.000 s
	{ hit = 2595, line = false, unsure = "no file event fits" }, -- 137.903 nameplate12 WOUND <secret> <- no file event 
	{ hit = 2596, line = false, unsure = "secret amount" }, -- 137.969 nameplate1 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2600, line = false, unsure = "secret amount" }, -- 138.453 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 2601, line = false, unsure = "on time, of 2 file events" }, -- 138.453 nameplate12 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 2602, line = false, unsure = "secret amount" }, -- 138.453 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 2603, line = false, unsure = "secret amount" }, -- 138.453 nameplate10 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE +0.000 s
	{ hit = 2604, line = 2605, spell = 11711, unsure = "secret amount" }, -- 138.582 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2608, line = 2611, spell = 11711, unsure = "secret amount" }, -- 138.641 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2612, line = 2613, spell = 1949, unsure = "secret amount" }, -- 138.786 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2615, line = 2614, spell = 1949, unsure = "secret amount" }, -- 138.786 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2617, line = 2616, spell = 1949, unsure = "secret amount" }, -- 138.786 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 2619, line = 2618, spell = 1949, unsure = "secret amount" }, -- 138.786 nameplate12 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 2621, line = 2620, spell = 1949, unsure = "secret amount" }, -- 138.786 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 2622, line = 2599, spell = false, unsure = "secret amount" }, -- 138.919 nameplate12 WOUND <secret> <- pet: swing SWING_DAMAGE +0.626 s
	{ hit = 2623, line = 2624, spell = 7648, unsure = "secret amount" }, -- 139.036 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2625, line = 2626, spell = 7648, unsure = "secret amount" }, -- 139.053 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2628, line = 2627, spell = 18879, unsure = "secret amount" }, -- 139.153 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2629, line = 2630, spell = 18879, unsure = "secret amount" }, -- 139.153 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 2633, line = 2634, spell = 11711, unsure = "secret amount" }, -- 139.553 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2636, line = false, unsure = "secret amount" }, -- 139.753 nameplate12 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE +0.000 s
	{ hit = 2637, line = false, unsure = "secret amount" }, -- 139.794 nameplate12 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 2640, line = false, unsure = "secret amount" }, -- 139.994 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.391 s
	{ hit = 2641, line = false, unsure = "secret amount" }, -- 140.178 nameplate4 WOUND <secret> <- other: Chain Lightning SPELL_DAMAGE +0.000 s
	{ hit = 2642, line = false, unsure = "secret amount" }, -- 140.178 nameplate3 WOUND <secret> <- other: Chain Lightning SPELL_DAMAGE +0.000 s
	{ hit = 2643, line = false, unsure = "secret amount" }, -- 140.178 nameplate12 WOUND <secret> <- other: Chain Lightning SPELL_DAMAGE -0.001 s
	{ hit = 2647, line = 2648, spell = 11711, unsure = "secret amount" }, -- 140.594 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2650, line = 2651, spell = 11711, unsure = "secret amount" }, -- 140.636 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2658, line = false, unsure = "secret amount" }, -- 141.503 pet HEAL <secret> <- other: Prayer of Healing SPELL_HEAL -0.001 s
	{ hit = 2661, line = false, unsure = "secret amount" }, -- 141.503 player HEAL <secret> <- other: Prayer of Healing SPELL_HEAL -0.001 s
	{ hit = 2667, line = 2668, spell = 11711, unsure = "secret amount" }, -- 141.545 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2669, line = false, unsure = "secret amount" }, -- 141.586 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.990 s
	{ hit = 2671, line = false, unsure = "secret amount" }, -- 141.969 nameplate4 PARRY <secret> <- other: Seal of Command SPELL_MISSED -0.001 s
	{ hit = 2672, line = false, unsure = "on time, of 2 file events" }, -- 142.019 nameplate4 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 2673, line = 2674, spell = 7648, unsure = "secret amount" }, -- 142.036 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2675, line = 2676, spell = 7648, unsure = "secret amount" }, -- 142.053 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2678, line = 2677, spell = 18879, unsure = "secret amount" }, -- 142.161 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2679, line = 2680, spell = 18879, unsure = "secret amount" }, -- 142.161 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 2681, line = false, unsure = "secret amount" }, -- 142.361 nameplate2 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 2687, line = 2688, spell = 11711, unsure = "secret amount" }, -- 142.584 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2692, line = false, unsure = "on time, of 2 file events" }, -- 142.928 nameplate3 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE +0.000 s
	{ hit = 2693, line = 2696, spell = 11711, unsure = "secret amount" }, -- 143.344 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2697, line = false, unsure = "secret amount" }, -- 143.394 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.490 s
	{ hit = 2698, line = false, unsure = "on time, of 2 file events" }, -- 143.436 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +1.491 s
	{ hit = 2702, line = 2703, spell = 11711, unsure = "secret amount" }, -- 143.544 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2704, line = false, unsure = "secret amount" }, -- 143.661 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.358 s
	{ hit = 2705, line = false, unsure = "2 file events fit" }, -- 143.769 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 2706, line = false, unsure = "secret amount" }, -- 143.803 nameplate3 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE +0.000 s
	{ hit = 2707, line = false, unsure = "secret amount" }, -- 143.861 nameplate4 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 2708, line = false, unsure = "secret amount" }, -- 143.894 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2709, line = false, unsure = "secret amount" }, -- 143.894 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2710, line = false, unsure = "secret amount" }, -- 143.894 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2715, line = 2716, spell = 11711, unsure = "secret amount" }, -- 144.586 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2717, line = false, unsure = "secret amount" }, -- 144.911 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2720, line = false, unsure = "secret amount" }, -- 144.911 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2721, line = false, unsure = "secret amount" }, -- 144.911 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2723, line = 2724, spell = 7648, unsure = "secret amount" }, -- 145.036 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2728, line = 2727, spell = 18879, unsure = "secret amount" }, -- 145.162 nameplate10 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2729, line = 2730, spell = 18879, unsure = "secret amount" }, -- 145.162 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 2731, line = false, unsure = "secret amount" }, -- 145.286 nameplate3 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.001 s
	{ hit = 2732, line = 2733, spell = 11711, unsure = "secret amount" }, -- 145.353 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2734, line = false, unsure = "secret amount" }, -- 145.353 nameplate4 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.001 s
	{ hit = 2735, line = false, unsure = "secret amount" }, -- 145.384 nameplate4 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 2740, line = false, unsure = "secret amount" }, -- 145.603 nameplate2 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.025 s
	{ hit = 2743, line = false, unsure = "secret amount" }, -- 145.903 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2744, line = false, unsure = "secret amount" }, -- 145.903 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2745, line = false, unsure = "secret amount" }, -- 145.903 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2756, line = 2755, spell = 7641, unsure = "secret amount" }, -- 146.328 nameplate5 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE -0.001 s
	{ hit = 2761, line = false, unsure = "secret amount" }, -- 146.520 nameplate2 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE +0.000 s
	{ hit = 2763, line = 2764, spell = 11711, unsure = "secret amount" }, -- 146.586 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2765, line = false, unsure = "secret amount" }, -- 146.611 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.608 s
	{ hit = 2768, line = false, unsure = "late by 1.49 s" }, -- 146.844 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +1.490 s
	{ hit = 2770, line = false, unsure = "secret amount" }, -- 146.903 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE +0.000 s
	{ hit = 2773, line = 2776, spell = 11711, unsure = "secret amount" }, -- 147.353 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2777, line = false, unsure = "secret amount" }, -- 147.594 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.001 s
	{ hit = 2780, line = false, unsure = "secret amount" }, -- 147.790 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.483 s
	{ hit = 2783, line = false, unsure = "secret amount" }, -- 147.894 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2790, line = false, unsure = "on time, of 2 file events" }, -- 148.796 nameplate2 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE +0.000 s
	{ hit = 2793, line = false, unsure = "secret amount" }, -- 148.796 nameplate2 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE +0.000 s
	{ hit = 2796, line = false, unsure = "secret amount" }, -- 148.894 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 2799, line = false, unsure = "on time, of 2 file events" }, -- 149.072 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.359 s
	{ hit = 2805, line = 2808, spell = 11711, unsure = "secret amount" }, -- 149.344 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2809, line = false, unsure = "on time, of 2 file events" }, -- 149.867 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 2818, line = false, unsure = "secret amount" }, -- 150.919 player HEAL <secret> <- other: Heal SPELL_HEAL -0.001 s
	{ hit = 2828, line = false, unsure = "secret amount" }, -- 153.119 nameplate2 WOUND <secret> <- other: Victory Rush SPELL_DAMAGE -0.001 s
	{ hit = 2832, line = 2831, spell = 7651, unsure = "secret amount" }, -- 153.178 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2835, line = 2836, spell = 7651, unsure = "secret amount" }, -- 153.178 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 2840, line = false, unsure = "on time, of 2 file events" }, -- 153.844 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.599 s
	{ hit = 2862, line = false, unsure = "2 file events fit" }, -- 167.023 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 2863, line = false, unsure = "on time, of 2 file events" }, -- 167.121 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 2866, line = false, unsure = "2 file events fit" }, -- 167.453 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.787 s
	{ hit = 2869, line = false, unsure = "on time, of 2 file events" }, -- 168.103 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE +0.000 s
	{ hit = 2871, line = false, unsure = "secret amount" }, -- 169.428 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 2874, line = false, unsure = "secret amount" }, -- 169.455 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 2875, line = false, unsure = "secret amount" }, -- 169.596 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.001 s
	{ hit = 2876, line = false, unsure = "secret amount" }, -- 169.629 nameplate3 MISS <secret> <- other: Windfury Totem SPELL_MISSED -0.001 s
	{ hit = 2882, line = false, unsure = "secret amount" }, -- 170.361 nameplate3 DODGE <secret> <- other: swing SWING_MISSED +0.991 s
	{ hit = 2883, line = false, unsure = "secret amount" }, -- 170.484 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 2891, line = false, unsure = "secret amount" }, -- 171.337 nameplate3 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.001 s
	{ hit = 2892, line = false, unsure = "secret amount" }, -- 171.414 nameplate3 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 2893, line = 2896, spell = 11711, unsure = "secret amount" }, -- 171.698 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2900, line = false, unsure = "secret amount" }, -- 172.460 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 2903, line = false, unsure = "late by 1.50 s" }, -- 172.880 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.496 s
	{ hit = 2905, line = false, unsure = "secret amount" }, -- 172.961 nameplate3 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.001 s
	{ hit = 2908, line = false, unsure = "secret amount" }, -- 173.053 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.989 s
	{ hit = 2911, line = false, unsure = "secret amount" }, -- 173.179 player HEAL <secret> <- other: Heal SPELL_HEAL -0.001 s
	{ hit = 2912, line = 2913, spell = 11711, unsure = "secret amount" }, -- 173.703 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2914, line = false, unsure = "secret amount" }, -- 173.861 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 2921, line = 2922, spell = 7648, unsure = "secret amount" }, -- 174.194 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2923, line = false, unsure = "secret amount" }, -- 174.238 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 2930, line = false, unsure = "secret amount" }, -- 174.823 nameplate3 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE +0.000 s
	{ hit = 2935, line = false, unsure = "secret amount" }, -- 175.232 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.462 s
	{ hit = 2938, line = false, unsure = "secret amount" }, -- 175.386 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.599 s
	{ hit = 2941, line = false, unsure = "secret amount" }, -- 175.453 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 2942, line = false, unsure = "secret amount" }, -- 175.461 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 2943, line = false, unsure = "secret amount" }, -- 175.461 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 2949, line = 2948, spell = 18879, unsure = "2 file events fit" }, -- 175.671 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2950, line = 2951, spell = 18879, unsure = "secret amount" }, -- 175.671 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 2952, line = 2953, spell = 11711, unsure = "secret amount" }, -- 175.696 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2954, line = 2957, spell = 11711, unsure = "secret amount" }, -- 176.146 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2960, line = false, unsure = "secret amount" }, -- 176.462 player HEAL <secret> <- other: Prayer of Healing SPELL_HEAL -0.002 s
	{ hit = 2966, line = false, unsure = "secret amount" }, -- 176.462 pet HEAL <secret> <- other: Prayer of Healing SPELL_HEAL -0.002 s
	{ hit = 2974, line = 2975, spell = 7648, unsure = "secret amount" }, -- 177.186 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2976, line = false, unsure = "secret amount" }, -- 177.238 nameplate3 PARRY <secret> <- other: swing SWING_MISSED +0.466 s
	{ hit = 2979, line = 2980, spell = 11711, unsure = "secret amount" }, -- 177.699 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2985, line = 2988, spell = 11711, unsure = "secret amount" }, -- 178.153 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2989, line = false, unsure = "secret amount" }, -- 178.455 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 2992, line = 2995, spell = 7648, unsure = "secret amount" }, -- 178.655 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2997, line = 2996, spell = 18879, unsure = "secret amount" }, -- 178.663 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2998, line = 2999, spell = 18879, unsure = "secret amount" }, -- 178.663 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 3000, line = false, unsure = "on time, of 2 file events" }, -- 178.719 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 3003, line = false, unsure = "secret amount" }, -- 178.853 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.665 s
	{ hit = 3004, line = 2984, spell = false, unsure = "secret amount" }, -- 179.038 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.993 s
	{ hit = 3007, line = false, unsure = "secret amount" }, -- 179.046 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 3008, line = false, unsure = "secret amount" }, -- 179.256 nameplate3 MISS <secret> <- other: swing SWING_MISSED +0.469 s
	{ hit = 3015, line = 3018, spell = 11711, unsure = "secret amount" }, -- 179.703 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3021, line = false, unsure = "secret amount" }, -- 180.011 nameplate2 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3028, line = 3027, spell = 18879, unsure = "2 file events fit" }, -- 180.137 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3029, line = 3030, spell = 18879, unsure = "secret amount" }, -- 180.137 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 3031, line = 3032, spell = 11711, unsure = "secret amount" }, -- 180.154 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3033, line = 3036, spell = 7648, unsure = "secret amount" }, -- 180.178 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3037, line = 3024, spell = false, unsure = "secret amount" }, -- 180.288 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.258 s
	{ hit = 3038, line = false, unsure = "secret amount" }, -- 180.596 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 3039, line = false, unsure = "secret amount" }, -- 180.655 nameplate2 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE +0.000 s
	{ hit = 3045, line = false, unsure = "secret amount" }, -- 181.253 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.466 s
	{ hit = 3048, line = false, unsure = "secret amount" }, -- 181.454 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 3049, line = false, unsure = "on time, of 2 file events" }, -- 181.454 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 3052, line = false, unsure = "secret amount" }, -- 181.494 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3056, line = false, unsure = "secret amount" }, -- 181.621 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 3059, line = 3060, spell = 7648, unsure = "secret amount" }, -- 181.644 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3061, line = false, unsure = "2 file events fit" }, -- 181.644 nameplate2 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.002 s
	{ hit = 3067, line = 3066, spell = 18879, unsure = "on time, of 2 file events" }, -- 181.663 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3070, line = 3071, spell = 18879, unsure = "secret amount" }, -- 181.663 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 3072, line = 3075, spell = 11711, unsure = "secret amount" }, -- 181.705 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3079, line = false, unsure = "secret amount" }, -- 181.846 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 3080, line = false, unsure = "on time, of 2 file events" }, -- 181.846 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 3084, line = false, unsure = "late by 1.50 s" }, -- 182.121 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.499 s
	{ hit = 3087, line = 3088, spell = 11711, unsure = "secret amount" }, -- 182.146 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3089, line = 3083, spell = false, unsure = "secret amount" }, -- 182.294 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.257 s
	{ hit = 3091, line = 3090, spell = 7651, unsure = "secret amount" }, -- 182.569 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3094, line = 3095, spell = 7651, unsure = "secret amount" }, -- 182.569 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 3098, line = false, unsure = "secret amount" }, -- 183.013 nameplate2 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3101, line = false, unsure = "secret amount" }, -- 183.114 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 3105, line = 3104, spell = 18879, unsure = "secret amount" }, -- 183.121 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3106, line = 3107, spell = 18879, unsure = "secret amount" }, -- 183.121 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 3108, line = 3111, spell = 7648, unsure = "secret amount" }, -- 183.181 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3112, line = false, unsure = "secret amount" }, -- 183.353 nameplate2 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 3116, line = 3115, spell = 7651, unsure = "secret amount" }, -- 183.578 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3119, line = 3120, spell = 7651, unsure = "secret amount" }, -- 183.578 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 3121, line = 3124, spell = 11711, unsure = "secret amount" }, -- 183.699 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3125, line = false, unsure = "late by 1.02 s" }, -- 183.816 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.018 s
	{ hit = 3129, line = false, unsure = "secret amount" }, -- 184.061 nameplate2 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.001 s
	{ hit = 3132, line = false, unsure = "secret amount" }, -- 184.061 nameplate2 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.001 s
	{ hit = 3135, line = 3136, spell = 11711, unsure = "secret amount" }, -- 184.169 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3137, line = 3128, spell = false, unsure = "secret amount" }, -- 184.289 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.260 s
	{ hit = 3144, line = false, unsure = "secret amount" }, -- 184.494 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3146, line = 3145, spell = 7651, unsure = "on time, of 2 file events" }, -- 184.574 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3149, line = 3150, spell = 7651, unsure = "on time, of 2 file events" }, -- 184.574 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 3151, line = 3152, spell = 7648, unsure = "secret amount" }, -- 184.636 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3154, line = 3153, spell = 18879, unsure = "secret amount" }, -- 184.658 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3157, line = 3158, spell = 18879, unsure = "secret amount" }, -- 184.658 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 3159, line = false, unsure = "secret amount" }, -- 184.852 nameplate2 MISS <secret> <- other: Shield Slam SPELL_MISSED -0.001 s
	{ hit = 3162, line = false, unsure = "late by 1.50 s" }, -- 185.528 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.500 s
	{ hit = 3167, line = 3166, spell = 7651, unsure = "secret amount" }, -- 185.563 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3171, line = 3172, spell = 7651, unsure = "secret amount" }, -- 185.563 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 3173, line = 3177, spell = 11711, unsure = "secret amount" }, -- 185.700 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3178, line = false, unsure = "secret amount" }, -- 185.929 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 3182, line = false, unsure = "secret amount" }, -- 186.007 nameplate2 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3187, line = false, unsure = "secret amount" }, -- 186.087 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.595 s
	{ hit = 3192, line = 3191, spell = 18879, unsure = "2 file events fit" }, -- 186.128 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3193, line = 3194, spell = 18879, unsure = "secret amount" }, -- 186.128 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 3195, line = 3196, spell = 11711, unsure = "secret amount" }, -- 186.153 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3197, line = 3201, spell = 7648, unsure = "secret amount" }, -- 186.180 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3202, line = 3186, spell = false, unsure = "secret amount" }, -- 186.287 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.254 s
	{ hit = 3203, line = false, unsure = "secret amount" }, -- 186.361 nameplate2 WOUND <secret> <- other: Shield Bash SPELL_DAMAGE -0.001 s
	{ hit = 3208, line = 3207, spell = 7651, unsure = "secret amount" }, -- 186.563 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3212, line = 3213, spell = 7651, unsure = "secret amount" }, -- 186.563 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 3217, line = false, unsure = "secret amount" }, -- 186.986 nameplate2 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3223, line = false, unsure = "secret amount" }, -- 187.331 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE +0.000 s
	{ hit = 3224, line = false, unsure = "secret amount" }, -- 187.436 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 3228, line = false, unsure = "secret amount" }, -- 187.436 nameplate2 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.001 s
	{ hit = 3232, line = false, unsure = "secret amount" }, -- 187.469 nameplate2 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 3236, line = false, unsure = "secret amount" }, -- 187.497 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3237, line = 3238, spell = 7648, unsure = "secret amount" }, -- 187.648 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3240, line = 3239, spell = 18879, unsure = "on time, of 2 file events" }, -- 187.665 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3244, line = 3245, spell = 18879, unsure = "secret amount" }, -- 187.665 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 3246, line = 3249, spell = 11711, unsure = "secret amount" }, -- 187.710 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3254, line = false, unsure = "secret amount" }, -- 188.103 nameplate3 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.001 s
	{ hit = 3255, line = 3256, spell = 11711, unsure = "secret amount" }, -- 188.154 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3260, line = false, unsure = "on time, of 3 file events" }, -- 188.355 nameplate2 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.001 s
	{ hit = 3266, line = 3253, spell = false, unsure = "secret amount" }, -- 188.669 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.630 s
	{ hit = 3267, line = false, unsure = "secret amount" }, -- 188.798 nameplate2 MISS <secret> <- other: Windfury Weapon SPELL_MISSED -0.003 s
	{ hit = 3271, line = 3270, spell = 18879, unsure = "secret amount" }, -- 189.119 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3274, line = 3275, spell = 18879, unsure = "secret amount" }, -- 189.119 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 3279, line = 3282, spell = 11711, unsure = "secret amount" }, -- 190.146 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3283, line = 3278, spell = false, unsure = "secret amount" }, -- 190.378 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.316 s
	{ hit = 3286, line = false, unsure = "secret amount" }, -- 190.499 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3289, line = 3292, spell = 7648, unsure = "secret amount" }, -- 190.638 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3293, line = false, unsure = "secret amount" }, -- 191.281 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.360 s
	{ hit = 3302, line = false, unsure = "secret amount" }, -- 191.511 nameplate3 MISS <secret> <- other: swing SWING_MISSED +0.672 s
	{ hit = 3305, line = false, unsure = "secret amount" }, -- 191.521 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 3308, line = false, unsure = "secret amount" }, -- 191.582 nameplate3 WOUND <secret> <- other: Devouring Plague SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3314, line = false, unsure = "on time, of 2 file events" }, -- 192.054 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 3318, line = 3317, spell = 18879, unsure = "2 file events fit" }, -- 192.121 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3321, line = 3322, spell = 18879, unsure = "secret amount" }, -- 192.121 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 3323, line = 3326, spell = 11711, unsure = "secret amount" }, -- 192.146 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3328, line = 3327, spell = 7651, unsure = "secret amount" }, -- 192.413 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3331, line = 3332, spell = 7651, unsure = "secret amount" }, -- 192.413 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 3333, line = 3313, spell = false, unsure = "secret amount" }, -- 193.044 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.997 s
	{ hit = 3336, line = false, unsure = "late by 1.33 s" }, -- 193.380 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.325 s
	{ hit = 3340, line = 3339, spell = 7651, unsure = "secret amount" }, -- 193.421 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3343, line = 3344, spell = 7651, unsure = "secret amount" }, -- 193.421 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 3345, line = false, unsure = "secret amount" }, -- 193.496 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3348, line = false, unsure = "secret amount" }, -- 193.562 nameplate3 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.002 s
	{ hit = 3371, line = false, unsure = "secret amount" }, -- 197.701 player HEAL <secret> <- other: Heal SPELL_HEAL -0.001 s
	{ hit = 3391, line = false, unsure = "secret amount" }, -- 222.214 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.369 s
	{ hit = 3405, line = false, unsure = "secret amount" }, -- 224.019 nameplate7 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.001 s
	{ hit = 3415, line = 3418, spell = 11711, unsure = "secret amount" }, -- 225.348 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3419, line = false, unsure = "secret amount" }, -- 225.521 nameplate8 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.002 s
	{ hit = 3421, line = 3408, spell = false, unsure = "secret amount" }, -- 225.696 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.992 s
	{ hit = 3431, line = false, unsure = "no file event fits" }, -- 226.499 nameplate7 WOUND <secret> <- no file event 
	{ hit = 3435, line = 3433, spell = false, unsure = "secret amount" }, -- 226.963 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.256 s
	{ hit = 3440, line = false, unsure = "secret amount" }, -- 227.313 nameplate7 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 3441, line = 3442, spell = 11711, unsure = "secret amount" }, -- 227.353 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3443, line = false, unsure = "secret amount" }, -- 227.504 nameplate7 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 3444, line = false, unsure = "secret amount" }, -- 227.722 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3447, line = 3448, spell = 7648, unsure = "secret amount" }, -- 227.840 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3449, line = false, unsure = "2 file events fit" }, -- 227.840 nameplate7 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.308 s
	{ hit = 3451, line = false, unsure = "secret amount" }, -- 227.958 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.660 s
	{ hit = 3454, line = false, unsure = "secret amount" }, -- 228.035 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3455, line = false, unsure = "secret amount" }, -- 228.035 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3458, line = false, unsure = "secret amount" }, -- 228.035 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3459, line = false, unsure = "2 file events fit" }, -- 228.205 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.090 s
	{ hit = 3460, line = false, unsure = "secret amount" }, -- 228.294 nameplate7 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.762 s
	{ hit = 3462, line = 3461, spell = false, unsure = "secret amount" }, -- 228.962 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.250 s
	{ hit = 3465, line = false, unsure = "secret amount" }, -- 228.972 nameplate8 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.001 s
	{ hit = 3468, line = false, unsure = "secret amount" }, -- 229.023 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3471, line = false, unsure = "secret amount" }, -- 229.023 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3472, line = false, unsure = "secret amount" }, -- 229.023 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3478, line = 3477, spell = 18879, unsure = "2 file events fit" }, -- 229.309 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3479, line = 3480, spell = 18879, unsure = "secret amount" }, -- 229.309 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 3481, line = 3482, spell = 11711, unsure = "secret amount" }, -- 229.342 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3483, line = false, unsure = "on time, of 3 file events" }, -- 229.422 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.337 s
	{ hit = 3484, line = false, unsure = "secret amount" }, -- 229.773 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.592 s
	{ hit = 3487, line = 3490, spell = 11711, unsure = "secret amount" }, -- 229.784 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3491, line = false, unsure = "2 file events fit" }, -- 229.784 nameplate7 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.666 s
	{ hit = 3492, line = false, unsure = "secret amount" }, -- 230.031 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3493, line = false, unsure = "secret amount" }, -- 230.031 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3496, line = false, unsure = "secret amount" }, -- 230.031 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3497, line = false, unsure = "late by 1.14 s" }, -- 230.263 nameplate7 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +1.145 s
	{ hit = 3501, line = false, unsure = "secret amount" }, -- 230.469 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 3502, line = false, unsure = "secret amount" }, -- 230.469 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 3503, line = false, unsure = "secret amount" }, -- 230.469 nameplate8 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 3506, line = false, unsure = "secret amount" }, -- 230.469 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 3507, line = false, unsure = "secret amount" }, -- 230.496 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.525 s
	{ hit = 3509, line = false, unsure = "secret amount" }, -- 230.718 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3510, line = false, unsure = "secret amount" }, -- 230.742 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 3515, line = 3516, spell = 7648, unsure = "secret amount" }, -- 230.836 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3517, line = false, unsure = "secret amount" }, -- 230.916 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 3518, line = false, unsure = "secret amount" }, -- 230.916 nameplate11 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 3519, line = false, unsure = "secret amount" }, -- 230.916 nameplate7 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 3520, line = false, unsure = "secret amount" }, -- 230.916 nameplate9 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 3521, line = false, unsure = "secret amount" }, -- 230.916 nameplate8 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 3525, line = 3508, spell = false, unsure = "secret amount" }, -- 231.003 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.295 s
	{ hit = 3526, line = false, unsure = "secret amount" }, -- 231.019 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3527, line = false, unsure = "secret amount" }, -- 231.019 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3530, line = false, unsure = "secret amount" }, -- 231.019 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3531, line = false, unsure = "secret amount" }, -- 231.019 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3532, line = false, unsure = "secret amount" }, -- 231.019 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3533, line = false, unsure = "secret amount" }, -- 231.019 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3534, line = false, unsure = "secret amount" }, -- 231.019 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3537, line = false, unsure = "secret amount" }, -- 231.019 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3538, line = false, unsure = "secret amount" }, -- 231.019 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3542, line = 3543, spell = 11711, unsure = "secret amount" }, -- 231.344 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3544, line = false, unsure = "secret amount" }, -- 231.588 nameplate3 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 3545, line = false, unsure = "secret amount" }, -- 231.608 nameplate3 MISS <secret> <- other: Windfury Totem SPELL_MISSED -0.001 s
	{ hit = 3549, line = 3550, spell = 11711, unsure = "secret amount" }, -- 231.785 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3559, line = false, unsure = "secret amount" }, -- 232.028 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3560, line = false, unsure = "secret amount" }, -- 232.028 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3563, line = false, unsure = "secret amount" }, -- 232.028 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3564, line = false, unsure = "2 file events fit" }, -- 232.028 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3565, line = false, unsure = "secret amount" }, -- 232.028 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3566, line = false, unsure = "secret amount" }, -- 232.028 nameplate3 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.001 s
	{ hit = 3567, line = false, unsure = "secret amount" }, -- 232.053 nameplate3 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 3572, line = 3573, spell = 7648, unsure = "secret amount" }, -- 232.269 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3575, line = 3574, spell = 18879, unsure = "secret amount" }, -- 232.304 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3576, line = 3577, spell = 18879, unsure = "secret amount" }, -- 232.304 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 3578, line = false, unsure = "3 file events fit" }, -- 232.578 nameplate8 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.239 s
	{ hit = 3580, line = 3579, spell = false, unsure = "3 file events fit" }, -- 232.994 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.287 s
	{ hit = 3581, line = false, unsure = "secret amount" }, -- 233.028 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3582, line = false, unsure = "secret amount" }, -- 233.028 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3585, line = false, unsure = "secret amount" }, -- 233.028 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3586, line = false, unsure = "secret amount" }, -- 233.028 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3587, line = false, unsure = "secret amount" }, -- 233.028 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3588, line = false, unsure = "secret amount" }, -- 233.028 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3589, line = false, unsure = "secret amount" }, -- 233.028 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3590, line = false, unsure = "secret amount" }, -- 233.028 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3593, line = false, unsure = "late by 1.50 s" }, -- 233.061 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.497 s
	{ hit = 3594, line = false, unsure = "secret amount" }, -- 233.253 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.462 s
	{ hit = 3597, line = 3598, spell = 11711, unsure = "secret amount" }, -- 233.346 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3601, line = false, unsure = "2 file events fit" }, -- 233.611 nameplate8 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +1.272 s
	{ hit = 3604, line = false, unsure = "late by 1.40 s" }, -- 233.703 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +1.397 s
	{ hit = 3605, line = false, unsure = "secret amount" }, -- 233.721 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3609, line = 3608, spell = 18879, unsure = "on time, of 2 file events" }, -- 233.762 nameplate8 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3610, line = 3611, spell = 18879, unsure = "secret amount" }, -- 233.762 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 3612, line = 3613, spell = 11711, unsure = "secret amount" }, -- 233.811 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3614, line = 3615, spell = 7648, unsure = "secret amount" }, -- 233.829 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3617, line = false, unsure = "secret amount" }, -- 234.022 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3618, line = false, unsure = "secret amount" }, -- 234.022 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3619, line = false, unsure = "secret amount" }, -- 234.022 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3620, line = false, unsure = "secret amount" }, -- 234.022 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3626, line = 3627, spell = 11711, unsure = "secret amount" }, -- 234.248 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3634, line = false, unsure = "on time, of 2 file events" }, -- 234.878 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 3635, line = false, unsure = "2 file events fit" }, -- 234.989 nameplate3 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 3636, line = false, unsure = "secret amount" }, -- 235.023 nameplate3 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 3637, line = false, unsure = "secret amount" }, -- 235.023 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3638, line = false, unsure = "secret amount" }, -- 235.023 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3639, line = false, unsure = "secret amount" }, -- 235.023 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3640, line = false, unsure = "secret amount" }, -- 235.023 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3643, line = false, unsure = "secret amount" }, -- 235.029 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3644, line = false, unsure = "secret amount" }, -- 235.029 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3647, line = false, unsure = "secret amount" }, -- 235.029 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3648, line = false, unsure = "secret amount" }, -- 235.029 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3653, line = 3654, spell = 7648, unsure = "secret amount" }, -- 235.280 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3656, line = 3655, spell = 18879, unsure = "2 file events fit" }, -- 235.313 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3657, line = 3658, spell = 18879, unsure = "secret amount" }, -- 235.313 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 3659, line = 3660, spell = 11711, unsure = "secret amount" }, -- 235.338 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3661, line = 3628, spell = false, unsure = "secret amount" }, -- 235.346 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.627 s
	{ hit = 3663, line = false, unsure = "on time, of 2 file events" }, -- 235.794 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.999 s
	{ hit = 3664, line = 3665, spell = 11711, unsure = "secret amount" }, -- 235.805 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3666, line = false, unsure = "2 file events fit" }, -- 235.931 nameplate8 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 3667, line = false, unsure = "on time, of 2 file events" }, -- 235.949 nameplate8 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 3668, line = false, unsure = "secret amount" }, -- 235.949 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.991 s
	{ hit = 3671, line = 3672, spell = 11711, unsure = "secret amount" }, -- 236.246 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3675, line = false, unsure = "secret amount" }, -- 236.621 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.001 s
	{ hit = 3679, line = false, unsure = "secret amount" }, -- 236.630 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 3680, line = false, unsure = "secret amount" }, -- 236.698 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3681, line = false, unsure = "secret amount" }, -- 236.698 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3682, line = false, unsure = "secret amount" }, -- 236.698 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3683, line = false, unsure = "secret amount" }, -- 236.698 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3686, line = false, unsure = "secret amount" }, -- 236.698 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3689, line = false, unsure = "secret amount" }, -- 236.716 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3691, line = 3692, spell = 7648, unsure = "secret amount" }, -- 236.736 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3694, line = 3693, spell = 18879, unsure = "secret amount" }, -- 236.769 nameplate8 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3695, line = 3696, spell = 18879, unsure = "secret amount" }, -- 236.769 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 3697, line = 3698, spell = 7648, unsure = "secret amount" }, -- 236.828 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3699, line = false, unsure = "secret amount" }, -- 236.978 nameplate3 DODGE <secret> <- other: Windfury Totem SPELL_MISSED -0.001 s
	{ hit = 3700, line = false, unsure = "secret amount" }, -- 236.978 nameplate3 MISS <secret> <- other: Seal of Command SPELL_MISSED -0.001 s
	{ hit = 3701, line = false, unsure = "secret amount" }, -- 237.028 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3702, line = false, unsure = "secret amount" }, -- 237.028 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3703, line = false, unsure = "secret amount" }, -- 237.028 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3704, line = false, unsure = "secret amount" }, -- 237.028 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 3709, line = false, unsure = "late by 1.32 s" }, -- 237.163 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +1.323 s
	{ hit = 3710, line = 3713, spell = 11711, unsure = "secret amount" }, -- 237.232 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3714, line = false, unsure = "secret amount" }, -- 237.256 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.452 s
	{ hit = 3715, line = 3716, spell = 11711, unsure = "secret amount" }, -- 237.364 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3717, line = 3690, spell = false, unsure = "secret amount" }, -- 237.364 nameplate11 WOUND <secret> <- pet: swing SWING_DAMAGE +0.647 s
	{ hit = 3720, line = false, unsure = "secret amount" }, -- 237.689 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3721, line = false, unsure = "secret amount" }, -- 237.689 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3724, line = false, unsure = "secret amount" }, -- 237.689 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3725, line = false, unsure = "secret amount" }, -- 237.689 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3726, line = false, unsure = "secret amount" }, -- 237.689 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3730, line = 3731, spell = 11711, unsure = "secret amount" }, -- 237.794 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3732, line = false, unsure = "secret amount" }, -- 237.937 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 3733, line = false, unsure = "secret amount" }, -- 237.937 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 3736, line = 3737, spell = 11711, unsure = "secret amount" }, -- 238.255 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3738, line = 3739, spell = 7648, unsure = "secret amount" }, -- 238.271 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3741, line = 3740, spell = 18879, unsure = "secret amount" }, -- 238.313 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3742, line = 3743, spell = 18879, unsure = "secret amount" }, -- 238.313 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 3750, line = false, unsure = "secret amount" }, -- 238.703 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3751, line = false, unsure = "secret amount" }, -- 238.703 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3752, line = false, unsure = "secret amount" }, -- 238.703 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3753, line = false, unsure = "secret amount" }, -- 238.703 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3756, line = false, unsure = "secret amount" }, -- 238.703 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3757, line = false, unsure = "secret amount" }, -- 238.703 nameplate9 WOUND <secret> <- other: Shield Bash SPELL_DAMAGE -0.002 s
	{ hit = 3760, line = false, unsure = "secret amount" }, -- 239.038 nameplate3 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.002 s
	{ hit = 3761, line = false, unsure = "secret amount" }, -- 239.038 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3762, line = false, unsure = "secret amount" }, -- 239.038 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3763, line = false, unsure = "secret amount" }, -- 239.038 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3764, line = false, unsure = "secret amount" }, -- 239.038 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3767, line = 3770, spell = 11711, unsure = "secret amount" }, -- 239.221 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3771, line = 3758, spell = false, unsure = "secret amount" }, -- 239.271 nameplate11 WOUND <secret> <- pet: swing SWING_DAMAGE +0.547 s
	{ hit = 3774, line = false, unsure = "secret amount" }, -- 239.271 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.466 s
	{ hit = 3775, line = false, unsure = "secret amount" }, -- 239.336 nameplate8 WOUND <secret> <- other: Shoot RANGE_DAMAGE +0.022 s
	{ hit = 3776, line = 3777, spell = 11711, unsure = "secret amount" }, -- 239.354 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3778, line = false, unsure = "secret amount" }, -- 239.354 nameplate3 DODGE <secret> <- other: swing SWING_MISSED +0.390 s
	{ hit = 3784, line = false, unsure = "secret amount" }, -- 239.703 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 3785, line = false, unsure = "secret amount" }, -- 239.703 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 3786, line = false, unsure = "secret amount" }, -- 239.703 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 3789, line = false, unsure = "secret amount" }, -- 239.703 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 3790, line = false, unsure = "secret amount" }, -- 239.703 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 3791, line = 3794, spell = 7648, unsure = "secret amount" }, -- 239.703 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3795, line = false, unsure = "secret amount" }, -- 239.713 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3796, line = 3797, spell = 7648, unsure = "secret amount" }, -- 239.736 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3799, line = 3798, spell = 18879, unsure = "2 file events fit" }, -- 239.766 nameplate8 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3800, line = 3801, spell = 18879, unsure = "secret amount" }, -- 239.766 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 3803, line = 3804, spell = 11711, unsure = "secret amount" }, -- 239.798 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3805, line = 3806, spell = 7648, unsure = "secret amount" }, -- 239.829 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3809, line = false, unsure = "secret amount" }, -- 240.004 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.631 s
	{ hit = 3811, line = false, unsure = "secret amount" }, -- 240.194 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 3812, line = false, unsure = "secret amount" }, -- 240.194 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 3813, line = false, unsure = "secret amount" }, -- 240.194 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 3814, line = false, unsure = "secret amount" }, -- 240.194 nameplate11 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 3817, line = 3818, spell = 11711, unsure = "secret amount" }, -- 240.255 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3825, line = false, unsure = "secret amount" }, -- 240.687 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3826, line = false, unsure = "secret amount" }, -- 240.687 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3827, line = false, unsure = "secret amount" }, -- 240.687 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3830, line = false, unsure = "secret amount" }, -- 240.687 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3831, line = false, unsure = "secret amount" }, -- 240.687 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3839, line = false, unsure = "secret amount" }, -- 240.919 nameplate9 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 3840, line = false, unsure = "secret amount" }, -- 240.919 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 3841, line = false, unsure = "secret amount" }, -- 240.919 nameplate7 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 3842, line = false, unsure = "secret amount" }, -- 240.919 nameplate8 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 3843, line = false, unsure = "secret amount" }, -- 240.919 nameplate11 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 3847, line = false, unsure = "secret amount" }, -- 240.972 nameplate8 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 3848, line = false, unsure = "secret amount" }, -- 240.991 nameplate8 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 3850, line = false, unsure = "secret amount" }, -- 241.037 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3851, line = false, unsure = "secret amount" }, -- 241.037 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3852, line = false, unsure = "secret amount" }, -- 241.037 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3853, line = false, unsure = "secret amount" }, -- 241.037 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3854, line = false, unsure = "secret amount" }, -- 241.037 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3857, line = false, unsure = "secret amount" }, -- 241.179 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.366 s
	{ hit = 3858, line = 3846, spell = false, unsure = "secret amount" }, -- 241.186 nameplate11 WOUND <secret> <- pet: swing SWING_DAMAGE +0.265 s
	{ hit = 3861, line = 3864, spell = 11711, unsure = "secret amount" }, -- 241.221 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3865, line = 3866, spell = 7648, unsure = "secret amount" }, -- 241.271 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3868, line = 3867, spell = 18879, unsure = "2 file events fit" }, -- 241.319 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3869, line = 3870, spell = 18879, unsure = "secret amount" }, -- 241.319 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 3871, line = 3872, spell = 11711, unsure = "secret amount" }, -- 241.356 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3873, line = false, unsure = "secret amount" }, -- 241.364 nameplate3 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.001 s
	{ hit = 3874, line = false, unsure = "secret amount" }, -- 241.398 nameplate3 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 3877, line = false, unsure = "secret amount" }, -- 241.683 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3878, line = false, unsure = "secret amount" }, -- 241.683 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3881, line = false, unsure = "secret amount" }, -- 241.683 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3882, line = false, unsure = "secret amount" }, -- 241.683 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3883, line = false, unsure = "secret amount" }, -- 241.683 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3884, line = 3885, spell = 1949, unsure = "secret amount" }, -- 241.729 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3887, line = 3886, spell = 1949, unsure = "secret amount" }, -- 241.729 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 3889, line = 3888, spell = 1949, unsure = "secret amount" }, -- 241.729 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 3893, line = 3892, spell = 1949, unsure = "secret amount" }, -- 241.729 nameplate8 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 3895, line = 3894, spell = 1949, unsure = "secret amount" }, -- 241.729 nameplate9 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 3897, line = 3896, spell = 1949, unsure = "secret amount" }, -- 241.729 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 3898, line = 3899, spell = 11711, unsure = "secret amount" }, -- 241.805 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3900, line = false, unsure = "secret amount" }, -- 241.955 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.991 s
	{ hit = 3904, line = 3905, spell = 11711, unsure = "secret amount" }, -- 242.247 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3909, line = false, unsure = "2 file events fit" }, -- 242.544 nameplate7 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 3910, line = false, unsure = "secret amount" }, -- 242.568 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 3911, line = false, unsure = "secret amount" }, -- 242.703 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3912, line = false, unsure = "secret amount" }, -- 242.703 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3915, line = false, unsure = "secret amount" }, -- 242.703 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3916, line = false, unsure = "secret amount" }, -- 242.703 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3917, line = false, unsure = "secret amount" }, -- 242.703 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 3918, line = 3921, spell = 7648, unsure = "secret amount" }, -- 242.703 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3922, line = false, unsure = "secret amount" }, -- 242.713 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3923, line = 3924, spell = 1949, unsure = "secret amount" }, -- 242.719 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3926, line = 3925, spell = 1949, unsure = "secret amount" }, -- 242.719 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 3928, line = 3927, spell = 1949, unsure = "secret amount" }, -- 242.719 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 3932, line = 3931, spell = 1949, unsure = "secret amount" }, -- 242.719 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 3934, line = 3933, spell = 1949, unsure = "secret amount" }, -- 242.719 nameplate8 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 3936, line = 3935, spell = 1949, unsure = "secret amount" }, -- 242.719 nameplate9 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 3937, line = 3938, spell = 7648, unsure = "secret amount" }, -- 242.731 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3940, line = 3939, spell = 18879, unsure = "secret amount" }, -- 242.769 nameplate8 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3941, line = 3942, spell = 18879, unsure = "secret amount" }, -- 242.769 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 3943, line = 3944, spell = 7648, unsure = "secret amount" }, -- 242.829 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3946, line = false, unsure = "secret amount" }, -- 242.928 nameplate3 MISS <secret> <- other: Windfury Totem SPELL_MISSED -0.002 s
	{ hit = 3947, line = false, unsure = "secret amount" }, -- 243.019 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3948, line = false, unsure = "secret amount" }, -- 243.019 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3951, line = false, unsure = "secret amount" }, -- 243.019 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3952, line = false, unsure = "secret amount" }, -- 243.019 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3953, line = false, unsure = "secret amount" }, -- 243.019 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3956, line = 3945, spell = false, unsure = "secret amount" }, -- 243.184 nameplate11 WOUND <secret> <- pet: swing SWING_DAMAGE +0.255 s
	{ hit = 3959, line = 3962, spell = 11711, unsure = "secret amount" }, -- 243.217 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3963, line = false, unsure = "on time, of 3 file events" }, -- 243.236 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.339 s
	{ hit = 3964, line = 3965, spell = 11711, unsure = "secret amount" }, -- 243.338 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3966, line = false, unsure = "secret amount" }, -- 243.361 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.402 s
	{ hit = 3967, line = false, unsure = "2 file events fit" }, -- 243.598 nameplate3 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.668 s
	{ hit = 3968, line = false, unsure = "secret amount" }, -- 243.598 nameplate3 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.086 s
	{ hit = 3969, line = false, unsure = "secret amount" }, -- 243.696 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3970, line = false, unsure = "secret amount" }, -- 243.696 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3971, line = false, unsure = "secret amount" }, -- 243.696 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3972, line = false, unsure = "secret amount" }, -- 243.696 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3973, line = false, unsure = "secret amount" }, -- 243.696 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 3976, line = false, unsure = "secret amount" }, -- 243.696 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.559 s
	{ hit = 3977, line = 3978, spell = 1949, unsure = "secret amount" }, -- 243.721 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3980, line = 3979, spell = 1949, unsure = "secret amount" }, -- 243.721 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 3982, line = 3981, spell = 1949, unsure = "secret amount" }, -- 243.721 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 3986, line = 3985, spell = 1949, unsure = "secret amount" }, -- 243.721 nameplate9 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 3988, line = 3987, spell = 1949, unsure = "secret amount" }, -- 243.721 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 3990, line = 3989, spell = 1949, unsure = "secret amount" }, -- 243.721 nameplate8 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 3991, line = 3992, spell = 11711, unsure = "secret amount" }, -- 243.796 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3993, line = false, unsure = "secret amount" }, -- 243.882 nameplate11 WOUND <secret> <- other: swing SWING_DAMAGE +0.361 s
	{ hit = 3996, line = false, unsure = "secret amount" }, -- 244.022 nameplate11 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 4004, line = false, unsure = "late by 1.28 s" }, -- 244.211 nameplate3 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +1.281 s
	{ hit = 4005, line = 4006, spell = 11711, unsure = "secret amount" }, -- 244.254 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4007, line = 4008, spell = 7648, unsure = "secret amount" }, -- 244.279 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4010, line = 4009, spell = 18879, unsure = "secret amount" }, -- 244.312 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4011, line = 4012, spell = 18879, unsure = "secret amount" }, -- 244.312 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 4013, line = false, unsure = "secret amount" }, -- 244.671 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 4014, line = false, unsure = "secret amount" }, -- 244.671 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.002 s
	{ hit = 4015, line = 4016, spell = 1949, unsure = "secret amount" }, -- 244.731 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4018, line = 4017, spell = 1949, unsure = "secret amount" }, -- 244.731 nameplate9 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 4020, line = 4019, spell = 1949, unsure = "secret amount" }, -- 244.731 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 4024, line = 4023, spell = 1949, unsure = "secret amount" }, -- 244.731 nameplate8 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 4026, line = 4025, spell = 1949, unsure = "secret amount" }, -- 244.731 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 4028, line = 4027, spell = 1949, unsure = "secret amount" }, -- 244.731 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 4030, line = false, unsure = "secret amount" }, -- 245.029 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4031, line = false, unsure = "secret amount" }, -- 245.029 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4034, line = false, unsure = "secret amount" }, -- 245.029 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4035, line = false, unsure = "secret amount" }, -- 245.029 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4036, line = false, unsure = "secret amount" }, -- 245.029 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4040, line = 4043, spell = 11711, unsure = "secret amount" }, -- 245.223 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4044, line = false, unsure = "secret amount" }, -- 245.286 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4045, line = false, unsure = "secret amount" }, -- 245.286 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4046, line = false, unsure = "secret amount" }, -- 245.286 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4047, line = false, unsure = "secret amount" }, -- 245.286 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4050, line = false, unsure = "secret amount" }, -- 245.286 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 4051, line = 4052, spell = 11711, unsure = "secret amount" }, -- 245.345 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4053, line = 4029, spell = false, unsure = "secret amount" }, -- 245.551 nameplate11 WOUND <secret> <- pet: swing SWING_DAMAGE +0.630 s
	{ hit = 4056, line = false, unsure = "secret amount" }, -- 245.551 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.596 s
	{ hit = 4057, line = false, unsure = "secret amount" }, -- 245.562 nameplate8 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.002 s
	{ hit = 4058, line = 4061, spell = 7648, unsure = "secret amount" }, -- 245.696 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4062, line = false, unsure = "secret amount" }, -- 245.722 nameplate3 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4063, line = 4064, spell = 1949, unsure = "secret amount" }, -- 245.722 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4066, line = 4065, spell = 1949, unsure = "secret amount" }, -- 245.722 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 4070, line = 4069, spell = 1949, unsure = "secret amount" }, -- 245.722 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 4072, line = 4071, spell = 1949, unsure = "secret amount" }, -- 245.722 nameplate9 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 4074, line = 4073, spell = 1949, unsure = "secret amount" }, -- 245.722 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 4075, line = 4076, spell = 7648, unsure = "secret amount" }, -- 245.734 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4077, line = false, unsure = "secret amount" }, -- 245.770 nameplate3 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.002 s
	{ hit = 4079, line = 4080, spell = 11711, unsure = "secret amount" }, -- 246.253 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4081, line = false, unsure = "secret amount" }, -- 246.286 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4082, line = false, unsure = "secret amount" }, -- 246.286 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4085, line = false, unsure = "secret amount" }, -- 246.286 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4086, line = false, unsure = "secret amount" }, -- 246.286 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4087, line = false, unsure = "secret amount" }, -- 246.438 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.524 s
	{ hit = 4088, line = false, unsure = "secret amount" }, -- 246.523 nameplate11 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 4091, line = false, unsure = "secret amount" }, -- 246.578 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.366 s
	{ hit = 4092, line = 4093, spell = 1949, unsure = "secret amount" }, -- 246.736 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4095, line = 4094, spell = 1949, unsure = "secret amount" }, -- 246.736 nameplate9 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 4097, line = 4096, spell = 1949, unsure = "secret amount" }, -- 246.736 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 4101, line = 4100, spell = 1949, unsure = "secret amount" }, -- 246.736 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 4103, line = 4102, spell = 1949, unsure = "secret amount" }, -- 246.736 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 4105, line = false, unsure = "secret amount" }, -- 247.036 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 4106, line = false, unsure = "secret amount" }, -- 247.036 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 4107, line = false, unsure = "secret amount" }, -- 247.036 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 4116, line = 4119, spell = 11711, unsure = "secret amount" }, -- 247.213 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4121, line = false, unsure = "secret amount" }, -- 247.290 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4122, line = false, unsure = "secret amount" }, -- 247.290 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4123, line = false, unsure = "secret amount" }, -- 247.290 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4126, line = false, unsure = "secret amount" }, -- 247.536 nameplate9 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.001 s
	{ hit = 4127, line = 4104, spell = false, unsure = "secret amount" }, -- 247.553 nameplate11 WOUND <secret> <- pet: swing SWING_DAMAGE +0.627 s
	{ hit = 4130, line = 4131, spell = 1949, unsure = "secret amount" }, -- 247.728 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4133, line = 4132, spell = 1949, unsure = "secret amount" }, -- 247.728 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 4135, line = 4134, spell = 1949, unsure = "secret amount" }, -- 247.728 nameplate9 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.002 s
	{ hit = 4137, line = 4136, spell = 1949, unsure = "secret amount" }, -- 247.728 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 4140, line = false, unsure = "secret amount" }, -- 248.028 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 4141, line = 4142, spell = 1949, unsure = "secret amount" }, -- 248.236 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4145, line = 4144, spell = 1949, unsure = "secret amount" }, -- 248.236 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 4149, line = 4148, spell = 1949, unsure = "secret amount" }, -- 248.236 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 4151, line = 4150, spell = 1949, unsure = "secret amount" }, -- 248.236 nameplate9 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 4152, line = 4153, spell = 11711, unsure = "secret amount" }, -- 248.248 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4154, line = false, unsure = "secret amount" }, -- 248.297 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4155, line = false, unsure = "secret amount" }, -- 248.297 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4156, line = false, unsure = "secret amount" }, -- 248.297 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4162, line = 4165, spell = 7648, unsure = "secret amount" }, -- 248.728 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4166, line = 4167, spell = 7648, unsure = "secret amount" }, -- 248.736 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4172, line = false, unsure = "secret amount" }, -- 249.028 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 4175, line = false, unsure = "secret amount" }, -- 249.028 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 4176, line = false, unsure = "secret amount" }, -- 249.028 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 4177, line = false, unsure = "secret amount" }, -- 249.028 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 4178, line = false, unsure = "on time, of 2 file events" }, -- 249.028 nameplate11 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 4181, line = false, unsure = "secret amount" }, -- 249.028 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 4182, line = 4185, spell = 11711, unsure = "secret amount" }, -- 249.219 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4186, line = false, unsure = "secret amount" }, -- 249.294 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4187, line = false, unsure = "secret amount" }, -- 249.294 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4190, line = false, unsure = "secret amount" }, -- 249.294 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4191, line = false, unsure = "secret amount" }, -- 249.497 nameplate11 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 4194, line = 4171, spell = false, unsure = "on time, of 2 file events" }, -- 249.555 nameplate11 WOUND <secret> <- pet: swing SWING_DAMAGE +0.623 s
	{ hit = 4197, line = false, unsure = "secret amount" }, -- 249.879 nameplate7 MISS <secret> <- other: swing SWING_MISSED +0.947 s
	{ hit = 4198, line = false, unsure = "secret amount" }, -- 250.181 player HEAL <secret> <- other: Heal SPELL_HEAL -0.002 s
	{ hit = 4199, line = 4200, spell = 11711, unsure = "secret amount" }, -- 250.248 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4201, line = false, unsure = "secret amount" }, -- 250.282 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4204, line = false, unsure = "secret amount" }, -- 250.282 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4205, line = false, unsure = "secret amount" }, -- 250.282 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4209, line = false, unsure = "secret amount" }, -- 250.528 nameplate9 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 4216, line = false, unsure = "on time, of 2 file events" }, -- 250.961 nameplate11 WOUND <secret> <- other: swing SWING_DAMAGE +1.489 s
	{ hit = 4217, line = false, unsure = "secret amount" }, -- 251.131 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.627 s
	{ hit = 4220, line = 4215, spell = false, unsure = "secret amount" }, -- 251.189 nameplate11 WOUND <secret> <- pet: swing SWING_DAMAGE +0.260 s
	{ hit = 4221, line = 4222, spell = 11711, unsure = "secret amount" }, -- 251.221 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4223, line = false, unsure = "on time, of 2 file events" }, -- 251.221 nameplate11 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 4224, line = false, unsure = "secret amount" }, -- 251.288 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4225, line = false, unsure = "secret amount" }, -- 251.288 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4227, line = false, unsure = "secret amount" }, -- 251.288 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4231, line = false, unsure = "on time, of 2 file events" }, -- 251.669 nameplate9 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 4234, line = 4235, spell = 7648, unsure = "secret amount" }, -- 251.710 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4236, line = 4239, spell = 7648, unsure = "secret amount" }, -- 251.730 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4242, line = false, unsure = "secret amount" }, -- 251.848 nameplate7 HEAL <secret> <- creature: Holy Light SPELL_HEAL -0.002 s
	{ hit = 4244, line = false, unsure = "on time, of 2 file events" }, -- 252.028 nameplate9 WOUND <secret> <- other: Shield Bash SPELL_DAMAGE -0.001 s
	{ hit = 4247, line = false, unsure = "secret amount" }, -- 252.279 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 4250, line = false, unsure = "secret amount" }, -- 252.279 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 4251, line = false, unsure = "late by 1.03 s" }, -- 252.665 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +1.028 s
	{ hit = 4256, line = false, unsure = "secret amount" }, -- 252.911 nameplate11 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 4260, line = false, unsure = "secret amount" }, -- 253.069 nameplate7 WOUND <secret> <- other: Lightning Bolt SPELL_DAMAGE +0.163 s
	{ hit = 4262, line = 4263, spell = 11711, unsure = "secret amount" }, -- 253.229 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4266, line = false, unsure = "on time, of 2 file events" }, -- 253.478 nameplate11 WOUND <secret> <- other: swing SWING_DAMAGE +0.599 s
	{ hit = 4267, line = 4259, spell = false, unsure = "secret amount" }, -- 253.565 nameplate11 WOUND <secret> <- pet: swing SWING_DAMAGE +0.620 s
	{ hit = 4268, line = false, unsure = "secret amount" }, -- 253.706 nameplate7 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.001 s
	{ hit = 4269, line = 4272, spell = 11711, unsure = "secret amount" }, -- 253.833 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4277, line = false, unsure = "on time, of 4 file events" }, -- 254.696 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.349 s
	{ hit = 4280, line = 4281, spell = 7648, unsure = "secret amount" }, -- 254.711 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4284, line = false, unsure = "on time, of 4 file events" }, -- 254.919 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.330 s
	{ hit = 4288, line = false, unsure = "on time, of 4 file events" }, -- 255.044 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 4291, line = false, unsure = "secret amount" }, -- 255.044 nameplate11 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 4292, line = false, unsure = "on time, of 4 file events" }, -- 255.180 nameplate9 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 4298, line = 4287, spell = false, unsure = "on time, of 3 file events" }, -- 255.204 nameplate9 WOUND <secret> <- pet: swing SWING_DAMAGE +0.250 s
	{ hit = 4301, line = 4302, spell = 11711, unsure = "secret amount" }, -- 255.230 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4303, line = false, unsure = "2 file events fit" }, -- 255.272 nameplate9 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.657 s
	{ hit = 4306, line = 4309, spell = 11711, unsure = "secret amount" }, -- 255.836 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4310, line = false, unsure = "late by 1.28 s" }, -- 255.898 nameplate9 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +1.283 s
	{ hit = 4313, line = false, unsure = "secret amount" }, -- 256.017 nameplate11 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.001 s
	{ hit = 4317, line = 4316, spell = 18879, unsure = "secret amount" }, -- 256.391 nameplate9 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4320, line = 4321, spell = 18879, unsure = "secret amount" }, -- 256.391 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 4324, line = false, unsure = "secret amount" }, -- 256.955 nameplate11 DODGE <secret> <- other: swing SWING_MISSED +0.665 s
	{ hit = 4327, line = false, unsure = "secret amount" }, -- 257.172 nameplate11 MISS <secret> <- other: Shield Slam SPELL_MISSED -0.001 s
	{ hit = 4330, line = 4333, spell = 11711, unsure = "secret amount" }, -- 257.214 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4335, line = false, unsure = "secret amount" }, -- 257.686 nameplate9 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 4342, line = 4343, spell = 11711, unsure = "secret amount" }, -- 257.853 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4344, line = false, unsure = "secret amount" }, -- 257.903 nameplate9 WOUND <secret> <- other: Shoot RANGE_DAMAGE +0.223 s
	{ hit = 4345, line = 4323, spell = false, unsure = "secret amount" }, -- 257.948 nameplate9 WOUND <secret> <- pet: swing SWING_DAMAGE +0.992 s
	{ hit = 4346, line = false, unsure = "secret amount" }, -- 258.033 nameplate11 WOUND <secret> <- other: swing SWING_DAMAGE +0.994 s
	{ hit = 4360, line = false, unsure = "secret amount" }, -- 262.829 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.002 s
	{ hit = 4367, line = false, unsure = "secret amount" }, -- 264.996 nameplate7 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.001 s
	{ hit = 4368, line = false, unsure = "secret amount" }, -- 265.071 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 4369, line = false, unsure = "secret amount" }, -- 265.071 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 4370, line = false, unsure = "secret amount" }, -- 265.071 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 4373, line = false, unsure = "on time, of 2 file events" }, -- 265.294 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 4374, line = false, unsure = "secret amount" }, -- 265.294 nameplate7 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 4381, line = 4384, spell = 11711, unsure = "secret amount" }, -- 266.261 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4386, line = false, unsure = "on time, of 3 file events" }, -- 266.438 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.359 s
	{ hit = 4391, line = false, unsure = "secret amount" }, -- 266.772 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 4394, line = false, unsure = "on time, of 2 file events" }, -- 266.871 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.495 s
	{ hit = 4395, line = 4387, spell = false, unsure = "secret amount" }, -- 267.114 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.625 s
	{ hit = 4398, line = false, unsure = "secret amount" }, -- 267.333 nameplate3 MISS <secret> <- other: Stormstrike SPELL_MISSED -0.002 s
	{ hit = 4401, line = false, unsure = "secret amount" }, -- 268.005 nameplate2 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.002 s
	{ hit = 4402, line = 4403, spell = 11711, unsure = "secret amount" }, -- 268.254 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4404, line = false, unsure = "secret amount" }, -- 268.297 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 4407, line = false, unsure = "on time, of 2 file events" }, -- 268.445 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 4408, line = false, unsure = "secret amount" }, -- 268.445 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 4412, line = false, unsure = "secret amount" }, -- 268.687 nameplate2 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 4415, line = 4416, spell = 7648, unsure = "secret amount" }, -- 268.738 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4417, line = false, unsure = "2 file events fit" }, -- 268.754 nameplate2 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.027 s
	{ hit = 4418, line = 4411, spell = false, unsure = "on time, of 2 file events" }, -- 268.780 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.281 s
	{ hit = 4419, line = false, unsure = "secret amount" }, -- 268.780 nameplate3 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.001 s
	{ hit = 4422, line = false, unsure = "secret amount" }, -- 268.780 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.124 s
	{ hit = 4423, line = false, unsure = "3 file events fit" }, -- 269.121 nameplate3 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 4429, line = 4432, spell = 11711, unsure = "secret amount" }, -- 269.221 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4433, line = false, unsure = "3 file events fit" }, -- 269.361 nameplate3 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.239 s
	{ hit = 4438, line = false, unsure = "on time, of 3 file events" }, -- 269.779 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.011 s
	{ hit = 4441, line = false, unsure = "no file event fits" }, -- 269.789 nameplate3 WOUND <secret> <- no file event 
	{ hit = 4444, line = false, unsure = "secret amount" }, -- 269.829 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 4447, line = false, unsure = "secret amount" }, -- 269.829 nameplate2 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 4448, line = false, unsure = "no file event fits" }, -- 270.146 nameplate2 WOUND <secret> <- no file event 
	{ hit = 4451, line = 4452, spell = 11711, unsure = "secret amount" }, -- 270.255 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4453, line = false, unsure = "2 file events fit" }, -- 270.396 nameplate3 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +1.274 s
	{ hit = 4458, line = false, unsure = "secret amount" }, -- 270.839 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4461, line = false, unsure = "secret amount" }, -- 270.839 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4462, line = 4456, spell = false, unsure = "secret amount" }, -- 271.121 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.623 s
	{ hit = 4463, line = 4464, spell = 11711, unsure = "secret amount" }, -- 271.221 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4465, line = false, unsure = "secret amount" }, -- 271.297 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 4466, line = 4467, spell = 7648, unsure = "secret amount" }, -- 271.712 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4468, line = 4471, spell = 7648, unsure = "secret amount" }, -- 271.738 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4472, line = false, unsure = "on time, of 2 file events" }, -- 271.953 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.472 s
	{ hit = 4475, line = false, unsure = "secret amount" }, -- 272.062 nameplate3 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.002 s
	{ hit = 4476, line = false, unsure = "secret amount" }, -- 272.094 nameplate3 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 4477, line = false, unsure = "secret amount" }, -- 272.111 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.297 s
	{ hit = 4482, line = 4485, spell = 11711, unsure = "secret amount" }, -- 272.254 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4492, line = 4491, spell = false, unsure = "on time, of 3 file events" }, -- 272.777 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.261 s
	{ hit = 4493, line = false, unsure = "secret amount" }, -- 272.787 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 4494, line = false, unsure = "secret amount" }, -- 272.808 nameplate3 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.002 s
	{ hit = 4497, line = false, unsure = "secret amount" }, -- 272.828 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 4500, line = false, unsure = "secret amount" }, -- 272.828 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 4502, line = 4501, spell = 18879, unsure = "2 file events fit" }, -- 273.197 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4503, line = 4504, spell = 18879, unsure = "secret amount" }, -- 273.197 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 4505, line = 4506, spell = 11711, unsure = "secret amount" }, -- 273.221 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4507, line = false, unsure = "late by 1.49 s" }, -- 273.558 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.494 s
	{ hit = 4510, line = false, unsure = "secret amount" }, -- 273.954 nameplate2 DODGE <secret> <- other: swing SWING_MISSED +0.462 s
	{ hit = 4513, line = 4516, spell = 11711, unsure = "secret amount" }, -- 274.246 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4518, line = 4517, spell = 7641, unsure = "secret amount" }, -- 274.490 nameplate2 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE -0.001 s
	{ hit = 4522, line = false, unsure = "secret amount" }, -- 274.555 nameplate3 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 4523, line = 4524, spell = 7648, unsure = "secret amount" }, -- 274.712 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4525, line = 4528, spell = 7648, unsure = "secret amount" }, -- 274.746 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4529, line = false, unsure = "secret amount" }, -- 274.821 nameplate2 MISS <secret> <- other: Chain Lightning SPELL_MISSED -0.001 s
	{ hit = 4532, line = false, unsure = "secret amount" }, -- 274.821 nameplate3 WOUND <secret> <- other: Chain Lightning SPELL_DAMAGE -0.002 s
	{ hit = 4533, line = false, unsure = "secret amount" }, -- 274.836 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4534, line = false, unsure = "secret amount" }, -- 274.836 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4537, line = 4521, spell = false, unsure = "secret amount" }, -- 275.130 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.618 s
	{ hit = 4540, line = false, unsure = "secret amount" }, -- 275.173 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 4543, line = 4544, spell = 11711, unsure = "secret amount" }, -- 275.215 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4545, line = false, unsure = "secret amount" }, -- 275.494 nameplate3 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 4546, line = false, unsure = "secret amount" }, -- 275.494 nameplate3 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.002 s
	{ hit = 4547, line = false, unsure = "secret amount" }, -- 275.528 nameplate3 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 4550, line = false, unsure = "secret amount" }, -- 275.569 nameplate2 WOUND <secret> <- other: Lightning Bolt SPELL_DAMAGE -0.002 s
	{ hit = 4553, line = false, unsure = "on time, of 2 file events" }, -- 275.653 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 4561, line = 4560, spell = 18879, unsure = "secret amount" }, -- 276.204 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4562, line = 4563, spell = 18879, unsure = "secret amount" }, -- 276.204 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 4564, line = 4567, spell = 11711, unsure = "secret amount" }, -- 276.246 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4568, line = false, unsure = "secret amount" }, -- 276.488 nameplate3 DODGE <secret> <- other: swing SWING_MISSED +0.992 s
	{ hit = 4570, line = false, unsure = "secret amount" }, -- 276.829 nameplate3 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.002 s
	{ hit = 4571, line = false, unsure = "secret amount" }, -- 276.829 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4574, line = 4569, spell = false, unsure = "secret amount" }, -- 276.846 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.324 s
	{ hit = 4577, line = false, unsure = "late by 1.48 s" }, -- 276.962 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.483 s
	{ hit = 4583, line = 4584, spell = 11711, unsure = "secret amount" }, -- 277.219 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4585, line = 4586, spell = 7648, unsure = "secret amount" }, -- 277.712 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4587, line = 4590, spell = 7648, unsure = "secret amount" }, -- 277.744 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4591, line = false, unsure = "secret amount" }, -- 277.894 nameplate2 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.002 s
	{ hit = 4594, line = false, unsure = "secret amount" }, -- 277.961 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.464 s
	{ hit = 4595, line = false, unsure = "secret amount" }, -- 278.003 nameplate3 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.001 s
	{ hit = 4597, line = 4596, spell = 18879, unsure = "on time, of 2 file events" }, -- 278.205 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4600, line = 4601, spell = 18879, unsure = "secret amount" }, -- 278.205 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 4602, line = 4605, spell = 11711, unsure = "secret amount" }, -- 278.256 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4610, line = false, unsure = "secret amount" }, -- 278.661 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.856 s
	{ hit = 4613, line = 4606, spell = false, unsure = "secret amount" }, -- 278.779 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.257 s
	{ hit = 4616, line = false, unsure = "secret amount" }, -- 278.836 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 4617, line = false, unsure = "secret amount" }, -- 278.836 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 4626, line = 4625, spell = 18879, unsure = "2 file events fit" }, -- 279.198 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4627, line = 4628, spell = 18879, unsure = "secret amount" }, -- 279.198 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 4630, line = 4631, spell = 11711, unsure = "secret amount" }, -- 279.232 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4632, line = false, unsure = "on time, of 2 file events" }, -- 279.472 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.593 s
	{ hit = 4634, line = 4633, spell = 7651, unsure = "secret amount" }, -- 279.536 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4637, line = 4638, spell = 7651, unsure = "on time, of 2 file events" }, -- 279.536 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 4639, line = false, unsure = "secret amount" }, -- 279.594 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.002 s
	{ hit = 4640, line = false, unsure = "on time, of 2 file events" }, -- 279.804 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 4641, line = false, unsure = "secret amount" }, -- 279.861 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.352 s
	{ hit = 4642, line = 4645, spell = 11711, unsure = "secret amount" }, -- 280.255 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4648, line = 4647, spell = 7651, unsure = "secret amount" }, -- 280.543 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4651, line = 4652, spell = 7651, unsure = "secret amount" }, -- 280.543 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 4653, line = false, unsure = "secret amount" }, -- 280.629 nameplate3 MISS <secret> <- other: swing SWING_MISSED +0.850 s
	{ hit = 4654, line = 4655, spell = 7648, unsure = "secret amount" }, -- 280.711 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4656, line = 4659, spell = 7648, unsure = "secret amount" }, -- 280.740 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4660, line = false, unsure = "secret amount" }, -- 280.844 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4661, line = false, unsure = "secret amount" }, -- 280.844 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4664, line = 4646, spell = false, unsure = "secret amount" }, -- 281.153 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.627 s
	{ hit = 4668, line = 4667, spell = 18879, unsure = "secret amount" }, -- 281.205 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4671, line = 4672, spell = 18879, unsure = "secret amount" }, -- 281.205 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 4673, line = 4674, spell = 11711, unsure = "secret amount" }, -- 281.228 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4676, line = 4675, spell = 7651, unsure = "secret amount" }, -- 281.539 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4679, line = 4680, spell = 7651, unsure = "secret amount" }, -- 281.539 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 4681, line = false, unsure = "3 file events fit" }, -- 281.992 nameplate2 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.219 s
	{ hit = 4685, line = 4684, spell = 18879, unsure = "secret amount" }, -- 282.214 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4686, line = 4687, spell = 18879, unsure = "secret amount" }, -- 282.214 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 4688, line = 4691, spell = 11711, unsure = "secret amount" }, -- 282.255 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4692, line = false, unsure = "3 file events fit" }, -- 282.417 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.201 s
	{ hit = 4697, line = 4696, spell = 7651, unsure = "secret amount" }, -- 282.541 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4700, line = 4701, spell = 7651, unsure = "secret amount" }, -- 282.541 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 4702, line = 4695, spell = false, unsure = "3 file events fit" }, -- 282.561 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.029 s
	{ hit = 4708, line = false, unsure = "secret amount" }, -- 282.818 nameplate3 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.001 s
	{ hit = 4712, line = false, unsure = "secret amount" }, -- 282.830 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4715, line = false, unsure = "2 file events fit" }, -- 283.038 nameplate2 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +1.265 s
	{ hit = 4718, line = 4719, spell = 11711, unsure = "secret amount" }, -- 283.222 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4720, line = false, unsure = "no file event fits" }, -- 283.527 nameplate2 WOUND <secret> <- no file event 
	{ hit = 4724, line = 4723, spell = 7651, unsure = "secret amount" }, -- 283.541 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4727, line = 4728, spell = 7651, unsure = "secret amount" }, -- 283.541 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 4730, line = 4731, spell = 7648, unsure = "secret amount" }, -- 283.719 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4732, line = 4735, spell = 7648, unsure = "secret amount" }, -- 283.747 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4739, line = 4738, spell = 18879, unsure = "on time, of 2 file events" }, -- 284.211 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4742, line = 4743, spell = 18879, unsure = "secret amount" }, -- 284.211 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 4744, line = 4747, spell = 11711, unsure = "secret amount" }, -- 284.256 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4748, line = false, unsure = "late by 1.49 s" }, -- 284.276 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.495 s
	{ hit = 4752, line = false, unsure = "secret amount" }, -- 284.494 nameplate3 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 4756, line = false, unsure = "on time, of 3 file events" }, -- 285.491 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.587 s
	{ hit = 4762, line = 4753, spell = false, unsure = "on time, of 2 file events" }, -- 285.533 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.996 s
	{ hit = 4767, line = false, unsure = "secret amount" }, -- 285.869 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 4768, line = false, unsure = "secret amount" }, -- 285.947 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.493 s
	{ hit = 4771, line = 4774, spell = 11711, unsure = "secret amount" }, -- 286.246 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4776, line = 4775, spell = 7651, unsure = "secret amount" }, -- 286.514 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4779, line = 4780, spell = 7651, unsure = "secret amount" }, -- 286.514 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 4787, line = 4786, spell = 18879, unsure = "secret amount" }, -- 287.204 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4790, line = 4791, spell = 18879, unsure = "secret amount" }, -- 287.204 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 4802, line = false, unsure = "secret amount" }, -- 288.869 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 4808, line = false, unsure = "secret amount" }, -- 291.863 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 4812, line = false, unsure = "3 file events fit" }, -- 294.392 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 4813, line = false, unsure = "2 file events fit" }, -- 294.392 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 4814, line = false, unsure = "on time, of 2 file events" }, -- 294.392 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 4819, line = false, unsure = "secret amount" }, -- 294.869 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 4822, line = false, unsure = "late by 1.21 s" }, -- 295.479 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.206 s
	{ hit = 4829, line = false, unsure = "secret amount" }, -- 296.094 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.002 s
	{ hit = 4842, line = false, unsure = "secret amount" }, -- 297.139 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 4844, line = false, unsure = "on time, of 2 file events" }, -- 297.338 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.357 s
	{ hit = 4845, line = false, unsure = "secret amount" }, -- 297.649 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 4846, line = false, unsure = "secret amount" }, -- 297.871 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 4850, line = false, unsure = "secret amount" }, -- 298.630 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 4852, line = false, unsure = "secret amount" }, -- 299.103 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 4858, line = false, unsure = "on time, of 2 file events" }, -- 299.775 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 4864, line = false, unsure = "secret amount" }, -- 300.496 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.816 s
	{ hit = 4867, line = false, unsure = "secret amount" }, -- 301.013 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 4871, line = 4872, spell = 11711, unsure = "secret amount" }, -- 301.338 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4873, line = false, unsure = "secret amount" }, -- 301.346 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.002 s
	{ hit = 4881, line = false, unsure = "secret amount" }, -- 302.097 nameplate7 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 4887, line = false, unsure = "3 file events fit" }, -- 302.387 nameplate5 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.222 s
	{ hit = 4890, line = false, unsure = "2 file events fit" }, -- 302.611 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 4893, line = false, unsure = "secret amount" }, -- 302.747 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.358 s
	{ hit = 4894, line = false, unsure = "secret amount" }, -- 302.815 nameplate2 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 4895, line = false, unsure = "2 file events fit" }, -- 302.815 nameplate5 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.650 s
	{ hit = 4898, line = false, unsure = "secret amount" }, -- 302.851 nameplate2 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 4901, line = 4880, spell = false, unsure = "secret amount" }, -- 302.862 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.980 s
	{ hit = 4902, line = false, unsure = "late by 1.17 s" }, -- 303.305 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.173 s
	{ hit = 4905, line = 4906, spell = 11711, unsure = "secret amount" }, -- 303.344 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4907, line = false, unsure = "secret amount" }, -- 303.406 nameplate2 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.001 s
	{ hit = 4908, line = false, unsure = "secret amount" }, -- 303.423 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 4909, line = false, unsure = "secret amount" }, -- 303.448 nameplate2 MISS <secret> <- other: Seal of Command SPELL_MISSED -0.001 s
	{ hit = 4910, line = false, unsure = "on time, of 2 file events" }, -- 303.594 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.002 s
	{ hit = 4911, line = false, unsure = "secret amount" }, -- 303.606 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4914, line = false, unsure = "secret amount" }, -- 303.606 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4915, line = false, unsure = "secret amount" }, -- 303.606 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4921, line = 4922, spell = 7648, unsure = "secret amount" }, -- 303.828 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4925, line = false, unsure = "secret amount" }, -- 304.096 nameplate2 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 4926, line = false, unsure = "secret amount" }, -- 304.096 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 4927, line = false, unsure = "secret amount" }, -- 304.096 nameplate7 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 4933, line = false, unsure = "secret amount" }, -- 304.194 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 4934, line = false, unsure = "secret amount" }, -- 304.215 nameplate2 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.002 s
	{ hit = 4935, line = 4924, spell = false, unsure = "2 file events fit" }, -- 304.215 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.334 s
	{ hit = 4938, line = false, unsure = "secret amount" }, -- 304.274 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.645 s
	{ hit = 4939, line = 4940, spell = 11711, unsure = "secret amount" }, -- 304.306 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4941, line = false, unsure = "secret amount" }, -- 304.503 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 4947, line = 4948, spell = 11711, unsure = "secret amount" }, -- 305.338 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4949, line = false, unsure = "secret amount" }, -- 305.613 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4952, line = false, unsure = "secret amount" }, -- 305.613 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4953, line = false, unsure = "secret amount" }, -- 305.613 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4954, line = false, unsure = "on time, of 3 file events" }, -- 305.682 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 4955, line = false, unsure = "secret amount" }, -- 305.705 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 4957, line = false, unsure = "on time, of 2 file events" }, -- 305.921 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.025 s
	{ hit = 4958, line = false, unsure = "secret amount" }, -- 305.986 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4959, line = false, unsure = "secret amount" }, -- 305.986 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4960, line = false, unsure = "secret amount" }, -- 305.986 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4963, line = false, unsure = "on time, of 2 file events" }, -- 306.031 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 4964, line = false, unsure = "secret amount" }, -- 306.147 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.493 s
	{ hit = 4965, line = 4956, spell = false, unsure = "secret amount" }, -- 306.214 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.325 s
	{ hit = 4968, line = 4969, spell = 11711, unsure = "secret amount" }, -- 306.303 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 4973, line = false, unsure = "secret amount" }, -- 306.504 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 4976, line = false, unsure = "secret amount" }, -- 306.615 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 4977, line = false, unsure = "secret amount" }, -- 306.703 nameplate7 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.013 s
	{ hit = 4982, line = 4983, spell = 7648, unsure = "secret amount" }, -- 306.787 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4984, line = 4985, spell = 7648, unsure = "secret amount" }, -- 306.829 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4987, line = false, unsure = "secret amount" }, -- 306.992 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4988, line = false, unsure = "secret amount" }, -- 306.992 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 4989, line = false, unsure = "secret amount" }, -- 306.992 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 4995, line = false, unsure = "secret amount" }, -- 307.215 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 4996, line = 4999, spell = 11711, unsure = "secret amount" }, -- 307.273 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5000, line = 5001, spell = 11711, unsure = "secret amount" }, -- 307.331 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5003, line = false, unsure = "secret amount" }, -- 307.511 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 5004, line = false, unsure = "secret amount" }, -- 307.613 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5005, line = false, unsure = "secret amount" }, -- 307.613 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5008, line = false, unsure = "secret amount" }, -- 307.613 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5009, line = false, unsure = "on time, of 2 file events" }, -- 307.640 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 5010, line = false, unsure = "secret amount" }, -- 307.690 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.667 s
	{ hit = 5012, line = false, unsure = "secret amount" }, -- 307.961 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.355 s
	{ hit = 5013, line = false, unsure = "secret amount" }, -- 307.978 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 5014, line = false, unsure = "secret amount" }, -- 307.978 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 5017, line = false, unsure = "secret amount" }, -- 307.978 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 5018, line = 5011, spell = false, unsure = "secret amount" }, -- 308.162 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.266 s
	{ hit = 5021, line = 5024, spell = 11711, unsure = "secret amount" }, -- 308.311 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5025, line = false, unsure = "secret amount" }, -- 308.355 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 5031, line = false, unsure = "secret amount" }, -- 308.719 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5036, line = false, unsure = "secret amount" }, -- 308.979 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 5037, line = false, unsure = "secret amount" }, -- 308.979 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 5038, line = false, unsure = "secret amount" }, -- 308.979 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 5041, line = 5042, spell = 11711, unsure = "secret amount" }, -- 309.278 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5043, line = 5044, spell = 11711, unsure = "secret amount" }, -- 309.344 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5045, line = false, unsure = "secret amount" }, -- 309.605 nameplate2 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.001 s
	{ hit = 5046, line = false, unsure = "secret amount" }, -- 309.605 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 5049, line = false, unsure = "secret amount" }, -- 309.605 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 5050, line = false, unsure = "secret amount" }, -- 309.687 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.505 s
	{ hit = 5055, line = 5056, spell = 7648, unsure = "secret amount" }, -- 309.759 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5057, line = 5060, spell = 7648, unsure = "secret amount" }, -- 309.789 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5061, line = 5062, spell = 7648, unsure = "secret amount" }, -- 309.813 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5063, line = false, unsure = "on time, of 2 file events" }, -- 309.863 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 5065, line = false, unsure = "secret amount" }, -- 309.987 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 5066, line = false, unsure = "secret amount" }, -- 309.987 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 5067, line = false, unsure = "secret amount" }, -- 309.987 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 5070, line = false, unsure = "secret amount" }, -- 310.222 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5071, line = 5074, spell = 11711, unsure = "secret amount" }, -- 310.313 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5075, line = false, unsure = "secret amount" }, -- 310.471 nameplate7 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 5076, line = false, unsure = "secret amount" }, -- 310.484 nameplate7 MISS <secret> <- other: Windfury Totem SPELL_MISSED -0.002 s
	{ hit = 5077, line = false, unsure = "secret amount" }, -- 310.503 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 5078, line = 5064, spell = false, unsure = "on time, of 2 file events" }, -- 310.513 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.623 s
	{ hit = 5084, line = false, unsure = "secret amount" }, -- 310.996 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.001 s
	{ hit = 5085, line = false, unsure = "secret amount" }, -- 310.996 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 5089, line = false, unsure = "secret amount" }, -- 310.996 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 5090, line = false, unsure = "secret amount" }, -- 311.112 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5092, line = 5091, spell = 18879, unsure = "secret amount" }, -- 311.246 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5096, line = 5097, spell = 18879, unsure = "secret amount" }, -- 311.246 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 5098, line = 5099, spell = 11711, unsure = "secret amount" }, -- 311.271 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5101, line = false, unsure = "on time, of 2 file events" }, -- 311.304 nameplate7 PARRY <secret> <- other: swing SWING_MISSED +0.989 s
	{ hit = 5102, line = 5103, spell = 11711, unsure = "secret amount" }, -- 311.348 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5104, line = false, unsure = "secret amount" }, -- 311.348 nameplate7 PARRY <secret> <- other: Shield Slam SPELL_MISSED -0.003 s
	{ hit = 5105, line = false, unsure = "secret amount" }, -- 311.619 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5106, line = false, unsure = "secret amount" }, -- 311.619 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5110, line = false, unsure = "secret amount" }, -- 311.619 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5113, line = false, unsure = "on time, of 2 file events" }, -- 311.881 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5114, line = false, unsure = "late by 1.49 s" }, -- 311.930 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.491 s
	{ hit = 5115, line = false, unsure = "secret amount" }, -- 311.979 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 5119, line = false, unsure = "secret amount" }, -- 311.979 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 5120, line = false, unsure = "secret amount" }, -- 311.979 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 5121, line = false, unsure = "2 file events fit" }, -- 312.220 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 5125, line = false, unsure = "secret amount" }, -- 312.244 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 5129, line = 5133, spell = 11711, unsure = "secret amount" }, -- 312.319 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5140, line = 5141, spell = 7648, unsure = "secret amount" }, -- 312.761 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5142, line = false, unsure = "secret amount" }, -- 312.768 nameplate7 DODGE <secret> <- other: swing SWING_MISSED +0.446 s
	{ hit = 5143, line = 5146, spell = 7648, unsure = "secret amount" }, -- 312.797 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5147, line = 5148, spell = 7648, unsure = "secret amount" }, -- 312.820 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5149, line = false, unsure = "secret amount" }, -- 312.852 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 5152, line = false, unsure = "secret amount" }, -- 312.852 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 5153, line = false, unsure = "secret amount" }, -- 312.852 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 5154, line = false, unsure = "secret amount" }, -- 312.986 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 5155, line = false, unsure = "secret amount" }, -- 312.986 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 5158, line = false, unsure = "secret amount" }, -- 312.986 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 5159, line = 5160, spell = 11711, unsure = "secret amount" }, -- 313.271 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5162, line = false, unsure = "secret amount" }, -- 313.329 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.002 s
	{ hit = 5163, line = false, unsure = "secret amount" }, -- 313.336 nameplate5 MISS <secret> <- other: swing SWING_MISSED +0.623 s
	{ hit = 5166, line = 5167, spell = 11711, unsure = "secret amount" }, -- 313.353 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5168, line = 5169, spell = 1949, unsure = "secret amount" }, -- 313.367 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5170, line = false, unsure = "secret amount" }, -- 313.507 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 5171, line = false, unsure = "secret amount" }, -- 313.605 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5172, line = false, unsure = "secret amount" }, -- 313.605 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5173, line = false, unsure = "secret amount" }, -- 313.605 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5176, line = false, unsure = "on time, of 2 file events" }, -- 313.696 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5179, line = false, unsure = "secret amount" }, -- 313.853 nameplate7 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.001 s
	{ hit = 5180, line = false, unsure = "on time, of 2 file events" }, -- 313.871 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 5181, line = false, unsure = "secret amount" }, -- 313.871 nameplate7 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 5182, line = 5161, spell = false, unsure = "secret amount" }, -- 313.919 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.638 s
	{ hit = 5189, line = 5188, spell = 18879, unsure = "on time, of 2 file events" }, -- 314.234 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5192, line = 5193, spell = 18879, unsure = "secret amount" }, -- 314.234 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 5194, line = 5197, spell = 11711, unsure = "secret amount" }, -- 314.296 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5198, line = 5199, spell = 1949, unsure = "secret amount" }, -- 314.371 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5200, line = false, unsure = "secret amount" }, -- 314.786 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.463 s
	{ hit = 5202, line = false, unsure = "secret amount" }, -- 315.061 nameplate7 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.002 s
	{ hit = 5206, line = 5207, spell = 11711, unsure = "secret amount" }, -- 315.270 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5210, line = false, unsure = "late by 1.47 s" }, -- 315.328 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.474 s
	{ hit = 5211, line = 5212, spell = 11711, unsure = "secret amount" }, -- 315.345 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5213, line = false, unsure = "secret amount" }, -- 315.358 nameplate2 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 5214, line = false, unsure = "secret amount" }, -- 315.358 nameplate7 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 5215, line = false, unsure = "secret amount" }, -- 315.358 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 5218, line = 5208, spell = false, unsure = "secret amount" }, -- 315.539 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.261 s
	{ hit = 5221, line = false, unsure = "secret amount" }, -- 315.605 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 5222, line = false, unsure = "secret amount" }, -- 315.605 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 5225, line = false, unsure = "secret amount" }, -- 315.605 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 5226, line = false, unsure = "secret amount" }, -- 315.703 nameplate7 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 5227, line = 5228, spell = 7648, unsure = "secret amount" }, -- 315.762 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5233, line = 5234, spell = 7648, unsure = "secret amount" }, -- 315.804 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5235, line = 5238, spell = 7648, unsure = "secret amount" }, -- 315.828 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5244, line = false, unsure = "secret amount" }, -- 316.111 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 5245, line = 5246, spell = 11711, unsure = "secret amount" }, -- 316.304 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5247, line = false, unsure = "secret amount" }, -- 316.511 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 5249, line = 5248, spell = 7641, unsure = "secret amount" }, -- 316.511 nameplate2 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE -0.002 s
	{ hit = 5255, line = false, unsure = "secret amount" }, -- 316.783 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.454 s
	{ hit = 5256, line = false, unsure = "secret amount" }, -- 316.869 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.630 s
	{ hit = 5258, line = 5257, spell = 18879, unsure = "secret amount" }, -- 317.244 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5259, line = 5260, spell = 18879, unsure = "secret amount" }, -- 317.244 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 5261, line = 5262, spell = 11711, unsure = "secret amount" }, -- 317.279 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5263, line = false, unsure = "on time, of 2 file events" }, -- 317.279 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 5265, line = false, unsure = "secret amount" }, -- 317.311 nameplate7 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 5266, line = 5269, spell = 11711, unsure = "secret amount" }, -- 317.338 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5270, line = false, unsure = "on time, of 2 file events" }, -- 317.494 nameplate7 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.002 s
	{ hit = 5273, line = false, unsure = "secret amount" }, -- 317.628 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 5276, line = false, unsure = "secret amount" }, -- 317.628 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 5277, line = false, unsure = "secret amount" }, -- 317.628 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5278, line = 5264, spell = false, unsure = "secret amount" }, -- 317.628 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.340 s
	{ hit = 5279, line = false, unsure = "secret amount" }, -- 317.842 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.001 s
	{ hit = 5282, line = false, unsure = "secret amount" }, -- 318.244 nameplate8 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.003 s
	{ hit = 5283, line = 5284, spell = 11711, unsure = "secret amount" }, -- 318.311 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5288, line = false, unsure = "late by 1.48 s" }, -- 318.729 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.482 s
	{ hit = 5289, line = 5290, spell = 7648, unsure = "secret amount" }, -- 318.755 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5291, line = 5292, spell = 7648, unsure = "secret amount" }, -- 318.783 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.011 s
	{ hit = 5293, line = 5294, spell = 7648, unsure = "secret amount" }, -- 318.821 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5295, line = false, unsure = "secret amount" }, -- 318.854 nameplate8 MISS <secret> <- other: Windfury Totem SPELL_MISSED -0.001 s
	{ hit = 5298, line = false, unsure = "secret amount" }, -- 319.079 nameplate2 MISS <secret> <- other: Shoot RANGE_MISSED -0.004 s
	{ hit = 5299, line = false, unsure = "secret amount" }, -- 319.138 nameplate8 PARRY <secret> <- other: Shield Bash SPELL_MISSED -0.002 s
	{ hit = 5302, line = 5303, spell = 11711, unsure = "secret amount" }, -- 319.262 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5307, line = 5308, spell = 11711, unsure = "secret amount" }, -- 319.338 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5311, line = false, unsure = "secret amount" }, -- 319.613 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5312, line = false, unsure = "secret amount" }, -- 319.613 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5313, line = false, unsure = "secret amount" }, -- 319.613 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5316, line = false, unsure = "secret amount" }, -- 319.613 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5317, line = 5304, spell = false, unsure = "secret amount" }, -- 319.613 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.323 s
	{ hit = 5318, line = false, unsure = "secret amount" }, -- 319.828 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.999 s
	{ hit = 5324, line = false, unsure = "secret amount" }, -- 320.086 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5325, line = false, unsure = "secret amount" }, -- 320.105 nameplate2 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 5330, line = 5329, spell = 18879, unsure = "on time, of 2 file events" }, -- 320.238 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5331, line = 5332, spell = 18879, unsure = "secret amount" }, -- 320.238 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 5333, line = false, unsure = "secret amount" }, -- 320.288 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.501 s
	{ hit = 5334, line = 5335, spell = 11711, unsure = "secret amount" }, -- 320.304 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5344, line = 5345, spell = 11711, unsure = "secret amount" }, -- 321.269 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5350, line = false, unsure = "secret amount" }, -- 321.611 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 5351, line = 5352, spell = 7648, unsure = "secret amount" }, -- 321.764 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5353, line = 5356, spell = 7648, unsure = "secret amount" }, -- 321.788 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5357, line = false, unsure = "2 file events fit" }, -- 321.825 nameplate7 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 5358, line = false, unsure = "secret amount" }, -- 321.862 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 5363, line = 5362, spell = 7651, unsure = "on time, of 2 file events" }, -- 322.206 nameplate5 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5366, line = 5367, spell = 7651, unsure = "secret amount" }, -- 322.206 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 5368, line = 5371, spell = 11711, unsure = "secret amount" }, -- 322.303 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5374, line = false, unsure = "late by 1.02 s" }, -- 322.869 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.022 s
	{ hit = 5375, line = false, unsure = "on time, of 2 file events" }, -- 322.997 nameplate7 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.001 s
	{ hit = 5377, line = 5376, spell = 7651, unsure = "2 file events fit" }, -- 323.213 nameplate5 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5380, line = 5381, spell = 7651, unsure = "2 file events fit" }, -- 323.213 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 5383, line = 5382, spell = 18879, unsure = "secret amount" }, -- 323.246 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5386, line = 5387, spell = 18879, unsure = "secret amount" }, -- 323.246 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 5389, line = 5390, spell = 11711, unsure = "secret amount" }, -- 323.336 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5391, line = 5388, spell = false, unsure = "on time, of 3 file events" }, -- 323.628 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.330 s
	{ hit = 5392, line = false, unsure = "2 file events fit" }, -- 323.822 nameplate7 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.298 s
	{ hit = 5393, line = false, unsure = "secret amount" }, -- 324.087 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.002 s
	{ hit = 5394, line = false, unsure = "secret amount" }, -- 324.087 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 5398, line = false, unsure = "secret amount" }, -- 324.120 nameplate6 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 5399, line = false, unsure = "no file event fits" }, -- 324.127 pet HEAL <secret> <- no file event 
	{ hit = 5400, line = false, unsure = "secret amount" }, -- 324.183 nameplate7 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.659 s
	{ hit = 5402, line = 5401, spell = 7651, unsure = "on time, of 2 file events" }, -- 324.208 nameplate5 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5405, line = 5406, spell = 7651, unsure = "secret amount" }, -- 324.208 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 5407, line = 5410, spell = 11711, unsure = "secret amount" }, -- 324.303 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5411, line = false, unsure = "on time, of 2 file events" }, -- 324.428 nameplate6 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.002 s
	{ hit = 5412, line = false, unsure = "on time, of 3 file events" }, -- 324.578 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.001 s
	{ hit = 5413, line = false, unsure = "secret amount" }, -- 324.604 nameplate6 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 5414, line = false, unsure = "late by 1.18 s" }, -- 324.669 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.178 s
	{ hit = 5415, line = false, unsure = "on time, of 2 file events" }, -- 325.146 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.600 s
	{ hit = 5418, line = 5417, spell = 7651, unsure = "secret amount" }, -- 325.204 nameplate5 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5422, line = 5423, spell = 7651, unsure = "secret amount" }, -- 325.204 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 5426, line = false, unsure = "secret amount" }, -- 325.247 nameplate6 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.002 s
	{ hit = 5428, line = false, unsure = "late by 1.50 s" }, -- 325.552 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.496 s
	{ hit = 5434, line = false, unsure = "secret amount" }, -- 325.761 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.002 s
	{ hit = 5442, line = false, unsure = "secret amount" }, -- 326.706 nameplate4 MISS <secret> <- other: swing SWING_MISSED +0.492 s
	{ hit = 5444, line = false, unsure = "secret amount" }, -- 327.089 nameplate7 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.002 s
	{ hit = 5447, line = false, unsure = "on time, of 2 file events" }, -- 327.244 nameplate7 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.002 s
	{ hit = 5448, line = 5441, spell = false, unsure = "secret amount" }, -- 327.244 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.697 s
	{ hit = 5449, line = false, unsure = "secret amount" }, -- 327.482 nameplate7 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 5450, line = false, unsure = "secret amount" }, -- 327.539 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.085 s
	{ hit = 5462, line = 5465, spell = 5019, unsure = "secret amount" }, -- 329.511 nameplate4 MISS <secret> <- you: Shoot RANGE_MISSED -0.003 s
	{ hit = 5466, line = false, unsure = "secret amount" }, -- 329.538 nameplate4 WOUND <secret> <- other: Shoot RANGE_DAMAGE +0.007 s
	{ hit = 5471, line = false, unsure = "secret amount" }, -- 330.311 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.340 s
	{ hit = 5477, line = 5475, spell = 5019, unsure = "secret amount" }, -- 330.913 nameplate4 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.234 s
	{ hit = 5524, line = false, unsure = "secret amount" }, -- 347.236 nameplate4 DODGE <secret> <- other: swing SWING_MISSED +0.357 s
	{ hit = 5525, line = false, unsure = "secret amount" }, -- 347.319 nameplate5 MISS <secret> <- other: Shield Slam SPELL_MISSED -0.002 s
	{ hit = 5528, line = 5529, spell = 1260270, unsure = "secret amount" }, -- 347.619 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 5532, line = false, unsure = "secret amount" }, -- 348.671 nameplate4 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 5533, line = false, unsure = "secret amount" }, -- 348.703 nameplate4 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.002 s
	{ hit = 5536, line = 5537, spell = 1260270, unsure = "secret amount" }, -- 348.819 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 5538, line = false, unsure = "on time, of 2 file events" }, -- 348.979 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 5539, line = false, unsure = "secret amount" }, -- 348.979 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 5541, line = false, unsure = "secret amount" }, -- 349.315 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.598 s
	{ hit = 5542, line = false, unsure = "secret amount" }, -- 349.413 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5548, line = false, unsure = "secret amount" }, -- 349.846 nameplate4 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.002 s
	{ hit = 5549, line = false, unsure = "secret amount" }, -- 349.946 nameplate4 MISS <secret> <- other: swing SWING_MISSED +0.361 s
	{ hit = 5550, line = 5551, spell = 1260270, unsure = "secret amount" }, -- 350.013 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 5552, line = false, unsure = "secret amount" }, -- 350.321 player HEAL <secret> <- other: Heal SPELL_HEAL -0.002 s
	{ hit = 5555, line = false, unsure = "secret amount" }, -- 350.530 nameplate4 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 5556, line = 5557, spell = 1260270, unsure = "secret amount" }, -- 351.228 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 5560, line = false, unsure = "on time, of 2 file events" }, -- 352.088 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.498 s
	{ hit = 5561, line = false, unsure = "secret amount" }, -- 352.161 nameplate4 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 5565, line = false, unsure = "secret amount" }, -- 352.879 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.598 s
	{ hit = 5568, line = false, unsure = "on time, of 2 file events" }, -- 353.205 nameplate4 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5570, line = false, unsure = "late by 1.49 s" }, -- 353.611 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +1.490 s
	{ hit = 5576, line = 5569, spell = false, unsure = "secret amount" }, -- 354.037 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.631 s
	{ hit = 5584, line = false, unsure = "secret amount" }, -- 355.169 nameplate5 PARRY <secret> <- other: Shield Slam SPELL_MISSED -0.002 s
	{ hit = 5589, line = false, unsure = "secret amount" }, -- 355.286 nameplate4 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5591, line = false, unsure = "secret amount" }, -- 355.571 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 5594, line = false, unsure = "secret amount" }, -- 355.613 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.495 s
	{ hit = 5595, line = 5590, spell = false, unsure = "on time, of 2 file events" }, -- 355.674 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.261 s
	{ hit = 5598, line = false, unsure = "2 file events fit" }, -- 355.962 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5601, line = 5604, spell = 11711, unsure = "2 file events fit" }, -- 355.962 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5605, line = false, unsure = "secret amount" }, -- 355.962 nameplate5 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE -0.003 s
	{ hit = 5608, line = false, unsure = "secret amount" }, -- 355.971 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.991 s
	{ hit = 5614, line = false, unsure = "secret amount" }, -- 356.571 nameplate4 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5615, line = false, unsure = "secret amount" }, -- 356.671 nameplate5 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 5618, line = false, unsure = "secret amount" }, -- 356.671 nameplate5 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 5623, line = false, unsure = "secret amount" }, -- 356.799 nameplate4 WOUND <secret> <- other: Shoot RANGE_DAMAGE +0.008 s
	{ hit = 5624, line = false, unsure = "late by 1.49 s" }, -- 357.032 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.492 s
	{ hit = 5630, line = false, unsure = "secret amount" }, -- 357.263 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 5631, line = false, unsure = "secret amount" }, -- 357.263 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 5635, line = 5634, spell = false, unsure = "secret amount" }, -- 357.679 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.263 s
	{ hit = 5638, line = 5641, spell = 11711, unsure = "secret amount" }, -- 357.719 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5642, line = 5645, spell = 7648, unsure = "secret amount" }, -- 358.215 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5646, line = false, unsure = "secret amount" }, -- 358.215 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.525 s
	{ hit = 5647, line = false, unsure = "secret amount" }, -- 358.305 nameplate4 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5653, line = false, unsure = "secret amount" }, -- 358.964 nameplate5 MISS <secret> <- other: Seal of Command SPELL_MISSED -0.002 s
	{ hit = 5656, line = false, unsure = "secret amount" }, -- 359.154 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.505 s
	{ hit = 5658, line = false, unsure = "secret amount" }, -- 359.523 nameplate4 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 5660, line = 5659, spell = 18879, unsure = "secret amount" }, -- 359.694 nameplate4 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5661, line = 5662, spell = 18879, unsure = "secret amount" }, -- 359.694 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 5663, line = 5666, spell = 11711, unsure = "secret amount" }, -- 359.719 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5667, line = 5657, spell = false, unsure = "on time, of 2 file events" }, -- 359.753 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.330 s
	{ hit = 5670, line = false, unsure = "secret amount" }, -- 359.821 nameplate4 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5671, line = false, unsure = "secret amount" }, -- 359.849 nameplate5 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 5676, line = false, unsure = "secret amount" }, -- 359.938 nameplate4 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5677, line = false, unsure = "secret amount" }, -- 360.154 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.458 s
	{ hit = 5682, line = false, unsure = "on time, of 2 file events" }, -- 360.446 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.492 s
	{ hit = 5683, line = false, unsure = "secret amount" }, -- 360.488 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5687, line = 5688, spell = 7648, unsure = "secret amount" }, -- 361.228 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5689, line = false, unsure = "secret amount" }, -- 361.329 nameplate4 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5694, line = 5693, spell = 18879, unsure = "secret amount" }, -- 361.429 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5695, line = 5696, spell = 18879, unsure = "secret amount" }, -- 361.429 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 5697, line = false, unsure = "secret amount" }, -- 361.449 nameplate4 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.001 s
	{ hit = 5700, line = 5701, spell = 11711, unsure = "secret amount" }, -- 361.720 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5702, line = false, unsure = "secret amount" }, -- 361.720 nameplate4 PARRY <secret> <- other: Windfury Totem SPELL_MISSED -0.003 s
	{ hit = 5709, line = 5708, spell = 2941, unsure = "secret amount" }, -- 361.903 nameplate5 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.003 s
	{ hit = 5710, line = 5692, spell = false, unsure = "secret amount" }, -- 362.054 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.623 s
	{ hit = 5711, line = false, unsure = "secret amount" }, -- 362.166 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.460 s
	{ hit = 5714, line = false, unsure = "secret amount" }, -- 362.383 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 5716, line = 5715, spell = 18879, unsure = "secret amount" }, -- 362.703 nameplate4 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5719, line = 5720, spell = 18879, unsure = "secret amount" }, -- 362.703 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 5721, line = false, unsure = "secret amount" }, -- 362.807 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.619 s
	{ hit = 5724, line = false, unsure = "secret amount" }, -- 362.841 nameplate4 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5735, line = false, unsure = "secret amount" }, -- 363.523 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 5738, line = false, unsure = "on time, of 2 file events" }, -- 363.523 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 5739, line = 5734, spell = false, unsure = "secret amount" }, -- 363.703 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.265 s
	{ hit = 5740, line = 5741, spell = 11711, unsure = "secret amount" }, -- 363.719 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5742, line = false, unsure = "late by 1.49 s" }, -- 363.838 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.492 s
	{ hit = 5743, line = 5746, spell = 11711, unsure = "secret amount" }, -- 363.902 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5747, line = 5748, spell = 7648, unsure = "secret amount" }, -- 364.215 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5750, line = 5749, spell = 18879, unsure = "secret amount" }, -- 364.430 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5751, line = 5752, spell = 18879, unsure = "secret amount" }, -- 364.430 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 5753, line = false, unsure = "secret amount" }, -- 364.473 nameplate5 PARRY <secret> <- other: swing SWING_MISSED +0.752 s
	{ hit = 5754, line = false, unsure = "secret amount" }, -- 364.613 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5759, line = 5760, spell = 2941, unsure = "secret amount" }, -- 364.903 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5761, line = false, unsure = "secret amount" }, -- 364.964 nameplate4 WOUND <secret> <- other: Lightning Bolt SPELL_DAMAGE +0.101 s
	{ hit = 5766, line = 5765, spell = 18879, unsure = "secret amount" }, -- 365.697 nameplate4 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5769, line = false, unsure = "secret amount" }, -- 365.697 nameplate5 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 5770, line = 5771, spell = 18879, unsure = "secret amount" }, -- 365.697 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 5772, line = 5773, spell = 11711, unsure = "secret amount" }, -- 365.719 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5774, line = 5777, spell = 11711, unsure = "secret amount" }, -- 365.911 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5778, line = false, unsure = "2 file events fit" }, -- 366.069 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.348 s
	{ hit = 5779, line = false, unsure = "2 file events fit" }, -- 366.086 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.332 s
	{ hit = 5780, line = false, unsure = "secret amount" }, -- 366.127 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5781, line = false, unsure = "secret amount" }, -- 366.219 nameplate4 MISS <secret> <- other: swing SWING_MISSED +0.498 s
	{ hit = 5789, line = 5792, spell = 7648, unsure = "secret amount" }, -- 366.386 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5793, line = 5764, spell = false, unsure = "secret amount" }, -- 366.405 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.965 s
	{ hit = 5794, line = false, unsure = "secret amount" }, -- 366.686 nameplate4 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.002 s
	{ hit = 5797, line = 5798, spell = 7648, unsure = "secret amount" }, -- 367.211 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5802, line = 5801, spell = 18879, unsure = "secret amount" }, -- 367.428 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5803, line = 5804, spell = 18879, unsure = "secret amount" }, -- 367.428 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 5806, line = false, unsure = "secret amount" }, -- 367.624 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5807, line = 5808, spell = 11711, unsure = "secret amount" }, -- 367.728 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5809, line = 5805, spell = false, unsure = "secret amount" }, -- 367.780 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.326 s
	{ hit = 5813, line = 5814, spell = 2941, unsure = "secret amount" }, -- 367.903 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5815, line = 5818, spell = 11711, unsure = "secret amount" }, -- 367.903 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5819, line = false, unsure = "secret amount" }, -- 368.504 nameplate4 PARRY <secret> <- other: Stormstrike SPELL_MISSED -0.003 s
	{ hit = 5823, line = 5822, spell = 18879, unsure = "secret amount" }, -- 368.696 nameplate4 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5826, line = 5827, spell = 18879, unsure = "secret amount" }, -- 368.696 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 5829, line = 5828, spell = 7651, unsure = "secret amount" }, -- 368.847 nameplate4 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5832, line = 5833, spell = 7651, unsure = "secret amount" }, -- 368.847 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 5834, line = false, unsure = "on time, of 2 file events" }, -- 369.069 nameplate5 WOUND <secret> <- other: Shield Bash SPELL_DAMAGE -0.002 s
	{ hit = 5835, line = false, unsure = "secret amount" }, -- 369.138 nameplate4 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5838, line = false, unsure = "secret amount" }, -- 369.194 nameplate5 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.002 s
	{ hit = 5839, line = false, unsure = "secret amount" }, -- 369.194 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 5842, line = false, unsure = "secret amount" }, -- 369.238 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE +0.090 s
	{ hit = 5843, line = 5846, spell = 7648, unsure = "secret amount" }, -- 369.389 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5851, line = 5847, spell = false, unsure = "2 file events fit" }, -- 369.686 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.236 s
	{ hit = 5854, line = 5853, spell = 7651, unsure = "on time, of 2 file events" }, -- 369.849 nameplate4 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 5857, line = 5858, spell = 7651, unsure = "secret amount" }, -- 369.849 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 5859, line = false, unsure = "secret amount" }, -- 369.895 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.639 s
	{ hit = 5862, line = 5865, spell = 11711, unsure = "secret amount" }, -- 369.909 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5866, line = false, unsure = "secret amount" }, -- 370.461 nameplate4 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.002 s
	{ hit = 5869, line = false, unsure = "secret amount" }, -- 370.494 nameplate4 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 5873, line = 5872, spell = 7651, unsure = "secret amount" }, -- 370.837 nameplate4 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5876, line = 5877, spell = 7651, unsure = "secret amount" }, -- 370.837 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 5878, line = false, unsure = "secret amount" }, -- 370.862 nameplate4 PARRY <secret> <- other: Revenge SPELL_MISSED -0.003 s
	{ hit = 5882, line = false, unsure = "on time, of 2 file events" }, -- 371.503 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.363 s
	{ hit = 5887, line = 5886, spell = 18879, unsure = "secret amount" }, -- 371.706 nameplate4 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5890, line = 5891, spell = 18879, unsure = "secret amount" }, -- 371.706 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 5894, line = 5893, spell = 7651, unsure = "on time, of 2 file events" }, -- 371.837 nameplate4 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5897, line = 5898, spell = 7651, unsure = "secret amount" }, -- 371.837 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 5899, line = 5902, spell = 11711, unsure = "secret amount" }, -- 371.911 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5903, line = false, unsure = "secret amount" }, -- 372.089 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.002 s
	{ hit = 5908, line = 5911, spell = 7648, unsure = "secret amount" }, -- 372.394 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5912, line = 5881, spell = false, unsure = "secret amount" }, -- 372.438 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.992 s
	{ hit = 5939, line = false, unsure = "on time, of 3 file events" }, -- 377.742 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5944, line = false, unsure = "secret amount" }, -- 378.552 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 5947, line = false, unsure = "secret amount" }, -- 378.552 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 5950, line = false, unsure = "secret amount" }, -- 378.849 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 5953, line = false, unsure = "secret amount" }, -- 379.636 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.690 s
	{ hit = 5959, line = false, unsure = "secret amount" }, -- 380.053 nameplate5 DODGE <secret> <- other: Revenge SPELL_MISSED -0.002 s
	{ hit = 5964, line = false, unsure = "secret amount" }, -- 380.446 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.621 s
	{ hit = 5968, line = 5971, spell = 11711, unsure = "secret amount" }, -- 380.820 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5972, line = false, unsure = "on time, of 2 file events" }, -- 380.936 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 5978, line = 5967, spell = false, unsure = "on time, of 2 file events" }, -- 381.761 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.998 s
	{ hit = 5986, line = false, unsure = "secret amount" }, -- 382.004 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.349 s
	{ hit = 5990, line = false, unsure = "secret amount" }, -- 382.554 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.003 s
	{ hit = 5992, line = 5993, spell = 11711, unsure = "secret amount" }, -- 382.829 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5994, line = 5991, spell = false, unsure = "on time, of 2 file events" }, -- 383.088 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.328 s
	{ hit = 5995, line = false, unsure = "secret amount" }, -- 383.136 nameplate5 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.002 s
	{ hit = 5998, line = 5999, spell = 7648, unsure = "secret amount" }, -- 383.322 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6000, line = false, unsure = "2 file events fit" }, -- 383.979 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 6001, line = false, unsure = "secret amount" }, -- 384.338 nameplate4 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 6007, line = false, unsure = "on time, of 2 file events" }, -- 384.638 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6010, line = false, unsure = "on time, of 2 file events" }, -- 384.638 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6011, line = 6014, spell = false, unsure = "2 file events fit" }, -- 384.688 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE -0.091 s
	{ hit = 6016, line = 6015, spell = 18879, unsure = "secret amount" }, -- 384.800 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6017, line = 6018, spell = 18879, unsure = "secret amount" }, -- 384.800 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6019, line = 6020, spell = 11711, unsure = "secret amount" }, -- 384.827 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6021, line = false, unsure = "secret amount" }, -- 384.879 nameplate4 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.002 s
	{ hit = 6024, line = false, unsure = "no file event fits" }, -- 385.029 nameplate5 WOUND <secret> <- no file event 
	{ hit = 6025, line = 6028, spell = 11711, unsure = "on time, of 2 file events" }, -- 385.288 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6029, line = false, unsure = "secret amount" }, -- 385.346 nameplate4 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.002 s
	{ hit = 6032, line = false, unsure = "secret amount" }, -- 385.346 nameplate4 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 6035, line = false, unsure = "secret amount" }, -- 385.346 nameplate4 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.002 s
	{ hit = 6040, line = false, unsure = "secret amount" }, -- 385.379 nameplate4 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 6043, line = false, unsure = "2 file events fit" }, -- 385.587 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.270 s
	{ hit = 6051, line = 6052, spell = 7648, unsure = "secret amount" }, -- 386.320 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6054, line = false, unsure = "no file event fits" }, -- 386.804 nameplate4 WOUND <secret> <- no file event 
	{ hit = 6057, line = 6058, spell = 11711, unsure = "secret amount" }, -- 386.829 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6065, line = 6053, spell = false, unsure = "secret amount" }, -- 387.114 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.333 s
	{ hit = 6068, line = 6071, spell = 11711, unsure = "secret amount" }, -- 387.286 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6072, line = false, unsure = "secret amount" }, -- 387.336 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.002 s
	{ hit = 6073, line = false, unsure = "secret amount" }, -- 387.528 nameplate4 MISS <secret> <- other: swing SWING_MISSED +0.459 s
	{ hit = 6076, line = false, unsure = "on time, of 2 file events" }, -- 387.658 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 6079, line = 6082, spell = 7648, unsure = "secret amount" }, -- 387.765 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6084, line = 6083, spell = 18879, unsure = "secret amount" }, -- 387.797 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6085, line = 6086, spell = 18879, unsure = "secret amount" }, -- 387.797 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6090, line = false, unsure = "late by 1.32 s" }, -- 388.221 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.322 s
	{ hit = 6092, line = 6091, spell = 7641, unsure = "secret amount" }, -- 388.587 nameplate4 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE -0.002 s
	{ hit = 6095, line = false, unsure = "secret amount" }, -- 388.733 nameplate4 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.002 s
	{ hit = 6099, line = 6101, spell = 11711, unsure = "secret amount" }, -- 388.819 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6102, line = 6098, spell = false, unsure = "on time, of 2 file events" }, -- 389.036 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.262 s
	{ hit = 6105, line = false, unsure = "secret amount" }, -- 389.105 nameplate4 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 6110, line = 6109, spell = 18879, unsure = "2 file events fit" }, -- 389.255 nameplate4 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6113, line = 6114, spell = 18879, unsure = "secret amount" }, -- 389.255 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6115, line = 6118, spell = 11711, unsure = "secret amount" }, -- 389.287 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6119, line = 6121, spell = 7648, unsure = "secret amount" }, -- 389.321 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6122, line = false, unsure = "secret amount" }, -- 389.328 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.593 s
	{ hit = 6125, line = false, unsure = "secret amount" }, -- 389.486 nameplate4 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 6128, line = false, unsure = "secret amount" }, -- 389.536 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.463 s
	{ hit = 6133, line = false, unsure = "secret amount" }, -- 390.454 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 6134, line = 6137, spell = 7648, unsure = "secret amount" }, -- 390.780 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6139, line = 6138, spell = 18879, unsure = "2 file events fit" }, -- 390.814 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6140, line = 6141, spell = 18879, unsure = "secret amount" }, -- 390.814 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6142, line = 6143, spell = 11711, unsure = "secret amount" }, -- 390.830 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6144, line = false, unsure = "secret amount" }, -- 390.912 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.490 s
	{ hit = 6145, line = false, unsure = "secret amount" }, -- 391.013 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 6146, line = false, unsure = "secret amount" }, -- 391.062 nameplate4 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 6153, line = 6156, spell = 11711, unsure = "secret amount" }, -- 391.283 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6160, line = false, unsure = "secret amount" }, -- 391.538 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.465 s
	{ hit = 6163, line = false, unsure = "on time, of 2 file events" }, -- 391.664 nameplate4 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 6166, line = 6152, spell = false, unsure = "secret amount" }, -- 391.872 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.622 s
	{ hit = 6169, line = false, unsure = "secret amount" }, -- 391.979 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 6171, line = 6170, spell = 7651, unsure = "secret amount" }, -- 392.079 nameplate4 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6174, line = 6175, spell = 7651, unsure = "secret amount" }, -- 392.079 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 6180, line = 6179, spell = 18879, unsure = "secret amount" }, -- 392.246 nameplate4 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6183, line = 6184, spell = 18879, unsure = "secret amount" }, -- 392.246 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6185, line = 6186, spell = 7648, unsure = "secret amount" }, -- 392.319 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6187, line = false, unsure = "on time, of 2 file events" }, -- 392.328 nameplate4 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 6190, line = false, unsure = "on time, of 2 file events" }, -- 392.358 nameplate4 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 6193, line = false, unsure = "secret amount" }, -- 392.392 nameplate4 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 6196, line = 6197, spell = 11711, unsure = "secret amount" }, -- 392.823 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6199, line = 6198, spell = 7651, unsure = "secret amount" }, -- 393.087 nameplate4 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6202, line = 6203, spell = 7651, unsure = "secret amount" }, -- 393.087 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 6204, line = false, unsure = "on time, of 2 file events" }, -- 393.203 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 6206, line = 6209, spell = 11711, unsure = "secret amount" }, -- 393.290 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6210, line = false, unsure = "secret amount" }, -- 393.544 nameplate4 MISS <secret> <- other: swing SWING_MISSED +0.463 s
	{ hit = 6213, line = 6205, spell = false, unsure = "on time, of 2 file events" }, -- 393.586 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.328 s
	{ hit = 6216, line = false, unsure = "late by 1.48 s" }, -- 393.613 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +1.484 s
	{ hit = 6219, line = 6222, spell = 7648, unsure = "secret amount" }, -- 393.770 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6223, line = false, unsure = "secret amount" }, -- 393.788 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.624 s
	{ hit = 6225, line = 6224, spell = 18879, unsure = "secret amount" }, -- 393.802 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6226, line = 6227, spell = 18879, unsure = "secret amount" }, -- 393.802 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6229, line = 6228, spell = 7651, unsure = "secret amount" }, -- 394.078 nameplate4 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6232, line = 6233, spell = 7651, unsure = "secret amount" }, -- 394.078 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 6234, line = false, unsure = "secret amount" }, -- 394.411 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.002 s
	{ hit = 6235, line = 6236, spell = 11711, unsure = "secret amount" }, -- 394.829 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6237, line = false, unsure = "secret amount" }, -- 394.871 nameplate4 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.002 s
	{ hit = 6243, line = 6242, spell = 7651, unsure = "secret amount" }, -- 395.095 nameplate4 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6246, line = 6247, spell = 7651, unsure = "secret amount" }, -- 395.095 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 6249, line = 6248, spell = 18879, unsure = "secret amount" }, -- 395.238 nameplate4 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6252, line = 6253, spell = 18879, unsure = "secret amount" }, -- 395.238 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6255, line = 6258, spell = 11711, unsure = "secret amount" }, -- 395.294 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6259, line = 6260, spell = 7648, unsure = "secret amount" }, -- 395.321 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6261, line = 6254, spell = false, unsure = "secret amount" }, -- 395.521 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.258 s
	{ hit = 6266, line = 6265, spell = 7651, unsure = "secret amount" }, -- 396.083 nameplate4 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6269, line = 6270, spell = 7651, unsure = "secret amount" }, -- 396.083 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 6274, line = 6277, spell = 7648, unsure = "secret amount" }, -- 396.771 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6280, line = 6279, spell = 18879, unsure = "on time, of 3 file events" }, -- 396.802 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6281, line = 6282, spell = 18879, unsure = "secret amount" }, -- 396.802 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 6283, line = 6284, spell = 11711, unsure = "secret amount" }, -- 396.839 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6307, line = false, unsure = "secret amount" }, -- 409.911 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 6311, line = false, unsure = "two creatures fit nameplate5" }, -- 410.304 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.358 s
	{ hit = 6314, line = false, unsure = "on time, of 2 file events" }, -- 410.475 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 6315, line = false, unsure = "secret amount" }, -- 410.564 nameplate6 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.002 s
	{ hit = 6316, line = false, unsure = "secret amount" }, -- 410.595 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 6317, line = false, unsure = "secret amount" }, -- 410.595 nameplate6 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 6321, line = false, unsure = "two creatures fit nameplate5" }, -- 410.679 nameplate5 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.002 s
	{ hit = 6326, line = false, unsure = "two creatures fit nameplate5" }, -- 410.928 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE +0.082 s
	{ hit = 6331, line = false, unsure = "secret amount" }, -- 411.253 nameplate6 DODGE <secret> <- other: Holy Strike SPELL_MISSED -0.003 s
	{ hit = 6336, line = false, unsure = "secret amount" }, -- 412.003 nameplate6 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 6337, line = false, unsure = "no file event fits" }, -- 412.069 nameplate6 WOUND <secret> <- no file event 
	{ hit = 6338, line = 6341, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 412.127 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6342, line = false, unsure = "2 file events fit" }, -- 412.402 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.008 s
	{ hit = 6345, line = 6333, spell = false, unsure = "two creatures fit nameplate5" }, -- 412.408 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.994 s
	{ hit = 6351, line = false, unsure = "secret amount" }, -- 412.922 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 6352, line = false, unsure = "secret amount" }, -- 413.013 nameplate6 MISS <secret> <- other: swing SWING_MISSED +0.364 s
	{ hit = 6357, line = false, unsure = "secret amount" }, -- 413.694 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 6358, line = 6356, spell = false, unsure = "two creatures fit nameplate5" }, -- 413.694 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.275 s
	{ hit = 6362, line = false, unsure = "secret amount" }, -- 413.719 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 6369, line = false, unsure = "two creatures fit nameplate5" }, -- 413.961 nameplate5 MISS <secret> <- other: Shoot RANGE_MISSED -0.003 s
	{ hit = 6372, line = 6373, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 414.111 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6376, line = false, unsure = "secret amount" }, -- 414.569 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.596 s
	{ hit = 6379, line = 6380, spell = 7648, unsure = "two creatures fit nameplate5" }, -- 414.611 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6384, line = false, unsure = "secret amount" }, -- 414.977 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 6389, line = false, unsure = "secret amount" }, -- 414.994 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE +0.029 s
	{ hit = 6392, line = false, unsure = "on time, of 4 file events" }, -- 415.186 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6395, line = false, unsure = "two creatures fit nameplate5" }, -- 415.186 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6396, line = false, unsure = "3 file events fit" }, -- 415.362 nameplate6 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.239 s
	{ hit = 6400, line = false, unsure = "on time, of 3 file events" }, -- 415.786 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.027 s
	{ hit = 6403, line = false, unsure = "2 file events fit" }, -- 415.811 nameplate6 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.688 s
	{ hit = 6406, line = false, unsure = "secret amount" }, -- 415.921 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 6408, line = 6407, spell = 18879, unsure = "2 file events fit" }, -- 416.087 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6409, line = 6410, spell = 18879, unsure = "secret amount" }, -- 416.087 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 6411, line = 6412, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 416.120 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6415, line = 6399, spell = false, unsure = "two creatures fit nameplate5" }, -- 416.411 nameplate5 DODGE <secret> <- pet: swing SWING_MISSED +0.990 s
	{ hit = 6416, line = 6419, spell = 11711, unsure = "secret amount" }, -- 416.579 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6420, line = false, unsure = "secret amount" }, -- 416.694 nameplate3 WOUND <secret> <- other: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 6425, line = false, unsure = "no file event fits" }, -- 417.094 nameplate6 WOUND <secret> <- no file event 
	{ hit = 6432, line = 6433, spell = 7648, unsure = "two creatures fit nameplate5" }, -- 417.612 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6436, line = 6428, spell = false, unsure = "secret amount" }, -- 418.061 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.623 s
	{ hit = 6439, line = 6440, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 418.111 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6442, line = false, unsure = "secret amount" }, -- 418.252 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.355 s
	{ hit = 6445, line = false, unsure = "secret amount" }, -- 418.394 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 6448, line = false, unsure = "two creatures fit nameplate5" }, -- 418.404 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 6449, line = 6450, spell = 11711, unsure = "secret amount" }, -- 418.561 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6451, line = false, unsure = "secret amount" }, -- 418.711 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 6454, line = false, unsure = "secret amount" }, -- 418.827 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE +0.021 s
	{ hit = 6455, line = false, unsure = "secret amount" }, -- 418.911 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 6456, line = false, unsure = "two creatures fit nameplate5" }, -- 419.053 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 6458, line = 6457, spell = 18879, unsure = "two creatures fit nameplate5" }, -- 419.072 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6459, line = 6460, spell = 18879, unsure = "secret amount" }, -- 419.072 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6461, line = false, unsure = "secret amount" }, -- 419.121 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.498 s
	{ hit = 6464, line = 6465, spell = 7648, unsure = "secret amount" }, -- 419.223 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6473, line = false, unsure = "secret amount" }, -- 419.581 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6474, line = false, unsure = "two creatures fit nameplate5" }, -- 419.581 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6475, line = false, unsure = "secret amount" }, -- 419.581 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6478, line = false, unsure = "secret amount" }, -- 419.581 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6479, line = 6469, spell = false, unsure = "secret amount" }, -- 419.689 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.259 s
	{ hit = 6481, line = false, unsure = "two creatures fit nameplate5" }, -- 419.870 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.488 s
	{ hit = 6482, line = 6483, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 420.111 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6486, line = 6487, spell = 11711, unsure = "secret amount" }, -- 420.563 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6488, line = false, unsure = "secret amount" }, -- 420.586 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6491, line = false, unsure = "secret amount" }, -- 420.586 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6492, line = false, unsure = "two creatures fit nameplate5" }, -- 420.586 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6493, line = false, unsure = "secret amount" }, -- 420.586 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6494, line = 6495, spell = 7648, unsure = "two creatures fit nameplate5" }, -- 420.592 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6497, line = 6496, spell = 18879, unsure = "secret amount" }, -- 420.711 nameplate6 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6498, line = 6499, spell = 18879, unsure = "secret amount" }, -- 420.711 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6504, line = false, unsure = "on time, of 2 file events" }, -- 421.127 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 6507, line = false, unsure = "secret amount" }, -- 421.269 nameplate10 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 6508, line = false, unsure = "secret amount" }, -- 421.269 nameplate10 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.002 s
	{ hit = 6514, line = false, unsure = "on time, of 2 file events" }, -- 421.505 nameplate10 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 6515, line = false, unsure = "on time, of 2 file events" }, -- 421.546 nameplate10 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 6516, line = false, unsure = "secret amount" }, -- 421.577 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6517, line = false, unsure = "secret amount" }, -- 421.577 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6518, line = false, unsure = "two creatures fit nameplate5" }, -- 421.577 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6521, line = false, unsure = "secret amount" }, -- 421.577 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6522, line = false, unsure = "secret amount" }, -- 421.577 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6523, line = false, unsure = "secret amount" }, -- 421.577 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6524, line = false, unsure = "on time, of 3 file events" }, -- 421.639 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6527, line = false, unsure = "secret amount" }, -- 421.639 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6528, line = false, unsure = "secret amount" }, -- 421.639 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6529, line = false, unsure = "secret amount" }, -- 421.639 nameplate10 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6530, line = false, unsure = "two creatures fit nameplate5" }, -- 421.678 nameplate5 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.171 s
	{ hit = 6533, line = 6513, spell = false, unsure = "2 file events fit" }, -- 421.685 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.255 s
	{ hit = 6536, line = false, unsure = "secret amount" }, -- 421.921 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 6537, line = false, unsure = "secret amount" }, -- 421.936 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 6538, line = false, unsure = "secret amount" }, -- 421.936 nameplate11 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 6539, line = false, unsure = "secret amount" }, -- 421.936 nameplate10 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 6540, line = false, unsure = "secret amount" }, -- 421.936 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 6541, line = false, unsure = "two creatures fit nameplate5" }, -- 421.936 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 6544, line = false, unsure = "secret amount" }, -- 421.936 nameplate4 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 6549, line = 6548, spell = 18879, unsure = "2 file events fit" }, -- 422.082 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6552, line = 6553, spell = 18879, unsure = "secret amount" }, -- 422.082 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 6554, line = false, unsure = "two creatures fit nameplate5" }, -- 422.099 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.861 s
	{ hit = 6557, line = 6560, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 422.117 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6561, line = 6562, spell = 7648, unsure = "secret amount" }, -- 422.215 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.008 s
	{ hit = 6565, line = false, unsure = "secret amount" }, -- 422.387 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6566, line = false, unsure = "secret amount" }, -- 422.387 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6567, line = false, unsure = "two creatures fit nameplate5" }, -- 422.387 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6570, line = false, unsure = "secret amount" }, -- 422.387 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6571, line = false, unsure = "secret amount" }, -- 422.387 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6572, line = false, unsure = "secret amount" }, -- 422.387 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6573, line = false, unsure = "secret amount" }, -- 422.469 nameplate10 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 6574, line = false, unsure = "on time, of 3 file events" }, -- 422.479 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.332 s
	{ hit = 6578, line = 6579, spell = 11711, unsure = "secret amount" }, -- 422.567 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6580, line = false, unsure = "secret amount" }, -- 422.567 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6581, line = false, unsure = "secret amount" }, -- 422.567 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6582, line = false, unsure = "two creatures fit nameplate5" }, -- 422.567 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6583, line = false, unsure = "secret amount" }, -- 422.567 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6584, line = false, unsure = "secret amount" }, -- 422.567 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6585, line = false, unsure = "secret amount" }, -- 422.567 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6590, line = false, unsure = "no file event fits" }, -- 422.729 nameplate10 WOUND <secret> <- no file event 
	{ hit = 6593, line = false, unsure = "2 file events fit" }, -- 422.849 nameplate6 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.675 s
	{ hit = 6594, line = false, unsure = "on time, of 2 file events" }, -- 422.983 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 6597, line = false, unsure = "secret amount" }, -- 423.140 nameplate10 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 6602, line = false, unsure = "late by 1.16 s" }, -- 423.336 nameplate6 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +1.162 s
	{ hit = 6604, line = false, unsure = "secret amount" }, -- 423.569 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6605, line = false, unsure = "secret amount" }, -- 423.569 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6606, line = false, unsure = "secret amount" }, -- 423.569 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6609, line = false, unsure = "secret amount" }, -- 423.569 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6610, line = false, unsure = "two creatures fit nameplate5" }, -- 423.569 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6611, line = false, unsure = "secret amount" }, -- 423.569 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6612, line = 6613, spell = 7648, unsure = "two creatures fit nameplate5" }, -- 423.602 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6616, line = 6603, spell = false, unsure = "two creatures fit nameplate5" }, -- 423.697 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.251 s
	{ hit = 6618, line = 6617, spell = 18879, unsure = "secret amount" }, -- 423.714 nameplate6 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6619, line = 6620, spell = 18879, unsure = "secret amount" }, -- 423.714 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6621, line = false, unsure = "secret amount" }, -- 423.820 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 6622, line = false, unsure = "on time, of 2 file events" }, -- 423.829 nameplate10 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 6625, line = false, unsure = "two creatures fit nameplate5" }, -- 423.862 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 6626, line = 6627, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 424.122 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6628, line = false, unsure = "secret amount" }, -- 424.169 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.364 s
	{ hit = 6631, line = false, unsure = "secret amount" }, -- 424.177 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.002 s
	{ hit = 6635, line = false, unsure = "secret amount" }, -- 424.394 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6638, line = false, unsure = "two creatures fit nameplate5" }, -- 424.394 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6639, line = false, unsure = "secret amount" }, -- 424.394 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6640, line = false, unsure = "secret amount" }, -- 424.394 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6641, line = false, unsure = "secret amount" }, -- 424.394 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6642, line = false, unsure = "secret amount" }, -- 424.394 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6646, line = false, unsure = "secret amount" }, -- 424.528 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 6647, line = 6648, spell = 11711, unsure = "secret amount" }, -- 424.567 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6649, line = false, unsure = "secret amount" }, -- 424.567 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6652, line = false, unsure = "secret amount" }, -- 424.567 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6653, line = false, unsure = "secret amount" }, -- 424.567 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6654, line = false, unsure = "secret amount" }, -- 424.567 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6655, line = false, unsure = "secret amount" }, -- 424.567 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6656, line = false, unsure = "two creatures fit nameplate5" }, -- 424.567 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6657, line = false, unsure = "secret amount" }, -- 424.661 nameplate11 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 6663, line = false, unsure = "2 file events fit" }, -- 424.941 nameplate11 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.053 s
	{ hit = 6666, line = 6669, spell = 11711, unsure = "secret amount" }, -- 425.028 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6671, line = 6670, spell = 18879, unsure = "two creatures fit nameplate5" }, -- 425.078 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6672, line = 6673, spell = 18879, unsure = "secret amount" }, -- 425.078 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6674, line = 6675, spell = 7648, unsure = "secret amount" }, -- 425.221 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6678, line = false, unsure = "secret amount" }, -- 425.302 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.655 s
	{ hit = 6688, line = false, unsure = "secret amount" }, -- 425.572 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6689, line = false, unsure = "secret amount" }, -- 425.572 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6692, line = false, unsure = "secret amount" }, -- 425.572 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6693, line = false, unsure = "two creatures fit nameplate5" }, -- 425.572 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6694, line = false, unsure = "secret amount" }, -- 425.572 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6695, line = false, unsure = "secret amount" }, -- 425.572 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6698, line = 6685, spell = false, unsure = "two creatures fit nameplate5" }, -- 425.761 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.315 s
	{ hit = 6699, line = false, unsure = "secret amount" }, -- 425.803 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE +0.040 s
	{ hit = 6701, line = 6702, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 426.112 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6705, line = false, unsure = "secret amount" }, -- 426.146 nameplate11 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.002 s
	{ hit = 6708, line = false, unsure = "two creatures fit nameplate5" }, -- 426.304 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.616 s
	{ hit = 6709, line = false, unsure = "secret amount" }, -- 426.403 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6710, line = false, unsure = "secret amount" }, -- 426.403 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6711, line = false, unsure = "secret amount" }, -- 426.403 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6712, line = false, unsure = "secret amount" }, -- 426.403 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6715, line = false, unsure = "two creatures fit nameplate5" }, -- 426.403 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6716, line = false, unsure = "secret amount" }, -- 426.513 nameplate11 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.003 s
	{ hit = 6719, line = false, unsure = "two creatures fit nameplate5" }, -- 426.513 nameplate5 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.003 s
	{ hit = 6720, line = false, unsure = "no file event fits" }, -- 426.513 nameplate11 WOUND <secret> <- no file event 
	{ hit = 6723, line = false, unsure = "two creatures fit nameplate5" }, -- 426.540 nameplate5 MISS <secret> <- other: Windfury Totem SPELL_MISSED -0.003 s
	{ hit = 6725, line = false, unsure = "secret amount" }, -- 426.573 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6726, line = false, unsure = "secret amount" }, -- 426.573 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6729, line = false, unsure = "two creatures fit nameplate5" }, -- 426.573 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6730, line = false, unsure = "secret amount" }, -- 426.573 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6731, line = false, unsure = "secret amount" }, -- 426.573 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6732, line = 6733, spell = 7648, unsure = "two creatures fit nameplate5" }, -- 426.594 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6738, line = 6739, spell = 18879, unsure = "secret amount" }, -- 426.722 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 6741, line = false, unsure = "no file event fits" }, -- 427.003 pet HEAL <secret> <- no file event 
	{ hit = 6742, line = false, unsure = "secret amount" }, -- 427.079 nameplate10 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 6745, line = 6746, spell = 7648, unsure = "secret amount" }, -- 427.503 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6749, line = false, unsure = "secret amount" }, -- 427.707 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6750, line = false, unsure = "two creatures fit nameplate5" }, -- 427.707 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6751, line = false, unsure = "secret amount" }, -- 427.707 nameplate11 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6754, line = false, unsure = "secret amount" }, -- 427.707 nameplate10 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 6760, line = 6759, spell = 18879, unsure = "2 file events fit" }, -- 428.096 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6761, line = 6762, spell = 18879, unsure = "secret amount" }, -- 428.096 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6763, line = 6764, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 428.119 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6765, line = 6766, spell = 11711, unsure = "secret amount" }, -- 428.119 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6769, line = false, unsure = "secret amount" }, -- 428.403 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6770, line = false, unsure = "two creatures fit nameplate5" }, -- 428.403 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6771, line = false, unsure = "secret amount" }, -- 428.403 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6772, line = false, unsure = "secret amount" }, -- 428.403 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6773, line = false, unsure = "secret amount" }, -- 428.403 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6776, line = false, unsure = "secret amount" }, -- 428.519 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6777, line = false, unsure = "two creatures fit nameplate5" }, -- 428.519 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6778, line = false, unsure = "secret amount" }, -- 428.519 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6779, line = false, unsure = "secret amount" }, -- 428.519 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6780, line = false, unsure = "secret amount" }, -- 428.519 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6783, line = false, unsure = "secret amount" }, -- 428.653 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.606 s
	{ hit = 6784, line = false, unsure = "two creatures fit nameplate5" }, -- 428.672 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 6785, line = false, unsure = "secret amount" }, -- 428.730 nameplate11 MISS <secret> <- other: swing SWING_MISSED +0.325 s
	{ hit = 6793, line = false, unsure = "secret amount" }, -- 429.136 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 6794, line = 6788, spell = false, unsure = "secret amount" }, -- 429.311 nameplate11 WOUND <secret> <- pet: swing SWING_DAMAGE +0.326 s
	{ hit = 6798, line = false, unsure = "secret amount" }, -- 429.511 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6799, line = false, unsure = "secret amount" }, -- 429.511 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6800, line = false, unsure = "secret amount" }, -- 429.511 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6801, line = false, unsure = "secret amount" }, -- 429.511 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6804, line = false, unsure = "two creatures fit nameplate5" }, -- 429.511 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6805, line = false, unsure = "secret amount" }, -- 429.511 nameplate10 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 6806, line = false, unsure = "2 file events fit" }, -- 429.511 nameplate10 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 6807, line = false, unsure = "secret amount" }, -- 429.511 nameplate10 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 6808, line = 6809, spell = 7648, unsure = "two creatures fit nameplate5" }, -- 429.600 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6814, line = false, unsure = "secret amount" }, -- 429.703 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.480 s
	{ hit = 6815, line = 6816, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 430.128 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6817, line = 6818, spell = 11711, unsure = "secret amount" }, -- 430.128 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6819, line = false, unsure = "secret amount" }, -- 430.194 nameplate11 PARRY <secret> <- other: swing SWING_MISSED +0.281 s
	{ hit = 6820, line = false, unsure = "secret amount" }, -- 430.396 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6821, line = false, unsure = "secret amount" }, -- 430.396 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6824, line = false, unsure = "secret amount" }, -- 430.396 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6825, line = false, unsure = "two creatures fit nameplate5" }, -- 430.396 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6826, line = false, unsure = "secret amount" }, -- 430.396 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6827, line = false, unsure = "secret amount" }, -- 430.504 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6828, line = false, unsure = "secret amount" }, -- 430.504 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6829, line = false, unsure = "two creatures fit nameplate5" }, -- 430.504 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6830, line = false, unsure = "secret amount" }, -- 430.504 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6831, line = false, unsure = "secret amount" }, -- 430.504 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6834, line = 6835, spell = 7648, unsure = "secret amount" }, -- 430.513 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6838, line = 6839, spell = 7648, unsure = "secret amount" }, -- 430.604 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6845, line = 6844, spell = 18879, unsure = "two creatures fit nameplate5" }, -- 431.077 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6846, line = 6847, spell = 18879, unsure = "secret amount" }, -- 431.077 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 6851, line = 6840, spell = false, unsure = "secret amount" }, -- 431.313 nameplate11 WOUND <secret> <- pet: swing SWING_DAMAGE +0.325 s
	{ hit = 6855, line = false, unsure = "secret amount" }, -- 431.504 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6856, line = false, unsure = "secret amount" }, -- 431.504 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6857, line = false, unsure = "secret amount" }, -- 431.504 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6860, line = false, unsure = "two creatures fit nameplate5" }, -- 431.504 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6861, line = false, unsure = "secret amount" }, -- 431.504 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6862, line = false, unsure = "secret amount" }, -- 431.752 nameplate11 PARRY <secret> <- other: swing SWING_MISSED +0.322 s
	{ hit = 6869, line = false, unsure = "secret amount" }, -- 432.104 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.649 s
	{ hit = 6870, line = 6871, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 432.112 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6872, line = 6873, spell = 11711, unsure = "secret amount" }, -- 432.112 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6875, line = 6876, spell = 5720, unsure = "secret amount" }, -- 432.127 player HEAL <secret> <- you: Healthstone SPELL_HEAL -0.003 s
	{ hit = 6878, line = false, unsure = "secret amount" }, -- 432.146 nameplate4 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 6881, line = false, unsure = "secret amount" }, -- 432.211 nameplate4 PARRY <secret> <- other: swing SWING_MISSED +0.988 s
	{ hit = 6884, line = false, unsure = "secret amount" }, -- 432.227 nameplate10 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.006 s
	{ hit = 6885, line = false, unsure = "secret amount" }, -- 432.227 nameplate4 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.006 s
	{ hit = 6888, line = false, unsure = "secret amount" }, -- 432.227 nameplate11 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.006 s
	{ hit = 6889, line = false, unsure = "secret amount" }, -- 432.227 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.006 s
	{ hit = 6890, line = false, unsure = "two creatures fit nameplate5" }, -- 432.227 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.006 s
	{ hit = 6891, line = false, unsure = "two creatures fit nameplate5" }, -- 432.404 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6892, line = false, unsure = "secret amount" }, -- 432.404 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6893, line = false, unsure = "secret amount" }, -- 432.404 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6894, line = false, unsure = "secret amount" }, -- 432.404 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6895, line = false, unsure = "secret amount" }, -- 432.404 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6898, line = false, unsure = "2 file events fit" }, -- 432.479 nameplate10 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 6899, line = false, unsure = "secret amount" }, -- 432.494 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6900, line = false, unsure = "secret amount" }, -- 432.494 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6901, line = false, unsure = "two creatures fit nameplate5" }, -- 432.494 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6902, line = false, unsure = "secret amount" }, -- 432.494 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6903, line = false, unsure = "secret amount" }, -- 432.494 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6906, line = false, unsure = "secret amount" }, -- 432.638 nameplate11 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 6908, line = false, unsure = "two creatures fit nameplate5" }, -- 433.261 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 6909, line = 6907, spell = false, unsure = "secret amount" }, -- 433.304 nameplate10 WOUND <secret> <- pet: swing SWING_DAMAGE +0.316 s
	{ hit = 6917, line = 6918, spell = 7648, unsure = "secret amount" }, -- 433.511 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6919, line = false, unsure = "secret amount" }, -- 433.511 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6920, line = false, unsure = "two creatures fit nameplate5" }, -- 433.511 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6921, line = false, unsure = "secret amount" }, -- 433.511 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6924, line = false, unsure = "secret amount" }, -- 433.511 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6925, line = false, unsure = "secret amount" }, -- 433.511 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6926, line = 6927, spell = 7648, unsure = "secret amount" }, -- 433.611 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6928, line = false, unsure = "secret amount" }, -- 433.686 nameplate11 WOUND <secret> <- other: swing SWING_DAMAGE +0.297 s
	{ hit = 6929, line = false, unsure = "two creatures fit nameplate5" }, -- 433.696 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.466 s
	{ hit = 6934, line = 6933, spell = 18879, unsure = "2 file events fit" }, -- 434.086 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6935, line = 6936, spell = 18879, unsure = "secret amount" }, -- 434.086 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 6937, line = 6938, spell = 11711, unsure = "two creatures fit nameplate5" }, -- 434.120 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6939, line = 6940, spell = 11711, unsure = "secret amount" }, -- 434.120 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6941, line = false, unsure = "secret amount" }, -- 434.162 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 6944, line = false, unsure = "secret amount" }, -- 434.162 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 6945, line = false, unsure = "secret amount" }, -- 434.162 nameplate11 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 6946, line = false, unsure = "secret amount" }, -- 434.162 nameplate10 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 6949, line = false, unsure = "on time, of 2 file events" }, -- 434.396 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6950, line = false, unsure = "on time, of 2 file events" }, -- 434.396 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6953, line = false, unsure = "on time, of 2 file events" }, -- 434.396 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6954, line = false, unsure = "on time, of 2 file events" }, -- 434.396 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6955, line = false, unsure = "on time, of 2 file events" }, -- 434.396 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 6959, line = 6960, spell = 1949, unsure = "secret amount" }, -- 434.446 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 6962, line = 6961, spell = 1949, unsure = "secret amount" }, -- 434.446 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 6964, line = 6963, spell = 1949, unsure = "secret amount" }, -- 434.446 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 6966, line = 6965, spell = 1949, unsure = "two creatures fit nameplate5" }, -- 434.446 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 6968, line = 6967, spell = 1949, unsure = "secret amount" }, -- 434.446 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 6972, line = 6971, spell = 1949, unsure = "secret amount" }, -- 434.446 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 6973, line = false, unsure = "secret amount" }, -- 434.494 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6974, line = false, unsure = "secret amount" }, -- 434.494 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6975, line = false, unsure = "secret amount" }, -- 434.494 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6976, line = false, unsure = "secret amount" }, -- 434.494 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6979, line = false, unsure = "two creatures fit nameplate5" }, -- 434.494 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6981, line = 6982, spell = 1949, unsure = "secret amount" }, -- 435.454 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6984, line = 6983, spell = 1949, unsure = "secret amount" }, -- 435.454 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 6986, line = 6985, spell = 1949, unsure = "secret amount" }, -- 435.454 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 6990, line = 6989, spell = 1949, unsure = "secret amount" }, -- 435.454 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 6992, line = 6991, spell = 1949, unsure = "two creatures fit nameplate5" }, -- 435.454 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 6994, line = 6993, spell = 1949, unsure = "secret amount" }, -- 435.454 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 6995, line = false, unsure = "secret amount" }, -- 435.504 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6996, line = false, unsure = "secret amount" }, -- 435.504 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 6997, line = false, unsure = "two creatures fit nameplate5" }, -- 435.504 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 6998, line = false, unsure = "secret amount" }, -- 435.504 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7001, line = false, unsure = "secret amount" }, -- 435.504 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7002, line = false, unsure = "secret amount" }, -- 435.519 nameplate10 PARRY <secret> <- other: swing SWING_MISSED +0.656 s
	{ hit = 7003, line = 6980, spell = false, unsure = "secret amount" }, -- 435.619 nameplate10 WOUND <secret> <- pet: swing SWING_DAMAGE +0.623 s
	{ hit = 7004, line = false, unsure = "secret amount" }, -- 435.679 nameplate11 WOUND <secret> <- other: swing SWING_DAMAGE +0.329 s
	{ hit = 7005, line = false, unsure = "secret amount" }, -- 435.694 nameplate10 DODGE <secret> <- other: swing SWING_MISSED +0.460 s
	{ hit = 7006, line = false, unsure = "two creatures fit nameplate5" }, -- 435.894 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 7007, line = 7008, spell = 11711, unsure = "secret amount" }, -- 436.119 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7009, line = false, unsure = "secret amount" }, -- 436.230 nameplate11 MISS <secret> <- other: Stormstrike SPELL_MISSED -0.002 s
	{ hit = 7018, line = false, unsure = "secret amount" }, -- 436.394 nameplate4 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 7021, line = false, unsure = "2 file events fit" }, -- 436.411 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7024, line = false, unsure = "2 file events fit" }, -- 436.411 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7025, line = false, unsure = "2 file events fit" }, -- 436.411 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7026, line = false, unsure = "2 file events fit" }, -- 436.411 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7027, line = false, unsure = "2 file events fit" }, -- 436.411 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7028, line = 7029, spell = 1949, unsure = "secret amount" }, -- 436.444 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7031, line = 7030, spell = 1949, unsure = "secret amount" }, -- 436.444 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 7033, line = 7032, spell = 1949, unsure = "two creatures fit nameplate5" }, -- 436.444 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7035, line = 7034, spell = 1949, unsure = "secret amount" }, -- 436.444 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 7037, line = 7036, spell = 1949, unsure = "secret amount" }, -- 436.444 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 7041, line = 7040, spell = 1949, unsure = "secret amount" }, -- 436.444 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 7043, line = 7044, spell = 7648, unsure = "secret amount" }, -- 436.502 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7045, line = 7046, spell = 7648, unsure = "secret amount" }, -- 436.605 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7053, line = false, unsure = "secret amount" }, -- 436.762 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7054, line = false, unsure = "secret amount" }, -- 436.762 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7055, line = false, unsure = "secret amount" }, -- 436.762 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7056, line = false, unsure = "secret amount" }, -- 436.762 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7059, line = false, unsure = "two creatures fit nameplate5" }, -- 436.762 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7061, line = 7060, spell = 18879, unsure = "two creatures fit nameplate5" }, -- 437.077 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7062, line = 7063, spell = 18879, unsure = "secret amount" }, -- 437.077 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 7064, line = false, unsure = "on time, of 2 file events" }, -- 437.404 nameplate11 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 7065, line = 7066, spell = 1949, unsure = "secret amount" }, -- 437.455 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7068, line = 7067, spell = 1949, unsure = "secret amount" }, -- 437.455 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 7070, line = 7069, spell = 1949, unsure = "secret amount" }, -- 437.455 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7072, line = 7071, spell = 1949, unsure = "secret amount" }, -- 437.455 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7076, line = 7075, spell = 1949, unsure = "two creatures fit nameplate5" }, -- 437.455 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 7078, line = 7077, spell = 1949, unsure = "secret amount" }, -- 437.455 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 7079, line = false, unsure = "secret amount" }, -- 437.644 nameplate11 DODGE <secret> <- other: swing SWING_MISSED +0.329 s
	{ hit = 7080, line = false, unsure = "secret amount" }, -- 437.752 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7081, line = false, unsure = "two creatures fit nameplate5" }, -- 437.752 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7082, line = false, unsure = "secret amount" }, -- 437.752 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7083, line = false, unsure = "secret amount" }, -- 437.752 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7086, line = false, unsure = "secret amount" }, -- 437.752 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7087, line = 7088, spell = 11711, unsure = "secret amount" }, -- 438.114 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7089, line = false, unsure = "on time, of 2 file events" }, -- 438.230 nameplate11 WOUND <secret> <- other: swing SWING_DAMAGE +0.992 s
	{ hit = 7090, line = false, unsure = "secret amount" }, -- 438.244 nameplate11 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 7091, line = false, unsure = "two creatures fit nameplate5" }, -- 438.286 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 7092, line = false, unsure = "secret amount" }, -- 438.394 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7095, line = false, unsure = "on time, of 2 file events" }, -- 438.394 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7096, line = false, unsure = "on time, of 2 file events" }, -- 438.394 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7097, line = false, unsure = "on time, of 2 file events" }, -- 438.394 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7098, line = false, unsure = "on time, of 2 file events" }, -- 438.394 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7099, line = 7100, spell = 1949, unsure = "secret amount" }, -- 438.444 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7102, line = 7101, spell = 1949, unsure = "secret amount" }, -- 438.444 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 7106, line = 7105, spell = 1949, unsure = "two creatures fit nameplate5" }, -- 438.444 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7108, line = 7107, spell = 1949, unsure = "secret amount" }, -- 438.444 nameplate10 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 7110, line = 7109, spell = 1949, unsure = "secret amount" }, -- 438.444 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 7112, line = 7111, spell = 1949, unsure = "secret amount" }, -- 438.444 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 7120, line = false, unsure = "secret amount" }, -- 438.756 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7121, line = false, unsure = "secret amount" }, -- 438.756 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7124, line = false, unsure = "secret amount" }, -- 438.756 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7125, line = false, unsure = "two creatures fit nameplate5" }, -- 438.756 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7126, line = false, unsure = "secret amount" }, -- 438.902 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 7127, line = false, unsure = "secret amount" }, -- 438.902 nameplate11 WOUND <secret> <- other: swing SWING_DAMAGE +0.656 s
	{ hit = 7128, line = false, unsure = "secret amount" }, -- 439.095 nameplate3 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.017 s
	{ hit = 7133, line = 7134, spell = 1949, unsure = "secret amount" }, -- 439.447 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7137, line = 7136, spell = 1949, unsure = "two creatures fit nameplate5" }, -- 439.447 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 7139, line = 7138, spell = 1949, unsure = "secret amount" }, -- 439.447 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7141, line = 7140, spell = 1949, unsure = "secret amount" }, -- 439.447 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7145, line = 7144, spell = 1949, unsure = "secret amount" }, -- 439.447 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 7147, line = 7148, spell = 7648, unsure = "secret amount" }, -- 439.604 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7151, line = false, unsure = "secret amount" }, -- 439.752 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7152, line = false, unsure = "secret amount" }, -- 439.752 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7155, line = false, unsure = "secret amount" }, -- 439.752 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7156, line = false, unsure = "two creatures fit nameplate5" }, -- 439.752 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7160, line = false, unsure = "on time, of 2 file events" }, -- 439.969 nameplate4 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 7164, line = 7165, spell = 18879, unsure = "secret amount" }, -- 440.075 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 7166, line = 7167, spell = 11711, unsure = "secret amount" }, -- 440.119 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7168, line = false, unsure = "secret amount" }, -- 440.313 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.358 s
	{ hit = 7171, line = 7172, spell = 1949, unsure = "secret amount" }, -- 440.444 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7174, line = 7173, spell = 1949, unsure = "secret amount" }, -- 440.444 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7177, line = 7176, spell = 1949, unsure = "secret amount" }, -- 440.444 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 7180, line = 7179, spell = 1949, unsure = "secret amount" }, -- 440.444 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 7184, line = false, unsure = "secret amount" }, -- 440.759 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7185, line = false, unsure = "2 file events fit" }, -- 440.759 nameplate4 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7188, line = false, unsure = "secret amount" }, -- 440.759 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7189, line = false, unsure = "secret amount" }, -- 440.759 nameplate4 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 7199, line = false, unsure = "secret amount" }, -- 441.186 nameplate11 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 7200, line = false, unsure = "secret amount" }, -- 441.186 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 7205, line = false, unsure = "no file event fits" }, -- 441.196 nameplate11 WOUND <secret> <- no file event 
	{ hit = 7214, line = 7215, spell = 1949, unsure = "secret amount" }, -- 441.457 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7217, line = 7216, spell = 1949, unsure = "4 file events fit" }, -- 441.457 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 7220, line = 7219, spell = 1949, unsure = "secret amount" }, -- 441.457 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7222, line = 7221, spell = 1949, unsure = "secret amount" }, -- 441.457 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 7225, line = 7183, spell = false, unsure = "on time, of 2 file events" }, -- 441.479 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.997 s
	{ hit = 7227, line = false, unsure = "secret amount" }, -- 441.665 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 7228, line = false, unsure = "secret amount" }, -- 441.665 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7231, line = false, unsure = "on time, of 4 file events" }, -- 441.665 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7235, line = false, unsure = "secret amount" }, -- 441.697 nameplate1 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 7238, line = false, unsure = "secret amount" }, -- 441.697 nameplate1 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 7241, line = false, unsure = "on time, of 2 file events" }, -- 441.697 nameplate1 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 7246, line = false, unsure = "3 file events fit" }, -- 441.756 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7247, line = false, unsure = "secret amount" }, -- 441.756 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7250, line = false, unsure = "secret amount" }, -- 441.756 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7254, line = 7255, spell = 11711, unsure = "secret amount" }, -- 442.119 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7256, line = 7257, spell = 1949, unsure = "secret amount" }, -- 442.437 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7259, line = 7258, spell = 1949, unsure = "secret amount" }, -- 442.437 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 7261, line = 7260, spell = 1949, unsure = "2 file events fit" }, -- 442.437 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7263, line = 7262, spell = 1949, unsure = "secret amount" }, -- 442.437 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 7268, line = 7269, spell = 7648, unsure = "on time, of 2 file events" }, -- 442.511 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 7270, line = false, unsure = "secret amount" }, -- 442.511 nameplate1 MISS <secret> <- other: Holy Strike SPELL_MISSED -0.004 s
	{ hit = 7277, line = 7278, spell = 7648, unsure = "secret amount" }, -- 442.611 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7279, line = false, unsure = "2 file events fit" }, -- 442.662 nameplate1 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.003 s
	{ hit = 7282, line = false, unsure = "on time, of 2 file events" }, -- 442.662 nameplate11 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.003 s
	{ hit = 7283, line = false, unsure = "on time, of 2 file events" }, -- 442.662 nameplate1 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.018 s
	{ hit = 7286, line = false, unsure = "late by 1.01 s" }, -- 442.677 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +1.010 s
	{ hit = 7290, line = false, unsure = "secret amount" }, -- 442.729 nameplate11 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 7291, line = false, unsure = "secret amount" }, -- 442.738 nameplate11 MISS <secret> <- other: Consecration SPELL_MISSED -0.003 s
	{ hit = 7292, line = false, unsure = "secret amount" }, -- 442.749 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7295, line = false, unsure = "secret amount" }, -- 442.749 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7297, line = 7298, spell = 18879, unsure = "secret amount" }, -- 443.088 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 7299, line = false, unsure = "secret amount" }, -- 443.145 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.328 s
	{ hit = 7305, line = false, unsure = "no file event fits" }, -- 443.436 nameplate1 WOUND <secret> <- no file event 
	{ hit = 7308, line = 7309, spell = 1949, unsure = "secret amount" }, -- 443.442 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7311, line = 7310, spell = 1949, unsure = "2 file events fit" }, -- 443.442 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 7313, line = 7312, spell = 1949, unsure = "secret amount" }, -- 443.442 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7315, line = 7314, spell = 1949, unsure = "on time, of 2 file events" }, -- 443.442 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7318, line = false, unsure = "secret amount" }, -- 443.528 nameplate11 MISS <secret> <- other: Fire Nova SPELL_MISSED -0.002 s
	{ hit = 7319, line = false, unsure = "2 file events fit" }, -- 443.528 nameplate2 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 7320, line = false, unsure = "secret amount" }, -- 443.528 nameplate1 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 7323, line = false, unsure = "secret amount" }, -- 443.586 nameplate1 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 7326, line = false, unsure = "3 file events fit" }, -- 443.661 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 7327, line = false, unsure = "secret amount" }, -- 443.661 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 7328, line = false, unsure = "secret amount" }, -- 443.661 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7331, line = false, unsure = "secret amount" }, -- 443.754 nameplate11 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7332, line = false, unsure = "secret amount" }, -- 443.754 nameplate1 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7335, line = false, unsure = "secret amount" }, -- 443.754 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7339, line = 7340, spell = 11711, unsure = "secret amount" }, -- 444.119 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7341, line = 7342, spell = 1949, unsure = "secret amount" }, -- 444.446 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7344, line = 7343, spell = 1949, unsure = "secret amount" }, -- 444.446 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7346, line = 7345, spell = 1949, unsure = "secret amount" }, -- 444.446 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7350, line = 7349, spell = 1949, unsure = "secret amount" }, -- 444.446 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 7351, line = false, unsure = "secret amount" }, -- 444.902 nameplate1 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 7354, line = false, unsure = "secret amount" }, -- 444.994 nameplate1 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 7357, line = false, unsure = "on time, of 2 file events" }, -- 445.021 nameplate1 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 7361, line = 7362, spell = 1949, unsure = "secret amount" }, -- 445.454 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7364, line = 7363, spell = 1949, unsure = "secret amount" }, -- 445.454 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 7366, line = 7365, spell = 1949, unsure = "secret amount" }, -- 445.454 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7370, line = 7369, spell = 1949, unsure = "secret amount" }, -- 445.454 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7371, line = false, unsure = "on time, of 3 file events" }, -- 445.454 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.391 s
	{ hit = 7372, line = 7373, spell = 7648, unsure = "secret amount" }, -- 445.602 nameplate11 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7374, line = false, unsure = "secret amount" }, -- 445.662 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7375, line = false, unsure = "secret amount" }, -- 445.662 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7378, line = false, unsure = "secret amount" }, -- 445.662 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7381, line = false, unsure = "secret amount" }, -- 445.719 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.363 s
	{ hit = 7384, line = false, unsure = "no file event fits" }, -- 445.719 nameplate1 WOUND <secret> <- no file event 
	{ hit = 7387, line = 7388, spell = 11711, unsure = "secret amount" }, -- 446.119 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7389, line = false, unsure = "on time, of 2 file events" }, -- 446.411 nameplate2 WOUND <secret> <- other: Shield Bash SPELL_DAMAGE -0.002 s
	{ hit = 7390, line = 7391, spell = 1949, unsure = "secret amount" }, -- 446.454 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7393, line = 7392, spell = 1949, unsure = "secret amount" }, -- 446.454 nameplate11 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.003 s
	{ hit = 7395, line = 7394, spell = 1949, unsure = "2 file events fit" }, -- 446.454 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7397, line = 7396, spell = 1949, unsure = "secret amount" }, -- 446.454 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 7402, line = false, unsure = "secret amount" }, -- 446.494 nameplate1 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.003 s
	{ hit = 7413, line = false, unsure = "secret amount" }, -- 447.654 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 7416, line = false, unsure = "secret amount" }, -- 447.654 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7419, line = 7410, spell = false, unsure = "on time, of 2 file events" }, -- 447.812 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.632 s
	{ hit = 7420, line = false, unsure = "secret amount" }, -- 447.896 nameplate2 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 7422, line = false, unsure = "secret amount" }, -- 448.062 nameplate2 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.003 s
	{ hit = 7423, line = false, unsure = "no file event fits" }, -- 448.062 nameplate2 WOUND <secret> <- no file event 
	{ hit = 7424, line = 7427, spell = 11711, unsure = "on time, of 2 file events" }, -- 448.119 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7428, line = 7421, spell = 7641, unsure = "secret amount" }, -- 448.119 nameplate11 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.079 s
	{ hit = 7433, line = false, unsure = "secret amount" }, -- 448.753 nameplate2 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 7439, line = false, unsure = "secret amount" }, -- 449.661 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7442, line = false, unsure = "secret amount" }, -- 449.728 player HEAL <secret> <- other: Prayer of Healing SPELL_HEAL -0.003 s
	{ hit = 7443, line = false, unsure = "secret amount" }, -- 449.728 pet HEAL <secret> <- other: Prayer of Healing SPELL_HEAL -0.003 s
	{ hit = 7450, line = 7453, spell = 11711, unsure = "secret amount" }, -- 450.111 nameplate11 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7456, line = 7455, spell = 7651, unsure = "secret amount" }, -- 450.221 nameplate11 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 7461, line = 7462, spell = 7651, unsure = "secret amount" }, -- 450.221 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.007 s
	{ hit = 7464, line = false, unsure = "secret amount" }, -- 450.352 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.478 s
	{ hit = 7465, line = false, unsure = "no file event fits" }, -- 450.411 nameplate2 PARRY <secret> <- no file event 
	{ hit = 7467, line = false, unsure = "secret amount" }, -- 451.670 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7471, line = false, unsure = "on time, of 3 file events" }, -- 451.780 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.024 s
	{ hit = 7472, line = 7468, spell = false, unsure = "on time, of 2 file events" }, -- 452.012 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.330 s
	{ hit = 7473, line = false, unsure = "secret amount" }, -- 452.455 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.583 s
	{ hit = 7474, line = false, unsure = "secret amount" }, -- 452.482 nameplate2 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.003 s
	{ hit = 7475, line = false, unsure = "secret amount" }, -- 452.728 player HEAL <secret> <- other: Heal SPELL_HEAL -0.003 s
	{ hit = 7481, line = 7479, spell = false, unsure = "secret amount" }, -- 454.727 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.594 s
	{ hit = 7486, line = false, unsure = "on time, of 2 file events" }, -- 455.152 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 7489, line = false, unsure = "no file event fits" }, -- 455.613 nameplate2 WOUND <secret> <- no file event 
	{ hit = 7492, line = false, unsure = "secret amount" }, -- 455.737 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 7496, line = 7494, spell = 5019, unsure = "secret amount" }, -- 455.804 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.026 s
	{ hit = 7518, line = false, unsure = "secret amount" }, -- 469.419 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 7519, line = false, unsure = "secret amount" }, -- 469.419 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 7520, line = false, unsure = "on time, of 2 file events" }, -- 469.419 nameplate8 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 7522, line = false, unsure = "secret amount" }, -- 469.662 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 7532, line = false, unsure = "late by 1.25 s" }, -- 470.506 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +1.249 s
	{ hit = 7545, line = false, unsure = "secret amount" }, -- 471.286 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 7552, line = false, unsure = "secret amount" }, -- 472.002 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7553, line = false, unsure = "secret amount" }, -- 472.002 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7556, line = false, unsure = "secret amount" }, -- 472.002 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7557, line = false, unsure = "on time, of 2 file events" }, -- 472.044 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 7560, line = false, unsure = "on time, of 2 file events" }, -- 472.177 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 7564, line = false, unsure = "on time, of 2 file events" }, -- 472.480 nameplate8 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 7567, line = false, unsure = "secret amount" }, -- 472.619 nameplate7 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 7570, line = false, unsure = "secret amount" }, -- 472.643 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 7574, line = false, unsure = "late by 1.02 s" }, -- 472.986 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +1.023 s
	{ hit = 7575, line = false, unsure = "secret amount" }, -- 473.003 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7576, line = false, unsure = "secret amount" }, -- 473.003 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7577, line = false, unsure = "secret amount" }, -- 473.003 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7580, line = 7583, spell = 11711, unsure = "secret amount" }, -- 473.011 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7584, line = false, unsure = "secret amount" }, -- 473.286 player HEAL <secret> <- other: Heal SPELL_HEAL -0.002 s
	{ hit = 7587, line = false, unsure = "late by 1.48 s" }, -- 473.577 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.480 s
	{ hit = 7592, line = false, unsure = "secret amount" }, -- 473.728 nameplate7 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 7599, line = false, unsure = "secret amount" }, -- 473.969 nameplate9 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 7600, line = false, unsure = "2 file events fit" }, -- 473.969 nameplate7 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 7605, line = false, unsure = "secret amount" }, -- 474.002 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7606, line = false, unsure = "secret amount" }, -- 474.002 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7607, line = false, unsure = "secret amount" }, -- 474.002 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7618, line = false, unsure = "secret amount" }, -- 475.002 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7619, line = false, unsure = "secret amount" }, -- 475.002 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7620, line = false, unsure = "secret amount" }, -- 475.002 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7623, line = 7624, spell = 11711, unsure = "secret amount" }, -- 475.027 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7627, line = false, unsure = "2 file events fit" }, -- 475.136 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.463 s
	{ hit = 7628, line = false, unsure = "secret amount" }, -- 475.252 nameplate9 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 7631, line = 7610, spell = false, unsure = "late by 1.12 s" }, -- 475.261 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +1.125 s
	{ hit = 7634, line = 7635, spell = 7648, unsure = "2 file events fit" }, -- 475.494 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7636, line = false, unsure = "secret amount" }, -- 475.527 nameplate7 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 7637, line = false, unsure = "secret amount" }, -- 475.527 nameplate7 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 7640, line = false, unsure = "secret amount" }, -- 475.644 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 7647, line = false, unsure = "secret amount" }, -- 476.003 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7648, line = false, unsure = "secret amount" }, -- 476.003 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7651, line = false, unsure = "secret amount" }, -- 476.003 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7656, line = false, unsure = "secret amount" }, -- 476.719 nameplate7 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7660, line = 7652, spell = false, unsure = "on time, of 2 file events" }, -- 476.761 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.623 s
	{ hit = 7664, line = false, unsure = "secret amount" }, -- 476.903 nameplate7 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 7665, line = false, unsure = "on time, of 2 file events" }, -- 476.936 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 7669, line = 7668, spell = 18879, unsure = "2 file events fit" }, -- 476.978 nameplate7 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7670, line = 7671, spell = 18879, unsure = "secret amount" }, -- 476.978 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 7672, line = false, unsure = "late by 1.49 s" }, -- 476.986 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.489 s
	{ hit = 7673, line = false, unsure = "secret amount" }, -- 477.003 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7674, line = false, unsure = "secret amount" }, -- 477.003 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7677, line = false, unsure = "secret amount" }, -- 477.003 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7678, line = 7679, spell = 11711, unsure = "secret amount" }, -- 477.011 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7683, line = 7686, spell = 11711, unsure = "secret amount" }, -- 477.481 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7687, line = false, unsure = "secret amount" }, -- 477.577 nameplate7 MISS <secret> <- other: Sunder Armor SPELL_MISSED -0.003 s
	{ hit = 7688, line = false, unsure = "on time, of 2 file events" }, -- 477.761 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 7692, line = false, unsure = "secret amount" }, -- 477.944 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.631 s
	{ hit = 7693, line = false, unsure = "secret amount" }, -- 478.011 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 7696, line = false, unsure = "secret amount" }, -- 478.011 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7697, line = false, unsure = "secret amount" }, -- 478.011 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7708, line = false, unsure = "secret amount" }, -- 478.394 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7713, line = 7698, spell = false, unsure = "secret amount" }, -- 478.479 nameplate9 WOUND <secret> <- pet: swing SWING_DAMAGE +0.324 s
	{ hit = 7716, line = 7717, spell = 7648, unsure = "secret amount" }, -- 478.495 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7718, line = false, unsure = "late by 1.18 s" }, -- 478.554 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.182 s
	{ hit = 7719, line = false, unsure = "secret amount" }, -- 478.636 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 7724, line = false, unsure = "secret amount" }, -- 478.992 nameplate8 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7727, line = false, unsure = "secret amount" }, -- 478.992 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7728, line = false, unsure = "secret amount" }, -- 478.992 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 7729, line = 7730, spell = 11711, unsure = "secret amount" }, -- 479.011 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7731, line = false, unsure = "secret amount" }, -- 479.353 nameplate7 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 7732, line = 7733, spell = 11711, unsure = "secret amount" }, -- 479.476 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7734, line = false, unsure = "secret amount" }, -- 479.476 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 7737, line = false, unsure = "secret amount" }, -- 479.561 nameplate7 DODGE <secret> <- other: swing SWING_MISSED +0.664 s
	{ hit = 7738, line = false, unsure = "secret amount" }, -- 479.569 nameplate8 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 7741, line = false, unsure = "secret amount" }, -- 479.707 nameplate7 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7748, line = false, unsure = "secret amount" }, -- 479.894 nameplate8 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7753, line = 7754, spell = 7648, unsure = "secret amount" }, -- 479.952 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7756, line = 7755, spell = 18879, unsure = "secret amount" }, -- 479.986 nameplate7 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7757, line = 7758, spell = 18879, unsure = "secret amount" }, -- 479.986 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 7759, line = false, unsure = "on time, of 2 file events" }, -- 480.061 nameplate9 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 7767, line = 7760, spell = false, unsure = "secret amount" }, -- 480.486 nameplate9 WOUND <secret> <- pet: swing SWING_DAMAGE +0.331 s
	{ hit = 7768, line = false, unsure = "secret amount" }, -- 480.519 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.489 s
	{ hit = 7772, line = false, unsure = "secret amount" }, -- 480.636 nameplate7 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.002 s
	{ hit = 7773, line = false, unsure = "secret amount" }, -- 480.669 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 7779, line = 7780, spell = 11711, unsure = "secret amount" }, -- 481.019 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7781, line = false, unsure = "secret amount" }, -- 481.064 nameplate8 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 7784, line = false, unsure = "on time, of 3 file events" }, -- 481.402 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7788, line = 7787, spell = 18879, unsure = "2 file events fit" }, -- 481.445 nameplate9 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7789, line = 7790, spell = 18879, unsure = "secret amount" }, -- 481.445 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 7791, line = 7792, spell = 11711, unsure = "secret amount" }, -- 481.470 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7793, line = 7794, spell = 7648, unsure = "secret amount" }, -- 481.504 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7795, line = false, unsure = "secret amount" }, -- 481.644 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 7799, line = 7802, spell = 11711, unsure = "secret amount" }, -- 481.928 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7807, line = false, unsure = "secret amount" }, -- 482.154 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 7808, line = false, unsure = "secret amount" }, -- 482.319 nameplate7 PARRY <secret> <- other: Seal of Command SPELL_MISSED -0.003 s
	{ hit = 7809, line = false, unsure = "on time, of 2 file events" }, -- 482.328 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.002 s
	{ hit = 7810, line = false, unsure = "secret amount" }, -- 482.577 nameplate8 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 7813, line = false, unsure = "secret amount" }, -- 482.652 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.364 s
	{ hit = 7814, line = false, unsure = "secret amount" }, -- 482.711 nameplate7 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7815, line = false, unsure = "secret amount" }, -- 482.777 nameplate9 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 7816, line = 7806, spell = false, unsure = "secret amount" }, -- 482.786 nameplate9 WOUND <secret> <- pet: swing SWING_DAMAGE +0.629 s
	{ hit = 7817, line = false, unsure = "secret amount" }, -- 482.894 nameplate8 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7822, line = 7823, spell = 7648, unsure = "secret amount" }, -- 482.952 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7828, line = 7827, spell = 18879, unsure = "secret amount" }, -- 482.994 nameplate7 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7829, line = 7830, spell = 18879, unsure = "secret amount" }, -- 482.994 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 7831, line = 7832, spell = 11711, unsure = "secret amount" }, -- 483.019 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7839, line = false, unsure = "on time, of 2 file events" }, -- 483.378 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.623 s
	{ hit = 7840, line = 7841, spell = 11711, unsure = "secret amount" }, -- 483.469 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7842, line = false, unsure = "secret amount" }, -- 483.544 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 7846, line = false, unsure = "late by 1.49 s" }, -- 483.786 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.489 s
	{ hit = 7849, line = 7850, spell = 11711, unsure = "secret amount" }, -- 483.927 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7854, line = false, unsure = "secret amount" }, -- 483.977 nameplate9 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 7855, line = false, unsure = "secret amount" }, -- 484.011 nameplate9 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 7862, line = false, unsure = "secret amount" }, -- 484.061 nameplate8 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 7863, line = false, unsure = "secret amount" }, -- 484.061 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 7870, line = false, unsure = "on time, of 2 file events" }, -- 484.394 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7871, line = 7872, spell = 7648, unsure = "secret amount" }, -- 484.419 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7873, line = false, unsure = "2 file events fit" }, -- 484.419 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.020 s
	{ hit = 7875, line = 7874, spell = 18879, unsure = "secret amount" }, -- 484.436 nameplate9 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7876, line = 7866, spell = false, unsure = "secret amount" }, -- 484.436 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.264 s
	{ hit = 7877, line = 7878, spell = 18879, unsure = "secret amount" }, -- 484.436 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 7879, line = 7882, spell = 7648, unsure = "secret amount" }, -- 484.494 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7883, line = false, unsure = "secret amount" }, -- 484.871 nameplate9 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 7887, line = 7890, spell = 11711, unsure = "secret amount" }, -- 485.011 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7900, line = false, unsure = "secret amount" }, -- 485.356 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.359 s
	{ hit = 7901, line = 7902, spell = 11711, unsure = "secret amount" }, -- 485.469 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7903, line = false, unsure = "secret amount" }, -- 485.719 nameplate7 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7909, line = false, unsure = "3 file events fit" }, -- 485.886 nameplate8 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7911, line = 7910, spell = 18879, unsure = "2 file events fit" }, -- 485.903 nameplate8 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7912, line = 7913, spell = 18879, unsure = "secret amount" }, -- 485.903 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 7914, line = 7915, spell = 11711, unsure = "secret amount" }, -- 485.919 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7919, line = false, unsure = "secret amount" }, -- 485.936 nameplate7 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 7922, line = 7923, spell = 7648, unsure = "secret amount" }, -- 485.961 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7930, line = false, unsure = "on time, of 2 file events" }, -- 486.194 nameplate8 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.006 s
	{ hit = 7932, line = false, unsure = "secret amount" }, -- 486.369 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.647 s
	{ hit = 7936, line = 7929, spell = false, unsure = "secret amount" }, -- 486.511 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.339 s
	{ hit = 7941, line = false, unsure = "secret amount" }, -- 487.361 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.348 s
	{ hit = 7942, line = false, unsure = "secret amount" }, -- 487.403 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7943, line = 7944, spell = 7648, unsure = "secret amount" }, -- 487.411 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7946, line = 7945, spell = 18879, unsure = "2 file events fit" }, -- 487.452 nameplate9 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7947, line = 7948, spell = 18879, unsure = "secret amount" }, -- 487.452 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 7949, line = 7950, spell = 11711, unsure = "secret amount" }, -- 487.469 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7953, line = false, unsure = "secret amount" }, -- 487.828 nameplate8 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 7956, line = 7957, spell = 11711, unsure = "secret amount" }, -- 487.927 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7961, line = 7960, spell = false, unsure = "secret amount" }, -- 488.436 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.264 s
	{ hit = 7962, line = false, unsure = "2 file events fit" }, -- 488.902 nameplate8 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7964, line = 7963, spell = 18879, unsure = "secret amount" }, -- 488.911 nameplate8 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7965, line = 7966, spell = 18879, unsure = "secret amount" }, -- 488.911 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 7967, line = 7968, spell = 7648, unsure = "secret amount" }, -- 488.961 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7969, line = false, unsure = "secret amount" }, -- 489.127 nameplate9 DODGE <secret> <- other: Seal of Command SPELL_MISSED -0.003 s
	{ hit = 7972, line = false, unsure = "secret amount" }, -- 489.336 nameplate8 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 7973, line = false, unsure = "on time, of 2 file events" }, -- 489.336 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 7976, line = 7977, spell = 11711, unsure = "secret amount" }, -- 489.469 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7978, line = false, unsure = "secret amount" }, -- 489.636 nameplate8 DODGE <secret> <- other: swing SWING_MISSED +0.631 s
	{ hit = 7979, line = 7980, spell = 11711, unsure = "secret amount" }, -- 489.919 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7985, line = false, unsure = "secret amount" }, -- 490.061 nameplate9 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 7986, line = false, unsure = "secret amount" }, -- 490.061 nameplate9 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 7990, line = false, unsure = "on time, of 2 file events" }, -- 490.386 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7991, line = 7992, spell = 7648, unsure = "secret amount" }, -- 490.411 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7993, line = 7987, spell = false, unsure = "on time, of 2 file events" }, -- 490.427 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.247 s
	{ hit = 7995, line = 7994, spell = 18879, unsure = "secret amount" }, -- 490.436 nameplate9 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7996, line = 7997, spell = 18879, unsure = "secret amount" }, -- 490.436 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 7998, line = false, unsure = "secret amount" }, -- 490.436 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.717 s
	{ hit = 7999, line = false, unsure = "late by 1.48 s" }, -- 490.586 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +1.481 s
	{ hit = 8000, line = false, unsure = "secret amount" }, -- 490.694 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 8006, line = false, unsure = "on time, of 4 file events" }, -- 491.436 nameplate8 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 8007, line = 8010, spell = 11711, unsure = "secret amount" }, -- 491.469 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8011, line = false, unsure = "on time, of 3 file events" }, -- 491.786 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.439 s
	{ hit = 8012, line = false, unsure = "2 file events fit" }, -- 491.887 nameplate8 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8014, line = 8013, spell = 18879, unsure = "on time, of 2 file events" }, -- 491.887 nameplate8 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8015, line = 8016, spell = 18879, unsure = "secret amount" }, -- 491.887 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 8017, line = 8018, spell = 11711, unsure = "secret amount" }, -- 491.927 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8019, line = false, unsure = "2 file events fit" }, -- 491.944 nameplate8 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.464 s
	{ hit = 8020, line = 8023, spell = 7648, unsure = "secret amount" }, -- 491.961 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8024, line = false, unsure = "secret amount" }, -- 492.077 nameplate9 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8027, line = false, unsure = "2 file events fit" }, -- 492.144 nameplate8 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.061 s
	{ hit = 8029, line = false, unsure = "secret amount" }, -- 492.203 nameplate8 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.723 s
	{ hit = 8033, line = false, unsure = "secret amount" }, -- 492.369 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8037, line = false, unsure = "secret amount" }, -- 492.686 nameplate8 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 8041, line = false, unsure = "secret amount" }, -- 493.152 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.614 s
	{ hit = 8042, line = 8028, spell = false, unsure = "secret amount" }, -- 493.161 nameplate9 WOUND <secret> <- pet: swing SWING_DAMAGE +0.989 s
	{ hit = 8045, line = false, unsure = "secret amount" }, -- 493.178 nameplate9 DODGE <secret> <- other: swing SWING_MISSED +0.668 s
	{ hit = 8052, line = 8051, spell = 7651, unsure = "on time, of 2 file events" }, -- 493.321 nameplate9 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8055, line = 8056, spell = 7651, unsure = "secret amount" }, -- 493.321 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 8057, line = false, unsure = "on time, of 3 file events" }, -- 493.394 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8060, line = 8061, spell = 7648, unsure = "secret amount" }, -- 493.419 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8063, line = 8062, spell = 18879, unsure = "2 file events fit" }, -- 493.444 nameplate9 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8066, line = 8067, spell = 18879, unsure = "secret amount" }, -- 493.444 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 8068, line = 8071, spell = 11711, unsure = "secret amount" }, -- 493.473 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8072, line = false, unsure = "2 file events fit" }, -- 493.777 nameplate9 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 8075, line = false, unsure = "secret amount" }, -- 493.811 nameplate9 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8078, line = 8079, spell = 11711, unsure = "secret amount" }, -- 493.928 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8080, line = false, unsure = "secret amount" }, -- 493.972 nameplate9 MISS <secret> <- other: Holy Strike SPELL_MISSED -0.003 s
	{ hit = 8083, line = false, unsure = "secret amount" }, -- 493.980 nameplate8 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.003 s
	{ hit = 8085, line = false, unsure = "secret amount" }, -- 494.211 nameplate8 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8090, line = 8089, spell = 7651, unsure = "secret amount" }, -- 494.344 nameplate9 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8093, line = 8094, spell = 7651, unsure = "secret amount" }, -- 494.344 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 8095, line = 8084, spell = false, unsure = "on time, of 2 file events" }, -- 494.811 nameplate9 WOUND <secret> <- pet: swing SWING_DAMAGE +0.631 s
	{ hit = 8098, line = false, unsure = "secret amount" }, -- 494.894 nameplate8 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8100, line = 8099, spell = 18879, unsure = "secret amount" }, -- 494.902 nameplate8 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8101, line = 8102, spell = 18879, unsure = "secret amount" }, -- 494.902 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 8103, line = false, unsure = "secret amount" }, -- 494.919 nameplate8 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8104, line = 8107, spell = 7648, unsure = "secret amount" }, -- 494.961 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8111, line = false, unsure = "late by 1.03 s" }, -- 495.086 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +1.028 s
	{ hit = 8118, line = 8117, spell = 7651, unsure = "secret amount" }, -- 495.329 nameplate9 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8121, line = 8122, spell = 7651, unsure = "secret amount" }, -- 495.329 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 8123, line = 8126, spell = 11711, unsure = "secret amount" }, -- 495.478 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8134, line = 8135, spell = 11711, unsure = "secret amount" }, -- 495.928 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8136, line = false, unsure = "on time, of 2 file events" }, -- 495.928 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 8139, line = false, unsure = "secret amount" }, -- 495.944 nameplate9 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 8147, line = 8146, spell = 7651, unsure = "on time, of 2 file events" }, -- 496.331 nameplate9 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8150, line = 8151, spell = 7651, unsure = "secret amount" }, -- 496.331 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 8152, line = false, unsure = "on time, of 2 file events" }, -- 496.396 nameplate9 WOUND <secret> <- other: Shadow Word: Pain SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8156, line = 8155, spell = 18879, unsure = "secret amount" }, -- 496.438 nameplate9 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8159, line = 8160, spell = 18879, unsure = "secret amount" }, -- 496.438 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 8161, line = 8144, spell = false, unsure = "on time, of 2 file events" }, -- 496.438 nameplate9 WOUND <secret> <- pet: swing SWING_DAMAGE +0.255 s
	{ hit = 8164, line = false, unsure = "on time, of 2 file events" }, -- 496.512 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.590 s
	{ hit = 8170, line = false, unsure = "2 file events fit" }, -- 497.221 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.456 s
	{ hit = 8173, line = false, unsure = "2 file events fit" }, -- 497.302 player HEAL <secret> <- other: Heal SPELL_HEAL -0.003 s
	{ hit = 8175, line = 8174, spell = 7651, unsure = "secret amount" }, -- 497.329 nameplate9 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8178, line = 8179, spell = 7651, unsure = "secret amount" }, -- 497.329 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 8181, line = false, unsure = "secret amount" }, -- 497.361 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.763 s
	{ hit = 8184, line = 8187, spell = 11711, unsure = "secret amount" }, -- 497.469 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8193, line = false, unsure = "on time, of 2 file events" }, -- 498.187 nameplate9 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 8196, line = 8192, spell = false, unsure = "secret amount" }, -- 499.179 nameplate9 WOUND <secret> <- pet: swing SWING_DAMAGE +0.997 s
	{ hit = 8200, line = 8199, spell = 7651, unsure = "secret amount" }, -- 499.337 nameplate9 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8203, line = 8204, spell = 7651, unsure = "secret amount" }, -- 499.337 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 8226, line = false, unsure = "secret amount" }, -- 504.172 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 8227, line = false, unsure = "secret amount" }, -- 504.172 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 8228, line = false, unsure = "on time, of 2 file events" }, -- 504.172 nameplate10 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 8236, line = false, unsure = "on time, of 2 file events" }, -- 505.027 nameplate10 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.013 s
	{ hit = 8237, line = false, unsure = "secret amount" }, -- 505.038 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.833 s
	{ hit = 8239, line = false, unsure = "secret amount" }, -- 505.153 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8244, line = false, unsure = "secret amount" }, -- 505.662 nameplate10 PARRY <secret> <- other: Shield Slam SPELL_MISSED -0.003 s
	{ hit = 8262, line = false, unsure = "on time, of 3 file events" }, -- 507.086 nameplate10 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8265, line = false, unsure = "secret amount" }, -- 507.119 nameplate5 PARRY <secret> <- other: swing SWING_MISSED +0.599 s
	{ hit = 8266, line = false, unsure = "on time, of 2 file events" }, -- 507.170 nameplate10 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 8272, line = false, unsure = "secret amount" }, -- 507.536 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8273, line = false, unsure = "secret amount" }, -- 507.536 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8276, line = false, unsure = "secret amount" }, -- 507.536 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8282, line = false, unsure = "secret amount" }, -- 507.719 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.804 s
	{ hit = 8289, line = 8290, spell = 11711, unsure = "secret amount" }, -- 508.154 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8291, line = false, unsure = "secret amount" }, -- 508.429 nameplate10 DODGE <secret> <- other: Windfury Totem SPELL_MISSED -0.003 s
	{ hit = 8292, line = false, unsure = "secret amount" }, -- 508.540 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 8293, line = false, unsure = "secret amount" }, -- 508.540 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8294, line = false, unsure = "secret amount" }, -- 508.540 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8301, line = false, unsure = "secret amount" }, -- 508.689 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8303, line = false, unsure = "on time, of 2 file events" }, -- 508.900 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.495 s
	{ hit = 8304, line = false, unsure = "secret amount" }, -- 508.983 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 8305, line = 8302, spell = false, unsure = "secret amount" }, -- 509.044 nameplate10 WOUND <secret> <- pet: swing SWING_DAMAGE +0.261 s
	{ hit = 8308, line = false, unsure = "secret amount" }, -- 509.186 nameplate10 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 8309, line = false, unsure = "secret amount" }, -- 509.315 nameplate10 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 8310, line = false, unsure = "secret amount" }, -- 509.530 nameplate6 MISS <secret> <- other: Consecration SPELL_MISSED -0.002 s
	{ hit = 8313, line = false, unsure = "secret amount" }, -- 509.530 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8314, line = false, unsure = "secret amount" }, -- 509.530 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8319, line = false, unsure = "secret amount" }, -- 509.869 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8320, line = false, unsure = "secret amount" }, -- 509.869 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8323, line = false, unsure = "secret amount" }, -- 509.869 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8324, line = false, unsure = "secret amount" }, -- 509.946 nameplate10 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 8325, line = false, unsure = "secret amount" }, -- 509.980 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.358 s
	{ hit = 8330, line = 8331, spell = 11711, unsure = "secret amount" }, -- 510.152 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8334, line = false, unsure = "secret amount" }, -- 510.521 nameplate5 MISS <secret> <- other: Consecration SPELL_MISSED -0.003 s
	{ hit = 8335, line = false, unsure = "secret amount" }, -- 510.544 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8338, line = false, unsure = "secret amount" }, -- 510.544 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8342, line = 8343, spell = 7648, unsure = "secret amount" }, -- 510.629 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8348, line = false, unsure = "secret amount" }, -- 510.853 nameplate10 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 8349, line = false, unsure = "on time, of 2 file events" }, -- 510.883 nameplate10 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8351, line = 8347, spell = false, unsure = "secret amount" }, -- 511.041 nameplate10 WOUND <secret> <- pet: swing SWING_DAMAGE +0.259 s
	{ hit = 8352, line = 8353, spell = 11711, unsure = "secret amount" }, -- 511.119 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8354, line = false, unsure = "late by 1.49 s" }, -- 511.404 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +1.489 s
	{ hit = 8355, line = false, unsure = "secret amount" }, -- 511.420 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 8356, line = false, unsure = "secret amount" }, -- 511.529 nameplate5 MISS <secret> <- other: Consecration SPELL_MISSED -0.003 s
	{ hit = 8359, line = false, unsure = "secret amount" }, -- 511.538 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8360, line = false, unsure = "secret amount" }, -- 511.538 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8364, line = false, unsure = "2 file events fit" }, -- 511.861 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 8365, line = false, unsure = "secret amount" }, -- 511.861 nameplate10 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 8366, line = false, unsure = "2 file events fit" }, -- 511.861 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 8369, line = false, unsure = "secret amount" }, -- 511.871 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8370, line = false, unsure = "secret amount" }, -- 511.871 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 8373, line = false, unsure = "secret amount" }, -- 511.871 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 8376, line = 8377, spell = 11711, unsure = "secret amount" }, -- 512.145 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8378, line = false, unsure = "on time, of 2 file events" }, -- 512.245 nameplate10 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 8381, line = false, unsure = "on time, of 2 file events" }, -- 512.354 nameplate10 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8382, line = false, unsure = "secret amount" }, -- 512.388 nameplate10 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.023 s
	{ hit = 8383, line = false, unsure = "secret amount" }, -- 512.413 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.002 s
	{ hit = 8384, line = false, unsure = "secret amount" }, -- 512.529 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8385, line = false, unsure = "secret amount" }, -- 512.529 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8388, line = false, unsure = "secret amount" }, -- 512.529 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8389, line = false, unsure = "secret amount" }, -- 512.554 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.622 s
	{ hit = 8396, line = false, unsure = "secret amount" }, -- 512.915 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.600 s
	{ hit = 8399, line = 8400, spell = 11711, unsure = "secret amount" }, -- 513.112 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8401, line = 8395, spell = false, unsure = "secret amount" }, -- 513.112 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.323 s
	{ hit = 8404, line = false, unsure = "secret amount" }, -- 513.169 nameplate10 MISS <secret> <- other: Shield Slam SPELL_MISSED -0.003 s
	{ hit = 8405, line = false, unsure = "secret amount" }, -- 513.528 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 8408, line = false, unsure = "secret amount" }, -- 513.528 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8409, line = false, unsure = "secret amount" }, -- 513.528 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8412, line = 8413, spell = 7648, unsure = "secret amount" }, -- 513.603 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8414, line = 8415, spell = 7648, unsure = "secret amount" }, -- 513.619 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8419, line = false, unsure = "secret amount" }, -- 513.877 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8420, line = false, unsure = "secret amount" }, -- 513.877 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8423, line = false, unsure = "secret amount" }, -- 513.877 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 8424, line = false, unsure = "secret amount" }, -- 513.919 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +0.596 s
	{ hit = 8425, line = 8428, spell = 11711, unsure = "secret amount" }, -- 514.081 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8429, line = 8430, spell = 11711, unsure = "secret amount" }, -- 514.146 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8431, line = false, unsure = "secret amount" }, -- 514.427 nameplate5 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.013 s
	{ hit = 8434, line = false, unsure = "secret amount" }, -- 514.536 nameplate10 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8435, line = false, unsure = "secret amount" }, -- 514.536 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8436, line = false, unsure = "secret amount" }, -- 514.536 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8442, line = false, unsure = "secret amount" }, -- 514.661 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 8451, line = false, unsure = "secret amount" }, -- 514.990 nameplate10 DODGE <secret> <- other: Windfury Weapon SPELL_MISSED -0.011 s
	{ hit = 8452, line = 8453, spell = 11711, unsure = "secret amount" }, -- 515.123 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8457, line = false, unsure = "2 file events fit" }, -- 515.349 nameplate10 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.658 s
	{ hit = 8458, line = 8446, spell = false, unsure = "secret amount" }, -- 515.411 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.602 s
	{ hit = 8461, line = false, unsure = "secret amount" }, -- 515.603 nameplate5 PARRY <secret> <- other: swing SWING_MISSED +0.587 s
	{ hit = 8467, line = false, unsure = "late by 1.18 s" }, -- 515.836 nameplate10 WOUND <secret> <- other: swing SWING_DAMAGE +1.180 s
	{ hit = 8468, line = false, unsure = "secret amount" }, -- 515.861 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8469, line = false, unsure = "secret amount" }, -- 515.861 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8470, line = false, unsure = "secret amount" }, -- 515.861 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8473, line = 8476, spell = 11711, unsure = "secret amount" }, -- 516.079 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8477, line = 8478, spell = 11711, unsure = "secret amount" }, -- 516.154 nameplate10 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8482, line = false, unsure = "secret amount" }, -- 516.163 nameplate10 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 8483, line = false, unsure = "secret amount" }, -- 516.163 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 8484, line = false, unsure = "secret amount" }, -- 516.163 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 8490, line = 8493, spell = 7648, unsure = "secret amount" }, -- 516.566 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8494, line = 8495, spell = 7648, unsure = "secret amount" }, -- 516.611 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8496, line = 8497, spell = 7648, unsure = "secret amount" }, -- 516.645 nameplate10 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8501, line = false, unsure = "secret amount" }, -- 516.738 nameplate10 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 8502, line = false, unsure = "on time, of 2 file events" }, -- 516.772 nameplate10 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8504, line = false, unsure = "secret amount" }, -- 516.972 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 8505, line = 8503, spell = false, unsure = "secret amount" }, -- 517.063 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.256 s
	{ hit = 8508, line = 8509, spell = 11711, unsure = "secret amount" }, -- 517.111 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8510, line = false, unsure = "secret amount" }, -- 517.321 nameplate10 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 8511, line = false, unsure = "4 file events fit" }, -- 517.404 nameplate10 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8518, line = false, unsure = "4 file events fit" }, -- 517.636 nameplate10 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.228 s
	{ hit = 8520, line = false, unsure = "secret amount" }, -- 517.861 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8521, line = false, unsure = "secret amount" }, -- 517.861 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8524, line = 8527, spell = 11711, unsure = "secret amount" }, -- 518.080 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8529, line = 8528, spell = 6219, unsure = "secret amount" }, -- 518.154 nameplate6 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.003 s
	{ hit = 8531, line = 8530, spell = 6219, unsure = "secret amount" }, -- 518.154 nameplate5 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.003 s
	{ hit = 8537, line = false, unsure = "late by 1.28 s" }, -- 518.298 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.283 s
	{ hit = 8546, line = false, unsure = "on time, of 2 file events" }, -- 518.656 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8550, line = false, unsure = "secret amount" }, -- 518.996 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.366 s
	{ hit = 8553, line = 8549, spell = false, unsure = "secret amount" }, -- 519.069 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.266 s
	{ hit = 8556, line = 8557, spell = 11711, unsure = "secret amount" }, -- 519.130 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8558, line = false, unsure = "secret amount" }, -- 519.473 nameplate6 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 8559, line = 8562, spell = 7648, unsure = "secret amount" }, -- 519.572 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8563, line = 8564, spell = 7648, unsure = "secret amount" }, -- 519.604 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8565, line = false, unsure = "secret amount" }, -- 519.859 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8568, line = false, unsure = "secret amount" }, -- 519.859 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8569, line = false, unsure = "secret amount" }, -- 519.962 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 8573, line = 8576, spell = 11711, unsure = "secret amount" }, -- 520.088 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8578, line = 8577, spell = 6219, unsure = "secret amount" }, -- 520.120 nameplate6 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.003 s
	{ hit = 8580, line = 8579, spell = 6219, unsure = "secret amount" }, -- 520.120 nameplate5 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.004 s
	{ hit = 8583, line = false, unsure = "secret amount" }, -- 520.162 nameplate6 MISS <secret> <- other: Vindication SPELL_MISSED -0.003 s
	{ hit = 8584, line = false, unsure = "secret amount" }, -- 520.487 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8587, line = false, unsure = "secret amount" }, -- 520.590 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.499 s
	{ hit = 8590, line = false, unsure = "secret amount" }, -- 520.805 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.665 s
	{ hit = 8592, line = false, unsure = "secret amount" }, -- 520.853 nameplate6 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 8593, line = false, unsure = "secret amount" }, -- 520.853 nameplate6 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 8594, line = false, unsure = "secret amount" }, -- 520.869 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8598, line = false, unsure = "secret amount" }, -- 520.889 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.004 s
	{ hit = 8601, line = false, unsure = "secret amount" }, -- 520.967 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 8604, line = 8591, spell = false, unsure = "secret amount" }, -- 521.075 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.256 s
	{ hit = 8607, line = 8608, spell = 11711, unsure = "secret amount" }, -- 521.121 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8609, line = false, unsure = "secret amount" }, -- 521.698 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.358 s
	{ hit = 8612, line = false, unsure = "secret amount" }, -- 521.865 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8613, line = false, unsure = "secret amount" }, -- 521.865 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8616, line = false, unsure = "secret amount" }, -- 522.029 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 8619, line = false, unsure = "secret amount" }, -- 522.040 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8620, line = 8623, spell = 11711, unsure = "secret amount" }, -- 522.090 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8625, line = 8624, spell = 6219, unsure = "secret amount" }, -- 522.090 nameplate6 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.003 s
	{ hit = 8627, line = 8626, spell = 6219, unsure = "secret amount" }, -- 522.090 nameplate5 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.004 s
	{ hit = 8630, line = false, unsure = "secret amount" }, -- 522.363 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8634, line = 8637, spell = 7648, unsure = "secret amount" }, -- 522.569 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8638, line = 8639, spell = 7648, unsure = "secret amount" }, -- 522.605 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8642, line = false, unsure = "on time, of 2 file events" }, -- 522.902 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8645, line = false, unsure = "secret amount" }, -- 522.962 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 8646, line = 8647, spell = 11711, unsure = "secret amount" }, -- 523.104 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8648, line = 8641, spell = false, unsure = "secret amount" }, -- 523.161 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.331 s
	{ hit = 8654, line = false, unsure = "secret amount" }, -- 523.576 nameplate6 PARRY <secret> <- other: Seal of Command SPELL_MISSED -0.003 s
	{ hit = 8655, line = false, unsure = "secret amount" }, -- 523.872 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8656, line = false, unsure = "secret amount" }, -- 523.872 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8659, line = false, unsure = "secret amount" }, -- 523.872 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8661, line = 8660, spell = 6219, unsure = "secret amount" }, -- 524.045 nameplate6 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.003 s
	{ hit = 8663, line = 8662, spell = 6219, unsure = "secret amount" }, -- 524.045 nameplate5 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.004 s
	{ hit = 8666, line = false, unsure = "on time, of 2 file events" }, -- 524.074 nameplate5 MISS <secret> <- other: Windfury Totem SPELL_MISSED -0.003 s
	{ hit = 8669, line = false, unsure = "on time, of 2 file events" }, -- 524.074 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8670, line = 8673, spell = 11711, unsure = "secret amount" }, -- 524.090 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8674, line = false, unsure = "secret amount" }, -- 524.115 nameplate5 MISS <secret> <- other: swing SWING_MISSED +0.489 s
	{ hit = 8678, line = false, unsure = "secret amount" }, -- 524.395 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.355 s
	{ hit = 8684, line = false, unsure = "secret amount" }, -- 524.512 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 8685, line = false, unsure = "secret amount" }, -- 524.512 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 8691, line = false, unsure = "late by 1.49 s" }, -- 525.046 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.486 s
	{ hit = 8692, line = 8690, spell = false, unsure = "secret amount" }, -- 525.080 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.260 s
	{ hit = 8695, line = 8696, spell = 11711, unsure = "secret amount" }, -- 525.117 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8697, line = false, unsure = "secret amount" }, -- 525.306 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8700, line = false, unsure = "secret amount" }, -- 525.306 nameplate6 MISS <secret> <- other: Judgement of Command SPELL_MISSED -0.003 s
	{ hit = 8701, line = false, unsure = "secret amount" }, -- 525.467 nameplate5 MISS <secret> <- other: Shield Slam SPELL_MISSED -0.003 s
	{ hit = 8704, line = false, unsure = "secret amount" }, -- 525.514 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8705, line = false, unsure = "secret amount" }, -- 525.514 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8708, line = 8711, spell = 7648, unsure = "secret amount" }, -- 525.569 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8712, line = 8713, spell = 7648, unsure = "secret amount" }, -- 525.589 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 8717, line = false, unsure = "secret amount" }, -- 525.861 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8718, line = false, unsure = "secret amount" }, -- 525.861 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8721, line = false, unsure = "secret amount" }, -- 525.961 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 8722, line = false, unsure = "secret amount" }, -- 526.071 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 8723, line = 8726, spell = 11711, unsure = "secret amount" }, -- 526.078 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8729, line = false, unsure = "secret amount" }, -- 526.528 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8730, line = false, unsure = "secret amount" }, -- 526.528 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8737, line = false, unsure = "secret amount" }, -- 526.882 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8738, line = false, unsure = "2 file events fit" }, -- 526.971 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 8741, line = false, unsure = "on time, of 2 file events" }, -- 526.994 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8742, line = false, unsure = "on time, of 2 file events" }, -- 527.003 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 8745, line = 8733, spell = false, unsure = "on time, of 3 file events" }, -- 527.079 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.246 s
	{ hit = 8748, line = 8749, spell = 11711, unsure = "secret amount" }, -- 527.112 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8750, line = false, unsure = "secret amount" }, -- 527.294 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 8754, line = false, unsure = "secret amount" }, -- 527.515 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8755, line = false, unsure = "secret amount" }, -- 527.515 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8758, line = false, unsure = "secret amount" }, -- 527.553 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.589 s
	{ hit = 8759, line = false, unsure = "on time, of 3 file events" }, -- 527.710 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8764, line = false, unsure = "2 file events fit" }, -- 527.746 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 8767, line = false, unsure = "late by 1.02 s" }, -- 527.778 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.022 s
	{ hit = 8770, line = false, unsure = "secret amount" }, -- 527.875 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8771, line = false, unsure = "secret amount" }, -- 527.875 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 8774, line = 8777, spell = 11711, unsure = "secret amount" }, -- 528.098 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8780, line = false, unsure = "secret amount" }, -- 528.392 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8782, line = false, unsure = "secret amount" }, -- 528.518 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.002 s
	{ hit = 8785, line = false, unsure = "secret amount" }, -- 528.518 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8786, line = 8787, spell = 7648, unsure = "secret amount" }, -- 528.569 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8788, line = 8791, spell = 7648, unsure = "secret amount" }, -- 528.595 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8793, line = false, unsure = "secret amount" }, -- 528.977 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 8794, line = 8792, spell = false, unsure = "secret amount" }, -- 529.100 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.259 s
	{ hit = 8795, line = 8798, spell = 11711, unsure = "secret amount" }, -- 529.128 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8804, line = false, unsure = "secret amount" }, -- 529.515 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8805, line = false, unsure = "secret amount" }, -- 529.515 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8808, line = false, unsure = "secret amount" }, -- 529.812 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.354 s
	{ hit = 8809, line = false, unsure = "secret amount" }, -- 529.896 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 8812, line = false, unsure = "secret amount" }, -- 530.027 nameplate5 MISS <secret> <- other: Stormstrike SPELL_MISSED -0.004 s
	{ hit = 8813, line = 8814, spell = 11711, unsure = "secret amount" }, -- 530.095 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8818, line = false, unsure = "secret amount" }, -- 530.520 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8819, line = false, unsure = "secret amount" }, -- 530.520 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8825, line = false, unsure = "on time, of 3 file events" }, -- 530.711 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8827, line = 8826, spell = 18879, unsure = "secret amount" }, -- 530.719 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8828, line = 8829, spell = 18879, unsure = "secret amount" }, -- 530.719 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 8831, line = false, unsure = "secret amount" }, -- 530.855 nameplate5 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 8832, line = false, unsure = "secret amount" }, -- 530.855 nameplate5 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 8833, line = false, unsure = "secret amount" }, -- 530.888 nameplate5 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 8834, line = false, unsure = "on time, of 4 file events" }, -- 530.888 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8837, line = 8840, spell = 11711, unsure = "secret amount" }, -- 531.112 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8841, line = 8830, spell = false, unsure = "2 file events fit" }, -- 531.156 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.324 s
	{ hit = 8846, line = false, unsure = "secret amount" }, -- 531.464 nameplate6 DODGE <secret> <- other: Shield Slam SPELL_MISSED -0.003 s
	{ hit = 8849, line = false, unsure = "secret amount" }, -- 531.512 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 8856, line = 8855, spell = 18879, unsure = "secret amount" }, -- 532.210 nameplate6 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8859, line = 8860, spell = 18879, unsure = "secret amount" }, -- 532.210 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 8862, line = 8861, spell = 7651, unsure = "secret amount" }, -- 532.331 nameplate6 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8865, line = 8866, spell = 7651, unsure = "secret amount" }, -- 532.331 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 8867, line = false, unsure = "secret amount" }, -- 532.521 nameplate6 MISS <secret> <- other: swing SWING_MISSED +0.353 s
	{ hit = 8871, line = 8874, spell = 11711, unsure = "secret amount" }, -- 533.114 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8875, line = 8870, spell = false, unsure = "secret amount" }, -- 533.179 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.335 s
	{ hit = 8879, line = 8878, spell = 7651, unsure = "secret amount" }, -- 533.344 nameplate6 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8882, line = 8883, spell = 7651, unsure = "2 file events fit" }, -- 533.344 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 8884, line = false, unsure = "secret amount" }, -- 533.344 player HEAL <secret> <- other: Heal SPELL_HEAL -0.005 s
	{ hit = 8888, line = false, unsure = "secret amount" }, -- 533.568 nameplate6 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 8891, line = false, unsure = "on time, of 2 file events" }, -- 533.692 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 8898, line = 8897, spell = 7651, unsure = "secret amount" }, -- 534.329 nameplate6 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8901, line = 8902, spell = 7651, unsure = "secret amount" }, -- 534.346 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 8903, line = false, unsure = "no file event fits" }, -- 534.429 nameplate6 WOUND <secret> <- no file event 
	{ hit = 8906, line = false, unsure = "2 file events fit" }, -- 534.614 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 8909, line = false, unsure = "on time, of 3 file events" }, -- 534.644 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8913, line = false, unsure = "no file event fits" }, -- 534.856 nameplate6 WOUND <secret> <- no file event 
	{ hit = 8916, line = 8912, spell = false, unsure = "on time, of 4 file events" }, -- 535.096 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.249 s
	{ hit = 8920, line = 8919, spell = 18879, unsure = "secret amount" }, -- 535.212 nameplate6 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8923, line = 8924, spell = 18879, unsure = "secret amount" }, -- 535.212 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 8926, line = 8925, spell = 7651, unsure = "secret amount" }, -- 535.340 nameplate6 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8929, line = 8930, spell = 7651, unsure = "secret amount" }, -- 535.340 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 8931, line = false, unsure = "no file event fits" }, -- 535.455 nameplate6 WOUND <secret> <- no file event 
	{ hit = 8938, line = 8937, spell = 7651, unsure = "secret amount" }, -- 536.332 nameplate6 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8941, line = 8942, spell = 7651, unsure = "secret amount" }, -- 536.332 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 8948, line = false, unsure = "secret amount" }, -- 537.195 nameplate6 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 8951, line = false, unsure = "secret amount" }, -- 537.195 nameplate6 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.004 s
	{ hit = 8957, line = false, unsure = "2 file events fit" }, -- 537.839 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.661 s
	{ hit = 8959, line = false, unsure = "on time, of 2 file events" }, -- 538.151 softinteract WOUND <secret> <- other: swing SWING_DAMAGE +0.577 s
	{ hit = 8962, line = false, unsure = "no file event fits" }, -- 538.671 softinteract WOUND <secret> <- no file event 
	{ hit = 8968, line = false, unsure = "2 file events fit" }, -- 540.304 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8969, line = false, unsure = "on time, of 2 file events" }, -- 540.312 nameplate7 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 8981, line = false, unsure = "on time, of 2 file events" }, -- 541.261 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.995 s
	{ hit = 8989, line = false, unsure = "on time, of 2 file events" }, -- 541.927 nameplate3 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 8993, line = false, unsure = "secret amount" }, -- 541.979 nameplate3 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 8996, line = false, unsure = "secret amount" }, -- 541.979 nameplate3 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.004 s
	{ hit = 8999, line = false, unsure = "secret amount" }, -- 542.254 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.365 s
	{ hit = 9002, line = false, unsure = "secret amount" }, -- 542.367 nameplate3 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.004 s
	{ hit = 9005, line = false, unsure = "secret amount" }, -- 542.402 nameplate3 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 9010, line = false, unsure = "secret amount" }, -- 543.102 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9011, line = false, unsure = "secret amount" }, -- 543.177 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.662 s
	{ hit = 9014, line = false, unsure = "secret amount" }, -- 543.305 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 9021, line = 9024, spell = 11711, unsure = "secret amount" }, -- 544.447 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9030, line = 9020, spell = false, unsure = "secret amount" }, -- 544.687 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.319 s
	{ hit = 9034, line = false, unsure = "secret amount" }, -- 545.062 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.004 s
	{ hit = 9036, line = false, unsure = "secret amount" }, -- 545.594 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.989 s
	{ hit = 9040, line = false, unsure = "secret amount" }, -- 546.411 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 9041, line = false, unsure = "on time, of 2 file events" }, -- 546.411 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 9043, line = 9044, spell = 11711, unsure = "secret amount" }, -- 546.438 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9045, line = false, unsure = "secret amount" }, -- 546.516 nameplate3 DODGE <secret> <- other: swing SWING_MISSED +0.592 s
	{ hit = 9048, line = 9039, spell = false, unsure = "secret amount" }, -- 546.746 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.332 s
	{ hit = 9049, line = false, unsure = "3 file events fit" }, -- 547.233 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9052, line = false, unsure = "2 file events fit" }, -- 547.233 nameplate7 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 9055, line = false, unsure = "2 file events fit" }, -- 547.269 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 9064, line = false, unsure = "secret amount" }, -- 547.654 nameplate3 PARRY <secret> <- other: swing SWING_MISSED +0.355 s
	{ hit = 9065, line = false, unsure = "secret amount" }, -- 547.886 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 9066, line = false, unsure = "late by 1.32 s" }, -- 548.098 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.317 s
	{ hit = 9071, line = false, unsure = "secret amount" }, -- 548.254 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 9076, line = 9077, spell = 11711, unsure = "secret amount" }, -- 548.441 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9078, line = 9081, spell = 11711, unsure = "secret amount" }, -- 548.737 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9082, line = false, unsure = "secret amount" }, -- 548.746 nameplate3 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.003 s
	{ hit = 9083, line = false, unsure = "on time, of 2 file events" }, -- 548.804 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9084, line = false, unsure = "secret amount" }, -- 549.322 nameplate3 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.004 s
	{ hit = 9085, line = false, unsure = "secret amount" }, -- 549.322 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.357 s
	{ hit = 9088, line = false, unsure = "secret amount" }, -- 549.355 nameplate3 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 9091, line = 9072, spell = false, unsure = "on time, of 2 file events" }, -- 549.371 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.993 s
	{ hit = 9100, line = false, unsure = "secret amount" }, -- 549.863 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 9101, line = false, unsure = "secret amount" }, -- 549.987 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.661 s
	{ hit = 9106, line = 9107, spell = 11711, unsure = "secret amount" }, -- 550.437 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9108, line = false, unsure = "on time, of 3 file events" }, -- 550.629 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.332 s
	{ hit = 9109, line = 9105, spell = false, unsure = "secret amount" }, -- 550.638 nameplate7 DODGE <secret> <- pet: swing SWING_MISSED +0.256 s
	{ hit = 9112, line = 9115, spell = 11711, unsure = "secret amount" }, -- 550.729 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9116, line = false, unsure = "secret amount" }, -- 550.895 nameplate3 PARRY <secret> <- other: Windfury Totem SPELL_MISSED -0.004 s
	{ hit = 9117, line = false, unsure = "2 file events fit" }, -- 550.994 nameplate3 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.663 s
	{ hit = 9120, line = false, unsure = "secret amount" }, -- 551.262 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 9121, line = false, unsure = "secret amount" }, -- 551.464 nameplate7 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 9124, line = false, unsure = "late by 1.14 s" }, -- 551.472 nameplate3 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +1.141 s
	{ hit = 9125, line = false, unsure = "on time, of 2 file events" }, -- 551.596 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9127, line = false, unsure = "secret amount" }, -- 552.062 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9131, line = false, unsure = "secret amount" }, -- 552.263 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.590 s
	{ hit = 9135, line = false, unsure = "2 file events fit" }, -- 552.387 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 9138, line = false, unsure = "on time, of 2 file events" }, -- 552.396 nameplate7 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9139, line = false, unsure = "secret amount" }, -- 552.413 nameplate3 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 9145, line = 9148, spell = 11711, unsure = "secret amount" }, -- 552.446 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9149, line = 9150, spell = 7648, unsure = "2 file events fit" }, -- 552.712 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9151, line = 9152, spell = 11711, unsure = "secret amount" }, -- 552.732 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9156, line = false, unsure = "secret amount" }, -- 552.977 nameplate7 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 9158, line = 9134, spell = false, unsure = "secret amount" }, -- 553.379 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.989 s
	{ hit = 9159, line = false, unsure = "secret amount" }, -- 553.396 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.661 s
	{ hit = 9162, line = false, unsure = "secret amount" }, -- 553.694 nameplate7 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 9163, line = false, unsure = "secret amount" }, -- 553.888 nameplate7 MISS <secret> <- other: Shield Slam SPELL_MISSED -0.003 s
	{ hit = 9164, line = false, unsure = "3 file events fit" }, -- 553.896 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9169, line = false, unsure = "secret amount" }, -- 554.054 nameplate7 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 9170, line = false, unsure = "on time, of 3 file events" }, -- 554.167 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.343 s
	{ hit = 9174, line = 9173, spell = 18879, unsure = "secret amount" }, -- 554.194 nameplate7 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9175, line = 9176, spell = 18879, unsure = "on time, of 2 file events" }, -- 554.194 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 9177, line = false, unsure = "secret amount" }, -- 554.269 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 9178, line = false, unsure = "on time, of 3 file events" }, -- 554.405 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 9179, line = 9182, spell = 11711, unsure = "secret amount" }, -- 554.438 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9183, line = false, unsure = "secret amount" }, -- 554.471 nameplate7 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 9184, line = false, unsure = "2 file events fit" }, -- 554.533 nameplate3 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.675 s
	{ hit = 9187, line = 9188, spell = 11711, unsure = "secret amount" }, -- 554.731 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9189, line = false, unsure = "secret amount" }, -- 554.965 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.590 s
	{ hit = 9190, line = false, unsure = "late by 1.17 s" }, -- 555.030 nameplate3 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +1.172 s
	{ hit = 9194, line = false, unsure = "secret amount" }, -- 555.387 nameplate7 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9201, line = 9202, spell = 7648, unsure = "secret amount" }, -- 555.702 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9206, line = 9193, spell = false, unsure = "secret amount" }, -- 556.017 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.627 s
	{ hit = 9212, line = false, unsure = "2 file events fit" }, -- 556.152 nameplate3 WOUND <secret> <- other: Victory Rush SPELL_DAMAGE -0.004 s
	{ hit = 9215, line = false, unsure = "secret amount" }, -- 556.179 nameplate3 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 9218, line = 9221, spell = 11711, unsure = "secret amount" }, -- 556.440 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9223, line = 9222, spell = 7651, unsure = "secret amount" }, -- 556.553 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9226, line = 9227, spell = 7651, unsure = "secret amount" }, -- 556.553 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 9228, line = 9229, spell = 11711, unsure = "secret amount" }, -- 556.728 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9230, line = false, unsure = "4 file events fit" }, -- 556.795 nameplate7 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 9231, line = false, unsure = "3 file events fit" }, -- 556.804 nameplate7 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE -0.024 s
	{ hit = 9232, line = false, unsure = "secret amount" }, -- 556.881 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9235, line = false, unsure = "on time, of 3 file events" }, -- 556.969 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9236, line = false, unsure = "3 file events fit" }, -- 557.069 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE -0.020 s
	{ hit = 9238, line = 9237, spell = 18879, unsure = "secret amount" }, -- 557.202 nameplate7 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9239, line = 9240, spell = 18879, unsure = "on time, of 2 file events" }, -- 557.202 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 9241, line = false, unsure = "secret amount" }, -- 557.253 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 9246, line = false, unsure = "2 file events fit" }, -- 557.444 nameplate7 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.616 s
	{ hit = 9247, line = false, unsure = "late by 1.34 s" }, -- 557.479 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +1.338 s
	{ hit = 9249, line = 9248, spell = 7651, unsure = "secret amount" }, -- 557.546 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9252, line = 9253, spell = 7651, unsure = "secret amount" }, -- 557.546 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 9254, line = false, unsure = "secret amount" }, -- 557.645 nameplate7 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 9255, line = false, unsure = "secret amount" }, -- 557.979 nameplate7 MISS <secret> <- other: swing SWING_MISSED +0.612 s
	{ hit = 9256, line = 9245, spell = false, unsure = "secret amount" }, -- 558.021 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.622 s
	{ hit = 9259, line = false, unsure = "secret amount" }, -- 558.314 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9262, line = false, unsure = "secret amount" }, -- 558.387 nameplate7 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9263, line = 9266, spell = 11711, unsure = "secret amount" }, -- 558.438 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9268, line = 9267, spell = 7651, unsure = "secret amount" }, -- 558.544 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9271, line = 9272, spell = 7651, unsure = "secret amount" }, -- 558.544 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 9273, line = 9274, spell = 7648, unsure = "2 file events fit" }, -- 558.696 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9275, line = false, unsure = "secret amount" }, -- 558.720 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.004 s
	{ hit = 9276, line = 9277, spell = 11711, unsure = "secret amount" }, -- 558.732 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9284, line = false, unsure = "secret amount" }, -- 559.379 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 9287, line = 9286, spell = 7651, unsure = "secret amount" }, -- 559.546 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9290, line = 9291, spell = 7651, unsure = "secret amount" }, -- 559.546 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 9292, line = false, unsure = "on time, of 2 file events" }, -- 559.574 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 9293, line = false, unsure = "secret amount" }, -- 559.574 nameplate7 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 9294, line = false, unsure = "secret amount" }, -- 559.574 nameplate7 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.059 s
	{ hit = 9295, line = false, unsure = "secret amount" }, -- 559.602 nameplate7 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 9296, line = 9285, spell = false, unsure = "secret amount" }, -- 559.664 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.257 s
	{ hit = 9302, line = false, unsure = "secret amount" }, -- 559.896 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9305, line = false, unsure = "secret amount" }, -- 559.979 nameplate7 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.003 s
	{ hit = 9306, line = false, unsure = "2 file events fit" }, -- 560.154 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.364 s
	{ hit = 9308, line = 9307, spell = 18879, unsure = "secret amount" }, -- 560.198 nameplate7 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9309, line = 9310, spell = 18879, unsure = "on time, of 2 file events" }, -- 560.198 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 9311, line = false, unsure = "secret amount" }, -- 560.265 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 9312, line = 9315, spell = 11711, unsure = "secret amount" }, -- 560.441 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9316, line = false, unsure = "on time, of 2 file events" }, -- 560.478 nameplate7 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 9323, line = 9322, spell = 7641, unsure = "secret amount" }, -- 561.370 nameplate3 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE -0.005 s
	{ hit = 9342, line = false, unsure = "secret amount" }, -- 567.470 nameplate15 WOUND <secret> <- other: swing SWING_DAMAGE +0.589 s
	{ hit = 9348, line = false, unsure = "secret amount" }, -- 568.678 nameplate15 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 9351, line = false, unsure = "on time, of 2 file events" }, -- 568.712 nameplate15 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 9358, line = false, unsure = "secret amount" }, -- 569.127 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.004 s
	{ hit = 9364, line = false, unsure = "no file event fits" }, -- 570.314 nameplate15 WOUND <secret> <- no file event 
	{ hit = 9368, line = false, unsure = "secret amount" }, -- 570.974 nameplate16 MISS <secret> <- other: Thunder Clap SPELL_MISSED -0.003 s
	{ hit = 9369, line = false, unsure = "on time, of 2 file events" }, -- 570.974 nameplate15 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 9370, line = false, unsure = "secret amount" }, -- 570.974 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 9379, line = false, unsure = "on time, of 2 file events" }, -- 571.636 nameplate15 WOUND <secret> <- other: swing SWING_DAMAGE +0.624 s
	{ hit = 9383, line = false, unsure = "secret amount" }, -- 572.161 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9386, line = false, unsure = "on time, of 2 file events" }, -- 572.194 nameplate15 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9387, line = false, unsure = "secret amount" }, -- 572.465 nameplate15 MISS <secret> <- other: Shield Slam SPELL_MISSED -0.003 s
	{ hit = 9394, line = 9382, spell = false, unsure = "secret amount" }, -- 572.694 nameplate15 DODGE <secret> <- pet: swing SWING_MISSED +0.988 s
	{ hit = 9395, line = false, unsure = "no file event fits" }, -- 572.786 nameplate15 WOUND <secret> <- no file event 
	{ hit = 9399, line = false, unsure = "secret amount" }, -- 572.993 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 9405, line = false, unsure = "secret amount" }, -- 573.613 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9406, line = false, unsure = "secret amount" }, -- 573.613 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9407, line = false, unsure = "secret amount" }, -- 573.613 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9408, line = false, unsure = "secret amount" }, -- 573.613 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9409, line = false, unsure = "secret amount" }, -- 573.613 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9412, line = false, unsure = "secret amount" }, -- 573.613 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9420, line = false, unsure = "secret amount" }, -- 574.081 nameplate16 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.004 s
	{ hit = 9421, line = false, unsure = "secret amount" }, -- 574.111 nameplate16 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 9422, line = false, unsure = "on time, of 3 file events" }, -- 574.211 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9425, line = 9416, spell = false, unsure = "on time, of 2 file events" }, -- 574.336 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.622 s
	{ hit = 9431, line = false, unsure = "secret amount" }, -- 574.611 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9432, line = false, unsure = "secret amount" }, -- 574.611 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9433, line = false, unsure = "secret amount" }, -- 574.611 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9436, line = false, unsure = "secret amount" }, -- 574.611 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9437, line = false, unsure = "secret amount" }, -- 574.611 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9438, line = false, unsure = "secret amount" }, -- 574.611 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9456, line = false, unsure = "late by 1.23 s" }, -- 575.021 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.229 s
	{ hit = 9457, line = false, unsure = "secret amount" }, -- 575.044 nameplate15 WOUND <secret> <- other: swing SWING_DAMAGE +0.496 s
	{ hit = 9458, line = false, unsure = "no file event fits" }, -- 575.082 nameplate16 DODGE <secret> <- no file event 
	{ hit = 9459, line = 9460, spell = 11711, unsure = "secret amount" }, -- 575.180 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9461, line = false, unsure = "secret amount" }, -- 575.537 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 9462, line = false, unsure = "secret amount" }, -- 575.569 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.004 s
	{ hit = 9465, line = false, unsure = "2 file events fit" }, -- 575.602 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 9466, line = false, unsure = "secret amount" }, -- 575.602 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 9467, line = false, unsure = "2 file events fit" }, -- 575.602 nameplate7 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 9468, line = false, unsure = "secret amount" }, -- 575.602 nameplate2 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 9471, line = false, unsure = "secret amount" }, -- 575.602 nameplate15 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 9472, line = false, unsure = "2 file events fit" }, -- 575.602 nameplate16 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 9473, line = false, unsure = "secret amount" }, -- 575.613 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9474, line = false, unsure = "secret amount" }, -- 575.613 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9477, line = false, unsure = "secret amount" }, -- 575.613 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9478, line = false, unsure = "secret amount" }, -- 575.613 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9479, line = false, unsure = "secret amount" }, -- 575.613 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9480, line = false, unsure = "secret amount" }, -- 575.613 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9481, line = false, unsure = "secret amount" }, -- 575.627 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.006 s
	{ hit = 9482, line = false, unsure = "secret amount" }, -- 575.627 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.007 s
	{ hit = 9483, line = false, unsure = "secret amount" }, -- 575.627 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.007 s
	{ hit = 9484, line = false, unsure = "secret amount" }, -- 575.627 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.007 s
	{ hit = 9485, line = false, unsure = "secret amount" }, -- 575.627 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.007 s
	{ hit = 9486, line = false, unsure = "secret amount" }, -- 575.627 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.007 s
	{ hit = 9494, line = false, unsure = "secret amount" }, -- 575.805 nameplate16 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.004 s
	{ hit = 9497, line = 9489, spell = false, unsure = "secret amount" }, -- 575.962 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.248 s
	{ hit = 9498, line = false, unsure = "secret amount" }, -- 575.986 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 9501, line = false, unsure = "on time, of 2 file events" }, -- 576.444 nameplate16 WOUND <secret> <- other: swing SWING_DAMAGE +0.652 s
	{ hit = 9502, line = false, unsure = "secret amount" }, -- 576.519 nameplate16 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 9503, line = false, unsure = "secret amount" }, -- 576.619 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9504, line = false, unsure = "secret amount" }, -- 576.619 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9507, line = false, unsure = "secret amount" }, -- 576.619 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9508, line = false, unsure = "secret amount" }, -- 576.619 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9509, line = false, unsure = "secret amount" }, -- 576.619 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9510, line = false, unsure = "secret amount" }, -- 576.619 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9511, line = false, unsure = "secret amount" }, -- 576.683 nameplate2 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 9514, line = false, unsure = "secret amount" }, -- 576.683 nameplate2 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.004 s
	{ hit = 9521, line = false, unsure = "secret amount" }, -- 576.922 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9525, line = false, unsure = "secret amount" }, -- 577.069 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 9526, line = false, unsure = "secret amount" }, -- 577.069 nameplate15 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 9527, line = 9528, spell = 11711, unsure = "secret amount" }, -- 577.179 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9534, line = false, unsure = "secret amount" }, -- 577.439 nameplate7 PARRY <secret> <- other: Sunder Armor SPELL_MISSED -0.003 s
	{ hit = 9535, line = false, unsure = "late by 1.02 s" }, -- 577.512 nameplate16 WOUND <secret> <- other: swing SWING_DAMAGE +1.015 s
	{ hit = 9536, line = false, unsure = "secret amount" }, -- 577.608 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9539, line = false, unsure = "secret amount" }, -- 577.608 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9540, line = false, unsure = "secret amount" }, -- 577.608 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9541, line = false, unsure = "secret amount" }, -- 577.608 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9542, line = false, unsure = "secret amount" }, -- 577.608 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9543, line = false, unsure = "secret amount" }, -- 577.608 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9544, line = false, unsure = "secret amount" }, -- 577.622 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9545, line = false, unsure = "secret amount" }, -- 577.622 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9548, line = false, unsure = "secret amount" }, -- 577.622 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9549, line = false, unsure = "secret amount" }, -- 577.622 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9550, line = false, unsure = "secret amount" }, -- 577.622 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9551, line = false, unsure = "secret amount" }, -- 577.622 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9554, line = 9555, spell = 7648, unsure = "secret amount" }, -- 577.661 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9565, line = false, unsure = "secret amount" }, -- 577.861 nameplate7 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9568, line = false, unsure = "secret amount" }, -- 578.054 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 9569, line = 9570, spell = 11711, unsure = "secret amount" }, -- 578.154 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9574, line = false, unsure = "on time, of 2 file events" }, -- 578.306 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9575, line = 9556, spell = false, unsure = "secret amount" }, -- 578.329 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.623 s
	{ hit = 9576, line = false, unsure = "secret amount" }, -- 578.613 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9577, line = false, unsure = "secret amount" }, -- 578.613 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9580, line = false, unsure = "secret amount" }, -- 578.613 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9581, line = false, unsure = "secret amount" }, -- 578.613 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9582, line = false, unsure = "secret amount" }, -- 578.613 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9583, line = false, unsure = "secret amount" }, -- 578.613 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9584, line = false, unsure = "secret amount" }, -- 578.704 nameplate15 WOUND <secret> <- other: swing SWING_DAMAGE +0.632 s
	{ hit = 9590, line = false, unsure = "2 file events fit" }, -- 578.933 nameplate15 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 9591, line = false, unsure = "secret amount" }, -- 578.961 nameplate15 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 9592, line = false, unsure = "secret amount" }, -- 578.987 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 9598, line = 9599, spell = 11711, unsure = "secret amount" }, -- 579.186 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9600, line = false, unsure = "secret amount" }, -- 579.255 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 9601, line = false, unsure = "secret amount" }, -- 579.612 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9602, line = false, unsure = "secret amount" }, -- 579.612 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9605, line = false, unsure = "secret amount" }, -- 579.612 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9606, line = false, unsure = "secret amount" }, -- 579.612 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9607, line = false, unsure = "secret amount" }, -- 579.612 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9608, line = false, unsure = "secret amount" }, -- 579.612 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9609, line = false, unsure = "secret amount" }, -- 579.627 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9610, line = false, unsure = "secret amount" }, -- 579.627 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9611, line = false, unsure = "secret amount" }, -- 579.627 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9612, line = false, unsure = "secret amount" }, -- 579.627 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9613, line = false, unsure = "secret amount" }, -- 579.627 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9616, line = false, unsure = "secret amount" }, -- 579.627 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9622, line = false, unsure = "secret amount" }, -- 579.804 nameplate15 WOUND <secret> <- other: swing SWING_DAMAGE +0.606 s
	{ hit = 9627, line = false, unsure = "secret amount" }, -- 579.989 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.658 s
	{ hit = 9628, line = false, unsure = "secret amount" }, -- 580.071 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 9630, line = 9631, spell = 11711, unsure = "secret amount" }, -- 580.144 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9632, line = 9617, spell = false, unsure = "secret amount" }, -- 580.336 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.622 s
	{ hit = 9637, line = false, unsure = "secret amount" }, -- 580.436 nameplate15 DODGE <secret> <- other: Sunder Armor SPELL_MISSED -0.003 s
	{ hit = 9638, line = false, unsure = "secret amount" }, -- 580.608 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9641, line = false, unsure = "secret amount" }, -- 580.608 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9642, line = false, unsure = "secret amount" }, -- 580.608 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9643, line = false, unsure = "secret amount" }, -- 580.608 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9644, line = false, unsure = "secret amount" }, -- 580.608 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9645, line = false, unsure = "secret amount" }, -- 580.608 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9646, line = 9647, spell = 7648, unsure = "secret amount" }, -- 580.638 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9648, line = 9649, spell = 7648, unsure = "secret amount" }, -- 580.661 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9650, line = false, unsure = "secret amount" }, -- 580.820 nameplate6 MISS <secret> <- other: Consecration SPELL_MISSED -0.004 s
	{ hit = 9664, line = 9667, spell = 11711, unsure = "secret amount" }, -- 581.113 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9668, line = 9669, spell = 11711, unsure = "secret amount" }, -- 581.177 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9670, line = false, unsure = "secret amount" }, -- 581.636 nameplate16 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.003 s
	{ hit = 9671, line = false, unsure = "secret amount" }, -- 581.636 nameplate15 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.003 s
	{ hit = 9672, line = false, unsure = "secret amount" }, -- 581.636 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9673, line = false, unsure = "secret amount" }, -- 581.636 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9674, line = false, unsure = "secret amount" }, -- 581.636 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9677, line = false, unsure = "secret amount" }, -- 581.636 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9682, line = false, unsure = "secret amount" }, -- 581.828 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9683, line = false, unsure = "secret amount" }, -- 581.828 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9684, line = false, unsure = "secret amount" }, -- 581.828 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9687, line = false, unsure = "secret amount" }, -- 581.828 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9688, line = false, unsure = "secret amount" }, -- 581.828 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9689, line = false, unsure = "secret amount" }, -- 581.828 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9701, line = false, unsure = "on time, of 2 file events" }, -- 581.929 nameplate6 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 9704, line = false, unsure = "secret amount" }, -- 581.943 nameplate15 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.088 s
	{ hit = 9705, line = 9679, spell = false, unsure = "secret amount" }, -- 581.972 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.247 s
	{ hit = 9706, line = false, unsure = "secret amount" }, -- 581.995 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 9707, line = false, unsure = "secret amount" }, -- 582.103 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.500 s
	{ hit = 9708, line = 9709, spell = 11711, unsure = "secret amount" }, -- 582.155 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9720, line = false, unsure = "secret amount" }, -- 582.771 nameplate15 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 9721, line = false, unsure = "secret amount" }, -- 582.821 nameplate6 MISS <secret> <- other: Consecration SPELL_MISSED -0.003 s
	{ hit = 9724, line = false, unsure = "secret amount" }, -- 582.836 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9725, line = false, unsure = "secret amount" }, -- 582.836 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9726, line = false, unsure = "secret amount" }, -- 582.836 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9727, line = false, unsure = "secret amount" }, -- 582.836 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9728, line = false, unsure = "secret amount" }, -- 582.836 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9729, line = false, unsure = "secret amount" }, -- 582.887 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.979 s
	{ hit = 9738, line = 9739, spell = 11711, unsure = "secret amount" }, -- 583.111 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9740, line = 9741, spell = 11711, unsure = "secret amount" }, -- 583.186 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9742, line = false, unsure = "secret amount" }, -- 583.279 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9748, line = false, unsure = "secret amount" }, -- 583.629 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9749, line = false, unsure = "secret amount" }, -- 583.629 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9750, line = false, unsure = "secret amount" }, -- 583.629 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9751, line = false, unsure = "secret amount" }, -- 583.629 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9752, line = false, unsure = "secret amount" }, -- 583.629 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9753, line = false, unsure = "secret amount" }, -- 583.629 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9756, line = 9757, spell = 7648, unsure = "secret amount" }, -- 583.636 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9760, line = 9761, spell = 7648, unsure = "secret amount" }, -- 583.661 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9772, line = false, unsure = "secret amount" }, -- 583.827 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9773, line = false, unsure = "secret amount" }, -- 583.827 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9774, line = false, unsure = "secret amount" }, -- 583.827 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9775, line = false, unsure = "secret amount" }, -- 583.827 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9776, line = false, unsure = "secret amount" }, -- 583.827 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9779, line = false, unsure = "secret amount" }, -- 583.827 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9782, line = false, unsure = "secret amount" }, -- 584.086 nameplate15 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 9783, line = 9784, spell = 7648, unsure = "secret amount" }, -- 584.101 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9785, line = false, unsure = "on time, of 2 file events" }, -- 584.127 nameplate15 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 9786, line = 9787, spell = 11711, unsure = "secret amount" }, -- 584.144 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9789, line = false, unsure = "2 file events fit" }, -- 584.217 nameplate15 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9792, line = false, unsure = "late by 1.48 s" }, -- 584.217 nameplate15 WOUND <secret> <- other: swing SWING_DAMAGE +1.478 s
	{ hit = 9795, line = 9762, spell = false, unsure = "secret amount" }, -- 584.352 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.621 s
	{ hit = 9796, line = false, unsure = "secret amount" }, -- 584.527 nameplate16 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 9797, line = 9798, spell = 11711, unsure = "secret amount" }, -- 584.594 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9799, line = false, unsure = "secret amount" }, -- 584.711 nameplate15 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 9808, line = false, unsure = "secret amount" }, -- 584.827 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9809, line = false, unsure = "secret amount" }, -- 584.827 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9810, line = false, unsure = "secret amount" }, -- 584.827 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9813, line = false, unsure = "secret amount" }, -- 584.827 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9814, line = false, unsure = "secret amount" }, -- 584.827 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9815, line = false, unsure = "secret amount" }, -- 584.827 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9822, line = false, unsure = "secret amount" }, -- 584.994 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 9823, line = false, unsure = "2 file events fit" }, -- 585.086 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9824, line = 9825, spell = 11711, unsure = "secret amount" }, -- 585.127 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9826, line = 9827, spell = 11711, unsure = "secret amount" }, -- 585.194 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9828, line = false, unsure = "2 file events fit" }, -- 585.302 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.004 s
	{ hit = 9829, line = false, unsure = "secret amount" }, -- 585.302 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.004 s
	{ hit = 9838, line = false, unsure = "secret amount" }, -- 585.761 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.622 s
	{ hit = 9842, line = false, unsure = "secret amount" }, -- 585.827 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9843, line = false, unsure = "secret amount" }, -- 585.827 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9844, line = false, unsure = "secret amount" }, -- 585.827 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9847, line = false, unsure = "secret amount" }, -- 585.827 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9848, line = false, unsure = "secret amount" }, -- 585.827 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9849, line = false, unsure = "secret amount" }, -- 585.827 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9850, line = false, unsure = "late by 1.26 s" }, -- 585.861 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.255 s
	{ hit = 9853, line = 9834, spell = false, unsure = "secret amount" }, -- 586.058 nameplate15 WOUND <secret> <- pet: swing SWING_DAMAGE +0.328 s
	{ hit = 9856, line = 9857, spell = 11711, unsure = "secret amount" }, -- 586.152 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9861, line = false, unsure = "secret amount" }, -- 586.444 nameplate7 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 9862, line = 9863, spell = 11711, unsure = "secret amount" }, -- 586.586 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9864, line = false, unsure = "secret amount" }, -- 586.602 nameplate15 HEAL <secret> <- creature: Holy Light SPELL_HEAL -0.004 s
	{ hit = 9867, line = 9868, spell = 7648, unsure = "secret amount" }, -- 586.636 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9869, line = 9870, spell = 7648, unsure = "secret amount" }, -- 586.661 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9871, line = false, unsure = "secret amount" }, -- 586.694 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9875, line = false, unsure = "secret amount" }, -- 586.736 nameplate15 PARRY <secret> <- other: swing SWING_MISSED +0.588 s
	{ hit = 9881, line = false, unsure = "secret amount" }, -- 586.827 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9882, line = false, unsure = "secret amount" }, -- 586.827 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9883, line = false, unsure = "secret amount" }, -- 586.827 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9884, line = false, unsure = "secret amount" }, -- 586.827 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9885, line = false, unsure = "secret amount" }, -- 586.827 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9888, line = false, unsure = "secret amount" }, -- 586.827 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9898, line = 9899, spell = 7648, unsure = "secret amount" }, -- 587.077 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9900, line = 9901, spell = 7648, unsure = "secret amount" }, -- 587.102 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9902, line = 9903, spell = 11711, unsure = "secret amount" }, -- 587.119 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9904, line = 9905, spell = 11711, unsure = "secret amount" }, -- 587.194 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9906, line = false, unsure = "secret amount" }, -- 587.377 nameplate3 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.080 s
	{ hit = 9907, line = 9910, spell = 11711, unsure = "secret amount" }, -- 587.557 nameplate15 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9917, line = false, unsure = "secret amount" }, -- 587.827 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9918, line = false, unsure = "secret amount" }, -- 587.827 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9919, line = false, unsure = "secret amount" }, -- 587.827 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9922, line = false, unsure = "secret amount" }, -- 587.827 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9923, line = false, unsure = "secret amount" }, -- 587.827 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9924, line = false, unsure = "secret amount" }, -- 587.827 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 9928, line = false, unsure = "secret amount" }, -- 587.911 nameplate7 MISS <secret> <- other: swing SWING_MISSED +0.589 s
	{ hit = 9929, line = false, unsure = "secret amount" }, -- 587.936 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 9930, line = false, unsure = "secret amount" }, -- 587.936 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 9931, line = false, unsure = "secret amount" }, -- 587.936 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 9932, line = false, unsure = "secret amount" }, -- 587.936 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 9933, line = 9913, spell = false, unsure = "secret amount" }, -- 588.052 nameplate15 WOUND <secret> <- pet: swing SWING_DAMAGE +0.326 s
	{ hit = 9936, line = 9937, spell = 11711, unsure = "secret amount" }, -- 588.161 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9943, line = false, unsure = "secret amount" }, -- 588.488 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 9944, line = false, unsure = "secret amount" }, -- 588.488 nameplate15 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 9947, line = false, unsure = "secret amount" }, -- 588.488 nameplate16 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 9948, line = false, unsure = "secret amount" }, -- 588.488 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 9949, line = false, unsure = "secret amount" }, -- 588.488 nameplate7 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 9950, line = false, unsure = "secret amount" }, -- 588.488 nameplate2 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 9951, line = 9952, spell = 11711, unsure = "secret amount" }, -- 588.583 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9953, line = false, unsure = "3 file events fit" }, -- 588.703 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 9957, line = false, unsure = "secret amount" }, -- 588.824 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9958, line = false, unsure = "secret amount" }, -- 588.824 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9959, line = false, unsure = "secret amount" }, -- 588.824 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9962, line = false, unsure = "secret amount" }, -- 588.824 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9963, line = false, unsure = "secret amount" }, -- 588.824 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9964, line = false, unsure = "secret amount" }, -- 588.824 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 9968, line = false, unsure = "2 file events fit" }, -- 588.961 nameplate2 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.231 s
	{ hit = 9969, line = false, unsure = "secret amount" }, -- 589.019 nameplate15 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 9975, line = 9976, spell = 11711, unsure = "secret amount" }, -- 589.119 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9979, line = false, unsure = "secret amount" }, -- 589.177 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 9980, line = 9981, spell = 11711, unsure = "secret amount" }, -- 589.195 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9986, line = false, unsure = "secret amount" }, -- 589.394 nameplate2 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.664 s
	{ hit = 9990, line = false, unsure = "secret amount" }, -- 589.427 nameplate15 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 9993, line = false, unsure = "secret amount" }, -- 589.511 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9994, line = false, unsure = "secret amount" }, -- 589.511 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9995, line = false, unsure = "secret amount" }, -- 589.511 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9996, line = false, unsure = "secret amount" }, -- 589.511 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9997, line = false, unsure = "secret amount" }, -- 589.511 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 9998, line = false, unsure = "secret amount" }, -- 589.511 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10001, line = 10004, spell = 11711, unsure = "secret amount" }, -- 589.561 nameplate15 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10005, line = 10006, spell = 7648, unsure = "secret amount" }, -- 589.638 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10007, line = 10008, spell = 7648, unsure = "secret amount" }, -- 589.669 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 10019, line = false, unsure = "late by 1.20 s" }, -- 589.871 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.199 s
	{ hit = 10020, line = false, unsure = "on time, of 2 file events" }, -- 589.967 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 10024, line = 10025, spell = 7648, unsure = "secret amount" }, -- 590.086 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10026, line = 10027, spell = 7648, unsure = "secret amount" }, -- 590.111 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10028, line = 10029, spell = 11711, unsure = "secret amount" }, -- 590.144 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10030, line = 10031, spell = 1949, unsure = "secret amount" }, -- 590.219 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10033, line = 10032, spell = 1949, unsure = "secret amount" }, -- 590.219 nameplate15 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10037, line = 10036, spell = 1949, unsure = "secret amount" }, -- 590.219 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10039, line = 10038, spell = 1949, unsure = "secret amount" }, -- 590.219 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10041, line = 10040, spell = 1949, unsure = "secret amount" }, -- 590.219 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10043, line = 10042, spell = 1949, unsure = "secret amount" }, -- 590.219 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10045, line = 10044, spell = 1949, unsure = "secret amount" }, -- 590.219 nameplate16 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 10046, line = false, unsure = "2 file events fit" }, -- 590.366 nameplate15 WOUND <secret> <- other: swing SWING_DAMAGE +0.343 s
	{ hit = 10052, line = 10053, spell = 11711, unsure = "secret amount" }, -- 590.587 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10054, line = false, unsure = "no file event fits" }, -- 590.612 nameplate15 WOUND <secret> <- no file event 
	{ hit = 10063, line = false, unsure = "late by 1.48 s" }, -- 591.031 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.484 s
	{ hit = 10067, line = 10068, spell = 11711, unsure = "secret amount" }, -- 591.121 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10069, line = false, unsure = "secret amount" }, -- 591.167 nameplate6 MISS <secret> <- other: Consecration SPELL_MISSED -0.003 s
	{ hit = 10070, line = 10071, spell = 11711, unsure = "secret amount" }, -- 591.179 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10072, line = false, unsure = "secret amount" }, -- 591.179 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10073, line = false, unsure = "secret amount" }, -- 591.179 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10074, line = false, unsure = "secret amount" }, -- 591.179 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10077, line = false, unsure = "secret amount" }, -- 591.179 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10078, line = false, unsure = "secret amount" }, -- 591.179 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10079, line = 10080, spell = 1949, unsure = "secret amount" }, -- 591.223 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10082, line = 10081, spell = 1949, unsure = "secret amount" }, -- 591.223 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10084, line = 10083, spell = 1949, unsure = "secret amount" }, -- 591.223 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10086, line = 10085, spell = 1949, unsure = "secret amount" }, -- 591.223 nameplate15 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10090, line = 10089, spell = 1949, unsure = "secret amount" }, -- 591.223 nameplate16 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10092, line = 10091, spell = 1949, unsure = "secret amount" }, -- 591.223 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10094, line = 10093, spell = 1949, unsure = "secret amount" }, -- 591.223 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 10097, line = false, unsure = "secret amount" }, -- 591.513 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10098, line = false, unsure = "secret amount" }, -- 591.513 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10099, line = false, unsure = "secret amount" }, -- 591.513 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10102, line = false, unsure = "secret amount" }, -- 591.513 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10103, line = false, unsure = "secret amount" }, -- 591.513 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10104, line = false, unsure = "secret amount" }, -- 591.513 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10105, line = 10108, spell = 11711, unsure = "secret amount" }, -- 591.565 nameplate15 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10118, line = false, unsure = "secret amount" }, -- 592.027 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.630 s
	{ hit = 10122, line = 10123, spell = 11711, unsure = "secret amount" }, -- 592.142 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 10124, line = false, unsure = "secret amount" }, -- 592.172 nameplate7 MISS <secret> <- other: Consecration SPELL_MISSED -0.004 s
	{ hit = 10125, line = false, unsure = "secret amount" }, -- 592.179 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10126, line = false, unsure = "secret amount" }, -- 592.179 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10127, line = false, unsure = "secret amount" }, -- 592.179 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10128, line = false, unsure = "secret amount" }, -- 592.179 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10131, line = false, unsure = "secret amount" }, -- 592.179 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10132, line = 10133, spell = 1949, unsure = "secret amount" }, -- 592.221 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10135, line = 10134, spell = 1949, unsure = "secret amount" }, -- 592.221 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10137, line = 10136, spell = 1949, unsure = "secret amount" }, -- 592.221 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10139, line = 10138, spell = 1949, unsure = "secret amount" }, -- 592.221 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10141, line = 10140, spell = 1949, unsure = "secret amount" }, -- 592.221 nameplate15 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10145, line = 10144, spell = 1949, unsure = "secret amount" }, -- 592.221 nameplate16 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10147, line = 10146, spell = 1949, unsure = "secret amount" }, -- 592.221 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 10148, line = 10114, spell = false, unsure = "secret amount" }, -- 592.386 nameplate15 WOUND <secret> <- pet: swing SWING_DAMAGE +0.630 s
	{ hit = 10151, line = false, unsure = "secret amount" }, -- 592.444 nameplate2 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 10155, line = 10156, spell = 11711, unsure = "secret amount" }, -- 592.586 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10157, line = 10158, spell = 7648, unsure = "secret amount" }, -- 592.627 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 10162, line = 10163, spell = 7648, unsure = "secret amount" }, -- 592.661 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10167, line = false, unsure = "secret amount" }, -- 592.877 nameplate2 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 10168, line = false, unsure = "secret amount" }, -- 592.911 nameplate2 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 10174, line = 10175, spell = 7648, unsure = "secret amount" }, -- 593.075 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10176, line = false, unsure = "on time, of 2 file events" }, -- 593.081 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.359 s
	{ hit = 10177, line = 10178, spell = 7648, unsure = "2 file events fit" }, -- 593.104 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10179, line = 10180, spell = 11711, unsure = "secret amount" }, -- 593.112 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10187, line = 10188, spell = 11711, unsure = "secret amount" }, -- 593.186 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10189, line = false, unsure = "secret amount" }, -- 593.186 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10190, line = false, unsure = "secret amount" }, -- 593.186 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10191, line = false, unsure = "secret amount" }, -- 593.186 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10192, line = false, unsure = "secret amount" }, -- 593.186 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10193, line = false, unsure = "secret amount" }, -- 593.186 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10196, line = 10197, spell = 1949, unsure = "secret amount" }, -- 593.230 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10199, line = 10198, spell = 1949, unsure = "secret amount" }, -- 593.230 nameplate16 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10201, line = 10200, spell = 1949, unsure = "secret amount" }, -- 593.230 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10203, line = 10202, spell = 1949, unsure = "secret amount" }, -- 593.230 nameplate15 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10207, line = 10206, spell = 1949, unsure = "secret amount" }, -- 593.230 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10209, line = 10208, spell = 1949, unsure = "secret amount" }, -- 593.230 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10211, line = false, unsure = "secret amount" }, -- 593.512 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10212, line = false, unsure = "secret amount" }, -- 593.512 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10213, line = false, unsure = "secret amount" }, -- 593.512 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10214, line = false, unsure = "secret amount" }, -- 593.512 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10217, line = false, unsure = "secret amount" }, -- 593.512 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10218, line = 10221, spell = 11711, unsure = "secret amount" }, -- 593.569 nameplate15 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10226, line = false, unsure = "secret amount" }, -- 593.929 nameplate16 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 10227, line = false, unsure = "secret amount" }, -- 593.929 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 10228, line = false, unsure = "secret amount" }, -- 593.929 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 10229, line = false, unsure = "secret amount" }, -- 593.929 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 10233, line = false, unsure = "secret amount" }, -- 594.177 nameplate16 MISS <secret> <- other: Consecration SPELL_MISSED -0.004 s
	{ hit = 10234, line = false, unsure = "secret amount" }, -- 594.186 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10237, line = false, unsure = "secret amount" }, -- 594.186 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10238, line = false, unsure = "secret amount" }, -- 594.186 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10239, line = false, unsure = "secret amount" }, -- 594.186 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10243, line = 10244, spell = 1949, unsure = "secret amount" }, -- 594.219 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10246, line = 10245, spell = 1949, unsure = "secret amount" }, -- 594.219 nameplate15 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10250, line = 10249, spell = 1949, unsure = "secret amount" }, -- 594.219 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10252, line = 10251, spell = 1949, unsure = "secret amount" }, -- 594.219 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10254, line = 10253, spell = 1949, unsure = "secret amount" }, -- 594.219 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10256, line = 10255, spell = 1949, unsure = "secret amount" }, -- 594.219 nameplate16 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10259, line = 10225, spell = false, unsure = "secret amount" }, -- 594.377 nameplate15 WOUND <secret> <- pet: swing SWING_DAMAGE +0.622 s
	{ hit = 10265, line = false, unsure = "secret amount" }, -- 594.551 nameplate15 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 10268, line = 10269, spell = 11711, unsure = "secret amount" }, -- 594.594 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10270, line = false, unsure = "secret amount" }, -- 594.594 nameplate15 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 10273, line = false, unsure = "2 file events fit" }, -- 594.620 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10274, line = false, unsure = "secret amount" }, -- 594.620 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.498 s
	{ hit = 10275, line = false, unsure = "secret amount" }, -- 594.662 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10276, line = false, unsure = "secret amount" }, -- 594.662 nameplate16 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10280, line = 10281, spell = 11711, unsure = "secret amount" }, -- 595.119 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10285, line = 10286, spell = 11711, unsure = "secret amount" }, -- 595.189 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 10287, line = false, unsure = "secret amount" }, -- 595.189 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10288, line = false, unsure = "secret amount" }, -- 595.189 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10289, line = false, unsure = "secret amount" }, -- 595.189 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10290, line = false, unsure = "secret amount" }, -- 595.189 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10291, line = false, unsure = "secret amount" }, -- 595.189 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10294, line = 10295, spell = 1949, unsure = "secret amount" }, -- 595.222 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10297, line = 10296, spell = 1949, unsure = "secret amount" }, -- 595.222 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10299, line = 10298, spell = 1949, unsure = "secret amount" }, -- 595.222 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10301, line = 10300, spell = 1949, unsure = "secret amount" }, -- 595.222 nameplate16 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10303, line = 10302, spell = 1949, unsure = "secret amount" }, -- 595.222 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10305, line = 10304, spell = 1949, unsure = "secret amount" }, -- 595.222 nameplate15 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10308, line = false, unsure = "on time, of 2 file events" }, -- 595.430 nameplate15 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 10314, line = false, unsure = "secret amount" }, -- 595.512 nameplate16 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.003 s
	{ hit = 10315, line = false, unsure = "secret amount" }, -- 595.512 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10316, line = false, unsure = "secret amount" }, -- 595.512 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10317, line = false, unsure = "secret amount" }, -- 595.512 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10320, line = false, unsure = "secret amount" }, -- 595.512 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10321, line = 10324, spell = 11711, unsure = "secret amount" }, -- 595.569 nameplate15 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10332, line = 10333, spell = 7648, unsure = "secret amount" }, -- 596.071 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 10334, line = 10328, spell = false, unsure = "on time, of 2 file events" }, -- 596.071 nameplate15 WOUND <secret> <- pet: swing SWING_DAMAGE +0.327 s
	{ hit = 10339, line = false, unsure = "secret amount" }, -- 596.097 player HEAL <secret> <- other: Prayer of Healing SPELL_HEAL -0.004 s
	{ hit = 10345, line = false, unsure = "secret amount" }, -- 596.097 pet HEAL <secret> <- other: Prayer of Healing SPELL_HEAL -0.004 s
	{ hit = 10348, line = 10349, spell = 7648, unsure = "secret amount" }, -- 596.111 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10350, line = false, unsure = "secret amount" }, -- 596.188 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10351, line = false, unsure = "secret amount" }, -- 596.188 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10352, line = false, unsure = "secret amount" }, -- 596.188 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10355, line = false, unsure = "secret amount" }, -- 596.188 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10356, line = false, unsure = "secret amount" }, -- 596.188 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10360, line = 10361, spell = 1949, unsure = "secret amount" }, -- 596.219 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10363, line = 10362, spell = 1949, unsure = "secret amount" }, -- 596.219 nameplate15 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10367, line = 10366, spell = 1949, unsure = "secret amount" }, -- 596.219 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10369, line = 10368, spell = 1949, unsure = "secret amount" }, -- 596.219 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10371, line = 10370, spell = 1949, unsure = "secret amount" }, -- 596.219 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10373, line = 10372, spell = 1949, unsure = "secret amount" }, -- 596.219 nameplate16 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10374, line = false, unsure = "secret amount" }, -- 596.380 nameplate15 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 10380, line = 10381, spell = 11711, unsure = "secret amount" }, -- 596.586 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10382, line = false, unsure = "2 file events fit" }, -- 596.789 nameplate15 WOUND <secret> <- other: swing SWING_DAMAGE +0.436 s
	{ hit = 10385, line = false, unsure = "secret amount" }, -- 596.857 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10386, line = false, unsure = "secret amount" }, -- 597.033 nameplate6 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.023 s
	{ hit = 10387, line = 10388, spell = 11711, unsure = "secret amount" }, -- 597.121 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10389, line = 10390, spell = 11711, unsure = "secret amount" }, -- 597.179 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10391, line = false, unsure = "secret amount" }, -- 597.179 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10392, line = false, unsure = "secret amount" }, -- 597.179 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10395, line = false, unsure = "secret amount" }, -- 597.179 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10396, line = false, unsure = "secret amount" }, -- 597.179 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10397, line = false, unsure = "secret amount" }, -- 597.179 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10398, line = 10399, spell = 1949, unsure = "secret amount" }, -- 597.219 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10401, line = 10400, spell = 1949, unsure = "secret amount" }, -- 597.219 nameplate16 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10403, line = 10402, spell = 1949, unsure = "secret amount" }, -- 597.219 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10405, line = 10404, spell = 1949, unsure = "secret amount" }, -- 597.219 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10407, line = 10406, spell = 1949, unsure = "secret amount" }, -- 597.219 nameplate15 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10411, line = 10410, spell = 1949, unsure = "secret amount" }, -- 597.219 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10415, line = false, unsure = "2 file events fit" }, -- 597.436 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 10416, line = false, unsure = "secret amount" }, -- 597.436 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 10417, line = false, unsure = "secret amount" }, -- 597.511 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10418, line = false, unsure = "secret amount" }, -- 597.511 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10419, line = false, unsure = "secret amount" }, -- 597.511 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10420, line = false, unsure = "secret amount" }, -- 597.511 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10423, line = false, unsure = "secret amount" }, -- 597.511 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10424, line = 10427, spell = 11711, unsure = "secret amount" }, -- 597.561 nameplate15 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10433, line = false, unsure = "secret amount" }, -- 597.828 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.356 s
	{ hit = 10435, line = 10432, spell = false, unsure = "secret amount" }, -- 597.855 nameplate15 WOUND <secret> <- pet: swing SWING_DAMAGE +0.096 s
	{ hit = 10436, line = false, unsure = "secret amount" }, -- 597.962 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 10440, line = false, unsure = "secret amount" }, -- 598.177 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10441, line = false, unsure = "secret amount" }, -- 598.177 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10442, line = false, unsure = "secret amount" }, -- 598.177 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10443, line = false, unsure = "secret amount" }, -- 598.177 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10448, line = 10450, spell = 1949, unsure = "secret amount" }, -- 598.220 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10452, line = 10451, spell = 1949, unsure = "secret amount" }, -- 598.220 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10454, line = 10453, spell = 1949, unsure = "secret amount" }, -- 598.220 nameplate16 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10456, line = 10455, spell = 1949, unsure = "secret amount" }, -- 598.220 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10460, line = 10459, spell = 1949, unsure = "secret amount" }, -- 598.220 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10461, line = false, unsure = "secret amount" }, -- 598.454 nameplate16 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 10464, line = 10465, spell = 11711, unsure = "secret amount" }, -- 598.594 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10466, line = false, unsure = "secret amount" }, -- 598.602 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.004 s
	{ hit = 10470, line = false, unsure = "late by 1.32 s" }, -- 598.961 nameplate6 PARRY <secret> <- other: swing SWING_MISSED +1.321 s
	{ hit = 10471, line = 10472, spell = 7648, unsure = "secret amount" }, -- 599.061 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10473, line = false, unsure = "late by 1.02 s" }, -- 599.061 nameplate16 MISS <secret> <- other: swing SWING_MISSED +1.019 s
	{ hit = 10474, line = 10477, spell = 7648, unsure = "secret amount" }, -- 599.111 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10478, line = 10481, spell = 11711, unsure = "secret amount" }, -- 599.118 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10484, line = 10486, spell = 1949, unsure = "secret amount" }, -- 599.225 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10488, line = 10487, spell = 1949, unsure = "secret amount" }, -- 599.225 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 10492, line = 10491, spell = 1949, unsure = "secret amount" }, -- 599.225 nameplate16 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10494, line = 10493, spell = 1949, unsure = "secret amount" }, -- 599.225 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 10496, line = 10495, spell = 1949, unsure = "secret amount" }, -- 599.225 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 10498, line = false, unsure = "2 file events fit" }, -- 599.477 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 10499, line = false, unsure = "secret amount" }, -- 599.477 nameplate7 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 10500, line = false, unsure = "2 file events fit" }, -- 599.477 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 10503, line = false, unsure = "2 file events fit" }, -- 599.477 nameplate16 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 10504, line = false, unsure = "secret amount" }, -- 599.512 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10505, line = false, unsure = "secret amount" }, -- 599.512 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10508, line = false, unsure = "secret amount" }, -- 599.512 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10509, line = false, unsure = "secret amount" }, -- 599.512 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10521, line = false, unsure = "secret amount" }, -- 600.011 nameplate16 MISS <secret> <- other: Windfury Totem SPELL_MISSED -0.003 s
	{ hit = 10522, line = false, unsure = "secret amount" }, -- 600.094 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10525, line = false, unsure = "secret amount" }, -- 600.094 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10526, line = false, unsure = "secret amount" }, -- 600.094 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10527, line = false, unsure = "secret amount" }, -- 600.094 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10528, line = 10513, spell = false, unsure = "secret amount" }, -- 600.094 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.336 s
	{ hit = 10532, line = false, unsure = "secret amount" }, -- 600.228 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.356 s
	{ hit = 10533, line = false, unsure = "secret amount" }, -- 600.352 nameplate6 MISS <secret> <- other: swing SWING_MISSED +0.594 s
	{ hit = 10536, line = 10539, spell = 11711, unsure = "secret amount" }, -- 600.586 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10543, line = false, unsure = "secret amount" }, -- 600.847 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10548, line = false, unsure = "no file event fits" }, -- 600.983 nameplate16 WOUND <secret> <- no file event 
	{ hit = 10549, line = false, unsure = "secret amount" }, -- 601.102 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10550, line = false, unsure = "secret amount" }, -- 601.102 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10551, line = false, unsure = "secret amount" }, -- 601.102 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10554, line = false, unsure = "secret amount" }, -- 601.102 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10555, line = 10556, spell = 11711, unsure = "secret amount" }, -- 601.119 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10564, line = 10557, spell = 7641, unsure = "secret amount" }, -- 601.219 nameplate6 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.030 s
	{ hit = 10567, line = false, unsure = "secret amount" }, -- 601.238 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10568, line = false, unsure = "3 file events fit" }, -- 601.246 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10571, line = false, unsure = "on time, of 2 file events" }, -- 601.436 nameplate16 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 10572, line = false, unsure = "3 file events fit" }, -- 601.454 nameplate6 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.232 s
	{ hit = 10575, line = false, unsure = "secret amount" }, -- 601.519 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10576, line = false, unsure = "secret amount" }, -- 601.519 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10577, line = false, unsure = "secret amount" }, -- 601.519 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10580, line = false, unsure = "secret amount" }, -- 601.519 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10584, line = false, unsure = "on time, of 2 file events" }, -- 601.705 nameplate16 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 10585, line = false, unsure = "secret amount" }, -- 601.741 nameplate16 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 10587, line = false, unsure = "secret amount" }, -- 601.780 nameplate16 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 10588, line = false, unsure = "2 file events fit" }, -- 601.877 nameplate6 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.655 s
	{ hit = 10591, line = false, unsure = "secret amount" }, -- 601.962 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.004 s
	{ hit = 10592, line = 10586, spell = false, unsure = "secret amount" }, -- 602.027 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.263 s
	{ hit = 10600, line = 10603, spell = 7648, unsure = "secret amount" }, -- 602.088 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 10605, line = false, unsure = "secret amount" }, -- 602.110 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 10606, line = false, unsure = "secret amount" }, -- 602.110 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 10607, line = false, unsure = "secret amount" }, -- 602.110 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 10608, line = false, unsure = "secret amount" }, -- 602.110 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.005 s
	{ hit = 10620, line = false, unsure = "secret amount" }, -- 602.508 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10622, line = false, unsure = "secret amount" }, -- 602.766 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.488 s
	{ hit = 10624, line = false, unsure = "secret amount" }, -- 602.938 nameplate7 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 10627, line = false, unsure = "secret amount" }, -- 603.086 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10630, line = false, unsure = "secret amount" }, -- 603.086 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10631, line = false, unsure = "secret amount" }, -- 603.086 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10632, line = 10635, spell = 11711, unsure = "secret amount" }, -- 603.120 nameplate7 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 10636, line = false, unsure = "secret amount" }, -- 603.171 nameplate16 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 10640, line = false, unsure = "secret amount" }, -- 603.497 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.003 s
	{ hit = 10641, line = false, unsure = "secret amount" }, -- 603.504 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10642, line = false, unsure = "secret amount" }, -- 603.504 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10645, line = false, unsure = "secret amount" }, -- 603.504 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10646, line = false, unsure = "secret amount" }, -- 603.702 nameplate7 MISS <secret> <- other: swing SWING_MISSED +0.995 s
	{ hit = 10650, line = false, unsure = "no file event fits" }, -- 603.833 nameplate16 WOUND <secret> <- no file event 
	{ hit = 10653, line = false, unsure = "secret amount" }, -- 604.086 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10654, line = false, unsure = "secret amount" }, -- 604.086 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10657, line = false, unsure = "secret amount" }, -- 604.086 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10659, line = false, unsure = "secret amount" }, -- 604.487 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 10660, line = false, unsure = "secret amount" }, -- 604.487 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 10661, line = false, unsure = "on time, of 2 file events" }, -- 604.487 nameplate16 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 10675, line = 10649, spell = false, unsure = "secret amount" }, -- 604.762 nameplate7 PARRY <secret> <- pet: swing SWING_MISSED +0.980 s
	{ hit = 10679, line = false, unsure = "secret amount" }, -- 605.094 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10680, line = false, unsure = "2 file events fit" }, -- 605.094 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10683, line = false, unsure = "secret amount" }, -- 605.094 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10684, line = false, unsure = "secret amount" }, -- 605.117 nameplate16 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 10690, line = false, unsure = "on time, of 2 file events" }, -- 605.346 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.627 s
	{ hit = 10691, line = false, unsure = "2 file events fit" }, -- 605.411 nameplate7 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.003 s
	{ hit = 10692, line = false, unsure = "secret amount" }, -- 605.411 nameplate3 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.003 s
	{ hit = 10693, line = false, unsure = "secret amount" }, -- 605.411 nameplate7 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.028 s
	{ hit = 10694, line = false, unsure = "no file event fits" }, -- 605.436 nameplate7 WOUND <secret> <- no file event 
	{ hit = 10695, line = false, unsure = "secret amount" }, -- 605.512 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10696, line = false, unsure = "secret amount" }, -- 605.512 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10697, line = false, unsure = "secret amount" }, -- 605.512 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 10701, line = 10700, spell = 7651, unsure = "secret amount" }, -- 605.637 nameplate16 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 10704, line = 10705, spell = 7651, unsure = "secret amount" }, -- 605.637 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 10707, line = false, unsure = "secret amount" }, -- 605.936 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10708, line = 10706, spell = false, unsure = "secret amount" }, -- 606.038 nameplate7 DODGE <secret> <- pet: swing SWING_MISSED +0.260 s
	{ hit = 10709, line = false, unsure = "secret amount" }, -- 606.087 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10712, line = false, unsure = "secret amount" }, -- 606.087 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10713, line = false, unsure = "secret amount" }, -- 606.087 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10720, line = false, unsure = "secret amount" }, -- 606.353 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 10721, line = false, unsure = "2 file events fit" }, -- 606.419 nameplate16 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 10724, line = false, unsure = "secret amount" }, -- 606.429 nameplate7 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 10725, line = false, unsure = "on time, of 3 file events" }, -- 606.590 nameplate16 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 10729, line = 10728, spell = 7651, unsure = "secret amount" }, -- 606.647 nameplate16 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10732, line = 10733, spell = 7651, unsure = "secret amount" }, -- 606.647 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 10734, line = false, unsure = "2 file events fit" }, -- 606.746 nameplate16 WOUND <secret> <- other: swing SWING_DAMAGE +0.186 s
	{ hit = 10743, line = false, unsure = "secret amount" }, -- 607.086 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10744, line = false, unsure = "secret amount" }, -- 607.086 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10747, line = false, unsure = "secret amount" }, -- 607.086 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10751, line = false, unsure = "secret amount" }, -- 607.195 player HEAL <secret> <- other: Heal SPELL_HEAL -0.004 s
	{ hit = 10752, line = false, unsure = "secret amount" }, -- 607.214 nameplate16 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.765 s
	{ hit = 10755, line = false, unsure = "secret amount" }, -- 607.498 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10756, line = false, unsure = "secret amount" }, -- 607.498 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10757, line = false, unsure = "secret amount" }, -- 607.498 nameplate16 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 10764, line = 10763, spell = 7651, unsure = "secret amount" }, -- 607.629 nameplate16 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10767, line = 10768, spell = 7651, unsure = "secret amount" }, -- 607.629 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 10770, line = false, unsure = "secret amount" }, -- 608.111 nameplate3 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.003 s
	{ hit = 10771, line = false, unsure = "2 file events fit" }, -- 608.111 nameplate16 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.003 s
	{ hit = 10774, line = false, unsure = "no file event fits" }, -- 608.111 nameplate3 WOUND <secret> <- no file event 
	{ hit = 10778, line = 10769, spell = false, unsure = "secret amount" }, -- 608.402 nameplate16 WOUND <secret> <- pet: swing SWING_DAMAGE +0.620 s
	{ hit = 10782, line = 10781, spell = 7651, unsure = "secret amount" }, -- 608.627 nameplate16 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10785, line = 10786, spell = 7651, unsure = "secret amount" }, -- 608.627 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 10793, line = false, unsure = "secret amount" }, -- 608.943 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 10805, line = 10804, spell = 7651, unsure = "secret amount" }, -- 609.637 nameplate16 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 10808, line = 10809, spell = 7651, unsure = "secret amount" }, -- 609.637 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 10812, line = false, unsure = "secret amount" }, -- 609.967 nameplate16 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 10815, line = false, unsure = "secret amount" }, -- 610.015 nameplate16 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 10820, line = 10811, spell = false, unsure = "on time, of 2 file events" }, -- 610.129 nameplate16 WOUND <secret> <- pet: swing SWING_DAMAGE +0.330 s
	{ hit = 10826, line = false, unsure = "secret amount" }, -- 610.612 nameplate7 WOUND <secret> <- other: Victory Rush SPELL_DAMAGE -0.004 s
	{ hit = 10829, line = false, unsure = "secret amount" }, -- 610.811 nameplate7 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.003 s
	{ hit = 10832, line = false, unsure = "no file event fits" }, -- 610.811 nameplate7 WOUND <secret> <- no file event 
	{ hit = 10836, line = false, unsure = "on time, of 3 file events" }, -- 611.386 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.335 s
	{ hit = 10840, line = 10843, spell = false, unsure = "3 file events fit" }, -- 611.744 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE -0.054 s
	{ hit = 10844, line = false, unsure = "secret amount" }, -- 611.862 nameplate7 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 10857, line = 10852, spell = 5019, unsure = "secret amount" }, -- 612.386 nameplate7 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.109 s
	{ hit = 10876, line = false, unsure = "secret amount" }, -- 624.929 player HEAL <secret> <- other: Heal SPELL_HEAL -0.003 s
	{ hit = 10882, line = false, unsure = "on time, of 2 file events" }, -- 627.097 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.005 s
	{ hit = 10883, line = false, unsure = "secret amount" }, -- 627.519 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 10884, line = false, unsure = "secret amount" }, -- 627.519 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 10885, line = false, unsure = "secret amount" }, -- 627.519 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 10888, line = false, unsure = "2 file events fit" }, -- 627.519 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 10898, line = false, unsure = "late by 1.32 s" }, -- 628.386 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.322 s
	{ hit = 10903, line = false, unsure = "secret amount" }, -- 629.119 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 10909, line = false, unsure = "secret amount" }, -- 629.587 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10910, line = false, unsure = "secret amount" }, -- 629.948 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10913, line = false, unsure = "secret amount" }, -- 630.029 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 10917, line = false, unsure = "secret amount" }, -- 630.137 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.348 s
	{ hit = 10918, line = false, unsure = "secret amount" }, -- 630.427 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 10922, line = false, unsure = "on time, of 2 file events" }, -- 630.673 nameplate5 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 10925, line = false, unsure = "on time, of 2 file events" }, -- 630.761 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 10928, line = false, unsure = "secret amount" }, -- 630.761 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 10933, line = false, unsure = "secret amount" }, -- 630.931 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10943, line = false, unsure = "late by 1.50 s" }, -- 632.220 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.498 s
	{ hit = 10948, line = false, unsure = "secret amount" }, -- 632.488 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10949, line = false, unsure = "2 file events fit" }, -- 632.820 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 10952, line = 10955, spell = 11711, unsure = "secret amount" }, -- 632.887 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 10956, line = false, unsure = "secret amount" }, -- 633.020 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10957, line = false, unsure = "secret amount" }, -- 633.020 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10958, line = false, unsure = "secret amount" }, -- 633.020 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10961, line = false, unsure = "secret amount" }, -- 633.020 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10962, line = false, unsure = "secret amount" }, -- 633.020 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 10963, line = false, unsure = "secret amount" }, -- 633.063 nameplate5 MISS <secret> <- other: swing SWING_MISSED +0.489 s
	{ hit = 10969, line = false, unsure = "secret amount" }, -- 633.511 nameplate5 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 10972, line = false, unsure = "late by 1.03 s" }, -- 633.511 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.029 s
	{ hit = 10975, line = 10968, spell = false, unsure = "secret amount" }, -- 633.569 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.330 s
	{ hit = 10981, line = false, unsure = "secret amount" }, -- 633.654 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 10986, line = false, unsure = "secret amount" }, -- 634.030 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 10989, line = false, unsure = "secret amount" }, -- 634.030 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10990, line = false, unsure = "secret amount" }, -- 634.030 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10991, line = false, unsure = "secret amount" }, -- 634.030 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 10995, line = false, unsure = "on time, of 2 file events" }, -- 634.151 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 11002, line = false, unsure = "secret amount" }, -- 634.180 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 11009, line = 11010, spell = 11711, unsure = "secret amount" }, -- 634.888 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11011, line = false, unsure = "secret amount" }, -- 635.020 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11012, line = false, unsure = "secret amount" }, -- 635.020 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11015, line = false, unsure = "secret amount" }, -- 635.020 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11016, line = false, unsure = "secret amount" }, -- 635.020 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11023, line = 11024, spell = 7648, unsure = "secret amount" }, -- 635.361 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11025, line = false, unsure = "on time, of 2 file events" }, -- 635.594 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.472 s
	{ hit = 11029, line = false, unsure = "secret amount" }, -- 635.770 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.588 s
	{ hit = 11032, line = 11020, spell = false, unsure = "secret amount" }, -- 635.870 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.629 s
	{ hit = 11033, line = false, unsure = "secret amount" }, -- 635.957 nameplate5 PARRY <secret> <- other: Shield Slam SPELL_MISSED -0.004 s
	{ hit = 11034, line = false, unsure = "secret amount" }, -- 636.019 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 11035, line = false, unsure = "secret amount" }, -- 636.019 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11038, line = false, unsure = "secret amount" }, -- 636.019 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11039, line = false, unsure = "secret amount" }, -- 636.019 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11040, line = false, unsure = "secret amount" }, -- 636.019 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11050, line = false, unsure = "secret amount" }, -- 636.728 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.621 s
	{ hit = 11054, line = 11053, spell = 18879, unsure = "2 file events fit" }, -- 636.845 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11055, line = 11056, spell = 18879, unsure = "secret amount" }, -- 636.845 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 11057, line = 11058, spell = 11711, unsure = "secret amount" }, -- 636.879 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11059, line = false, unsure = "secret amount" }, -- 637.021 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11060, line = false, unsure = "secret amount" }, -- 637.021 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11061, line = false, unsure = "secret amount" }, -- 637.021 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11062, line = false, unsure = "secret amount" }, -- 637.021 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11070, line = 11071, spell = 11711, unsure = "secret amount" }, -- 637.333 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11072, line = false, unsure = "on time, of 4 file events" }, -- 637.379 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 11073, line = false, unsure = "2 file events fit" }, -- 637.420 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 11074, line = false, unsure = "on time, of 3 file events" }, -- 637.454 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 11075, line = false, unsure = "secret amount" }, -- 637.538 nameplate5 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 11076, line = false, unsure = "2 file events fit" }, -- 637.562 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 11077, line = false, unsure = "secret amount" }, -- 637.587 nameplate5 PARRY <secret> <- other: Seal of Command SPELL_MISSED -0.003 s
	{ hit = 11078, line = false, unsure = "secret amount" }, -- 637.596 nameplate5 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 11081, line = 11069, spell = false, unsure = "on time, of 2 file events" }, -- 637.877 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.619 s
	{ hit = 11082, line = false, unsure = "secret amount" }, -- 637.901 nameplate5 DODGE <secret> <- other: Windfury Totem SPELL_MISSED -0.003 s
	{ hit = 11083, line = false, unsure = "secret amount" }, -- 638.021 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11084, line = false, unsure = "secret amount" }, -- 638.021 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11087, line = false, unsure = "secret amount" }, -- 638.021 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11088, line = false, unsure = "secret amount" }, -- 638.021 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11089, line = false, unsure = "on time, of 2 file events" }, -- 638.079 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11101, line = false, unsure = "secret amount" }, -- 638.345 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.459 s
	{ hit = 11102, line = 11103, spell = 7648, unsure = "secret amount" }, -- 638.373 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11107, line = false, unsure = "secret amount" }, -- 638.613 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11108, line = false, unsure = "secret amount" }, -- 638.689 nameplate5 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 11109, line = false, unsure = "secret amount" }, -- 638.689 nameplate5 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.003 s
	{ hit = 11110, line = false, unsure = "secret amount" }, -- 638.867 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 11111, line = 11112, spell = 11711, unsure = "secret amount" }, -- 638.886 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11113, line = false, unsure = "secret amount" }, -- 638.952 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 11114, line = false, unsure = "on time, of 2 file events" }, -- 638.952 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 11115, line = false, unsure = "secret amount" }, -- 638.952 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 11118, line = false, unsure = "secret amount" }, -- 638.952 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 11122, line = false, unsure = "secret amount" }, -- 639.011 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11123, line = false, unsure = "secret amount" }, -- 639.011 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11126, line = false, unsure = "secret amount" }, -- 639.011 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11127, line = false, unsure = "secret amount" }, -- 639.011 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11128, line = false, unsure = "secret amount" }, -- 639.037 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 11132, line = 11133, spell = 11711, unsure = "secret amount" }, -- 639.345 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11134, line = 11129, spell = false, unsure = "secret amount" }, -- 639.521 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.264 s
	{ hit = 11137, line = false, unsure = "no file event fits" }, -- 639.529 nameplate5 WOUND <secret> <- no file event 
	{ hit = 11142, line = 11143, spell = 7648, unsure = "secret amount" }, -- 639.819 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11146, line = 11145, spell = 18879, unsure = "secret amount" }, -- 639.872 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11147, line = 11148, spell = 18879, unsure = "secret amount" }, -- 639.872 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 11149, line = false, unsure = "secret amount" }, -- 639.924 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 11151, line = false, unsure = "secret amount" }, -- 640.007 nameplate2 MISS <secret> <- other: Consecration SPELL_MISSED -0.003 s
	{ hit = 11154, line = false, unsure = "secret amount" }, -- 640.014 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11155, line = false, unsure = "secret amount" }, -- 640.014 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11157, line = 11158, spell = 11711, unsure = "secret amount" }, -- 640.304 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11162, line = false, unsure = "secret amount" }, -- 640.362 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.465 s
	{ hit = 11165, line = false, unsure = "secret amount" }, -- 640.454 nameplate2 PARRY <secret> <- other: Disarm SPELL_MISSED -0.003 s
	{ hit = 11168, line = false, unsure = "secret amount" }, -- 640.712 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 11171, line = false, unsure = "secret amount" }, -- 641.038 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11180, line = false, unsure = "secret amount" }, -- 641.338 nameplate2 MISS <secret> <- other: swing SWING_MISSED +0.397 s
	{ hit = 11183, line = 11184, spell = 11711, unsure = "secret amount" }, -- 641.351 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11191, line = 11174, spell = false, unsure = "on time, of 2 file events" }, -- 641.887 nameplate6 DODGE <secret> <- pet: swing SWING_MISSED +0.630 s
	{ hit = 11192, line = false, unsure = "secret amount" }, -- 642.024 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 11196, line = false, unsure = "secret amount" }, -- 642.220 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 11199, line = 11200, spell = 11711, unsure = "secret amount" }, -- 642.312 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11201, line = false, unsure = "secret amount" }, -- 642.362 nameplate6 DODGE <secret> <- other: swing SWING_MISSED +0.463 s
	{ hit = 11207, line = 11208, spell = 7648, unsure = "secret amount" }, -- 642.804 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11209, line = 11210, spell = 7648, unsure = "secret amount" }, -- 642.819 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11212, line = 11215, spell = 11711, unsure = "secret amount" }, -- 643.288 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11219, line = 11220, spell = 11711, unsure = "secret amount" }, -- 643.339 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11221, line = 11211, spell = false, unsure = "secret amount" }, -- 643.517 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.261 s
	{ hit = 11222, line = false, unsure = "secret amount" }, -- 643.517 nameplate2 DODGE <secret> <- other: swing SWING_MISSED +0.558 s
	{ hit = 11225, line = false, unsure = "secret amount" }, -- 643.803 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.629 s
	{ hit = 11228, line = false, unsure = "secret amount" }, -- 644.194 nameplate2 MISS <secret> <- other: Shoot RANGE_MISSED -0.005 s
	{ hit = 11236, line = 11237, spell = 11711, unsure = "secret amount" }, -- 644.312 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11238, line = false, unsure = "secret amount" }, -- 644.369 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 11239, line = false, unsure = "secret amount" }, -- 644.369 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 11243, line = false, unsure = "secret amount" }, -- 644.963 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 11244, line = false, unsure = "secret amount" }, -- 644.963 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 11245, line = false, unsure = "secret amount" }, -- 644.963 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 11252, line = 11255, spell = 11711, unsure = "secret amount" }, -- 645.269 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11259, line = false, unsure = "secret amount" }, -- 645.336 nameplate2 DODGE <secret> <- other: swing SWING_MISSED +0.387 s
	{ hit = 11262, line = 11263, spell = 11711, unsure = "secret amount" }, -- 645.344 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11264, line = 11251, spell = false, unsure = "secret amount" }, -- 645.512 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.261 s
	{ hit = 11270, line = 11273, spell = 7648, unsure = "secret amount" }, -- 645.769 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11274, line = 11275, spell = 7648, unsure = "secret amount" }, -- 645.802 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11276, line = 11277, spell = 7648, unsure = "secret amount" }, -- 645.827 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11278, line = false, unsure = "no file event fits" }, -- 645.912 nameplate3 WOUND <secret> <- no file event 
	{ hit = 11282, line = 11283, spell = 11711, unsure = "secret amount" }, -- 646.313 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11284, line = false, unsure = "secret amount" }, -- 646.456 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 11291, line = false, unsure = "on time, of 3 file events" }, -- 647.171 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11294, line = false, unsure = "on time, of 2 file events" }, -- 647.204 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.496 s
	{ hit = 11298, line = 11301, spell = 11711, unsure = "secret amount" }, -- 647.287 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11308, line = 11309, spell = 11711, unsure = "secret amount" }, -- 647.337 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11310, line = false, unsure = "no file event fits" }, -- 647.437 nameplate2 WOUND <secret> <- no file event 
	{ hit = 11313, line = false, unsure = "secret amount" }, -- 647.520 nameplate2 MISS <secret> <- other: swing SWING_MISSED +0.563 s
	{ hit = 11316, line = 11297, spell = false, unsure = "secret amount" }, -- 647.529 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.264 s
	{ hit = 11319, line = false, unsure = "secret amount" }, -- 647.612 nameplate2 MISS <secret> <- other: Judgement of Command SPELL_MISSED -0.004 s
	{ hit = 11322, line = 11323, spell = 1949, unsure = "secret amount" }, -- 647.670 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11325, line = 11324, spell = 1949, unsure = "secret amount" }, -- 647.670 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 11329, line = 11328, spell = 1949, unsure = "secret amount" }, -- 647.670 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 11331, line = 11330, spell = 1949, unsure = "secret amount" }, -- 647.670 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 11332, line = false, unsure = "secret amount" }, -- 648.020 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 11344, line = 11345, spell = 11711, unsure = "secret amount" }, -- 648.312 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11346, line = false, unsure = "secret amount" }, -- 648.503 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.589 s
	{ hit = 11347, line = 11348, spell = 1949, unsure = "secret amount" }, -- 648.695 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11350, line = 11349, spell = 1949, unsure = "secret amount" }, -- 648.695 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 11352, line = 11351, spell = 1949, unsure = "secret amount" }, -- 648.695 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 11354, line = 11353, spell = 1949, unsure = "secret amount" }, -- 648.695 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 11357, line = 11360, spell = 7648, unsure = "secret amount" }, -- 648.777 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11361, line = 11362, spell = 7648, unsure = "secret amount" }, -- 648.811 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11363, line = 11364, spell = 7648, unsure = "secret amount" }, -- 648.825 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11366, line = 11369, spell = 11711, unsure = "secret amount" }, -- 649.288 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11370, line = false, unsure = "secret amount" }, -- 649.304 nameplate2 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.003 s
	{ hit = 11373, line = 11374, spell = 11711, unsure = "secret amount" }, -- 649.341 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11378, line = 11379, spell = 1949, unsure = "secret amount" }, -- 649.671 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11381, line = 11380, spell = 1949, unsure = "secret amount" }, -- 649.671 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 11385, line = 11384, spell = 1949, unsure = "secret amount" }, -- 649.671 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 11387, line = 11386, spell = 1949, unsure = "secret amount" }, -- 649.671 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 11388, line = false, unsure = "secret amount" }, -- 649.887 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.004 s
	{ hit = 11389, line = 11365, spell = false, unsure = "on time, of 2 file events" }, -- 649.895 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.630 s
	{ hit = 11392, line = false, unsure = "3 file events fit" }, -- 650.262 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 11395, line = 11396, spell = 11711, unsure = "secret amount" }, -- 650.312 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11400, line = false, unsure = "no file event fits" }, -- 650.446 nameplate2 WOUND <secret> <- no file event 
	{ hit = 11403, line = false, unsure = "3 file events fit" }, -- 650.537 nameplate2 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.238 s
	{ hit = 11406, line = false, unsure = "secret amount" }, -- 650.629 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.889 s
	{ hit = 11407, line = 11408, spell = 1949, unsure = "secret amount" }, -- 650.671 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11410, line = 11409, spell = 1949, unsure = "secret amount" }, -- 650.671 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 11412, line = 11411, spell = 1949, unsure = "secret amount" }, -- 650.671 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 11414, line = 11413, spell = 1949, unsure = "secret amount" }, -- 650.671 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 11417, line = false, unsure = "2 file events fit" }, -- 650.878 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 11420, line = false, unsure = "2 file events fit" }, -- 650.961 nameplate2 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.662 s
	{ hit = 11423, line = false, unsure = "secret amount" }, -- 651.005 nameplate2 PARRY <secret> <- other: Revenge SPELL_MISSED -0.003 s
	{ hit = 11426, line = false, unsure = "secret amount" }, -- 651.104 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11427, line = false, unsure = "secret amount" }, -- 651.104 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11429, line = 11432, spell = 11711, unsure = "secret amount" }, -- 651.269 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11433, line = 11434, spell = 11711, unsure = "secret amount" }, -- 651.337 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11435, line = 11428, spell = false, unsure = "2 file events fit" }, -- 651.448 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.176 s
	{ hit = 11441, line = 11442, spell = 1949, unsure = "secret amount" }, -- 651.670 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11444, line = 11443, spell = 1949, unsure = "secret amount" }, -- 651.670 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 11446, line = 11445, spell = 1949, unsure = "secret amount" }, -- 651.670 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 11450, line = 11449, spell = 1949, unsure = "secret amount" }, -- 651.670 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 11451, line = 11454, spell = 7648, unsure = "secret amount" }, -- 651.762 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11458, line = 11459, spell = 7648, unsure = "secret amount" }, -- 651.808 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11460, line = 11461, spell = 7648, unsure = "secret amount" }, -- 651.827 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11465, line = false, unsure = "no file event fits" }, -- 651.896 nameplate2 WOUND <secret> <- no file event 
	{ hit = 11474, line = 11475, spell = 11711, unsure = "secret amount" }, -- 652.316 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11476, line = false, unsure = "on time, of 2 file events" }, -- 652.394 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 11479, line = false, unsure = "secret amount" }, -- 652.394 nameplate2 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.003 s
	{ hit = 11482, line = false, unsure = "secret amount" }, -- 652.469 nameplate2 PARRY <secret> <- other: Windfury Totem SPELL_MISSED -0.004 s
	{ hit = 11488, line = false, unsure = "on time, of 2 file events" }, -- 652.495 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 11492, line = false, unsure = "secret amount" }, -- 652.620 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.173 s
	{ hit = 11495, line = 11496, spell = 1949, unsure = "secret amount" }, -- 652.679 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11498, line = 11497, spell = 1949, unsure = "secret amount" }, -- 652.679 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 11500, line = 11499, spell = 1949, unsure = "secret amount" }, -- 652.679 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 11508, line = 11509, spell = 11711, unsure = "secret amount" }, -- 653.331 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11510, line = 11506, spell = false, unsure = "secret amount" }, -- 653.544 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.272 s
	{ hit = 11518, line = false, unsure = "2 file events fit" }, -- 653.994 nameplate6 WOUND <secret> <- other: Victory Rush SPELL_DAMAGE -0.004 s
	{ hit = 11521, line = false, unsure = "secret amount" }, -- 654.019 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 11525, line = 11524, spell = 7641, unsure = "secret amount" }, -- 654.087 nameplate6 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.029 s
	{ hit = 11528, line = 11531, spell = 11711, unsure = "secret amount" }, -- 654.311 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11532, line = false, unsure = "secret amount" }, -- 654.469 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11535, line = false, unsure = "secret amount" }, -- 654.661 nameplate6 MISS <secret> <- other: swing SWING_MISSED +0.489 s
	{ hit = 11538, line = 11541, spell = 7648, unsure = "secret amount" }, -- 654.795 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11542, line = 11543, spell = 7648, unsure = "secret amount" }, -- 654.819 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11550, line = false, unsure = "secret amount" }, -- 655.147 nameplate6 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.004 s
	{ hit = 11553, line = false, unsure = "secret amount" }, -- 655.147 nameplate3 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.004 s
	{ hit = 11554, line = false, unsure = "no file event fits" }, -- 655.147 nameplate6 WOUND <secret> <- no file event 
	{ hit = 11560, line = 11561, spell = 11711, unsure = "secret amount" }, -- 655.329 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11562, line = 11557, spell = false, unsure = "secret amount" }, -- 655.596 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.324 s
	{ hit = 11565, line = false, unsure = "secret amount" }, -- 655.620 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 11566, line = false, unsure = "secret amount" }, -- 655.620 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 11569, line = false, unsure = "secret amount" }, -- 655.762 nameplate6 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.004 s
	{ hit = 11572, line = false, unsure = "secret amount" }, -- 656.253 nameplate6 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 11575, line = 11578, spell = 11711, unsure = "secret amount" }, -- 656.311 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11582, line = false, unsure = "secret amount" }, -- 656.927 player HEAL <secret> <- other: Heal SPELL_HEAL -0.004 s
	{ hit = 11583, line = false, unsure = "on time, of 2 file events" }, -- 657.120 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 11585, line = 11588, spell = 11711, unsure = "secret amount" }, -- 657.341 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11589, line = 11584, spell = false, unsure = "secret amount" }, -- 657.522 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.239 s
	{ hit = 11590, line = 11591, spell = 7648, unsure = "secret amount" }, -- 657.795 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11592, line = false, unsure = "secret amount" }, -- 657.823 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11595, line = false, unsure = "on time, of 2 file events" }, -- 657.823 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11596, line = false, unsure = "secret amount" }, -- 657.837 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE -0.012 s
	{ hit = 11597, line = false, unsure = "no file event fits" }, -- 658.212 nameplate6 WOUND <secret> <- no file event 
	{ hit = 11601, line = 11600, spell = 18879, unsure = "on time, of 2 file events" }, -- 658.271 nameplate6 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11602, line = 11603, spell = 18879, unsure = "secret amount" }, -- 658.271 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 11604, line = 11605, spell = 11711, unsure = "secret amount" }, -- 658.312 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11609, line = false, unsure = "secret amount" }, -- 658.329 nameplate3 DODGE <secret> <- other: swing SWING_MISSED +0.619 s
	{ hit = 11615, line = false, unsure = "secret amount" }, -- 658.470 nameplate6 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 11616, line = false, unsure = "secret amount" }, -- 658.629 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 11620, line = false, unsure = "secret amount" }, -- 659.120 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 11621, line = false, unsure = "secret amount" }, -- 659.195 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.004 s
	{ hit = 11627, line = false, unsure = "secret amount" }, -- 659.312 nameplate6 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.004 s
	{ hit = 11630, line = 11631, spell = 11711, unsure = "secret amount" }, -- 659.337 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11635, line = 11634, spell = 18879, unsure = "secret amount" }, -- 659.761 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11636, line = 11637, spell = 18879, unsure = "secret amount" }, -- 659.761 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 11638, line = 11626, spell = false, unsure = "on time, of 2 file events" }, -- 659.927 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.637 s
	{ hit = 11642, line = 11641, spell = 7641, unsure = "2 file events fit" }, -- 660.346 nameplate6 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE -0.003 s
	{ hit = 11645, line = 11648, spell = 11711, unsure = "secret amount" }, -- 660.346 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11649, line = false, unsure = "on time, of 2 file events" }, -- 660.554 nameplate6 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.004 s
	{ hit = 11652, line = false, unsure = "secret amount" }, -- 660.554 nameplate3 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.004 s
	{ hit = 11653, line = false, unsure = "late by 1.39 s" }, -- 660.554 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.389 s
	{ hit = 11656, line = false, unsure = "secret amount" }, -- 660.637 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 11657, line = false, unsure = "no file event fits" }, -- 660.654 nameplate6 WOUND <secret> <- no file event 
	{ hit = 11660, line = false, unsure = "secret amount" }, -- 660.662 nameplate3 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 11663, line = false, unsure = "secret amount" }, -- 660.912 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 11666, line = false, unsure = "secret amount" }, -- 660.945 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 11671, line = false, unsure = "on time, of 2 file events" }, -- 661.196 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11675, line = 11676, spell = 7648, unsure = "secret amount" }, -- 661.237 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11679, line = false, unsure = "2 file events fit" }, -- 661.623 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.009 s
	{ hit = 11682, line = 11677, spell = false, unsure = "secret amount" }, -- 661.629 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.338 s
	{ hit = 11688, line = false, unsure = "secret amount" }, -- 662.161 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 11691, line = false, unsure = "4 file events fit" }, -- 662.669 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.085 s
	{ hit = 11698, line = 11697, spell = 18879, unsure = "secret amount" }, -- 662.767 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11701, line = 11702, spell = 18879, unsure = "secret amount" }, -- 662.767 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 11703, line = false, unsure = "3 file events fit" }, -- 663.096 nameplate3 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.664 s
	{ hit = 11706, line = false, unsure = "secret amount" }, -- 663.129 nameplate3 MISS <secret> <- other: Revenge SPELL_MISSED -0.004 s
	{ hit = 11709, line = 11712, spell = false, unsure = "3 file events fit" }, -- 663.240 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE -0.067 s
	{ hit = 11713, line = false, unsure = "2 file events fit" }, -- 663.579 nameplate3 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +1.147 s
	{ hit = 11716, line = false, unsure = "secret amount" }, -- 663.645 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 11720, line = 11719, spell = 7651, unsure = "secret amount" }, -- 663.702 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 11723, line = 11724, spell = 7651, unsure = "secret amount" }, -- 663.702 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 11725, line = false, unsure = "secret amount" }, -- 663.854 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.587 s
	{ hit = 11728, line = 11731, spell = 7648, unsure = "secret amount" }, -- 664.238 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11732, line = false, unsure = "no file event fits" }, -- 664.294 nameplate3 WOUND <secret> <- no file event 
	{ hit = 11735, line = false, unsure = "secret amount" }, -- 664.637 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 11738, line = false, unsure = "secret amount" }, -- 664.677 nameplate3 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 11741, line = false, unsure = "secret amount" }, -- 664.677 nameplate3 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.005 s
	{ hit = 11755, line = false, unsure = "secret amount" }, -- 671.795 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 11760, line = false, unsure = "secret amount" }, -- 672.504 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.590 s
	{ hit = 11761, line = false, unsure = "secret amount" }, -- 673.286 nameplate2 DODGE <secret> <- other: Sunder Armor SPELL_MISSED -0.003 s
	{ hit = 11762, line = false, unsure = "secret amount" }, -- 673.937 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 11766, line = false, unsure = "secret amount" }, -- 674.103 player HEAL <secret> <- other: Heal SPELL_HEAL -0.005 s
	{ hit = 11767, line = false, unsure = "secret amount" }, -- 674.121 nameplate2 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.004 s
	{ hit = 11768, line = false, unsure = "on time, of 2 file events" }, -- 674.161 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 11771, line = false, unsure = "on time, of 2 file events" }, -- 674.720 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.595 s
	{ hit = 11772, line = false, unsure = "secret amount" }, -- 674.894 nameplate2 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.003 s
	{ hit = 11773, line = false, unsure = "on time, of 2 file events" }, -- 675.212 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.596 s
	{ hit = 11774, line = 11775, spell = 1260270, unsure = "secret amount" }, -- 675.311 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 11776, line = false, unsure = "secret amount" }, -- 675.394 nameplate2 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.004 s
	{ hit = 11777, line = false, unsure = "3 file events fit" }, -- 675.644 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 11778, line = false, unsure = "2 file events fit" }, -- 675.670 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 11779, line = false, unsure = "2 file events fit" }, -- 675.928 nameplate2 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 11780, line = false, unsure = "on time, of 2 file events" }, -- 675.936 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11783, line = false, unsure = "late by 1.33 s" }, -- 676.369 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.330 s
	{ hit = 11784, line = 11785, spell = 1260270, unsure = "secret amount" }, -- 676.504 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 11786, line = false, unsure = "secret amount" }, -- 677.152 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 11787, line = false, unsure = "secret amount" }, -- 677.296 nameplate2 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 11790, line = 11791, spell = 1260270, unsure = "secret amount" }, -- 677.702 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 11792, line = false, unsure = "2 file events fit" }, -- 677.895 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 11793, line = false, unsure = "secret amount" }, -- 678.120 nameplate2 PARRY <secret> <- other: swing SWING_MISSED +0.589 s
	{ hit = 11796, line = false, unsure = "on time, of 2 file events" }, -- 678.352 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.027 s
	{ hit = 11797, line = false, unsure = "secret amount" }, -- 678.788 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.489 s
	{ hit = 11798, line = 11799, spell = 1260270, unsure = "secret amount" }, -- 678.902 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 11803, line = false, unsure = "on time, of 2 file events" }, -- 679.941 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11804, line = false, unsure = "secret amount" }, -- 680.046 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 11805, line = false, unsure = "secret amount" }, -- 680.153 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 11806, line = false, unsure = "secret amount" }, -- 680.394 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.355 s
	{ hit = 11810, line = false, unsure = "secret amount" }, -- 680.927 nameplate2 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 11813, line = false, unsure = "secret amount" }, -- 681.354 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 11818, line = false, unsure = "secret amount" }, -- 681.564 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 11821, line = false, unsure = "secret amount" }, -- 681.583 nameplate2 PARRY <secret> <- other: swing SWING_MISSED +0.652 s
	{ hit = 11827, line = false, unsure = "secret amount" }, -- 682.311 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.488 s
	{ hit = 11833, line = false, unsure = "secret amount" }, -- 683.078 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 11836, line = false, unsure = "secret amount" }, -- 683.152 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 11837, line = false, unsure = "secret amount" }, -- 683.328 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.589 s
	{ hit = 11840, line = 11843, spell = 11711, unsure = "secret amount" }, -- 683.499 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11849, line = false, unsure = "secret amount" }, -- 683.904 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 11854, line = false, unsure = "secret amount" }, -- 684.364 nameplate2 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.004 s
	{ hit = 11859, line = 11852, spell = false, unsure = "on time, of 2 file events" }, -- 684.375 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.325 s
	{ hit = 11862, line = false, unsure = "secret amount" }, -- 684.933 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.602 s
	{ hit = 11865, line = false, unsure = "2 file events fit" }, -- 685.044 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 11868, line = false, unsure = "secret amount" }, -- 685.070 nameplate2 MISS <secret> <- other: Shoot RANGE_MISSED -0.006 s
	{ hit = 11871, line = false, unsure = "on time, of 4 file events" }, -- 685.377 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 11874, line = false, unsure = "secret amount" }, -- 685.377 nameplate2 DODGE <secret> <- other: Windfury Weapon SPELL_MISSED -0.007 s
	{ hit = 11877, line = 11880, spell = 11711, unsure = "secret amount" }, -- 685.496 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 11881, line = false, unsure = "secret amount" }, -- 685.512 nameplate2 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.004 s
	{ hit = 11886, line = false, unsure = "3 file events fit" }, -- 685.737 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.290 s
	{ hit = 11895, line = 11898, spell = false, unsure = "3 file events fit" }, -- 686.036 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE -0.024 s
	{ hit = 11899, line = false, unsure = "secret amount" }, -- 686.145 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 11900, line = false, unsure = "2 file events fit" }, -- 686.354 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.998 s
	{ hit = 11903, line = false, unsure = "secret amount" }, -- 686.577 nameplate2 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 11906, line = false, unsure = "secret amount" }, -- 686.636 nameplate2 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 11910, line = false, unsure = "no file event fits" }, -- 686.683 nameplate2 WOUND <secret> <- no file event 
	{ hit = 11921, line = false, unsure = "secret amount" }, -- 689.152 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 11923, line = false, unsure = "secret amount" }, -- 690.394 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.004 s
	{ hit = 11924, line = false, unsure = "on time, of 2 file events" }, -- 691.012 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.005 s
	{ hit = 11929, line = false, unsure = "secret amount" }, -- 691.336 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.355 s
	{ hit = 11932, line = false, unsure = "secret amount" }, -- 691.427 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 11933, line = false, unsure = "secret amount" }, -- 691.578 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 11934, line = false, unsure = "secret amount" }, -- 691.578 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 11937, line = false, unsure = "secret amount" }, -- 691.578 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 11939, line = false, unsure = "secret amount" }, -- 691.812 nameplate2 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 11940, line = false, unsure = "secret amount" }, -- 691.812 nameplate2 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.004 s
	{ hit = 11956, line = false, unsure = "secret amount" }, -- 692.953 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.660 s
	{ hit = 11957, line = false, unsure = "secret amount" }, -- 693.311 nameplate3 MISS <secret> <- other: Consecration SPELL_MISSED -0.004 s
	{ hit = 11958, line = false, unsure = "on time, of 2 file events" }, -- 693.782 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 11961, line = false, unsure = "secret amount" }, -- 693.782 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 11962, line = false, unsure = "secret amount" }, -- 693.961 nameplate3 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE -0.003 s
	{ hit = 11971, line = false, unsure = "secret amount" }, -- 694.323 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11972, line = false, unsure = "secret amount" }, -- 694.323 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11973, line = false, unsure = "secret amount" }, -- 694.323 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 11976, line = false, unsure = "on time, of 2 file events" }, -- 694.570 nameplate5 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 11980, line = false, unsure = "secret amount" }, -- 694.679 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.997 s
	{ hit = 11983, line = false, unsure = "secret amount" }, -- 695.148 nameplate2 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.066 s
	{ hit = 11984, line = false, unsure = "secret amount" }, -- 695.324 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11985, line = false, unsure = "secret amount" }, -- 695.324 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11988, line = false, unsure = "secret amount" }, -- 695.324 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11991, line = false, unsure = "secret amount" }, -- 695.512 nameplate2 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.004 s
	{ hit = 11992, line = 11979, spell = false, unsure = "secret amount" }, -- 695.595 nameplate2 DODGE <secret> <- pet: swing SWING_MISSED +0.985 s
	{ hit = 11996, line = false, unsure = "secret amount" }, -- 695.846 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.004 s
	{ hit = 11997, line = false, unsure = "secret amount" }, -- 695.954 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 11998, line = false, unsure = "secret amount" }, -- 696.327 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 11999, line = false, unsure = "secret amount" }, -- 696.327 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12000, line = false, unsure = "secret amount" }, -- 696.327 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12003, line = false, unsure = "secret amount" }, -- 696.370 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.659 s
	{ hit = 12011, line = false, unsure = "secret amount" }, -- 696.749 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.358 s
	{ hit = 12015, line = false, unsure = "secret amount" }, -- 697.337 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12018, line = false, unsure = "secret amount" }, -- 697.337 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12019, line = false, unsure = "secret amount" }, -- 697.337 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12020, line = false, unsure = "secret amount" }, -- 697.453 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 12021, line = 12022, spell = 11711, unsure = "secret amount" }, -- 697.495 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12023, line = false, unsure = "secret amount" }, -- 697.569 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 12024, line = 12010, spell = false, unsure = "secret amount" }, -- 697.603 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.985 s
	{ hit = 12025, line = false, unsure = "secret amount" }, -- 698.037 nameplate2 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 12028, line = false, unsure = "secret amount" }, -- 698.037 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 12029, line = false, unsure = "secret amount" }, -- 698.037 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 12030, line = false, unsure = "secret amount" }, -- 698.195 nameplate2 DODGE <secret> <- other: swing SWING_MISSED +0.496 s
	{ hit = 12033, line = false, unsure = "secret amount" }, -- 698.337 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12034, line = false, unsure = "secret amount" }, -- 698.337 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12037, line = false, unsure = "secret amount" }, -- 698.337 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12038, line = false, unsure = "secret amount" }, -- 698.337 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12043, line = false, unsure = "secret amount" }, -- 698.602 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12044, line = false, unsure = "on time, of 2 file events" }, -- 698.602 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12049, line = 12045, spell = false, unsure = "secret amount" }, -- 698.882 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.259 s
	{ hit = 12053, line = false, unsure = "secret amount" }, -- 698.979 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 12057, line = false, unsure = "secret amount" }, -- 698.994 nameplate3 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.004 s
	{ hit = 12060, line = false, unsure = "secret amount" }, -- 699.049 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 12061, line = false, unsure = "secret amount" }, -- 699.049 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 12064, line = false, unsure = "secret amount" }, -- 699.049 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 12065, line = false, unsure = "secret amount" }, -- 699.127 nameplate2 DODGE <secret> <- other: Windfury Totem SPELL_MISSED -0.004 s
	{ hit = 12068, line = false, unsure = "secret amount" }, -- 699.127 nameplate2 DODGE <secret> <- other: Seal of Command SPELL_MISSED -0.004 s
	{ hit = 12071, line = false, unsure = "secret amount" }, -- 699.330 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12072, line = false, unsure = "secret amount" }, -- 699.330 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12073, line = false, unsure = "secret amount" }, -- 699.330 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12079, line = false, unsure = "on time, of 3 file events" }, -- 699.437 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.346 s
	{ hit = 12082, line = 12083, spell = 11711, unsure = "secret amount" }, -- 699.491 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 12086, line = false, unsure = "4 file events fit" }, -- 699.511 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 12089, line = false, unsure = "3 file events fit" }, -- 699.852 nameplate2 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.303 s
	{ hit = 12094, line = 12095, spell = 7648, unsure = "secret amount" }, -- 699.977 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12096, line = false, unsure = "2 file events fit" }, -- 700.163 nameplate2 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.614 s
	{ hit = 12099, line = false, unsure = "late by 1.09 s" }, -- 700.212 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.092 s
	{ hit = 12103, line = false, unsure = "secret amount" }, -- 700.336 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 12104, line = false, unsure = "secret amount" }, -- 700.336 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 12107, line = false, unsure = "secret amount" }, -- 700.336 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.003 s
	{ hit = 12108, line = 12109, spell = 11711, unsure = "secret amount" }, -- 700.477 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12110, line = false, unsure = "secret amount" }, -- 700.477 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.005 s
	{ hit = 12114, line = false, unsure = "secret amount" }, -- 701.044 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12117, line = false, unsure = "secret amount" }, -- 701.044 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12118, line = false, unsure = "secret amount" }, -- 701.044 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12119, line = false, unsure = "secret amount" }, -- 701.155 nameplate2 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.003 s
	{ hit = 12120, line = 12113, spell = false, unsure = "secret amount" }, -- 701.252 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.613 s
	{ hit = 12123, line = false, unsure = "secret amount" }, -- 701.329 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12126, line = false, unsure = "secret amount" }, -- 701.329 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12127, line = false, unsure = "secret amount" }, -- 701.329 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12133, line = 12134, spell = 11711, unsure = "secret amount" }, -- 701.511 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 12138, line = false, unsure = "on time, of 2 file events" }, -- 701.699 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12139, line = false, unsure = "secret amount" }, -- 701.857 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.616 s
	{ hit = 12140, line = false, unsure = "on time, of 2 file events" }, -- 702.077 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 12149, line = false, unsure = "secret amount" }, -- 702.461 nameplate3 MISS <secret> <- other: Shoot RANGE_MISSED -0.005 s
	{ hit = 12152, line = 12153, spell = 11711, unsure = "secret amount" }, -- 702.477 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12154, line = false, unsure = "secret amount" }, -- 702.544 nameplate2 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 12156, line = false, unsure = "no file event fits" }, -- 702.796 nameplate3 WOUND <secret> <- no file event 
	{ hit = 12159, line = 12155, spell = false, unsure = "on time, of 2 file events" }, -- 702.892 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.253 s
	{ hit = 12164, line = 12165, spell = 7648, unsure = "secret amount" }, -- 702.952 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12166, line = 12167, spell = 7648, unsure = "secret amount" }, -- 702.982 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12168, line = false, unsure = "secret amount" }, -- 703.044 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12169, line = false, unsure = "secret amount" }, -- 703.044 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12170, line = false, unsure = "secret amount" }, -- 703.044 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12173, line = false, unsure = "secret amount" }, -- 703.405 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12176, line = false, unsure = "secret amount" }, -- 703.405 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12177, line = 12180, spell = 11711, unsure = "secret amount" }, -- 703.437 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12181, line = false, unsure = "secret amount" }, -- 703.477 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 12184, line = 12185, spell = 11711, unsure = "secret amount" }, -- 703.502 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12186, line = false, unsure = "2 file events fit" }, -- 703.578 nameplate2 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 12187, line = false, unsure = "on time, of 2 file events" }, -- 703.611 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.003 s
	{ hit = 12195, line = false, unsure = "late by 1.50 s" }, -- 704.019 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.496 s
	{ hit = 12198, line = 12199, spell = 11711, unsure = "secret amount" }, -- 704.470 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12202, line = 12201, spell = false, unsure = "secret amount" }, -- 704.961 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.324 s
	{ hit = 12203, line = false, unsure = "secret amount" }, -- 704.966 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.450 s
	{ hit = 12206, line = false, unsure = "secret amount" }, -- 705.002 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 12207, line = false, unsure = "secret amount" }, -- 705.052 nameplate3 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.004 s
	{ hit = 12208, line = false, unsure = "secret amount" }, -- 705.052 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12211, line = false, unsure = "secret amount" }, -- 705.052 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12212, line = false, unsure = "secret amount" }, -- 705.077 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12215, line = false, unsure = "secret amount" }, -- 705.077 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12216, line = false, unsure = "secret amount" }, -- 705.077 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12218, line = 12217, spell = 7641, unsure = "secret amount" }, -- 705.313 nameplate5 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE -0.004 s
	{ hit = 12221, line = false, unsure = "secret amount" }, -- 705.389 nameplate2 PARRY <secret> <- other: swing SWING_MISSED +0.628 s
	{ hit = 12225, line = 12226, spell = 11711, unsure = "secret amount" }, -- 705.446 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12227, line = 12230, spell = 11711, unsure = "secret amount" }, -- 705.497 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 12236, line = 12237, spell = 7648, unsure = "secret amount" }, -- 705.929 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12238, line = 12239, spell = 7648, unsure = "secret amount" }, -- 705.954 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 12240, line = 12243, spell = 7648, unsure = "secret amount" }, -- 705.979 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 12250, line = 12251, spell = 11711, unsure = "secret amount" }, -- 706.466 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12252, line = false, unsure = "secret amount" }, -- 706.491 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 12253, line = false, unsure = "secret amount" }, -- 706.512 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.596 s
	{ hit = 12254, line = false, unsure = "secret amount" }, -- 706.529 nameplate5 DODGE <secret> <- other: Windfury Totem SPELL_MISSED -0.003 s
	{ hit = 12258, line = false, unsure = "secret amount" }, -- 706.833 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.004 s
	{ hit = 12259, line = false, unsure = "secret amount" }, -- 706.962 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.453 s
	{ hit = 12262, line = false, unsure = "secret amount" }, -- 707.045 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12265, line = false, unsure = "secret amount" }, -- 707.045 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12266, line = false, unsure = "secret amount" }, -- 707.045 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12271, line = 12272, spell = 11711, unsure = "secret amount" }, -- 707.427 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12273, line = 12276, spell = 11711, unsure = "secret amount" }, -- 707.504 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 12277, line = 12257, spell = false, unsure = "secret amount" }, -- 707.629 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.990 s
	{ hit = 12278, line = false, unsure = "secret amount" }, -- 707.979 nameplate3 WOUND <secret> <- other: Chain Lightning SPELL_DAMAGE -0.004 s
	{ hit = 12279, line = false, unsure = "secret amount" }, -- 707.979 nameplate5 WOUND <secret> <- other: Chain Lightning SPELL_DAMAGE -0.004 s
	{ hit = 12282, line = false, unsure = "secret amount" }, -- 707.979 nameplate2 WOUND <secret> <- other: Chain Lightning SPELL_DAMAGE -0.004 s
	{ hit = 12283, line = false, unsure = "secret amount" }, -- 708.004 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 12284, line = false, unsure = "secret amount" }, -- 708.212 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12285, line = false, unsure = "2 file events fit" }, -- 708.212 nameplate5 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 12288, line = false, unsure = "secret amount" }, -- 708.221 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 12291, line = 12292, spell = 1949, unsure = "secret amount" }, -- 708.377 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12294, line = 12293, spell = 1949, unsure = "secret amount" }, -- 708.377 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 12296, line = 12295, spell = 1949, unsure = "secret amount" }, -- 708.377 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 12300, line = 12299, spell = 1949, unsure = "secret amount" }, -- 708.377 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 12303, line = 12304, spell = 11711, unsure = "secret amount" }, -- 708.464 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12305, line = false, unsure = "secret amount" }, -- 708.464 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.005 s
	{ hit = 12313, line = 12314, spell = 7648, unsure = "secret amount" }, -- 708.920 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12315, line = 12316, spell = 7648, unsure = "secret amount" }, -- 708.954 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12317, line = 12309, spell = false, unsure = "secret amount" }, -- 708.962 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.324 s
	{ hit = 12320, line = false, unsure = "secret amount" }, -- 708.962 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.448 s
	{ hit = 12323, line = 12326, spell = 7648, unsure = "secret amount" }, -- 708.970 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12327, line = false, unsure = "secret amount" }, -- 709.046 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12328, line = false, unsure = "secret amount" }, -- 709.046 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12331, line = false, unsure = "secret amount" }, -- 709.046 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12335, line = 12336, spell = 1949, unsure = "secret amount" }, -- 709.388 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12339, line = 12338, spell = 1949, unsure = "secret amount" }, -- 709.388 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 12341, line = 12340, spell = 1949, unsure = "secret amount" }, -- 709.388 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 12345, line = 12344, spell = 1949, unsure = "secret amount" }, -- 709.388 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 12346, line = 12347, spell = 11711, unsure = "secret amount" }, -- 709.438 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12348, line = 12351, spell = 11711, unsure = "secret amount" }, -- 709.505 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12352, line = false, unsure = "secret amount" }, -- 709.505 nameplate3 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.005 s
	{ hit = 12354, line = false, unsure = "on time, of 2 file events" }, -- 710.319 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 12357, line = false, unsure = "on time, of 2 file events" }, -- 710.319 nameplate3 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 12358, line = false, unsure = "secret amount" }, -- 710.377 nameplate5 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.004 s
	{ hit = 12361, line = 12362, spell = 1949, unsure = "secret amount" }, -- 710.377 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 12364, line = 12363, spell = 1949, unsure = "secret amount" }, -- 710.377 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 12366, line = 12365, spell = 1949, unsure = "secret amount" }, -- 710.377 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 12369, line = false, unsure = "secret amount" }, -- 710.387 nameplate5 MISS <secret> <- other: Windfury Totem SPELL_MISSED -0.004 s
	{ hit = 12373, line = 12372, spell = false, unsure = "secret amount" }, -- 710.904 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.256 s
	{ hit = 12376, line = false, unsure = "secret amount" }, -- 710.962 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.447 s
	{ hit = 12377, line = false, unsure = "secret amount" }, -- 711.045 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12380, line = false, unsure = "secret amount" }, -- 711.045 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12381, line = false, unsure = "secret amount" }, -- 711.070 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12384, line = false, unsure = "secret amount" }, -- 711.070 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12391, line = 12392, spell = 1949, unsure = "secret amount" }, -- 711.378 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12394, line = 12393, spell = 1949, unsure = "secret amount" }, -- 711.378 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 12398, line = 12397, spell = 1949, unsure = "secret amount" }, -- 711.378 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 12399, line = 12400, spell = 11711, unsure = "secret amount" }, -- 711.445 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12401, line = 12404, spell = 11711, unsure = "secret amount" }, -- 711.502 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12405, line = false, unsure = "3 file events fit" }, -- 711.545 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 12408, line = false, unsure = "secret amount" }, -- 711.661 nameplate5 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 12411, line = false, unsure = "secret amount" }, -- 711.661 nameplate5 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.004 s
	{ hit = 12414, line = false, unsure = "3 file events fit" }, -- 711.821 nameplate5 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.240 s
	{ hit = 12417, line = 12418, spell = 7648, unsure = "secret amount" }, -- 711.932 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12419, line = 12422, spell = 7648, unsure = "secret amount" }, -- 711.983 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 12423, line = false, unsure = "2 file events fit" }, -- 712.237 nameplate5 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.656 s
	{ hit = 12426, line = 12427, spell = 1949, unsure = "secret amount" }, -- 712.381 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12429, line = 12428, spell = 1949, unsure = "secret amount" }, -- 712.381 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 12431, line = 12430, spell = 1949, unsure = "secret amount" }, -- 712.381 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 12435, line = false, unsure = "3 file events fit" }, -- 712.854 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.122 s
	{ hit = 12438, line = false, unsure = "secret amount" }, -- 712.979 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.462 s
	{ hit = 12439, line = false, unsure = "secret amount" }, -- 713.020 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 12442, line = false, unsure = "secret amount" }, -- 713.029 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 12443, line = false, unsure = "on time, of 2 file events" }, -- 713.029 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12446, line = false, unsure = "secret amount" }, -- 713.045 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12449, line = false, unsure = "secret amount" }, -- 713.045 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12450, line = 12434, spell = false, unsure = "secret amount" }, -- 713.266 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.622 s
	{ hit = 12453, line = false, unsure = "no file event fits" }, -- 713.322 nameplate5 WOUND <secret> <- no file event 
	{ hit = 12456, line = 12457, spell = 1949, unsure = "secret amount" }, -- 713.385 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12459, line = 12458, spell = 1949, unsure = "secret amount" }, -- 713.385 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 12463, line = 12462, spell = 1949, unsure = "secret amount" }, -- 713.385 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 12464, line = 12465, spell = 11711, unsure = "secret amount" }, -- 713.433 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 12469, line = 12472, spell = 11711, unsure = "secret amount" }, -- 713.508 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12476, line = false, unsure = "secret amount" }, -- 714.212 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 12477, line = 12478, spell = 1949, unsure = "secret amount" }, -- 714.377 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12480, line = 12479, spell = 1949, unsure = "secret amount" }, -- 714.377 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 12484, line = 12483, spell = 1949, unsure = "secret amount" }, -- 714.377 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 12486, line = false, unsure = "secret amount" }, -- 714.721 player HEAL <secret> <- other: Heal SPELL_HEAL -0.004 s
	{ hit = 12488, line = 12489, spell = 7648, unsure = "secret amount" }, -- 714.932 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12491, line = 12494, spell = 7648, unsure = "secret amount" }, -- 714.993 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 12497, line = false, unsure = "secret amount" }, -- 715.046 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12498, line = false, unsure = "secret amount" }, -- 715.121 nameplate3 DODGE <secret> <- other: swing SWING_MISSED +0.590 s
	{ hit = 12500, line = 12485, spell = false, unsure = "secret amount" }, -- 715.273 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.625 s
	{ hit = 12502, line = 12505, spell = 11711, unsure = "secret amount" }, -- 715.427 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12506, line = false, unsure = "secret amount" }, -- 715.427 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.005 s
	{ hit = 12515, line = false, unsure = "on time, of 4 file events" }, -- 716.620 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 12519, line = false, unsure = "no file event fits" }, -- 716.703 nameplate3 WOUND <secret> <- no file event 
	{ hit = 12522, line = false, unsure = "no file event fits" }, -- 716.838 nameplate3 WOUND <secret> <- no file event 
	{ hit = 12525, line = 12518, spell = false, unsure = "on time, of 3 file events" }, -- 716.970 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.322 s
	{ hit = 12528, line = false, unsure = "secret amount" }, -- 717.044 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12532, line = 12531, spell = 7651, unsure = "secret amount" }, -- 717.236 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12535, line = 12536, spell = 7651, unsure = "secret amount" }, -- 717.236 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 12537, line = false, unsure = "secret amount" }, -- 717.245 nameplate3 DODGE <secret> <- other: Windfury Totem SPELL_MISSED -0.004 s
	{ hit = 12540, line = false, unsure = "on time, of 4 file events" }, -- 717.286 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 12543, line = 12546, spell = 11711, unsure = "secret amount" }, -- 717.433 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12547, line = false, unsure = "no file event fits" }, -- 717.587 nameplate3 WOUND <secret> <- no file event 
	{ hit = 12553, line = false, unsure = "secret amount" }, -- 717.820 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.004 s
	{ hit = 12554, line = 12557, spell = 7648, unsure = "secret amount" }, -- 717.929 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12559, line = 12558, spell = 7651, unsure = "secret amount" }, -- 718.246 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12562, line = 12563, spell = 7651, unsure = "secret amount" }, -- 718.246 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 12567, line = false, unsure = "secret amount" }, -- 719.020 nameplate3 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.005 s
	{ hit = 12571, line = 12570, spell = 7651, unsure = "secret amount" }, -- 719.244 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12574, line = 12575, spell = 7651, unsure = "secret amount" }, -- 719.244 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 12576, line = 12579, spell = 11711, unsure = "secret amount" }, -- 719.444 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12583, line = 12566, spell = false, unsure = "secret amount" }, -- 719.652 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.994 s
	{ hit = 12587, line = false, unsure = "secret amount" }, -- 722.654 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 12591, line = false, unsure = "late by 1.02 s" }, -- 724.607 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.024 s
	{ hit = 12597, line = false, unsure = "secret amount" }, -- 725.523 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.003 s
	{ hit = 12602, line = false, unsure = "secret amount" }, -- 725.660 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 12605, line = false, unsure = "secret amount" }, -- 725.977 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12606, line = false, unsure = "secret amount" }, -- 726.270 nameplate2 WOUND <secret> <- other: Shadow Bolt SPELL_DAMAGE +0.081 s
	{ hit = 12610, line = false, unsure = "secret amount" }, -- 727.012 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12611, line = false, unsure = "secret amount" }, -- 727.012 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12614, line = false, unsure = "secret amount" }, -- 727.012 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12615, line = false, unsure = "on time, of 2 file events" }, -- 727.012 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12630, line = false, unsure = "secret amount" }, -- 727.787 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 12631, line = false, unsure = "late by 1.07 s" }, -- 727.862 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.071 s
	{ hit = 12638, line = false, unsure = "secret amount" }, -- 728.597 nameplate2 MISS <secret> <- other: Demoralizing Shout SPELL_MISSED -0.004 s
	{ hit = 12641, line = false, unsure = "secret amount" }, -- 728.653 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 12642, line = 12645, spell = 11711, unsure = "secret amount" }, -- 729.153 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 12646, line = false, unsure = "secret amount" }, -- 729.362 player HEAL <secret> <- other: Heal SPELL_HEAL -0.004 s
	{ hit = 12657, line = false, unsure = "secret amount" }, -- 730.080 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 12669, line = false, unsure = "late by 1.02 s" }, -- 730.520 nameplate3 MISS <secret> <- other: swing SWING_MISSED +1.017 s
	{ hit = 12672, line = 12660, spell = false, unsure = "secret amount" }, -- 730.736 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.622 s
	{ hit = 12673, line = false, unsure = "secret amount" }, -- 730.847 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12677, line = 12678, spell = 11711, unsure = "secret amount" }, -- 731.154 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12679, line = false, unsure = "secret amount" }, -- 731.381 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12685, line = 12686, spell = 7648, unsure = "secret amount" }, -- 731.628 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12687, line = false, unsure = "secret amount" }, -- 731.654 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 12696, line = 12697, spell = 11711, unsure = "secret amount" }, -- 732.135 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 12698, line = 12695, spell = false, unsure = "secret amount" }, -- 732.446 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.323 s
	{ hit = 12702, line = false, unsure = "secret amount" }, -- 732.662 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.456 s
	{ hit = 12703, line = false, unsure = "secret amount" }, -- 732.695 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12704, line = false, unsure = "secret amount" }, -- 732.695 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12705, line = false, unsure = "secret amount" }, -- 732.695 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12706, line = false, unsure = "secret amount" }, -- 732.695 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12709, line = false, unsure = "secret amount" }, -- 732.794 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.005 s
	{ hit = 12712, line = false, unsure = "on time, of 4 file events" }, -- 732.891 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12715, line = false, unsure = "on time, of 2 file events" }, -- 732.911 nameplate3 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 12716, line = false, unsure = "secret amount" }, -- 732.947 nameplate3 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 12717, line = false, unsure = "3 file events fit" }, -- 733.053 nameplate2 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.202 s
	{ hit = 12722, line = 12723, spell = 11711, unsure = "secret amount" }, -- 733.161 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12724, line = false, unsure = "secret amount" }, -- 733.170 nameplate3 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.004 s
	{ hit = 12725, line = false, unsure = "on time, of 2 file events" }, -- 733.212 nameplate3 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 12729, line = false, unsure = "2 file events fit" }, -- 733.477 nameplate2 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.626 s
	{ hit = 12732, line = false, unsure = "secret amount" }, -- 733.545 nameplate5 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 12733, line = false, unsure = "2 file events fit" }, -- 733.686 nameplate3 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 12734, line = false, unsure = "secret amount" }, -- 733.703 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12735, line = false, unsure = "secret amount" }, -- 733.703 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12738, line = false, unsure = "secret amount" }, -- 733.703 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12739, line = false, unsure = "secret amount" }, -- 733.703 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12746, line = 12749, spell = false, unsure = "secret amount" }, -- 734.111 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE -0.020 s
	{ hit = 12750, line = 12751, spell = 11711, unsure = "secret amount" }, -- 734.127 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 12758, line = false, unsure = "late by 1.49 s" }, -- 734.379 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.495 s
	{ hit = 12762, line = false, unsure = "no file event fits" }, -- 734.458 nameplate2 WOUND <secret> <- no file event 
	{ hit = 12765, line = false, unsure = "secret amount" }, -- 734.489 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.004 s
	{ hit = 12771, line = false, unsure = "secret amount" }, -- 734.587 nameplate6 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12772, line = 12773, spell = 7648, unsure = "secret amount" }, -- 734.612 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12774, line = 12775, spell = 7648, unsure = "secret amount" }, -- 734.646 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12776, line = false, unsure = "secret amount" }, -- 734.654 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 12777, line = false, unsure = "secret amount" }, -- 734.671 nameplate6 PARRY <secret> <- other: swing SWING_MISSED +0.461 s
	{ hit = 12778, line = false, unsure = "secret amount" }, -- 734.695 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12779, line = false, unsure = "secret amount" }, -- 734.695 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12782, line = false, unsure = "secret amount" }, -- 734.695 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12783, line = false, unsure = "secret amount" }, -- 734.695 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12785, line = false, unsure = "secret amount" }, -- 735.046 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12786, line = false, unsure = "secret amount" }, -- 735.046 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12787, line = false, unsure = "secret amount" }, -- 735.046 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12790, line = false, unsure = "secret amount" }, -- 735.046 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12791, line = 12792, spell = 11711, unsure = "secret amount" }, -- 735.096 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12793, line = 12794, spell = 11711, unsure = "secret amount" }, -- 735.162 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12795, line = false, unsure = "on time, of 2 file events" }, -- 735.194 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 12802, line = false, unsure = "secret amount" }, -- 735.661 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.494 s
	{ hit = 12803, line = false, unsure = "secret amount" }, -- 735.696 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12804, line = false, unsure = "secret amount" }, -- 735.696 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12807, line = false, unsure = "secret amount" }, -- 735.696 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12808, line = false, unsure = "secret amount" }, -- 735.696 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12811, line = 12812, spell = 11711, unsure = "secret amount" }, -- 736.129 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12814, line = false, unsure = "secret amount" }, -- 736.304 nameplate3 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.004 s
	{ hit = 12815, line = false, unsure = "secret amount" }, -- 736.304 nameplate3 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 12818, line = 12813, spell = false, unsure = "secret amount" }, -- 736.394 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.261 s
	{ hit = 12819, line = false, unsure = "on time, of 2 file events" }, -- 736.437 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12823, line = false, unsure = "secret amount" }, -- 736.562 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12826, line = false, unsure = "secret amount" }, -- 736.701 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12827, line = false, unsure = "secret amount" }, -- 736.701 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12828, line = false, unsure = "secret amount" }, -- 736.701 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12829, line = false, unsure = "secret amount" }, -- 736.701 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12838, line = 12839, spell = 11711, unsure = "secret amount" }, -- 737.102 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12843, line = 12844, spell = 11711, unsure = "secret amount" }, -- 737.158 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 12845, line = false, unsure = "secret amount" }, -- 737.212 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.996 s
	{ hit = 12846, line = false, unsure = "secret amount" }, -- 737.319 nameplate6 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 12852, line = 12853, spell = 7648, unsure = "secret amount" }, -- 737.594 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12854, line = false, unsure = "2 file events fit" }, -- 737.594 nameplate6 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 12855, line = 12856, spell = 7648, unsure = "secret amount" }, -- 737.611 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12857, line = false, unsure = "secret amount" }, -- 737.617 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.003 s
	{ hit = 12858, line = 12859, spell = 7648, unsure = "secret amount" }, -- 737.641 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12860, line = false, unsure = "secret amount" }, -- 737.694 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12863, line = false, unsure = "secret amount" }, -- 737.694 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12864, line = false, unsure = "secret amount" }, -- 737.694 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12865, line = false, unsure = "secret amount" }, -- 737.694 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12866, line = false, unsure = "late by 1.49 s" }, -- 737.766 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.492 s
	{ hit = 12867, line = false, unsure = "on time, of 2 file events" }, -- 738.011 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12868, line = 12871, spell = 11711, unsure = "secret amount" }, -- 738.069 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12875, line = 12876, spell = 11711, unsure = "secret amount" }, -- 738.136 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 12881, line = false, unsure = "on time, of 2 file events" }, -- 738.372 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.482 s
	{ hit = 12882, line = 12877, spell = false, unsure = "secret amount" }, -- 738.405 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.257 s
	{ hit = 12883, line = false, unsure = "secret amount" }, -- 738.670 nameplate2 PARRY <secret> <- other: swing SWING_MISSED +0.455 s
	{ hit = 12884, line = false, unsure = "secret amount" }, -- 738.702 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12887, line = false, unsure = "secret amount" }, -- 738.702 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12888, line = false, unsure = "secret amount" }, -- 738.702 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12889, line = false, unsure = "secret amount" }, -- 738.702 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12892, line = 12893, spell = 11711, unsure = "secret amount" }, -- 739.095 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12894, line = 12895, spell = 11711, unsure = "secret amount" }, -- 739.161 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12905, line = false, unsure = "secret amount" }, -- 739.661 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 12906, line = false, unsure = "secret amount" }, -- 739.694 nameplate6 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12907, line = false, unsure = "secret amount" }, -- 739.694 nameplate2 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12908, line = false, unsure = "secret amount" }, -- 739.694 nameplate3 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12909, line = false, unsure = "secret amount" }, -- 739.694 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 12912, line = 12915, spell = 11711, unsure = "secret amount" }, -- 740.070 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12916, line = 12917, spell = 11711, unsure = "secret amount" }, -- 740.137 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12919, line = false, unsure = "secret amount" }, -- 740.287 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.589 s
	{ hit = 12923, line = 12918, spell = false, unsure = "secret amount" }, -- 740.412 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.255 s
	{ hit = 12931, line = 12934, spell = 7648, unsure = "secret amount" }, -- 740.560 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 12935, line = 12936, spell = 7648, unsure = "secret amount" }, -- 740.577 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12937, line = false, unsure = "secret amount" }, -- 740.577 nameplate6 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 12938, line = 12939, spell = 7648, unsure = "secret amount" }, -- 740.611 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12940, line = 12941, spell = 7648, unsure = "secret amount" }, -- 740.635 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12945, line = false, unsure = "secret amount" }, -- 741.070 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12946, line = 12947, spell = 11711, unsure = "secret amount" }, -- 741.095 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12948, line = 12949, spell = 11711, unsure = "secret amount" }, -- 741.161 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12950, line = false, unsure = "secret amount" }, -- 741.212 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.979 s
	{ hit = 12951, line = false, unsure = "secret amount" }, -- 741.279 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 12955, line = false, unsure = "secret amount" }, -- 741.686 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12956, line = false, unsure = "secret amount" }, -- 741.686 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12959, line = false, unsure = "secret amount" }, -- 741.686 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12960, line = false, unsure = "secret amount" }, -- 741.686 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 12964, line = false, unsure = "secret amount" }, -- 741.911 nameplate2 DODGE <secret> <- other: swing SWING_MISSED +0.495 s
	{ hit = 12970, line = 12969, spell = 18879, unsure = "2 file events fit" }, -- 742.029 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12973, line = 12974, spell = 18879, unsure = "secret amount" }, -- 742.029 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 12975, line = 12978, spell = 11711, unsure = "secret amount" }, -- 742.055 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 12979, line = 12980, spell = 11711, unsure = "secret amount" }, -- 742.129 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 12982, line = false, unsure = "secret amount" }, -- 742.571 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.355 s
	{ hit = 12986, line = false, unsure = "secret amount" }, -- 742.719 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12987, line = false, unsure = "secret amount" }, -- 742.719 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12990, line = false, unsure = "secret amount" }, -- 742.719 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12991, line = false, unsure = "secret amount" }, -- 742.719 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 12992, line = 12981, spell = false, unsure = "secret amount" }, -- 742.774 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.625 s
	{ hit = 12998, line = 12999, spell = 1949, unsure = "secret amount" }, -- 743.002 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13001, line = 13000, spell = 1949, unsure = "secret amount" }, -- 743.002 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13003, line = 13002, spell = 1949, unsure = "secret amount" }, -- 743.002 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13007, line = 13006, spell = 1949, unsure = "secret amount" }, -- 743.002 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13009, line = 13008, spell = 1949, unsure = "secret amount" }, -- 743.002 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 13010, line = 13011, spell = 11711, unsure = "secret amount" }, -- 743.102 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13012, line = false, unsure = "secret amount" }, -- 743.112 nameplate3 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 13013, line = 13014, spell = 11711, unsure = "secret amount" }, -- 743.160 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13015, line = false, unsure = "secret amount" }, -- 743.170 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 13016, line = false, unsure = "secret amount" }, -- 743.327 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 13017, line = 13020, spell = 7648, unsure = "secret amount" }, -- 743.552 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13021, line = 13022, spell = 7648, unsure = "secret amount" }, -- 743.594 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13023, line = false, unsure = "secret amount" }, -- 743.594 nameplate6 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 13024, line = 13025, spell = 7648, unsure = "secret amount" }, -- 743.620 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13029, line = 13030, spell = 7648, unsure = "secret amount" }, -- 743.644 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13034, line = 13035, spell = 1949, unsure = "secret amount" }, -- 744.015 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13037, line = 13036, spell = 1949, unsure = "secret amount" }, -- 744.015 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13041, line = 13040, spell = 1949, unsure = "secret amount" }, -- 744.015 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13043, line = 13042, spell = 1949, unsure = "secret amount" }, -- 744.015 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13045, line = 13044, spell = 1949, unsure = "secret amount" }, -- 744.015 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 13046, line = 13049, spell = 11711, unsure = "secret amount" }, -- 744.070 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13053, line = 13054, spell = 11711, unsure = "secret amount" }, -- 744.138 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13056, line = 13055, spell = false, unsure = "secret amount" }, -- 744.415 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.265 s
	{ hit = 13062, line = false, unsure = "late by 1.49 s" }, -- 744.579 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.488 s
	{ hit = 13063, line = false, unsure = "secret amount" }, -- 744.686 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 13064, line = false, unsure = "secret amount" }, -- 744.729 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13067, line = false, unsure = "secret amount" }, -- 744.729 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13068, line = false, unsure = "secret amount" }, -- 744.729 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13069, line = false, unsure = "secret amount" }, -- 744.729 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13070, line = false, unsure = "on time, of 2 file events" }, -- 744.974 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 13071, line = 13072, spell = 1949, unsure = "secret amount" }, -- 745.006 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13074, line = 13073, spell = 1949, unsure = "secret amount" }, -- 745.006 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13076, line = 13075, spell = 1949, unsure = "secret amount" }, -- 745.006 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13078, line = 13077, spell = 1949, unsure = "secret amount" }, -- 745.006 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13080, line = 13079, spell = 1949, unsure = "secret amount" }, -- 745.006 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13084, line = 13083, spell = 18879, unsure = "secret amount" }, -- 745.036 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13087, line = 13088, spell = 18879, unsure = "secret amount" }, -- 745.036 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 13089, line = 13090, spell = 11711, unsure = "secret amount" }, -- 745.097 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13091, line = 13092, spell = 11711, unsure = "secret amount" }, -- 745.162 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13096, line = false, unsure = "secret amount" }, -- 745.187 nameplate3 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 13100, line = false, unsure = "secret amount" }, -- 745.279 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.356 s
	{ hit = 13101, line = false, unsure = "on time, of 2 file events" }, -- 745.372 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 13102, line = false, unsure = "secret amount" }, -- 745.579 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.629 s
	{ hit = 13103, line = 13104, spell = 1949, unsure = "secret amount" }, -- 746.008 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13106, line = 13105, spell = 1949, unsure = "secret amount" }, -- 746.008 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 13110, line = 13109, spell = 1949, unsure = "secret amount" }, -- 746.008 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13112, line = 13111, spell = 1949, unsure = "secret amount" }, -- 746.008 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13114, line = 13113, spell = 1949, unsure = "secret amount" }, -- 746.008 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13115, line = false, unsure = "secret amount" }, -- 746.035 nameplate2 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.004 s
	{ hit = 13116, line = 13119, spell = 11711, unsure = "secret amount" }, -- 746.060 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 13120, line = 13121, spell = 11711, unsure = "secret amount" }, -- 746.144 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13126, line = false, unsure = "secret amount" }, -- 746.188 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13127, line = false, unsure = "secret amount" }, -- 746.494 nameplate2 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.004 s
	{ hit = 13131, line = false, unsure = "secret amount" }, -- 746.520 nameplate2 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 13135, line = false, unsure = "secret amount" }, -- 746.537 nameplate3 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 13136, line = 13139, spell = 7648, unsure = "secret amount" }, -- 746.552 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13140, line = false, unsure = "on time, of 2 file events" }, -- 746.552 nameplate2 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.005 s
	{ hit = 13141, line = false, unsure = "secret amount" }, -- 746.569 nameplate3 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 13142, line = 13143, spell = 7648, unsure = "secret amount" }, -- 746.586 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13144, line = false, unsure = "secret amount" }, -- 746.586 nameplate6 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13145, line = 13146, spell = 7648, unsure = "secret amount" }, -- 746.612 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 13147, line = 13148, spell = 7648, unsure = "secret amount" }, -- 746.645 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13149, line = false, unsure = "on time, of 2 file events" }, -- 746.685 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.005 s
	{ hit = 13150, line = false, unsure = "secret amount" }, -- 746.744 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13151, line = false, unsure = "secret amount" }, -- 746.744 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13152, line = false, unsure = "secret amount" }, -- 746.744 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13155, line = false, unsure = "secret amount" }, -- 746.744 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13156, line = 13125, spell = false, unsure = "secret amount" }, -- 746.779 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.619 s
	{ hit = 13159, line = 13160, spell = 1949, unsure = "secret amount" }, -- 747.005 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13162, line = 13161, spell = 1949, unsure = "secret amount" }, -- 747.005 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13164, line = 13163, spell = 1949, unsure = "secret amount" }, -- 747.005 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13175, line = 13174, spell = 1949, unsure = "secret amount" }, -- 747.005 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 13177, line = 13176, spell = 1949, unsure = "secret amount" }, -- 747.005 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.008 s
	{ hit = 13181, line = 13182, spell = 11711, unsure = "secret amount" }, -- 747.161 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13183, line = false, unsure = "secret amount" }, -- 747.227 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 13185, line = false, unsure = "secret amount" }, -- 747.444 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.360 s
	{ hit = 13189, line = 13190, spell = 1949, unsure = "secret amount" }, -- 748.012 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13192, line = 13191, spell = 1949, unsure = "secret amount" }, -- 748.012 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13194, line = 13193, spell = 1949, unsure = "secret amount" }, -- 748.012 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13198, line = 13197, spell = 1949, unsure = "secret amount" }, -- 748.012 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13200, line = 13199, spell = 18879, unsure = "on time, of 2 file events" }, -- 748.036 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13203, line = 13204, spell = 18879, unsure = "secret amount" }, -- 748.036 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 13205, line = 13208, spell = 11711, unsure = "secret amount" }, -- 748.077 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13209, line = 13210, spell = 11711, unsure = "secret amount" }, -- 748.136 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13212, line = false, unsure = "secret amount" }, -- 748.254 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 13213, line = false, unsure = "secret amount" }, -- 748.728 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 13214, line = false, unsure = "secret amount" }, -- 748.728 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 13215, line = false, unsure = "secret amount" }, -- 748.728 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 13218, line = 13211, spell = false, unsure = "secret amount" }, -- 748.773 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.616 s
	{ hit = 13221, line = 13222, spell = 1949, unsure = "secret amount" }, -- 749.012 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13224, line = 13223, spell = 1949, unsure = "secret amount" }, -- 749.012 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13226, line = 13225, spell = 1949, unsure = "secret amount" }, -- 749.012 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13230, line = 13229, spell = 1949, unsure = "secret amount" }, -- 749.012 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13234, line = false, unsure = "on time, of 2 file events" }, -- 749.111 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.632 s
	{ hit = 13235, line = 13236, spell = 11711, unsure = "secret amount" }, -- 749.163 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13237, line = false, unsure = "secret amount" }, -- 749.180 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13238, line = 13241, spell = 7648, unsure = "secret amount" }, -- 749.544 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13242, line = false, unsure = "secret amount" }, -- 749.594 nameplate6 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13243, line = 13244, spell = 7648, unsure = "secret amount" }, -- 749.613 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13245, line = false, unsure = "secret amount" }, -- 749.741 player HEAL <secret> <- other: Heal SPELL_HEAL -0.004 s
	{ hit = 13246, line = false, unsure = "secret amount" }, -- 749.780 nameplate5 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.004 s
	{ hit = 13249, line = false, unsure = "secret amount" }, -- 749.780 nameplate3 WOUND <secret> <- other: Cleave SPELL_DAMAGE -0.004 s
	{ hit = 13250, line = false, unsure = "no file event fits" }, -- 749.780 nameplate5 WOUND <secret> <- no file event 
	{ hit = 13253, line = 13254, spell = 1949, unsure = "secret amount" }, -- 750.013 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13256, line = 13255, spell = 1949, unsure = "secret amount" }, -- 750.013 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13258, line = 13257, spell = 1949, unsure = "secret amount" }, -- 750.013 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13260, line = 13259, spell = 1949, unsure = "secret amount" }, -- 750.013 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13263, line = 13266, spell = 11711, unsure = "secret amount" }, -- 750.069 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13270, line = 13271, spell = 11711, unsure = "secret amount" }, -- 750.132 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13273, line = false, unsure = "secret amount" }, -- 750.302 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 13274, line = false, unsure = "2 file events fit" }, -- 750.302 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 13277, line = false, unsure = "secret amount" }, -- 750.302 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 13278, line = false, unsure = "secret amount" }, -- 750.329 pet WOUND <secret> <- creature: Shield Bash SPELL_DAMAGE -0.004 s
	{ hit = 13279, line = false, unsure = "on time, of 2 file events" }, -- 750.561 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.663 s
	{ hit = 13282, line = false, unsure = "secret amount" }, -- 750.719 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13285, line = false, unsure = "secret amount" }, -- 750.719 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13286, line = false, unsure = "secret amount" }, -- 750.719 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13287, line = 13272, spell = false, unsure = "secret amount" }, -- 750.786 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.630 s
	{ hit = 13290, line = 13291, spell = 1949, unsure = "secret amount" }, -- 751.014 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13293, line = 13292, spell = 1949, unsure = "secret amount" }, -- 751.014 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13296, line = 13295, spell = 1949, unsure = "secret amount" }, -- 751.014 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13298, line = 13297, spell = 1949, unsure = "secret amount" }, -- 751.014 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 13302, line = 13301, spell = 18879, unsure = "secret amount" }, -- 751.030 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 13305, line = 13306, spell = 18879, unsure = "secret amount" }, -- 751.030 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 13307, line = 13308, spell = 11711, unsure = "secret amount" }, -- 751.152 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13309, line = false, unsure = "secret amount" }, -- 751.246 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 13314, line = false, unsure = "secret amount" }, -- 751.545 nameplate5 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13317, line = false, unsure = "secret amount" }, -- 751.811 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 13318, line = 13319, spell = 1949, unsure = "secret amount" }, -- 752.004 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13321, line = 13320, spell = 1949, unsure = "secret amount" }, -- 752.004 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 13325, line = 13324, spell = 1949, unsure = "secret amount" }, -- 752.004 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13326, line = false, unsure = "secret amount" }, -- 752.044 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 13327, line = 13330, spell = 11711, unsure = "secret amount" }, -- 752.061 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13332, line = false, unsure = "on time, of 3 file events" }, -- 752.520 nameplate6 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 13336, line = 13339, spell = 7648, unsure = "secret amount" }, -- 752.545 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13340, line = false, unsure = "on time, of 2 file events" }, -- 752.586 nameplate6 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13341, line = false, unsure = "on time, of 2 file events" }, -- 752.646 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.623 s
	{ hit = 13347, line = false, unsure = "secret amount" }, -- 752.720 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13348, line = false, unsure = "secret amount" }, -- 752.720 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13351, line = false, unsure = "no file event fits" }, -- 752.837 nameplate6 WOUND <secret> <- no file event 
	{ hit = 13352, line = 13353, spell = 1949, unsure = "secret amount" }, -- 753.020 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 13355, line = 13354, spell = 1949, unsure = "secret amount" }, -- 753.020 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13357, line = 13356, spell = 1949, unsure = "secret amount" }, -- 753.020 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 13360, line = 13331, spell = false, unsure = "on time, of 2 file events" }, -- 753.152 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.993 s
	{ hit = 13364, line = false, unsure = "on time, of 2 file events" }, -- 753.187 nameplate5 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 13368, line = false, unsure = "secret amount" }, -- 753.187 nameplate5 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.004 s
	{ hit = 13372, line = false, unsure = "secret amount" }, -- 753.212 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.005 s
	{ hit = 13376, line = false, unsure = "secret amount" }, -- 753.270 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 13380, line = false, unsure = "secret amount" }, -- 753.310 nameplate6 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.005 s
	{ hit = 13381, line = false, unsure = "secret amount" }, -- 753.896 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.581 s
	{ hit = 13385, line = 13386, spell = 1949, unsure = "secret amount" }, -- 754.013 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13388, line = 13387, spell = 1949, unsure = "secret amount" }, -- 754.013 nameplate6 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.004 s
	{ hit = 13390, line = 13389, spell = 1949, unsure = "secret amount" }, -- 754.013 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 13395, line = 13394, spell = 18879, unsure = "2 file events fit" }, -- 754.036 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13399, line = 13400, spell = 18879, unsure = "secret amount" }, -- 754.036 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 13401, line = 13405, spell = 11711, unsure = "secret amount" }, -- 754.067 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13407, line = false, unsure = "2 file events fit" }, -- 754.172 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 13411, line = false, unsure = "3 file events fit" }, -- 754.205 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.004 s
	{ hit = 13415, line = false, unsure = "secret amount" }, -- 754.237 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 13417, line = false, unsure = "secret amount" }, -- 754.455 nameplate6 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 13418, line = 13406, spell = false, unsure = "on time, of 4 file events" }, -- 754.472 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.307 s
	{ hit = 13422, line = false, unsure = "on time, of 3 file events" }, -- 754.536 nameplate5 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13426, line = false, unsure = "secret amount" }, -- 754.727 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 13430, line = false, unsure = "secret amount" }, -- 754.727 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 13435, line = false, unsure = "2 file events fit" }, -- 754.894 nameplate5 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.652 s
	{ hit = 13439, line = false, unsure = "secret amount" }, -- 755.227 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.004 s
	{ hit = 13443, line = 13442, spell = 7641, unsure = "secret amount" }, -- 755.627 nameplate6 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.054 s
	{ hit = 13446, line = false, unsure = "secret amount" }, -- 755.779 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.589 s
	{ hit = 13450, line = false, unsure = "secret amount" }, -- 756.717 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13453, line = 13449, spell = false, unsure = "secret amount" }, -- 756.881 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.633 s
	{ hit = 13459, line = false, unsure = "secret amount" }, -- 757.246 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 13460, line = false, unsure = "secret amount" }, -- 757.271 nameplate6 MISS <secret> <- other: swing SWING_MISSED +0.487 s
	{ hit = 13470, line = 13469, spell = 7651, unsure = "secret amount" }, -- 758.020 nameplate6 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13473, line = 13474, spell = 7651, unsure = "secret amount" }, -- 758.020 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 13476, line = false, unsure = "on time, of 2 file events" }, -- 758.487 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.586 s
	{ hit = 13479, line = 13475, spell = false, unsure = "secret amount" }, -- 758.594 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.328 s
	{ hit = 13482, line = false, unsure = "secret amount" }, -- 758.732 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 13486, line = 13485, spell = 7651, unsure = "secret amount" }, -- 759.020 nameplate6 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13489, line = 13490, spell = 7651, unsure = "secret amount" }, -- 759.020 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 13491, line = false, unsure = "secret amount" }, -- 759.954 nameplate6 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 13495, line = 13494, spell = 7651, unsure = "secret amount" }, -- 760.028 nameplate6 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13498, line = 13499, spell = 7651, unsure = "secret amount" }, -- 760.028 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 13500, line = false, unsure = "secret amount" }, -- 760.244 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 13506, line = false, unsure = "secret amount" }, -- 761.194 softinteract WOUND <secret> <- other: swing SWING_DAMAGE +0.594 s
	{ hit = 13508, line = 13501, spell = false, unsure = "secret amount" }, -- 761.260 softinteract WOUND <secret> <- pet: swing SWING_DAMAGE +0.994 s
	{ hit = 13509, line = false, unsure = "secret amount" }, -- 762.247 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.004 s
	{ hit = 13538, line = false, unsure = "on time, of 2 file events" }, -- 782.983 nameplate5 MISS <secret> <- other: Shield Slam SPELL_MISSED -0.004 s
	{ hit = 13541, line = false, unsure = "secret amount" }, -- 783.277 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.005 s
	{ hit = 13544, line = false, unsure = "secret amount" }, -- 783.345 nameplate5 MISS <secret> <- other: swing SWING_MISSED +0.985 s
	{ hit = 13549, line = false, unsure = "secret amount" }, -- 783.787 nameplate5 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 13555, line = false, unsure = "secret amount" }, -- 784.473 nameplate5 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.005 s
	{ hit = 13560, line = false, unsure = "secret amount" }, -- 785.378 nameplate5 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.004 s
	{ hit = 13563, line = false, unsure = "secret amount" }, -- 785.378 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 13568, line = false, unsure = "secret amount" }, -- 785.583 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 13571, line = false, unsure = "secret amount" }, -- 785.762 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 13574, line = false, unsure = "secret amount" }, -- 785.997 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 13577, line = false, unsure = "secret amount" }, -- 786.013 nameplate5 PARRY <secret> <- other: Windfury Totem SPELL_MISSED -0.004 s
	{ hit = 13585, line = false, unsure = "no file event fits" }, -- 786.680 nameplate5 DODGE <secret> <- no file event 
	{ hit = 13588, line = 13591, spell = 11711, unsure = "secret amount" }, -- 786.811 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13592, line = false, unsure = "late by 1.49 s" }, -- 786.844 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.495 s
	{ hit = 13595, line = false, unsure = "2 file events fit" }, -- 786.969 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 13598, line = false, unsure = "secret amount" }, -- 787.120 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.005 s
	{ hit = 13601, line = false, unsure = "secret amount" }, -- 787.237 nameplate5 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.229 s
	{ hit = 13604, line = false, unsure = "secret amount" }, -- 787.661 nameplate5 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +0.653 s
	{ hit = 13612, line = false, unsure = "on time, of 2 file events" }, -- 788.136 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.358 s
	{ hit = 13615, line = false, unsure = "secret amount" }, -- 788.269 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.503 s
	{ hit = 13618, line = false, unsure = "secret amount" }, -- 788.771 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.005 s
	{ hit = 13621, line = 13624, spell = 11711, unsure = "secret amount" }, -- 788.814 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13635, line = false, unsure = "on time, of 2 file events" }, -- 789.778 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 13638, line = false, unsure = "late by 1.49 s" }, -- 790.227 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.487 s
	{ hit = 13641, line = false, unsure = "secret amount" }, -- 790.604 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 13642, line = false, unsure = "4 file events fit" }, -- 790.604 nameplate5 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE -0.005 s
	{ hit = 13645, line = false, unsure = "3 file events fit" }, -- 790.604 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.005 s
	{ hit = 13648, line = false, unsure = "secret amount" }, -- 790.645 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.004 s
	{ hit = 13651, line = 13654, spell = 7648, unsure = "on time, of 2 file events" }, -- 790.772 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 13655, line = 13658, spell = 11711, unsure = "secret amount" }, -- 790.819 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13659, line = false, unsure = "on time, of 3 file events" }, -- 790.919 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.311 s
	{ hit = 13666, line = 13665, spell = 2941, unsure = "secret amount" }, -- 791.239 nameplate5 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.005 s
	{ hit = 13669, line = false, unsure = "2 file events fit" }, -- 791.270 nameplate5 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE +0.661 s
	{ hit = 13672, line = false, unsure = "secret amount" }, -- 791.611 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 13675, line = false, unsure = "late by 1.00 s" }, -- 791.611 nameplate5 MISS <secret> <- other: swing SWING_MISSED +1.003 s
	{ hit = 13678, line = false, unsure = "2 file events fit" }, -- 791.897 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.097 s
	{ hit = 13684, line = false, unsure = "late by 1.38 s" }, -- 791.989 nameplate5 WOUND <secret> <- other: Windfury Weapon SPELL_DAMAGE +1.380 s
	{ hit = 13687, line = false, unsure = "on time, of 2 file events" }, -- 792.135 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.005 s
	{ hit = 13690, line = false, unsure = "on time, of 2 file events" }, -- 792.281 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 13695, line = 13698, spell = 11711, unsure = "secret amount" }, -- 792.802 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 13699, line = false, unsure = "secret amount" }, -- 792.811 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.654 s
	{ hit = 13705, line = false, unsure = "secret amount" }, -- 793.104 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 13708, line = false, unsure = "secret amount" }, -- 793.477 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 13709, line = false, unsure = "on time, of 3 file events" }, -- 793.597 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 13712, line = false, unsure = "secret amount" }, -- 793.656 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13715, line = false, unsure = "on time, of 2 file events" }, -- 793.691 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.492 s
	{ hit = 13718, line = 13721, spell = 7648, unsure = "secret amount" }, -- 793.772 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13722, line = false, unsure = "no file event fits" }, -- 793.935 nameplate5 WOUND <secret> <- no file event 
	{ hit = 13726, line = 13729, spell = 2941, unsure = "secret amount" }, -- 794.287 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13731, line = 13730, spell = 18879, unsure = "secret amount" }, -- 794.287 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 13734, line = 13735, spell = 18879, unsure = "secret amount" }, -- 794.287 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 13736, line = 13725, spell = false, unsure = "2 file events fit" }, -- 794.447 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.430 s
	{ hit = 13739, line = false, unsure = "secret amount" }, -- 794.466 nameplate5 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.004 s
	{ hit = 13742, line = false, unsure = "secret amount" }, -- 794.595 nameplate5 DODGE <secret> <- other: Seal of Command SPELL_MISSED -0.005 s
	{ hit = 13745, line = false, unsure = "secret amount" }, -- 794.604 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 13748, line = false, unsure = "secret amount" }, -- 794.629 nameplate5 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.005 s
	{ hit = 13756, line = 13759, spell = 11711, unsure = "secret amount" }, -- 794.805 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13760, line = false, unsure = "on time, of 2 file events" }, -- 794.979 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 13766, line = false, unsure = "secret amount" }, -- 794.994 nameplate5 MISS <secret> <- other: Windfury Totem SPELL_MISSED -0.005 s
	{ hit = 13769, line = false, unsure = "secret amount" }, -- 795.004 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.019 s
	{ hit = 13772, line = false, unsure = "no file event fits" }, -- 795.019 nameplate5 WOUND <secret> <- no file event 
	{ hit = 13775, line = false, unsure = "secret amount" }, -- 795.102 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.005 s
	{ hit = 13782, line = 13781, spell = 7651, unsure = "secret amount" }, -- 795.920 nameplate5 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13785, line = 13786, spell = 7651, unsure = "secret amount" }, -- 795.920 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 13787, line = false, unsure = "on time, of 2 file events" }, -- 795.920 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.006 s
	{ hit = 13791, line = false, unsure = "late by 1.49 s" }, -- 796.063 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.487 s
	{ hit = 13794, line = false, unsure = "secret amount" }, -- 796.112 nameplate5 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 13797, line = false, unsure = "secret amount" }, -- 796.286 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.361 s
	{ hit = 13800, line = false, unsure = "secret amount" }, -- 796.479 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 13801, line = 13790, spell = false, unsure = "secret amount" }, -- 796.631 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.618 s
	{ hit = 13804, line = false, unsure = "secret amount" }, -- 796.652 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 13807, line = false, unsure = "secret amount" }, -- 796.680 nameplate5 WOUND <secret> <- other: Lightning Bolt SPELL_DAMAGE +0.032 s
	{ hit = 13812, line = false, unsure = "no file event fits" }, -- 796.878 nameplate5 WOUND <secret> <- no file event 
	{ hit = 13816, line = false, unsure = "secret amount" }, -- 797.344 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.619 s
	{ hit = 13819, line = false, unsure = "secret amount" }, -- 797.569 nameplate5 IMMUNE <secret> <- other: Shoot RANGE_MISSED -0.006 s
	{ hit = 13823, line = false, unsure = "3 file events fit" }, -- 797.985 nameplate5 IMMUNE <secret> <- other: Blazewind Blast SPELL_MISSED -0.005 s
	{ hit = 13829, line = false, unsure = "3 file events fit" }, -- 798.014 nameplate5 IMMUNE <secret> <- other: Judgement of the Crusader SPELL_MISSED -0.005 s
	{ hit = 13832, line = false, unsure = "2 file events fit" }, -- 798.014 nameplate5 IMMUNE <secret> <- other: Seal of Command SPELL_MISSED -0.005 s
	{ hit = 13836, line = false, unsure = "on time, of 3 file events" }, -- 798.014 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.006 s
	{ hit = 13839, line = false, unsure = "on time, of 4 file events" }, -- 798.045 nameplate5 IMMUNE <secret> <- other: Judgement of the Crusader SPELL_MISSED -0.005 s
	{ hit = 13842, line = 13835, spell = false, unsure = "2 file events fit" }, -- 798.636 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.617 s
	{ hit = 13845, line = false, unsure = "secret amount" }, -- 798.661 pet WOUND <secret> <- creature: Whirlwind SPELL_DAMAGE -0.004 s
	{ hit = 13854, line = false, unsure = "secret amount" }, -- 798.938 nameplate5 MISS <secret> <- other: swing SWING_MISSED +0.347 s
	{ hit = 13857, line = false, unsure = "secret amount" }, -- 799.087 nameplate5 IMMUNE <secret> <- other: Shoot RANGE_MISSED -0.006 s
	{ hit = 13860, line = false, unsure = "on time, of 2 file events" }, -- 799.294 nameplate5 IMMUNE <secret> <- creature: Attack SPELL_MISSED -0.006 s
	{ hit = 13863, line = false, unsure = "secret amount" }, -- 799.478 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 13864, line = false, unsure = "late by 1.49 s" }, -- 799.478 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.488 s
	{ hit = 13867, line = false, unsure = "secret amount" }, -- 799.577 nameplate5 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.005 s
	{ hit = 13872, line = false, unsure = "secret amount" }, -- 800.661 pet WOUND <secret> <- creature: Whirlwind SPELL_DAMAGE -0.004 s
	{ hit = 13874, line = false, unsure = "on time, of 5 file events" }, -- 800.877 nameplate5 IMMUNE <secret> <- other: Earth Shock SPELL_MISSED -0.005 s
	{ hit = 13879, line = false, unsure = "2 file events fit" }, -- 801.664 nameplate5 IMMUNE <secret> <- other: Judgement of Command SPELL_MISSED -0.004 s
	{ hit = 13882, line = false, unsure = "on time, of 3 file events" }, -- 801.664 nameplate5 IMMUNE <secret> <- other: Judgement SPELL_MISSED -0.004 s
	{ hit = 13885, line = false, unsure = "secret amount" }, -- 802.482 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 13890, line = false, unsure = "secret amount" }, -- 802.736 pet HEAL <secret> <- other: Prayer of Healing SPELL_HEAL -0.005 s
	{ hit = 13896, line = false, unsure = "secret amount" }, -- 802.736 player HEAL <secret> <- other: Prayer of Healing SPELL_HEAL -0.005 s
	{ hit = 13899, line = false, unsure = "on time, of 2 file events" }, -- 802.832 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.005 s
	{ hit = 13903, line = false, unsure = "secret amount" }, -- 803.398 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.589 s
	{ hit = 13914, line = false, unsure = "secret amount" }, -- 806.227 nameplate5 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.005 s
	{ hit = 13920, line = 13923, spell = 11711, unsure = "secret amount" }, -- 806.799 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 13924, line = false, unsure = "secret amount" }, -- 806.897 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.364 s
	{ hit = 13927, line = false, unsure = "secret amount" }, -- 807.664 nameplate5 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.005 s
	{ hit = 13930, line = false, unsure = "2 file events fit" }, -- 807.970 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.005 s
	{ hit = 13933, line = false, unsure = "secret amount" }, -- 807.995 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 13936, line = false, unsure = "secret amount" }, -- 807.995 nameplate5 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.005 s
	{ hit = 13939, line = false, unsure = "secret amount" }, -- 808.003 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.005 s
	{ hit = 13946, line = 13945, spell = 2941, unsure = "secret amount" }, -- 808.120 nameplate5 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.005 s
	{ hit = 13953, line = false, unsure = "on time, of 2 file events" }, -- 808.471 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.613 s
	{ hit = 13956, line = false, unsure = "2 file events fit" }, -- 808.711 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 13959, line = false, unsure = "secret amount" }, -- 808.727 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.005 s
	{ hit = 13962, line = 13965, spell = 11711, unsure = "secret amount" }, -- 808.802 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 13971, line = false, unsure = "secret amount" }, -- 809.158 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 13975, line = 13974, spell = 18879, unsure = "secret amount" }, -- 809.244 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 13978, line = 13979, spell = 18879, unsure = "secret amount" }, -- 809.244 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 13980, line = false, unsure = "secret amount" }, -- 809.586 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.353 s
	{ hit = 13985, line = false, unsure = "secret amount" }, -- 809.677 nameplate5 MISS <secret> <- other: Judgement of Command SPELL_MISSED -0.005 s
	{ hit = 13988, line = false, unsure = "secret amount" }, -- 810.027 nameplate5 MISS <secret> <- other: Touch of the Grave SPELL_MISSED -0.005 s
	{ hit = 13991, line = false, unsure = "secret amount" }, -- 810.034 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.004 s
	{ hit = 13994, line = false, unsure = "on time, of 2 file events" }, -- 810.074 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.005 s
	{ hit = 13998, line = 13997, spell = false, unsure = "2 file events fit" }, -- 810.603 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.328 s
	{ hit = 14001, line = false, unsure = "no file event fits" }, -- 810.636 nameplate5 WOUND <secret> <- no file event 
	{ hit = 14005, line = false, unsure = "secret amount" }, -- 810.932 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.005 s
	{ hit = 14008, line = false, unsure = "on time, of 2 file events" }, -- 811.037 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 14014, line = false, unsure = "late by 1.38 s" }, -- 811.128 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +1.380 s
	{ hit = 14018, line = 14021, spell = 7648, unsure = "secret amount" }, -- 811.128 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14022, line = false, unsure = "2 file events fit" }, -- 811.299 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.085 s
	{ hit = 14025, line = 14028, spell = 11711, unsure = "secret amount" }, -- 811.611 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 14029, line = 14017, spell = 2941, unsure = "secret amount" }, -- 811.611 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.479 s
	{ hit = 14034, line = false, unsure = "no file event fits" }, -- 811.877 nameplate5 WOUND <secret> <- no file event 
	{ hit = 14038, line = 14037, spell = 7651, unsure = "secret amount" }, -- 812.095 nameplate5 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14041, line = 14042, spell = 7651, unsure = "secret amount" }, -- 812.095 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 14044, line = 14043, spell = 18879, unsure = "secret amount" }, -- 812.254 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 14047, line = 14048, spell = 18879, unsure = "secret amount" }, -- 812.254 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 14050, line = false, unsure = "secret amount" }, -- 812.399 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 14053, line = false, unsure = "secret amount" }, -- 812.520 nameplate5 DODGE <secret> <- other: swing SWING_MISSED +0.597 s
	{ hit = 14056, line = false, unsure = "secret amount" }, -- 812.594 nameplate5 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.004 s
	{ hit = 14059, line = 14049, spell = false, unsure = "secret amount" }, -- 812.604 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.322 s
	{ hit = 14063, line = 14062, spell = 7651, unsure = "secret amount" }, -- 813.095 nameplate5 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 14066, line = 14067, spell = 7651, unsure = "secret amount" }, -- 813.095 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 14068, line = false, unsure = "secret amount" }, -- 813.337 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.004 s
	{ hit = 14069, line = false, unsure = "secret amount" }, -- 813.386 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 14074, line = 14077, spell = 11711, unsure = "secret amount" }, -- 813.619 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 14078, line = false, unsure = "on time, of 2 file events" }, -- 814.003 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.592 s
	{ hit = 14081, line = false, unsure = "no file event fits" }, -- 814.020 nameplate5 WOUND <secret> <- no file event 
	{ hit = 14084, line = false, unsure = "secret amount" }, -- 814.054 nameplate5 WOUND <secret> <- other: Lightning Bolt SPELL_DAMAGE +0.081 s
	{ hit = 14088, line = 14087, spell = 7651, unsure = "2 file events fit" }, -- 814.096 nameplate5 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 14091, line = false, unsure = "secret amount" }, -- 814.096 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.005 s
	{ hit = 14094, line = 14095, spell = 7651, unsure = "secret amount" }, -- 814.096 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 14096, line = 14099, spell = 2941, unsure = "secret amount" }, -- 814.120 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14100, line = 14103, spell = 7648, unsure = "secret amount" }, -- 814.120 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 14105, line = false, unsure = "secret amount" }, -- 814.397 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 14108, line = 14104, spell = false, unsure = "secret amount" }, -- 814.599 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.315 s
	{ hit = 14111, line = false, unsure = "secret amount" }, -- 814.794 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 14115, line = 14114, spell = 7651, unsure = "secret amount" }, -- 815.096 nameplate5 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 14118, line = 14119, spell = 7651, unsure = "secret amount" }, -- 815.096 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 14120, line = false, unsure = "secret amount" }, -- 815.221 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.589 s
	{ hit = 14124, line = 14123, spell = 18879, unsure = "secret amount" }, -- 815.254 nameplate5 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 14127, line = 14128, spell = 18879, unsure = "secret amount" }, -- 815.254 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 14129, line = false, unsure = "secret amount" }, -- 815.385 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 14134, line = false, unsure = "secret amount" }, -- 815.786 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 14137, line = 14140, spell = 11711, unsure = "secret amount" }, -- 815.786 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14142, line = 14141, spell = 7651, unsure = "secret amount" }, -- 816.106 nameplate5 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 14145, line = 14146, spell = 7651, unsure = "secret amount" }, -- 816.106 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 14152, line = false, unsure = "secret amount" }, -- 816.397 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 14157, line = false, unsure = "no file event fits" }, -- 816.481 nameplate5 WOUND <secret> <- no file event 
	{ hit = 14160, line = false, unsure = "2 file events fit" }, -- 816.679 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 14163, line = false, unsure = "on time, of 2 file events" }, -- 816.695 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.005 s
	{ hit = 14166, line = false, unsure = "2 file events fit" }, -- 816.812 nameplate5 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.005 s
	{ hit = 14169, line = false, unsure = "secret amount" }, -- 816.845 nameplate5 WOUND <secret> <- other: Seal of Command SPELL_DAMAGE -0.005 s
	{ hit = 14172, line = false, unsure = "secret amount" }, -- 816.845 nameplate5 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.005 s
	{ hit = 14175, line = 14151, spell = false, unsure = "on time, of 2 file events" }, -- 816.919 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.629 s
	{ hit = 14178, line = 14181, spell = 2941, unsure = "on time, of 2 file events" }, -- 817.123 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14182, line = 14185, spell = 7648, unsure = "secret amount" }, -- 817.123 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 14186, line = false, unsure = "secret amount" }, -- 817.123 nameplate5 WOUND <secret> <- other: Windfury Totem SPELL_DAMAGE -0.007 s
	{ hit = 14192, line = 14191, spell = 7651, unsure = "secret amount" }, -- 817.239 nameplate5 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 14195, line = 14196, spell = 7651, unsure = "secret amount" }, -- 817.239 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 14197, line = false, unsure = "secret amount" }, -- 817.399 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 14200, line = 14203, spell = 11711, unsure = "secret amount" }, -- 817.603 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14204, line = false, unsure = "secret amount" }, -- 817.686 nameplate5 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.004 s
	{ hit = 14207, line = false, unsure = "on time, of 2 file events" }, -- 817.769 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.492 s
	{ hit = 14210, line = false, unsure = "secret amount" }, -- 817.929 nameplate5 PARRY <secret> <- other: swing SWING_MISSED +0.597 s
	{ hit = 14213, line = false, unsure = "secret amount" }, -- 818.203 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.009 s
	{ hit = 14219, line = false, unsure = "late by 1.48 s" }, -- 818.302 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.485 s
	{ hit = 14226, line = false, unsure = "secret amount" }, -- 822.387 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.483 s
	{ hit = 14250, line = false, unsure = "secret amount" }, -- 823.511 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.393 s
	{ hit = 14262, line = false, unsure = "secret amount" }, -- 824.246 player MISS <secret> <- creature: swing SWING_MISSED +0.358 s
	{ hit = 14299, line = false, unsure = "4 file events fit" }, -- 829.987 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 14300, line = false, unsure = "3 file events fit" }, -- 829.987 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 14303, line = false, unsure = "2 file events fit" }, -- 829.987 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 14304, line = false, unsure = "on time, of 2 file events" }, -- 829.987 nameplate18 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 14305, line = false, unsure = "secret amount" }, -- 830.296 player DODGE <secret> <- creature: swing SWING_MISSED +0.355 s
	{ hit = 14318, line = false, unsure = "secret amount" }, -- 830.854 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.493 s
	{ hit = 14319, line = false, unsure = "secret amount" }, -- 830.854 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.493 s
	{ hit = 14323, line = false, unsure = "late by 1.35 s" }, -- 831.077 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +1.353 s
	{ hit = 14337, line = false, unsure = "secret amount" }, -- 832.011 nameplate9 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 14354, line = false, unsure = "secret amount" }, -- 832.802 nameplate5 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.005 s
	{ hit = 14364, line = false, unsure = "secret amount" }, -- 833.365 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.495 s
	{ hit = 14372, line = false, unsure = "secret amount" }, -- 833.507 nameplate16 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 14406, line = false, unsure = "2 file events fit" }, -- 835.237 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.039 s
	{ hit = 14408, line = 14407, spell = 6219, unsure = "11 file events fit" }, -- 835.391 nameplate16 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.005 s
	{ hit = 14411, line = 14410, spell = 6219, unsure = "10 file events fit" }, -- 835.391 nameplate18 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.007 s
	{ hit = 14414, line = 14413, spell = 6219, unsure = "9 file events fit" }, -- 835.391 nameplate12 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.008 s
	{ hit = 14416, line = 14415, spell = 6219, unsure = "secret amount" }, -- 835.391 nameplate9 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.008 s
	{ hit = 14418, line = 14417, spell = 6219, unsure = "7 file events fit" }, -- 835.391 nameplate7 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.009 s
	{ hit = 14420, line = 14419, spell = 6219, unsure = "secret amount" }, -- 835.391 nameplate5 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.010 s
	{ hit = 14422, line = 14421, spell = 6219, unsure = "5 file events fit" }, -- 835.391 nameplate19 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.010 s
	{ hit = 14425, line = 14424, spell = 6219, unsure = "4 file events fit" }, -- 835.391 nameplate2 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.011 s
	{ hit = 14427, line = 14426, spell = 6219, unsure = "3 file events fit" }, -- 835.391 nameplate14 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.012 s
	{ hit = 14429, line = 14428, spell = 6219, unsure = "2 file events fit" }, -- 835.391 nameplate15 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.012 s
	{ hit = 14432, line = 14431, spell = 6219, unsure = "secret amount" }, -- 835.391 nameplate4 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.014 s
	{ hit = 14437, line = false, unsure = "on time, of 3 file events" }, -- 835.512 nameplate16 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.004 s
	{ hit = 14438, line = false, unsure = "secret amount" }, -- 835.584 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.710 s
	{ hit = 14445, line = false, unsure = "6 file events fit" }, -- 835.856 nameplate14 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 14446, line = false, unsure = "5 file events fit" }, -- 835.856 nameplate19 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 14447, line = false, unsure = "4 file events fit" }, -- 835.856 nameplate16 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 14448, line = false, unsure = "3 file events fit" }, -- 835.856 nameplate15 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 14449, line = false, unsure = "secret amount" }, -- 835.856 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 14450, line = false, unsure = "secret amount" }, -- 835.856 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 14451, line = false, unsure = "secret amount" }, -- 835.856 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 14453, line = false, unsure = "4 file events fit" }, -- 835.996 nameplate19 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 14454, line = false, unsure = "3 file events fit" }, -- 835.996 nameplate15 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.006 s
	{ hit = 14455, line = false, unsure = "2 file events fit" }, -- 835.996 nameplate16 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.006 s
	{ hit = 14456, line = false, unsure = "on time, of 2 file events" }, -- 835.996 nameplate14 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.006 s
	{ hit = 14469, line = false, unsure = "secret amount" }, -- 836.869 nameplate5 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 14470, line = false, unsure = "2 file events fit" }, -- 836.869 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 14471, line = false, unsure = "secret amount" }, -- 836.869 nameplate9 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.004 s
	{ hit = 14480, line = false, unsure = "secret amount" }, -- 837.219 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.343 s
	{ hit = 14483, line = false, unsure = "3 file events fit" }, -- 837.736 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.117 s
	{ hit = 14487, line = false, unsure = "secret amount" }, -- 837.860 nameplate7 WOUND <secret> <- other: Consecration SPELL_DAMAGE -0.005 s
	{ hit = 14488, line = false, unsure = "2 file events fit" }, -- 837.974 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.355 s
	{ hit = 14490, line = false, unsure = "secret amount" }, -- 838.137 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.929 s
	{ hit = 14503, line = 14500, spell = false, unsure = "on time, of 2 file events" }, -- 839.228 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.321 s
	{ hit = 14505, line = 14506, spell = 1949, unsure = "secret amount" }, -- 839.555 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 14508, line = 14507, spell = 1949, unsure = "4 file events fit" }, -- 839.555 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 14511, line = 14510, spell = 1949, unsure = "3 file events fit" }, -- 839.555 nameplate7 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 14513, line = 14512, spell = 1949, unsure = "secret amount" }, -- 839.555 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 14515, line = 14514, spell = 1949, unsure = "secret amount" }, -- 839.555 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.008 s
	{ hit = 14517, line = 14516, spell = 1949, unsure = "secret amount" }, -- 839.555 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.008 s
	{ hit = 14525, line = false, unsure = "secret amount" }, -- 839.974 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.347 s
	{ hit = 14528, line = false, unsure = "secret amount" }, -- 840.144 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.517 s
	{ hit = 14530, line = 14532, spell = 1949, unsure = "secret amount" }, -- 840.560 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14534, line = 14533, spell = 1949, unsure = "secret amount" }, -- 840.560 nameplate4 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 14536, line = 14535, spell = 1949, unsure = "3 file events fit" }, -- 840.560 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.006 s
	{ hit = 14540, line = 14539, spell = 1949, unsure = "2 file events fit" }, -- 840.560 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 14543, line = 14542, spell = 1949, unsure = "secret amount" }, -- 840.560 nameplate3 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.008 s
	{ hit = 14545, line = 14544, spell = 1949, unsure = "secret amount" }, -- 840.560 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.009 s
	{ hit = 14547, line = false, unsure = "secret amount" }, -- 841.195 nameplate4 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.005 s
	{ hit = 14549, line = 14550, spell = 1949, unsure = "secret amount" }, -- 841.544 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14552, line = 14551, spell = 1949, unsure = "3 file events fit" }, -- 841.544 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.005 s
	{ hit = 14555, line = 14554, spell = 1949, unsure = "2 file events fit" }, -- 841.544 nameplate1 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 14560, line = 14559, spell = 1949, unsure = "secret amount" }, -- 841.544 nameplate2 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.008 s
	{ hit = 14567, line = false, unsure = "secret amount" }, -- 842.010 player HEAL <secret> <- other: Lesser Heal SPELL_HEAL -0.006 s
	{ hit = 14569, line = false, unsure = "secret amount" }, -- 842.244 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.484 s
	{ hit = 14571, line = 14573, spell = 1949, unsure = "secret amount" }, -- 842.296 player WOUND <secret> <- you: Hellfire SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 14577, line = 14576, spell = 1949, unsure = "secret amount" }, -- 842.296 nameplate5 WOUND <secret> <- you: Hellfire Effect SPELL_DAMAGE -0.007 s
	{ hit = 14623, line = false, unsure = "secret amount" }, -- 889.654 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 14626, line = false, unsure = "secret amount" }, -- 892.669 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 14627, line = false, unsure = "secret amount" }, -- 895.653 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 14628, line = false, unsure = "secret amount" }, -- 898.661 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 14629, line = false, unsure = "secret amount" }, -- 901.653 player HEAL <secret> <- other: Renew SPELL_PERIODIC_HEAL -0.006 s
	{ hit = 14668, line = false, unsure = "secret amount" }, -- 984.769 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.503 s
	{ hit = 14670, line = false, unsure = "secret amount" }, -- 986.077 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.595 s
	{ hit = 14675, line = false, unsure = "secret amount" }, -- 986.728 nameplate2 WOUND <secret> <- other: Judgement of Command SPELL_DAMAGE -0.006 s
	{ hit = 14681, line = false, unsure = "secret amount" }, -- 987.002 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.006 s
	{ hit = 14684, line = false, unsure = "secret amount" }, -- 987.094 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14687, line = false, unsure = "secret amount" }, -- 987.304 nameplate2 MISS <secret> <- other: Seal of Command SPELL_MISSED -0.005 s
	{ hit = 14692, line = false, unsure = "secret amount" }, -- 987.970 nameplate2 WOUND <secret> <- other: Holy Strike SPELL_DAMAGE -0.006 s
	{ hit = 14695, line = false, unsure = "secret amount" }, -- 987.970 nameplate2 WOUND <secret> <- other: Blazewind Blast SPELL_DAMAGE -0.006 s
	{ hit = 14698, line = false, unsure = "secret amount" }, -- 988.010 nameplate2 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.006 s
	{ hit = 14703, line = 14706, spell = 11711, unsure = "secret amount" }, -- 988.120 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14707, line = false, unsure = "on time, of 4 file events" }, -- 988.394 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.006 s
	{ hit = 14710, line = false, unsure = "on time, of 3 file events" }, -- 988.420 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.620 s
	{ hit = 14716, line = false, unsure = "2 file events fit" }, -- 988.777 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.593 s
	{ hit = 14719, line = false, unsure = "late by 1.49 s" }, -- 988.782 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.489 s
	{ hit = 14722, line = false, unsure = "secret amount" }, -- 988.802 nameplate2 MISS <secret> <- other: Revenge SPELL_MISSED -0.006 s
	{ hit = 14729, line = 14725, spell = false, unsure = "secret amount" }, -- 989.219 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.327 s
	{ hit = 14732, line = false, unsure = "secret amount" }, -- 990.103 nameplate2 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.005 s
	{ hit = 14735, line = false, unsure = "secret amount" }, -- 990.103 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14738, line = 14741, spell = 11711, unsure = "2 file events fit" }, -- 990.112 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 14743, line = 14742, spell = 7651, unsure = "secret amount" }, -- 990.137 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14746, line = 14747, spell = 7651, unsure = "secret amount" }, -- 990.137 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 14748, line = false, unsure = "on time, of 2 file events" }, -- 990.319 nameplate2 WOUND <secret> <- other: Shield Slam SPELL_DAMAGE -0.005 s
	{ hit = 14751, line = false, unsure = "secret amount" }, -- 990.402 nameplate2 WOUND <secret> <- other: Iron Shield Spike SPELL_DAMAGE -0.006 s
	{ hit = 14754, line = 14757, spell = 7648, unsure = "secret amount" }, -- 990.603 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14766, line = 14765, spell = 7651, unsure = "secret amount" }, -- 991.137 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14769, line = 14770, spell = 7651, unsure = "secret amount" }, -- 991.137 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 14771, line = 14761, spell = false, unsure = "secret amount" }, -- 991.153 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.254 s
	{ hit = 14774, line = false, unsure = "secret amount" }, -- 991.261 nameplate2 MISS <secret> <- other: swing SWING_MISSED +0.362 s
	{ hit = 14777, line = false, unsure = "secret amount" }, -- 991.287 nameplate2 PARRY <secret> <- other: swing SWING_MISSED +0.596 s
	{ hit = 14780, line = false, unsure = "secret amount" }, -- 991.394 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.005 s
	{ hit = 14783, line = false, unsure = "secret amount" }, -- 991.411 nameplate2 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.005 s
	{ hit = 14787, line = false, unsure = "secret amount" }, -- 991.835 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.493 s
	{ hit = 14793, line = 14796, spell = 11711, unsure = "secret amount" }, -- 992.127 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 14798, line = 14797, spell = 7651, unsure = "secret amount" }, -- 992.136 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14801, line = 14802, spell = 7651, unsure = "secret amount" }, -- 992.136 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 14804, line = false, unsure = "secret amount" }, -- 992.903 nameplate2 WOUND <secret> <- other: Shoot RANGE_DAMAGE -0.006 s
	{ hit = 14807, line = false, unsure = "secret amount" }, -- 992.994 nameplate2 WOUND <secret> <- other: Shadow Word: Death SPELL_DAMAGE -0.006 s
	{ hit = 14810, line = false, unsure = "secret amount" }, -- 993.102 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14814, line = 14813, spell = 7651, unsure = "secret amount" }, -- 993.137 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 14817, line = 14818, spell = 7651, unsure = "secret amount" }, -- 993.137 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
}

-- Log Lines with no Hit:
-- line 579 at 49.336 <- pet: swing SWING_DAMAGE
-- line 587 at 49.521 <- you:  PARTY_KILL
-- line 2754 at 146.328 <- you:  PARTY_KILL
-- line 2762 at 146.586 <- you:  PARTY_KILL
-- line 2849 at 155.594 <- you: swing SWING_MISSED
-- line 4341 at 257.853 <- you:  PARTY_KILL
-- line 4353 at 258.961 <- pet: swing SWING_DAMAGE
-- line 4781 at 286.535 <- pet: swing SWING_DAMAGE
-- line 4785 at 287.204 <- you:  PARTY_KILL
-- line 5346 at 321.297 <- pet: swing SWING_DAMAGE
-- line 5347 at 321.344 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 5416 at 325.204 <- you:  PARTY_KILL
-- line 5454 at 328.562 <- pet: swing SWING_DAMAGE
-- line 5472 at 330.555 <- pet: swing SWING_DAMAGE
-- line 5490 at 332.563 <- pet: swing SWING_DAMAGE
-- line 6273 at 396.771 <- you:  PARTY_KILL
-- line 6724 at 426.563 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 6737 at 426.722 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 6767 at 428.220 <- you:  PARTY_KILL
-- line 6768 at 428.220 <- you: Corruption SPELL_PERIODIC_DAMAGE
-- line 7113 at 438.477 <- pet: swing SWING_DAMAGE
-- line 7135 at 439.447 <- you: Hellfire Effect SPELL_DAMAGE
-- line 7146 at 439.496 <- you: Corruption SPELL_PERIODIC_DAMAGE
-- line 7163 at 440.075 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 7175 at 440.444 <- you: Hellfire Effect SPELL_DAMAGE
-- line 7178 at 440.444 <- you: Hellfire Effect SPELL_DAMAGE
-- line 7218 at 441.457 <- you: Hellfire Effect SPELL_DAMAGE
-- line 7266 at 442.494 <- pet: swing SWING_DAMAGE
-- line 7267 at 442.511 <- you:  PARTY_KILL
-- line 7296 at 443.088 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 7360 at 445.161 <- pet: swing SWING_DAMAGE
-- line 7454 at 450.221 <- you:  PARTY_KILL
-- line 7493 at 455.774 <- you:  PARTY_KILL
-- line 8130 at 495.928 <- you:  PARTY_KILL
-- line 8946 at 536.852 <- pet: swing SWING_DAMAGE
-- line 9321 at 561.370 <- you:  PARTY_KILL
-- line 10015 at 589.736 <- pet: swing SWING_DAMAGE
-- line 10593 at 602.088 <- you:  PARTY_KILL
-- line 10851 at 612.273 <- you:  PARTY_KILL
-- line 11144 at 639.872 <- you:  PARTY_KILL
-- line 12337 at 709.388 <- you:  PARTY_KILL
-- line 12490 at 714.993 <- you:  PARTY_KILL
-- line 13167 at 747.005 <- you:  PARTY_KILL
-- line 13294 at 751.014 <- you:  PARTY_KILL
-- line 13810 at 796.770 <- you: Corruption SPELL_PERIODIC_MISSED
-- line 13811 at 796.802 <- you: Bane of Agony SPELL_PERIODIC_MISSED
-- line 13815 at 797.236 <- you: Immolate SPELL_PERIODIC_MISSED
-- line 13853 at 798.811 <- you: Bane of Agony SPELL_PERIODIC_MISSED
-- line 13870 at 799.777 <- you: Corruption SPELL_PERIODIC_MISSED
-- line 13871 at 800.248 <- you: Immolate SPELL_PERIODIC_MISSED
-- line 13873 at 800.802 <- you: Bane of Agony SPELL_PERIODIC_MISSED
-- line 13897 at 802.770 <- you: Corruption SPELL_PERIODIC_MISSED
-- line 13898 at 802.804 <- you: Bane of Agony SPELL_PERIODIC_MISSED
-- line 13902 at 803.245 <- you: Immolate SPELL_PERIODIC_MISSED
-- line 13909 at 804.816 <- you: Bane of Agony SPELL_PERIODIC_MISSED
-- line 13911 at 805.778 <- you: Corruption SPELL_PERIODIC_MISSED
-- line 13917 at 806.245 <- you: Immolate SPELL_PERIODIC_MISSED
-- line 14409 at 835.391 <- you:  PARTY_KILL
-- line 14412 at 835.391 <- you:  PARTY_KILL
-- line 14423 at 835.391 <- you:  PARTY_KILL
-- line 14430 at 835.391 <- you:  PARTY_KILL
-- line 14474 at 836.911 <- pet: swing SWING_DAMAGE
-- line 14509 at 839.555 <- you:  PARTY_KILL
-- line 14541 at 840.560 <- you:  PARTY_KILL
-- line 14553 at 841.544 <- you:  PARTY_KILL
-- line 14558 at 841.544 <- you:  PARTY_KILL
-- line 14575 at 842.296 <- you:  PARTY_KILL
-- line 14803 at 992.894 <- pet: swing SWING_DAMAGE
