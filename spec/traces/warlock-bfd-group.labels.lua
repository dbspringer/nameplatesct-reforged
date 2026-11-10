-- Labels for warlock-bfd-group: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 1, line = false, unsure = "2 file events fit" }, -- 2793.519 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 12, line = 15, spell = 1014, unsure = "secret amount" }, -- 2794.253 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 16, line = 19, spell = 1094, unsure = "2 file events fit" }, -- 2794.336 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 22, line = 25, spell = 6223, unsure = "secret amount" }, -- 2794.586 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 29, line = 28, spell = 1088, unsure = "secret amount" }, -- 2795.119 nameplate5 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.233 s
	{ hit = 35, line = false, unsure = "secret amount" }, -- 2795.569 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.167 s
	{ hit = 38, line = 41, spell = 1014, unsure = "secret amount" }, -- 2796.253 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 48, line = 51, spell = 1094, unsure = "2 file events fit" }, -- 2797.336 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 55, line = 54, spell = 7814, unsure = "secret amount" }, -- 2797.403 nameplate5 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE +0.000 s
	{ hit = 58, line = false, unsure = "secret amount" }, -- 2797.419 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE +0.000 s
	{ hit = 61, line = 64, spell = 6223, unsure = "secret amount" }, -- 2797.603 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 71, line = 70, spell = 1088, unsure = "secret amount" }, -- 2797.869 nameplate5 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.000 s
	{ hit = 74, line = false, unsure = "secret amount" }, -- 2798.236 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.000 s
	{ hit = 80, line = 83, spell = 1014, unsure = "secret amount" }, -- 2798.253 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 84, line = false, unsure = "2 file events fit" }, -- 2798.269 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.850 s
	{ hit = 87, line = 52, spell = false, unsure = "secret amount" }, -- 2798.386 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.984 s
	{ hit = 90, line = false, unsure = "secret amount" }, -- 2798.453 nameplate5 DODGE <secret> <- other: swing SWING_MISSED +0.801 s
	{ hit = 95, line = false, unsure = "secret amount" }, -- 2798.903 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.001 s
	{ hit = 98, line = false, unsure = "secret amount" }, -- 2798.936 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.000 s
	{ hit = 102, line = false, unsure = "2 file events fit" }, -- 2799.336 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 112, line = false, unsure = "2 file events fit" }, -- 2800.069 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.450 s
	{ hit = 115, line = 101, spell = false, unsure = "secret amount" }, -- 2800.086 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.884 s
	{ hit = 121, line = 124, spell = 1014, unsure = "secret amount" }, -- 2800.253 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 125, line = 128, spell = 1094, unsure = "2 file events fit" }, -- 2800.336 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 129, line = false, unsure = "secret amount" }, -- 2800.419 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 134, line = 137, spell = 6223, unsure = "2 file events fit" }, -- 2800.603 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 139, line = 138, spell = 1088, unsure = "secret amount" }, -- 2800.619 nameplate5 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.000 s
	{ hit = 142, line = false, unsure = "secret amount" }, -- 2800.653 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.001 s
	{ hit = 150, line = false, unsure = "secret amount" }, -- 2801.103 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.001 s
	{ hit = 153, line = false, unsure = "2 file events fit" }, -- 2801.119 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 156, line = false, unsure = "secret amount" }, -- 2801.119 nameplate5 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE +0.000 s
	{ hit = 163, line = false, unsure = "secret amount" }, -- 2801.603 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.001 s
	{ hit = 169, line = false, unsure = "3 file events fit" }, -- 2801.903 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.084 s
	{ hit = 173, line = false, unsure = "2 file events fit" }, -- 2802.153 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.601 s
	{ hit = 179, line = 182, spell = 1014, unsure = "secret amount" }, -- 2802.253 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 183, line = 149, spell = false, unsure = "late by 1.25 s" }, -- 2802.286 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +1.250 s
	{ hit = 190, line = false, unsure = "secret amount" }, -- 2803.069 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.000 s
	{ hit = 195, line = 198, spell = 1094, unsure = "2 file events fit" }, -- 2803.336 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 199, line = false, unsure = "secret amount" }, -- 2803.419 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 204, line = false, unsure = "secret amount" }, -- 2803.703 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.000 s
	{ hit = 207, line = false, unsure = "secret amount" }, -- 2803.719 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 210, line = 216, spell = 5019, unsure = "2 file events fit" }, -- 2803.736 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.050 s
	{ hit = 222, line = 228, spell = 6223, unsure = "2 file events fit" }, -- 2803.869 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.017 s
	{ hit = 225, line = 186, spell = false, unsure = "late by 1.02 s" }, -- 2803.886 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +1.016 s
	{ hit = 229, line = false, unsure = "2 file events fit" }, -- 2804.336 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 237, line = false, unsure = "secret amount" }, -- 2804.870 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL +0.001 s
	{ hit = 238, line = false, unsure = "secret amount" }, -- 2805.003 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.001 s
	{ hit = 241, line = false, unsure = "3 file events fit" }, -- 2805.003 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.034 s
	{ hit = 244, line = false, unsure = "3 file events fit" }, -- 2805.503 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 247, line = false, unsure = "2 file events fit" }, -- 2805.503 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.017 s
	{ hit = 250, line = false, unsure = "secret amount" }, -- 2805.536 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 256, line = 236, spell = false, unsure = "secret amount" }, -- 2805.803 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.951 s
	{ hit = 270, line = false, unsure = "secret amount" }, -- 2806.203 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.000 s
	{ hit = 273, line = false, unsure = "secret amount" }, -- 2806.236 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 276, line = false, unsure = "secret amount" }, -- 2806.419 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 281, line = false, unsure = "secret amount" }, -- 2806.453 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.217 s
	{ hit = 284, line = 287, spell = 1014, unsure = "secret amount" }, -- 2806.569 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 288, line = false, unsure = "no file event fits" }, -- 2806.686 nameplate5 WOUND <secret> <- no file event 
	{ hit = 294, line = 297, spell = 6223, unsure = "secret amount" }, -- 2806.886 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 303, line = 293, spell = false, unsure = "secret amount" }, -- 2807.803 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.951 s
	{ hit = 306, line = false, unsure = "secret amount" }, -- 2807.869 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 310, line = false, unsure = "secret amount" }, -- 2807.936 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.000 s
	{ hit = 315, line = 314, spell = 1094, unsure = "secret amount" }, -- 2808.053 nameplate5 WOUND <secret> <- you: Immolate SPELL_DAMAGE +0.000 s
	{ hit = 318, line = false, unsure = "secret amount" }, -- 2808.403 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.000 s
	{ hit = 323, line = 326, spell = 1014, unsure = "secret amount" }, -- 2808.553 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 329, line = false, unsure = "secret amount" }, -- 2808.636 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE +0.000 s
	{ hit = 332, line = false, unsure = "secret amount" }, -- 2808.720 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.001 s
	{ hit = 335, line = false, unsure = "secret amount" }, -- 2808.736 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 339, line = 338, spell = false, unsure = "3 file events fit" }, -- 2808.886 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.034 s
	{ hit = 342, line = false, unsure = "3 file events fit" }, -- 2809.003 nameplate5 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 345, line = false, unsure = "secret amount" }, -- 2809.419 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 354, line = 353, spell = 7814, unsure = "secret amount" }, -- 2809.569 nameplate5 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 362, line = false, unsure = "3 file events fit" }, -- 2809.803 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.066 s
	{ hit = 365, line = false, unsure = "3 file events fit" }, -- 2809.869 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.100 s
	{ hit = 368, line = 371, spell = 6223, unsure = "secret amount" }, -- 2809.886 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 375, line = false, unsure = "2 file events fit" }, -- 2810.370 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.001 s
	{ hit = 378, line = false, unsure = "secret amount" }, -- 2810.419 nameplate5 WOUND <secret> <- other: Fire Blast SPELL_DAMAGE -0.001 s
	{ hit = 381, line = false, unsure = "secret amount" }, -- 2810.419 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.017 s
	{ hit = 384, line = false, unsure = "no file event fits" }, -- 2810.436 nameplate5 WOUND <secret> <- no file event 
	{ hit = 387, line = false, unsure = "no file event fits" }, -- 2810.436 nameplate5 WOUND <secret> <- no file event 
	{ hit = 392, line = 395, spell = 1014, unsure = "secret amount" }, -- 2810.553 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 397, line = false, unsure = "secret amount" }, -- 2810.870 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 398, line = 401, spell = 1094, unsure = "secret amount" }, -- 2811.069 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 403, line = false, unsure = "secret amount" }, -- 2811.220 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.017 s
	{ hit = 406, line = false, unsure = "secret amount" }, -- 2811.236 nameplate5 IMMUNE <secret> <- other: Frostbite SPELL_MISSED +0.000 s
	{ hit = 409, line = false, unsure = "secret amount" }, -- 2811.236 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 413, line = false, unsure = "2 file events fit" }, -- 2811.520 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.001 s
	{ hit = 416, line = false, unsure = "secret amount" }, -- 2811.553 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.001 s
	{ hit = 424, line = false, unsure = "secret amount" }, -- 2811.820 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.001 s
	{ hit = 427, line = false, unsure = "2 file events fit" }, -- 2811.820 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.034 s
	{ hit = 433, line = false, unsure = "3 file events fit" }, -- 2812.003 nameplate5 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 437, line = 436, spell = 1088, unsure = "secret amount" }, -- 2812.070 nameplate5 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.001 s
	{ hit = 440, line = false, unsure = "secret amount" }, -- 2812.370 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.401 s
	{ hit = 443, line = false, unsure = "no file event fits" }, -- 2812.436 nameplate5 WOUND <secret> <- no file event 
	{ hit = 446, line = 449, spell = 1014, unsure = "secret amount" }, -- 2812.553 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 454, line = false, unsure = "secret amount" }, -- 2812.803 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.000 s
	{ hit = 458, line = 461, spell = 6223, unsure = "secret amount" }, -- 2812.886 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 469, line = 457, spell = false, unsure = "secret amount" }, -- 2813.819 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 472, line = false, unsure = "2 file events fit" }, -- 2813.870 player HEAL <secret> <- other: Bloom SPELL_HEAL +0.000 s
	{ hit = 473, line = false, unsure = "secret amount" }, -- 2813.870 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL +0.001 s
	{ hit = 477, line = 480, spell = 1094, unsure = "secret amount" }, -- 2814.069 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 481, line = false, unsure = "secret amount" }, -- 2814.169 nameplate5 WOUND <secret> <- other: Heroic Strike SPELL_DAMAGE +0.000 s
	{ hit = 484, line = false, unsure = "no file event fits" }, -- 2814.169 nameplate5 WOUND <secret> <- no file event 
	{ hit = 487, line = 490, spell = 5019, unsure = "secret amount" }, -- 2814.370 nameplate5 MISS <secret> <- you: Shoot RANGE_MISSED -0.001 s
	{ hit = 491, line = 494, spell = 1014, unsure = "secret amount" }, -- 2814.553 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 497, line = false, unsure = "secret amount" }, -- 2814.653 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.006 s
	{ hit = 536, line = false, unsure = "secret amount" }, -- 2847.103 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 543, line = false, unsure = "secret amount" }, -- 2849.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 544, line = false, unsure = "secret amount" }, -- 2849.220 nameplate9 WOUND <secret> <- other: Throw RANGE_DAMAGE +0.000 s
	{ hit = 545, line = false, unsure = "secret amount" }, -- 2850.020 nameplate9 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.001 s
	{ hit = 550, line = false, unsure = "secret amount" }, -- 2851.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 551, line = false, unsure = "secret amount" }, -- 2851.153 nameplate5 WOUND <secret> <- other: Throw RANGE_DAMAGE +0.000 s
	{ hit = 553, line = 554, spell = 1260270, unsure = "secret amount" }, -- 2851.586 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 555, line = false, unsure = "secret amount" }, -- 2852.636 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 556, line = 557, spell = 1260270, unsure = "secret amount" }, -- 2852.786 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 558, line = false, unsure = "4 file events fit" }, -- 2852.953 nameplate6 WOUND <secret> <- other: Throw RANGE_DAMAGE +0.000 s
	{ hit = 559, line = false, unsure = "3 file events fit" }, -- 2853.003 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 560, line = false, unsure = "secret amount" }, -- 2853.003 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 561, line = false, unsure = "secret amount" }, -- 2853.003 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 563, line = false, unsure = "secret amount" }, -- 2853.020 nameplate9 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 566, line = false, unsure = "secret amount" }, -- 2853.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 574, line = false, unsure = "4 file events fit" }, -- 2853.903 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE +0.000 s
	{ hit = 575, line = false, unsure = "secret amount" }, -- 2853.903 nameplate9 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE +0.000 s
	{ hit = 576, line = false, unsure = "secret amount" }, -- 2853.903 nameplate7 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE +0.000 s
	{ hit = 577, line = false, unsure = "secret amount" }, -- 2853.903 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE +0.000 s
	{ hit = 579, line = 580, spell = 1260270, unsure = "secret amount" }, -- 2853.986 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 581, line = false, unsure = "secret amount" }, -- 2854.636 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 584, line = false, unsure = "3 file events fit" }, -- 2854.636 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 585, line = false, unsure = "2 file events fit" }, -- 2854.636 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 586, line = false, unsure = "secret amount" }, -- 2854.636 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 589, line = false, unsure = "secret amount" }, -- 2854.953 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 590, line = false, unsure = "secret amount" }, -- 2855.053 player HEAL <secret> <- other: Healing Touch SPELL_HEAL -0.001 s
	{ hit = 596, line = 597, spell = 1260270, unsure = "secret amount" }, -- 2855.186 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 609, line = false, unsure = "2 file events fit" }, -- 2855.686 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.380 s
	{ hit = 616, line = false, unsure = "secret amount" }, -- 2856.020 nameplate9 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 622, line = false, unsure = "2 file events fit" }, -- 2856.270 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 625, line = false, unsure = "no file event fits" }, -- 2856.286 nameplate9 WOUND <secret> <- no file event 
	{ hit = 628, line = false, unsure = "secret amount" }, -- 2856.303 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.000 s
	{ hit = 630, line = false, unsure = "secret amount" }, -- 2856.636 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 631, line = false, unsure = "secret amount" }, -- 2856.636 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 634, line = false, unsure = "2 file events fit" }, -- 2856.636 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 635, line = false, unsure = "secret amount" }, -- 2856.636 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 642, line = false, unsure = "secret amount" }, -- 2857.253 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 652, line = false, unsure = "secret amount" }, -- 2857.636 nameplate6 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.001 s
	{ hit = 658, line = 659, spell = 1014, unsure = "secret amount" }, -- 2857.820 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 660, line = false, unsure = "secret amount" }, -- 2857.836 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD -0.001 s
	{ hit = 661, line = 657, spell = false, unsure = "2 file events fit" }, -- 2857.970 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.167 s
	{ hit = 671, line = 670, spell = 7814, unsure = "secret amount" }, -- 2858.136 nameplate9 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 675, line = false, unsure = "secret amount" }, -- 2858.353 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 678, line = false, unsure = "secret amount" }, -- 2858.637 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 679, line = false, unsure = "3 file events fit" }, -- 2858.637 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 680, line = false, unsure = "secret amount" }, -- 2858.637 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 681, line = false, unsure = "secret amount" }, -- 2858.637 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 684, line = false, unsure = "4 file events fit" }, -- 2858.753 nameplate5 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 685, line = false, unsure = "secret amount" }, -- 2858.753 nameplate7 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.034 s
	{ hit = 686, line = false, unsure = "3 file events fit" }, -- 2858.753 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 689, line = false, unsure = "secret amount" }, -- 2858.753 nameplate9 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 690, line = false, unsure = "secret amount" }, -- 2858.753 nameplate9 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.034 s
	{ hit = 691, line = false, unsure = "3 file events fit" }, -- 2858.786 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 692, line = false, unsure = "2 file events fit" }, -- 2858.786 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 693, line = false, unsure = "no file event fits" }, -- 2858.786 nameplate7 WOUND <secret> <- no file event 
	{ hit = 694, line = false, unsure = "secret amount" }, -- 2858.786 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.001 s
	{ hit = 697, line = false, unsure = "no file event fits" }, -- 2858.786 nameplate9 WOUND <secret> <- no file event 
	{ hit = 702, line = false, unsure = "secret amount" }, -- 2859.020 nameplate9 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 703, line = false, unsure = "secret amount" }, -- 2859.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 709, line = false, unsure = "secret amount" }, -- 2859.120 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.800 s
	{ hit = 719, line = 720, spell = 1014, unsure = "secret amount" }, -- 2859.820 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 721, line = false, unsure = "secret amount" }, -- 2859.836 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD +0.000 s
	{ hit = 722, line = false, unsure = "secret amount" }, -- 2859.836 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 723, line = false, unsure = "secret amount" }, -- 2860.136 nameplate9 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 724, line = false, unsure = "3 file events fit" }, -- 2860.136 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 727, line = false, unsure = "secret amount" }, -- 2860.136 nameplate7 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 728, line = false, unsure = "secret amount" }, -- 2860.136 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 730, line = 731, spell = 6223, unsure = "secret amount" }, -- 2860.336 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 741, line = 718, spell = false, unsure = "2 file events fit" }, -- 2860.553 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.733 s
	{ hit = 742, line = false, unsure = "4 file events fit" }, -- 2860.636 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 743, line = false, unsure = "secret amount" }, -- 2860.636 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 744, line = false, unsure = "secret amount" }, -- 2860.636 nameplate7 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 745, line = false, unsure = "secret amount" }, -- 2860.636 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 748, line = false, unsure = "4 file events fit" }, -- 2860.753 nameplate5 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 751, line = false, unsure = "3 file events fit" }, -- 2860.753 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 752, line = false, unsure = "secret amount" }, -- 2860.753 nameplate9 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.051 s
	{ hit = 753, line = false, unsure = "secret amount" }, -- 2860.753 nameplate7 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.051 s
	{ hit = 754, line = false, unsure = "no file event fits" }, -- 2860.770 nameplate9 WOUND <secret> <- no file event 
	{ hit = 755, line = false, unsure = "3 file events fit" }, -- 2860.803 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 758, line = false, unsure = "2 file events fit" }, -- 2860.803 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 759, line = false, unsure = "no file event fits" }, -- 2860.803 nameplate9 WOUND <secret> <- no file event 
	{ hit = 760, line = false, unsure = "no file event fits" }, -- 2860.803 nameplate7 WOUND <secret> <- no file event 
	{ hit = 761, line = 762, spell = 1014, unsure = "secret amount" }, -- 2860.820 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 769, line = false, unsure = "secret amount" }, -- 2861.103 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 772, line = false, unsure = "secret amount" }, -- 2861.120 nameplate9 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 773, line = false, unsure = "3 file events fit" }, -- 2861.120 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 774, line = false, unsure = "secret amount" }, -- 2861.120 nameplate7 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 775, line = false, unsure = "secret amount" }, -- 2861.120 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 780, line = false, unsure = "secret amount" }, -- 2861.520 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.467 s
	{ hit = 786, line = false, unsure = "3 file events fit" }, -- 2861.770 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.000 s
	{ hit = 788, line = 789, spell = 1014, unsure = "secret amount" }, -- 2861.820 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 790, line = false, unsure = "secret amount" }, -- 2861.837 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD +0.000 s
	{ hit = 791, line = false, unsure = "secret amount" }, -- 2862.020 nameplate9 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 792, line = false, unsure = "4 file events fit" }, -- 2862.086 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 793, line = false, unsure = "secret amount" }, -- 2862.086 nameplate9 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 794, line = false, unsure = "2 file events fit" }, -- 2862.086 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 797, line = false, unsure = "no file event fits" }, -- 2862.086 nameplate7 WOUND <secret> <- no file event 
	{ hit = 798, line = 787, spell = false, unsure = "2 file events fit" }, -- 2862.320 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.500 s
	{ hit = 802, line = false, unsure = "4 file events fit" }, -- 2862.637 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 803, line = false, unsure = "3 file events fit" }, -- 2862.637 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 806, line = false, unsure = "secret amount" }, -- 2862.637 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE +0.000 s
	{ hit = 807, line = false, unsure = "2 file events fit" }, -- 2862.670 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 810, line = false, unsure = "5 file events fit" }, -- 2862.703 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.000 s
	{ hit = 811, line = false, unsure = "secret amount" }, -- 2862.770 nameplate7 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 812, line = false, unsure = "3 file events fit" }, -- 2862.770 nameplate5 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 815, line = false, unsure = "2 file events fit" }, -- 2862.770 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 816, line = false, unsure = "secret amount" }, -- 2862.770 nameplate9 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.017 s
	{ hit = 817, line = false, unsure = "no file event fits" }, -- 2862.770 nameplate9 WOUND <secret> <- no file event 
	{ hit = 818, line = false, unsure = "secret amount" }, -- 2862.786 nameplate7 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 819, line = false, unsure = "3 file events fit" }, -- 2862.786 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 822, line = false, unsure = "2 file events fit" }, -- 2862.786 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 823, line = false, unsure = "no file event fits" }, -- 2862.786 nameplate9 WOUND <secret> <- no file event 
	{ hit = 824, line = 825, spell = 1014, unsure = "secret amount" }, -- 2862.820 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 826, line = false, unsure = "secret amount" }, -- 2862.836 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 838, line = false, unsure = "5 file events fit" }, -- 2863.070 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 841, line = false, unsure = "4 file events fit" }, -- 2863.070 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 842, line = false, unsure = "no file event fits" }, -- 2863.070 nameplate7 WOUND <secret> <- no file event 
	{ hit = 843, line = false, unsure = "no file event fits" }, -- 2863.070 nameplate9 WOUND <secret> <- no file event 
	{ hit = 844, line = false, unsure = "secret amount" }, -- 2863.086 nameplate9 MISS <secret> <- other: Frostbite SPELL_MISSED -0.001 s
	{ hit = 845, line = false, unsure = "secret amount" }, -- 2863.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 851, line = 852, spell = 6223, unsure = "secret amount" }, -- 2863.320 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 853, line = 856, spell = 1014, unsure = "secret amount" }, -- 2863.403 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 860, line = false, unsure = "secret amount" }, -- 2863.703 nameplate7 PARRY <secret> <- other: swing SWING_MISSED +0.450 s
	{ hit = 865, line = 866, spell = 1014, unsure = "secret amount" }, -- 2863.820 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 867, line = false, unsure = "secret amount" }, -- 2863.837 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD +0.000 s
	{ hit = 868, line = false, unsure = "secret amount" }, -- 2863.920 nameplate7 WOUND <secret> <- other: Revenge SPELL_DAMAGE +0.000 s
	{ hit = 873, line = false, unsure = "6 file events fit" }, -- 2864.053 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 874, line = false, unsure = "secret amount" }, -- 2864.053 nameplate9 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 875, line = false, unsure = "4 file events fit" }, -- 2864.053 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 876, line = false, unsure = "no file event fits" }, -- 2864.053 nameplate7 WOUND <secret> <- no file event 
	{ hit = 883, line = false, unsure = "secret amount" }, -- 2864.486 nameplate6 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.001 s
	{ hit = 884, line = false, unsure = "secret amount" }, -- 2864.770 nameplate7 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 885, line = false, unsure = "3 file events fit" }, -- 2864.770 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 886, line = false, unsure = "secret amount" }, -- 2864.770 nameplate9 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 889, line = false, unsure = "secret amount" }, -- 2864.770 nameplate5 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 890, line = 864, spell = false, unsure = "secret amount" }, -- 2864.770 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 891, line = false, unsure = "secret amount" }, -- 2864.803 nameplate7 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 892, line = false, unsure = "4 file events fit" }, -- 2864.803 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 893, line = false, unsure = "no file event fits" }, -- 2864.803 nameplate9 WOUND <secret> <- no file event 
	{ hit = 896, line = false, unsure = "3 file events fit" }, -- 2864.803 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 897, line = 898, spell = 1014, unsure = "2 file events fit" }, -- 2864.820 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 900, line = false, unsure = "secret amount" }, -- 2865.036 nameplate9 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 901, line = false, unsure = "4 file events fit" }, -- 2865.036 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 904, line = false, unsure = "3 file events fit" }, -- 2865.036 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 905, line = false, unsure = "no file event fits" }, -- 2865.036 nameplate7 WOUND <secret> <- no file event 
	{ hit = 906, line = false, unsure = "secret amount" }, -- 2865.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 918, line = 919, spell = 1014, unsure = "2 file events fit" }, -- 2865.403 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 929, line = false, unsure = "secret amount" }, -- 2865.670 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.000 s
	{ hit = 933, line = 934, spell = 1014, unsure = "secret amount" }, -- 2865.820 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 936, line = false, unsure = "secret amount" }, -- 2865.836 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 937, line = false, unsure = "secret amount" }, -- 2865.853 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD +0.000 s
	{ hit = 938, line = 939, spell = 6223, unsure = "2 file events fit" }, -- 2865.920 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 940, line = false, unsure = "secret amount" }, -- 2865.920 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.450 s
	{ hit = 946, line = false, unsure = "secret amount" }, -- 2866.020 nameplate7 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 949, line = false, unsure = "4 file events fit" }, -- 2866.020 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 950, line = false, unsure = "3 file events fit" }, -- 2866.020 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 951, line = false, unsure = "no file event fits" }, -- 2866.020 nameplate9 WOUND <secret> <- no file event 
	{ hit = 954, line = 955, spell = 6223, unsure = "secret amount" }, -- 2866.320 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 956, line = 935, spell = false, unsure = "2 file events fit" }, -- 2866.436 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.616 s
	{ hit = 960, line = false, unsure = "4 file events fit" }, -- 2866.770 nameplate5 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 961, line = false, unsure = "secret amount" }, -- 2866.770 nameplate7 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 964, line = false, unsure = "2 file events fit" }, -- 2866.770 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 965, line = false, unsure = "secret amount" }, -- 2866.770 nameplate9 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.034 s
	{ hit = 968, line = false, unsure = "late by 1.13 s" }, -- 2866.770 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.134 s
	{ hit = 969, line = false, unsure = "4 file events fit" }, -- 2866.803 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 970, line = false, unsure = "secret amount" }, -- 2866.803 nameplate7 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 973, line = false, unsure = "2 file events fit" }, -- 2866.803 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 974, line = false, unsure = "no file event fits" }, -- 2866.803 nameplate9 WOUND <secret> <- no file event 
	{ hit = 975, line = 976, spell = 1014, unsure = "secret amount" }, -- 2866.820 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 977, line = false, unsure = "secret amount" }, -- 2867.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 981, line = false, unsure = "5 file events fit" }, -- 2867.387 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 982, line = false, unsure = "4 file events fit" }, -- 2867.387 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 983, line = false, unsure = "secret amount" }, -- 2867.387 nameplate9 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 984, line = false, unsure = "secret amount" }, -- 2867.387 nameplate7 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 987, line = 988, spell = 1014, unsure = "secret amount" }, -- 2867.403 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 996, line = 997, spell = 1014, unsure = "secret amount" }, -- 2867.820 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 999, line = false, unsure = "secret amount" }, -- 2867.853 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD +0.000 s
	{ hit = 1000, line = false, unsure = "secret amount" }, -- 2868.120 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.450 s
	{ hit = 1006, line = false, unsure = "secret amount" }, -- 2868.370 nameplate7 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1009, line = false, unsure = "secret amount" }, -- 2868.370 nameplate9 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1010, line = false, unsure = "2 file events fit" }, -- 2868.370 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1011, line = false, unsure = "secret amount" }, -- 2868.370 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1017, line = false, unsure = "2 file events fit" }, -- 2868.670 nameplate7 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 1020, line = false, unsure = "secret amount" }, -- 2868.686 nameplate7 MISS <secret> <- other: Flametongue Attack SPELL_MISSED -0.001 s
	{ hit = 1025, line = 998, spell = false, unsure = "secret amount" }, -- 2868.770 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 1028, line = 1029, spell = 1014, unsure = "2 file events fit" }, -- 2868.820 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1030, line = false, unsure = "2 file events fit" }, -- 2868.853 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1031, line = false, unsure = "secret amount" }, -- 2868.853 player HEAL <secret> <- other: Bloom SPELL_HEAL -0.001 s
	{ hit = 1032, line = 1033, spell = 6223, unsure = "secret amount" }, -- 2868.903 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1040, line = false, unsure = "secret amount" }, -- 2869.087 nameplate7 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.000 s
	{ hit = 1043, line = false, unsure = "3 file events fit" }, -- 2869.087 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.034 s
	{ hit = 1051, line = false, unsure = "secret amount" }, -- 2869.103 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1052, line = 1055, spell = 6223, unsure = "secret amount" }, -- 2869.153 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1059, line = 1060, spell = 6223, unsure = "secret amount" }, -- 2869.320 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1061, line = false, unsure = "4 file events fit" }, -- 2869.353 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1062, line = false, unsure = "3 file events fit" }, -- 2869.353 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 1063, line = false, unsure = "no file event fits" }, -- 2869.353 nameplate9 WOUND <secret> <- no file event 
	{ hit = 1064, line = false, unsure = "secret amount" }, -- 2869.353 nameplate7 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 1067, line = 1068, spell = 1014, unsure = "secret amount" }, -- 2869.403 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1069, line = false, unsure = "secret amount" }, -- 2869.687 nameplate6 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD +0.000 s
	{ hit = 1075, line = 1076, spell = 1014, unsure = "secret amount" }, -- 2869.820 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1078, line = false, unsure = "secret amount" }, -- 2869.853 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD +0.000 s
	{ hit = 1079, line = 1077, spell = false, unsure = "2 file events fit" }, -- 2869.853 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.017 s
	{ hit = 1092, line = 1091, spell = 7814, unsure = "secret amount" }, -- 2870.236 nameplate7 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 1095, line = false, unsure = "5 file events fit" }, -- 2870.320 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1096, line = false, unsure = "secret amount" }, -- 2870.320 nameplate9 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 1097, line = false, unsure = "secret amount" }, -- 2870.320 nameplate7 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 1100, line = false, unsure = "2 file events fit" }, -- 2870.320 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 1101, line = false, unsure = "secret amount" }, -- 2870.470 nameplate7 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE +0.000 s
	{ hit = 1108, line = 1107, spell = 5019, unsure = "secret amount" }, -- 2870.787 nameplate7 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.000 s
	{ hit = 1111, line = false, unsure = "secret amount" }, -- 2870.853 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 1112, line = false, unsure = "no file event fits" }, -- 2870.920 nameplate7 WOUND <secret> <- no file event 
	{ hit = 1120, line = false, unsure = "secret amount" }, -- 2871.103 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1121, line = false, unsure = "secret amount" }, -- 2871.303 nameplate9 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 1122, line = false, unsure = "secret amount" }, -- 2871.303 nameplate7 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 1125, line = false, unsure = "secret amount" }, -- 2871.303 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 1126, line = 1127, spell = 1014, unsure = "secret amount" }, -- 2871.403 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1128, line = false, unsure = "secret amount" }, -- 2871.553 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.001 s
	{ hit = 1144, line = 1145, spell = 1014, unsure = "secret amount" }, -- 2871.820 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1147, line = false, unsure = "secret amount" }, -- 2871.853 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD +0.000 s
	{ hit = 1148, line = 1149, spell = 6223, unsure = "secret amount" }, -- 2871.903 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1155, line = 1158, spell = 6223, unsure = "secret amount" }, -- 2872.170 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1159, line = 1160, spell = 6223, unsure = "secret amount" }, -- 2872.320 nameplate9 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1166, line = false, unsure = "secret amount" }, -- 2872.486 nameplate9 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 1167, line = false, unsure = "3 file events fit" }, -- 2872.570 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1168, line = false, unsure = "secret amount" }, -- 2872.570 nameplate7 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1171, line = false, unsure = "secret amount" }, -- 2872.570 nameplate9 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1175, line = 1174, spell = 5019, unsure = "2 file events fit" }, -- 2872.720 nameplate7 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.117 s
	{ hit = 1180, line = 1146, spell = false, unsure = "secret amount" }, -- 2872.786 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 1189, line = false, unsure = "secret amount" }, -- 2873.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1190, line = false, unsure = "2 file events fit" }, -- 2873.253 nameplate9 WOUND <secret> <- other: swing SWING_DAMAGE +0.166 s
	{ hit = 1191, line = 1192, spell = 1014, unsure = "secret amount" }, -- 2873.403 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1193, line = false, unsure = "secret amount" }, -- 2873.553 nameplate9 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1194, line = false, unsure = "2 file events fit" }, -- 2873.553 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1195, line = false, unsure = "no file event fits" }, -- 2873.553 nameplate7 WOUND <secret> <- no file event 
	{ hit = 1204, line = 1205, spell = 1014, unsure = "secret amount" }, -- 2873.820 nameplate9 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1209, line = false, unsure = "secret amount" }, -- 2873.853 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD -0.001 s
	{ hit = 1210, line = false, unsure = "no file event fits" }, -- 2874.070 nameplate9 WOUND <secret> <- no file event 
	{ hit = 1216, line = false, unsure = "secret amount" }, -- 2874.537 nameplate7 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1217, line = false, unsure = "3 file events fit" }, -- 2874.537 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1218, line = false, unsure = "no file event fits" }, -- 2874.537 nameplate9 WOUND <secret> <- no file event 
	{ hit = 1221, line = 1215, spell = 5019, unsure = "2 file events fit" }, -- 2874.537 nameplate7 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.134 s
	{ hit = 1223, line = 1208, spell = false, unsure = "secret amount" }, -- 2874.787 nameplate7 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 1224, line = 1227, spell = 6223, unsure = "secret amount" }, -- 2874.903 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1228, line = false, unsure = "secret amount" }, -- 2874.970 nameplate9 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 1234, line = false, unsure = "secret amount" }, -- 2875.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1240, line = 1241, spell = 6223, unsure = "secret amount" }, -- 2875.153 nameplate7 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1246, line = 1249, spell = 1014, unsure = "secret amount" }, -- 2875.420 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1250, line = false, unsure = "2 file events fit" }, -- 2875.503 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 1266, line = false, unsure = "secret amount" }, -- 2875.903 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 1269, line = false, unsure = "secret amount" }, -- 2875.920 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD +0.000 s
	{ hit = 1273, line = false, unsure = "4 file events fit" }, -- 2876.103 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 1277, line = 1276, spell = 5019, unsure = "4 file events fit" }, -- 2876.353 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.116 s
	{ hit = 1280, line = 1265, spell = false, unsure = "3 file events fit" }, -- 2876.470 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.566 s
	{ hit = 1283, line = false, unsure = "secret amount" }, -- 2876.487 nameplate5 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 1288, line = false, unsure = "secret amount" }, -- 2876.853 softinteract WOUND <secret> <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 1292, line = false, unsure = "secret amount" }, -- 2877.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1297, line = false, unsure = "secret amount" }, -- 2877.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1304, line = false, unsure = "secret amount" }, -- 2879.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1307, line = false, unsure = "secret amount" }, -- 2879.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1311, line = false, unsure = "secret amount" }, -- 2881.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1312, line = false, unsure = "secret amount" }, -- 2881.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1313, line = false, unsure = "secret amount" }, -- 2881.537 player HEAL <secret> <- other: Regrowth SPELL_HEAL +0.000 s
	{ hit = 1322, line = false, unsure = "secret amount" }, -- 2883.103 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1327, line = false, unsure = "secret amount" }, -- 2884.537 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1330, line = false, unsure = "secret amount" }, -- 2885.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1333, line = false, unsure = "secret amount" }, -- 2886.403 nameplate5 WOUND <secret> <- other: Victory Rush SPELL_DAMAGE -0.001 s
	{ hit = 1336, line = false, unsure = "secret amount" }, -- 2887.020 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.450 s
	{ hit = 1337, line = false, unsure = "secret amount" }, -- 2887.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1338, line = false, unsure = "secret amount" }, -- 2887.187 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.001 s
	{ hit = 1339, line = false, unsure = "secret amount" }, -- 2887.520 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1347, line = false, unsure = "secret amount" }, -- 2889.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1353, line = false, unsure = "secret amount" }, -- 2890.187 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1358, line = false, unsure = "secret amount" }, -- 2890.237 player WOUND <secret> <- creature: Frostbolt Volley SPELL_DAMAGE +0.000 s
	{ hit = 1359, line = false, unsure = "secret amount" }, -- 2890.287 pet WOUND <secret> <- creature: Frostbolt Volley SPELL_DAMAGE +0.000 s
	{ hit = 1360, line = false, unsure = "secret amount" }, -- 2890.337 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.000 s
	{ hit = 1363, line = false, unsure = "secret amount" }, -- 2890.537 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1368, line = false, unsure = "secret amount" }, -- 2890.887 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.600 s
	{ hit = 1373, line = false, unsure = "secret amount" }, -- 2891.103 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1375, line = false, unsure = "secret amount" }, -- 2891.103 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1385, line = 1381, spell = false, unsure = "secret amount" }, -- 2892.753 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 1388, line = false, unsure = "secret amount" }, -- 2892.887 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.000 s
	{ hit = 1391, line = false, unsure = "secret amount" }, -- 2892.920 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 1394, line = false, unsure = "secret amount" }, -- 2893.103 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1395, line = false, unsure = "secret amount" }, -- 2893.103 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1403, line = false, unsure = "secret amount" }, -- 2893.187 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1409, line = false, unsure = "secret amount" }, -- 2893.520 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1410, line = false, unsure = "secret amount" }, -- 2893.737 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 1413, line = false, unsure = "secret amount" }, -- 2893.737 nameplate4 WOUND <secret> <- other: Spiked Shell DAMAGE_SHIELD -0.003 s
	{ hit = 1420, line = 1421, spell = false, unsure = "2 file events fit" }, -- 2894.303 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE -0.017 s
	{ hit = 1422, line = 1423, spell = 1014, unsure = "secret amount" }, -- 2894.337 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1426, line = 1425, spell = 7814, unsure = "secret amount" }, -- 2894.553 nameplate5 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 1427, line = false, unsure = "secret amount" }, -- 2894.903 nameplate5 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.001 s
	{ hit = 1432, line = false, unsure = "secret amount" }, -- 2895.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1436, line = false, unsure = "secret amount" }, -- 2895.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1437, line = false, unsure = "no file event fits" }, -- 2895.270 nameplate5 WOUND <secret> <- no file event 
	{ hit = 1442, line = false, unsure = "secret amount" }, -- 2895.753 nameplate4 WOUND <secret> <- other: Spiked Shell DAMAGE_SHIELD -0.001 s
	{ hit = 1446, line = false, unsure = "secret amount" }, -- 2896.170 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.011 s
	{ hit = 1451, line = 1452, spell = 1014, unsure = "secret amount" }, -- 2896.337 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1453, line = false, unsure = "secret amount" }, -- 2896.537 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1454, line = 1450, spell = false, unsure = "2 file events fit" }, -- 2896.637 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.300 s
	{ hit = 1457, line = 1458, spell = 6223, unsure = "secret amount" }, -- 2896.837 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1459, line = false, unsure = "secret amount" }, -- 2897.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1463, line = false, unsure = "secret amount" }, -- 2897.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1468, line = false, unsure = "no file event fits" }, -- 2897.287 nameplate5 WOUND <secret> <- no file event 
	{ hit = 1471, line = false, unsure = "secret amount" }, -- 2897.753 nameplate4 WOUND <secret> <- other: Spiked Shell DAMAGE_SHIELD -0.001 s
	{ hit = 1477, line = false, unsure = "secret amount" }, -- 2898.153 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 1481, line = 1482, spell = 1014, unsure = "secret amount" }, -- 2898.353 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1485, line = false, unsure = "2 file events fit" }, -- 2898.570 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.449 s
	{ hit = 1486, line = false, unsure = "late by 1.13 s" }, -- 2898.720 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.133 s
	{ hit = 1487, line = 1490, spell = 1014, unsure = "secret amount" }, -- 2898.837 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1491, line = false, unsure = "secret amount" }, -- 2899.103 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 1497, line = false, unsure = "secret amount" }, -- 2899.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1498, line = false, unsure = "secret amount" }, -- 2899.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1499, line = false, unsure = "2 file events fit" }, -- 2899.137 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE +0.000 s
	{ hit = 1500, line = false, unsure = "secret amount" }, -- 2899.187 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1501, line = 1480, spell = false, unsure = "secret amount" }, -- 2899.287 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 1506, line = false, unsure = "secret amount" }, -- 2899.537 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1507, line = false, unsure = "secret amount" }, -- 2899.753 nameplate4 WOUND <secret> <- other: Spiked Shell DAMAGE_SHIELD -0.001 s
	{ hit = 1512, line = 1513, spell = 6223, unsure = "secret amount" }, -- 2899.837 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1518, line = 1521, spell = 1014, unsure = "secret amount" }, -- 2900.337 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1522, line = 1523, spell = 1014, unsure = "secret amount" }, -- 2900.837 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1524, line = false, unsure = "secret amount" }, -- 2900.970 nameplate4 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE -0.001 s
	{ hit = 1525, line = false, unsure = "secret amount" }, -- 2900.987 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 1531, line = false, unsure = "secret amount" }, -- 2901.070 pet WOUND <secret> <- creature: Frost Nova SPELL_DAMAGE -0.001 s
	{ hit = 1539, line = false, unsure = "secret amount" }, -- 2901.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1542, line = false, unsure = "secret amount" }, -- 2901.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1543, line = 1517, spell = false, unsure = "secret amount" }, -- 2901.287 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 1544, line = false, unsure = "secret amount" }, -- 2901.320 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 1547, line = 1548, spell = 6223, unsure = "secret amount" }, -- 2901.353 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1549, line = false, unsure = "secret amount" }, -- 2901.553 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 1552, line = 1551, spell = 1094, unsure = "secret amount" }, -- 2901.837 nameplate4 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.001 s
	{ hit = 1558, line = false, unsure = "secret amount" }, -- 2901.920 nameplate4 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.001 s
	{ hit = 1559, line = false, unsure = "secret amount" }, -- 2901.970 nameplate4 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE -0.001 s
	{ hit = 1560, line = false, unsure = "2 file events fit" }, -- 2901.987 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 1561, line = false, unsure = "secret amount" }, -- 2901.987 nameplate4 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE +0.000 s
	{ hit = 1565, line = 1568, spell = 1014, unsure = "secret amount" }, -- 2902.353 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1569, line = false, unsure = "2 file events fit" }, -- 2902.537 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1570, line = false, unsure = "secret amount" }, -- 2902.537 player HEAL <secret> <- other: Bloom SPELL_HEAL -0.001 s
	{ hit = 1571, line = false, unsure = "secret amount" }, -- 2902.703 nameplate4 IMMUNE <secret> <- other: Rend SPELL_MISSED -0.001 s
	{ hit = 1572, line = 1573, spell = 1014, unsure = "secret amount" }, -- 2902.837 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1574, line = 1577, spell = 6223, unsure = "secret amount" }, -- 2902.837 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1578, line = false, unsure = "secret amount" }, -- 2902.953 nameplate4 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE -0.001 s
	{ hit = 1579, line = false, unsure = "secret amount" }, -- 2902.987 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 1582, line = false, unsure = "secret amount" }, -- 2903.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1588, line = false, unsure = "secret amount" }, -- 2903.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1589, line = false, unsure = "2 file events fit" }, -- 2903.287 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.749 s
	{ hit = 1593, line = 1564, spell = false, unsure = "late by 1.18 s" }, -- 2903.520 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +1.183 s
	{ hit = 1596, line = 1595, spell = 1094, unsure = "secret amount" }, -- 2903.853 nameplate5 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.002 s
	{ hit = 1599, line = false, unsure = "secret amount" }, -- 2903.937 nameplate4 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE +0.000 s
	{ hit = 1600, line = false, unsure = "secret amount" }, -- 2903.937 nameplate4 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD +0.000 s
	{ hit = 1601, line = false, unsure = "secret amount" }, -- 2903.970 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 1602, line = 1603, spell = 6223, unsure = "secret amount" }, -- 2904.337 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1604, line = 1607, spell = 1014, unsure = "secret amount" }, -- 2904.337 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1608, line = false, unsure = "no file event fits" }, -- 2904.387 nameplate4 WOUND <secret> <- no file event 
	{ hit = 1612, line = 1613, spell = 1014, unsure = "secret amount" }, -- 2904.854 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1614, line = 1615, spell = 1094, unsure = "2 file events fit" }, -- 2904.854 nameplate4 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1616, line = false, unsure = "secret amount" }, -- 2904.953 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 1624, line = false, unsure = "secret amount" }, -- 2905.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1625, line = false, unsure = "secret amount" }, -- 2905.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1626, line = false, unsure = "2 file events fit" }, -- 2905.187 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.265 s
	{ hit = 1627, line = false, unsure = "secret amount" }, -- 2905.370 player HEAL <secret> <- other: Healing Touch SPELL_HEAL -0.001 s
	{ hit = 1631, line = false, unsure = "2 file events fit" }, -- 2905.620 nameplate4 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 1632, line = false, unsure = "secret amount" }, -- 2905.653 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 1633, line = false, unsure = "secret amount" }, -- 2905.703 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 1636, line = false, unsure = "secret amount" }, -- 2905.703 nameplate5 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE +0.032 s
	{ hit = 1639, line = 1642, spell = 6223, unsure = "secret amount" }, -- 2905.837 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1645, line = false, unsure = "secret amount" }, -- 2905.953 nameplate4 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.002 s
	{ hit = 1646, line = 1649, spell = 1014, unsure = "secret amount" }, -- 2906.353 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1652, line = false, unsure = "no file event fits" }, -- 2906.403 nameplate4 WOUND <secret> <- no file event 
	{ hit = 1654, line = false, unsure = "secret amount" }, -- 2906.620 nameplate5 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE -0.051 s
	{ hit = 1657, line = false, unsure = "secret amount" }, -- 2906.687 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 1660, line = 1653, spell = 5019, unsure = "secret amount" }, -- 2906.687 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.233 s
	{ hit = 1663, line = 1664, spell = 1014, unsure = "secret amount" }, -- 2906.837 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1665, line = 1668, spell = 1094, unsure = "secret amount" }, -- 2906.870 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1676, line = false, unsure = "secret amount" }, -- 2907.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1677, line = 1678, spell = 6223, unsure = "secret amount" }, -- 2907.337 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1682, line = false, unsure = "secret amount" }, -- 2907.653 nameplate5 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE -0.003 s
	{ hit = 1685, line = false, unsure = "secret amount" }, -- 2907.687 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 1690, line = 1691, spell = 1094, unsure = "secret amount" }, -- 2907.837 nameplate4 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1692, line = false, unsure = "secret amount" }, -- 2907.937 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 1694, line = 1697, spell = 1014, unsure = "secret amount" }, -- 2908.337 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1698, line = false, unsure = "secret amount" }, -- 2908.370 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 1702, line = 1693, spell = 5019, unsure = "secret amount" }, -- 2908.420 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.149 s
	{ hit = 1705, line = false, unsure = "secret amount" }, -- 2908.670 nameplate5 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE +0.000 s
	{ hit = 1708, line = false, unsure = "secret amount" }, -- 2908.687 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 1711, line = 1712, spell = 1014, unsure = "secret amount" }, -- 2908.837 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1713, line = 1716, spell = 6223, unsure = "secret amount" }, -- 2908.837 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1717, line = false, unsure = "secret amount" }, -- 2909.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1725, line = false, unsure = "secret amount" }, -- 2909.137 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.800 s
	{ hit = 1726, line = false, unsure = "secret amount" }, -- 2909.203 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.001 s
	{ hit = 1732, line = 1735, spell = 1094, unsure = "secret amount" }, -- 2909.854 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1738, line = 1737, spell = 7814, unsure = "secret amount" }, -- 2909.987 nameplate5 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 1744, line = 1743, spell = 5019, unsure = "3 file events fit" }, -- 2910.170 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.083 s
	{ hit = 1747, line = 1731, spell = false, unsure = "2 file events fit" }, -- 2910.237 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.567 s
	{ hit = 1750, line = 1751, spell = 6223, unsure = "secret amount" }, -- 2910.337 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1752, line = 1755, spell = 1014, unsure = "secret amount" }, -- 2910.337 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1759, line = false, unsure = "late by 1.43 s" }, -- 2910.620 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.433 s
	{ hit = 1762, line = 1763, spell = 1014, unsure = "secret amount" }, -- 2910.920 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1764, line = 1765, spell = 1094, unsure = "secret amount" }, -- 2910.920 nameplate4 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1770, line = false, unsure = "secret amount" }, -- 2911.103 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1774, line = false, unsure = "secret amount" }, -- 2911.153 nameplate5 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 1777, line = false, unsure = "secret amount" }, -- 2911.153 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 1778, line = false, unsure = "secret amount" }, -- 2911.187 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 1781, line = false, unsure = "secret amount" }, -- 2911.187 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 1784, line = false, unsure = "2 file events fit" }, -- 2911.620 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 1792, line = false, unsure = "secret amount" }, -- 2911.837 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.450 s
	{ hit = 1797, line = false, unsure = "secret amount" }, -- 2912.653 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 1798, line = 1799, spell = 1014, unsure = "secret amount" }, -- 2912.837 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1802, line = false, unsure = "secret amount" }, -- 2913.103 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1807, line = false, unsure = "secret amount" }, -- 2913.170 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 1808, line = false, unsure = "secret amount" }, -- 2913.204 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 1809, line = false, unsure = "2 file events fit" }, -- 2913.204 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.583 s
	{ hit = 1810, line = 1811, spell = 6223, unsure = "secret amount" }, -- 2913.337 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1812, line = 1796, spell = false, unsure = "secret amount" }, -- 2913.353 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 1814, line = 1816, spell = 1094, unsure = "secret amount" }, -- 2913.837 nameplate4 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 1822, line = 1825, spell = 1014, unsure = "secret amount" }, -- 2914.837 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 1828, line = 1821, spell = false, unsure = "2 file events fit" }, -- 2915.087 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.683 s
	{ hit = 1833, line = false, unsure = "secret amount" }, -- 2915.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1837, line = false, unsure = "secret amount" }, -- 2915.170 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 1840, line = false, unsure = "secret amount" }, -- 2915.187 nameplate4 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.001 s
	{ hit = 1843, line = false, unsure = "secret amount" }, -- 2915.204 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 1846, line = false, unsure = "late by 1.25 s" }, -- 2915.353 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +1.249 s
	{ hit = 1850, line = 1849, spell = 5019, unsure = "secret amount" }, -- 2915.637 nameplate4 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.033 s
	{ hit = 1853, line = false, unsure = "secret amount" }, -- 2915.820 nameplate4 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE +0.016 s
	{ hit = 1856, line = false, unsure = "secret amount" }, -- 2915.837 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE +0.000 s
	{ hit = 1859, line = false, unsure = "secret amount" }, -- 2915.970 nameplate4 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.001 s
	{ hit = 1870, line = false, unsure = "secret amount" }, -- 2917.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1882, line = false, unsure = "secret amount" }, -- 2919.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1889, line = false, unsure = "secret amount" }, -- 2921.104 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1892, line = false, unsure = "secret amount" }, -- 2921.104 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1897, line = false, unsure = "secret amount" }, -- 2923.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1900, line = false, unsure = "secret amount" }, -- 2923.120 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1905, line = false, unsure = "secret amount" }, -- 2925.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1910, line = false, unsure = "secret amount" }, -- 2927.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1915, line = false, unsure = "secret amount" }, -- 2929.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1922, line = false, unsure = "secret amount" }, -- 2931.104 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 1929, line = false, unsure = "secret amount" }, -- 2933.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1930, line = false, unsure = "secret amount" }, -- 2935.120 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1953, line = false, unsure = "secret amount" }, -- 2964.487 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.999 s
	{ hit = 1962, line = false, unsure = "secret amount" }, -- 2965.320 nameplate8 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.002 s
	{ hit = 1978, line = false, unsure = "secret amount" }, -- 2967.454 nameplate8 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 1982, line = false, unsure = "3 file events fit" }, -- 2967.654 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.216 s
	{ hit = 1983, line = 1977, spell = false, unsure = "2 file events fit" }, -- 2968.037 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.699 s
	{ hit = 1986, line = 1985, spell = 7814, unsure = "secret amount" }, -- 2968.154 nameplate8 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 1989, line = false, unsure = "late by 1.08 s" }, -- 2968.287 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +1.082 s
	{ hit = 1990, line = false, unsure = "secret amount" }, -- 2968.304 nameplate8 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2004, line = false, unsure = "secret amount" }, -- 2969.721 nameplate8 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 2005, line = false, unsure = "secret amount" }, -- 2969.754 nameplate8 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 2013, line = 2014, spell = 1014, unsure = "secret amount" }, -- 2970.204 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2015, line = 2001, spell = false, unsure = "secret amount" }, -- 2970.304 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 2018, line = false, unsure = "secret amount" }, -- 2970.854 nameplate8 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 2030, line = false, unsure = "secret amount" }, -- 2971.321 nameplate8 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2034, line = false, unsure = "secret amount" }, -- 2971.420 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.598 s
	{ hit = 2037, line = false, unsure = "secret amount" }, -- 2971.454 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.983 s
	{ hit = 2044, line = 2045, spell = 1014, unsure = "secret amount" }, -- 2972.204 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2046, line = 2033, spell = false, unsure = "secret amount" }, -- 2972.304 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 2054, line = 2055, spell = 6223, unsure = "secret amount" }, -- 2972.704 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2067, line = 2068, spell = 1014, unsure = "secret amount" }, -- 2973.237 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2080, line = 2081, spell = 1014, unsure = "secret amount" }, -- 2974.204 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2082, line = 2069, spell = false, unsure = "secret amount" }, -- 2974.304 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 2083, line = false, unsure = "secret amount" }, -- 2974.321 nameplate8 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2096, line = 2097, spell = 1014, unsure = "secret amount" }, -- 2975.221 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2100, line = false, unsure = "2 file events fit" }, -- 2975.587 nameplate4 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.002 s
	{ hit = 2101, line = false, unsure = "secret amount" }, -- 2975.637 nameplate8 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.002 s
	{ hit = 2102, line = false, unsure = "secret amount" }, -- 2975.637 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.002 s
	{ hit = 2105, line = false, unsure = "secret amount" }, -- 2975.637 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.002 s
	{ hit = 2106, line = false, unsure = "2 file events fit" }, -- 2975.671 nameplate8 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 2107, line = false, unsure = "secret amount" }, -- 2975.671 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 2110, line = false, unsure = "2 file events fit" }, -- 2975.671 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 2111, line = 2112, spell = 6223, unsure = "secret amount" }, -- 2975.704 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2113, line = 2114, spell = 6223, unsure = "secret amount" }, -- 2975.721 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2118, line = false, unsure = "secret amount" }, -- 2975.971 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 2121, line = false, unsure = "secret amount" }, -- 2975.971 nameplate4 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 2122, line = false, unsure = "secret amount" }, -- 2975.971 nameplate8 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.001 s
	{ hit = 2123, line = false, unsure = "secret amount" }, -- 2976.087 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 2126, line = false, unsure = "3 file events fit" }, -- 2976.087 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 2127, line = false, unsure = "secret amount" }, -- 2976.087 nameplate8 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 2136, line = 2137, spell = 1014, unsure = "secret amount" }, -- 2976.204 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2138, line = false, unsure = "2 file events fit" }, -- 2976.304 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.282 s
	{ hit = 2142, line = false, unsure = "3 file events fit" }, -- 2976.787 nameplate4 WOUND <secret> <- other: Rake SPELL_DAMAGE -0.001 s
	{ hit = 2146, line = false, unsure = "secret amount" }, -- 2976.971 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2149, line = false, unsure = "secret amount" }, -- 2976.971 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2150, line = false, unsure = "secret amount" }, -- 2976.971 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2154, line = false, unsure = "secret amount" }, -- 2977.021 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2155, line = false, unsure = "secret amount" }, -- 2977.021 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2156, line = false, unsure = "secret amount" }, -- 2977.021 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2159, line = false, unsure = "secret amount" }, -- 2977.021 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.533 s
	{ hit = 2163, line = 2164, spell = 1014, unsure = "secret amount" }, -- 2977.237 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2165, line = false, unsure = "secret amount" }, -- 2977.304 nameplate8 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2166, line = false, unsure = "secret amount" }, -- 2977.354 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 2170, line = false, unsure = "3 file events fit" }, -- 2977.471 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 2173, line = false, unsure = "secret amount" }, -- 2977.471 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.016 s
	{ hit = 2174, line = false, unsure = "secret amount" }, -- 2977.487 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 2177, line = false, unsure = "secret amount" }, -- 2977.671 nameplate8 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 2178, line = false, unsure = "secret amount" }, -- 2977.671 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 2179, line = false, unsure = "secret amount" }, -- 2977.671 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 2184, line = false, unsure = "2 file events fit" }, -- 2977.704 nameplate8 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 2185, line = false, unsure = "secret amount" }, -- 2977.704 nameplate8 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.002 s
	{ hit = 2186, line = false, unsure = "secret amount" }, -- 2977.704 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 2187, line = false, unsure = "secret amount" }, -- 2977.704 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 2192, line = false, unsure = "no file event fits" }, -- 2977.871 nameplate4 WOUND <secret> <- no file event 
	{ hit = 2193, line = false, unsure = "secret amount" }, -- 2978.004 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2194, line = false, unsure = "secret amount" }, -- 2978.004 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2197, line = false, unsure = "secret amount" }, -- 2978.004 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2198, line = 2199, spell = 1014, unsure = "secret amount" }, -- 2978.204 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2200, line = 2203, spell = 1014, unsure = "secret amount" }, -- 2978.204 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2207, line = 2169, spell = false, unsure = "2 file events fit" }, -- 2978.321 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 2210, line = false, unsure = "late by 1.18 s" }, -- 2978.537 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +1.182 s
	{ hit = 2211, line = 2212, spell = 6223, unsure = "secret amount" }, -- 2978.704 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2213, line = 2214, spell = 6223, unsure = "secret amount" }, -- 2978.721 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2215, line = false, unsure = "late by 1.48 s" }, -- 2978.787 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.482 s
	{ hit = 2221, line = false, unsure = "secret amount" }, -- 2978.971 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2224, line = false, unsure = "secret amount" }, -- 2978.971 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2225, line = false, unsure = "secret amount" }, -- 2978.971 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2226, line = false, unsure = "secret amount" }, -- 2978.987 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.002 s
	{ hit = 2227, line = false, unsure = "secret amount" }, -- 2978.987 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.002 s
	{ hit = 2230, line = false, unsure = "secret amount" }, -- 2978.987 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.002 s
	{ hit = 2231, line = false, unsure = "secret amount" }, -- 2979.054 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.616 s
	{ hit = 2232, line = false, unsure = "secret amount" }, -- 2979.087 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 2235, line = 2236, spell = 1014, unsure = "secret amount" }, -- 2979.221 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2248, line = false, unsure = "secret amount" }, -- 2979.654 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 2249, line = false, unsure = "secret amount" }, -- 2979.654 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 2252, line = false, unsure = "secret amount" }, -- 2979.654 nameplate8 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 2253, line = false, unsure = "secret amount" }, -- 2979.687 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 2254, line = false, unsure = "secret amount" }, -- 2979.687 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 2257, line = false, unsure = "secret amount" }, -- 2979.687 nameplate8 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 2258, line = false, unsure = "2 file events fit" }, -- 2979.787 nameplate4 WOUND <secret> <- other: Rake SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2263, line = false, unsure = "secret amount" }, -- 2979.971 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 2264, line = false, unsure = "secret amount" }, -- 2979.971 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2265, line = false, unsure = "secret amount" }, -- 2979.971 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2268, line = false, unsure = "2 file events fit" }, -- 2980.004 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.449 s
	{ hit = 2271, line = false, unsure = "secret amount" }, -- 2980.037 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.616 s
	{ hit = 2272, line = 2273, spell = 1014, unsure = "secret amount" }, -- 2980.204 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2274, line = 2277, spell = 1014, unsure = "secret amount" }, -- 2980.204 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2279, line = 2237, spell = false, unsure = "secret amount" }, -- 2980.321 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 2283, line = 2282, spell = 7814, unsure = "secret amount" }, -- 2980.337 nameplate6 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 2286, line = false, unsure = "secret amount" }, -- 2980.437 nameplate4 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.002 s
	{ hit = 2287, line = false, unsure = "secret amount" }, -- 2980.587 nameplate4 MISS <secret> <- other: Sunder Armor SPELL_MISSED -0.002 s
	{ hit = 2288, line = 2291, spell = 6223, unsure = "secret amount" }, -- 2980.721 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 2295, line = false, unsure = "secret amount" }, -- 2980.937 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2296, line = false, unsure = "secret amount" }, -- 2980.937 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2299, line = false, unsure = "secret amount" }, -- 2980.937 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2300, line = false, unsure = "secret amount" }, -- 2980.971 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2303, line = false, unsure = "secret amount" }, -- 2980.971 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2304, line = false, unsure = "secret amount" }, -- 2980.971 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2308, line = 2309, spell = 1014, unsure = "secret amount" }, -- 2981.221 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2311, line = false, unsure = "secret amount" }, -- 2981.404 nameplate4 DODGE <secret> <- other: swing SWING_MISSED +0.999 s
	{ hit = 2312, line = false, unsure = "secret amount" }, -- 2981.521 nameplate6 MISS <secret> <- other: swing SWING_MISSED +0.799 s
	{ hit = 2315, line = false, unsure = "secret amount" }, -- 2981.654 nameplate8 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 2316, line = false, unsure = "secret amount" }, -- 2981.654 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 2317, line = false, unsure = "secret amount" }, -- 2981.654 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 2320, line = false, unsure = "2 file events fit" }, -- 2981.687 nameplate8 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 2321, line = false, unsure = "2 file events fit" }, -- 2981.687 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 2322, line = false, unsure = "secret amount" }, -- 2981.687 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 2325, line = 2326, spell = 6223, unsure = "secret amount" }, -- 2981.721 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2327, line = 2328, spell = 6223, unsure = "secret amount" }, -- 2981.737 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2336, line = 2335, spell = 5740, unsure = "secret amount" }, -- 2981.887 nameplate4 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 2338, line = 2337, spell = 5740, unsure = "secret amount" }, -- 2981.887 nameplate6 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.002 s
	{ hit = 2342, line = 2341, spell = 5740, unsure = "secret amount" }, -- 2981.887 nameplate8 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.002 s
	{ hit = 2343, line = false, unsure = "secret amount" }, -- 2981.921 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2344, line = false, unsure = "secret amount" }, -- 2981.921 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2347, line = false, unsure = "secret amount" }, -- 2981.921 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2348, line = false, unsure = "2 file events fit" }, -- 2982.004 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.249 s
	{ hit = 2349, line = false, unsure = "secret amount" }, -- 2982.087 nameplate4 PARRY <secret> <- other: Rend SPELL_MISSED -0.001 s
	{ hit = 2350, line = 2351, spell = 1014, unsure = "secret amount" }, -- 2982.204 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2352, line = 2355, spell = 1014, unsure = "secret amount" }, -- 2982.221 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2356, line = 2310, spell = false, unsure = "secret amount" }, -- 2982.337 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 2363, line = false, unsure = "2 file events fit" }, -- 2982.787 nameplate4 WOUND <secret> <- other: Rake SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2366, line = false, unsure = "secret amount" }, -- 2982.904 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2367, line = false, unsure = "secret amount" }, -- 2982.904 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2368, line = false, unsure = "secret amount" }, -- 2982.904 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2374, line = false, unsure = "secret amount" }, -- 2982.971 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2375, line = false, unsure = "secret amount" }, -- 2982.971 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2376, line = false, unsure = "secret amount" }, -- 2982.971 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2379, line = false, unsure = "no file event fits" }, -- 2983.104 nameplate4 WOUND <secret> <- no file event 
	{ hit = 2382, line = 2383, spell = 1014, unsure = "secret amount" }, -- 2983.221 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2387, line = false, unsure = "secret amount" }, -- 2983.671 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 2388, line = false, unsure = "secret amount" }, -- 2983.671 nameplate8 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE +0.000 s
	{ hit = 2389, line = false, unsure = "secret amount" }, -- 2983.671 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.001 s
	{ hit = 2392, line = false, unsure = "secret amount" }, -- 2983.704 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 2393, line = false, unsure = "secret amount" }, -- 2983.704 nameplate8 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 2394, line = 2400, spell = 6223, unsure = "2 file events fit" }, -- 2983.704 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2397, line = false, unsure = "secret amount" }, -- 2983.704 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 2402, line = 2401, spell = 5740, unsure = "secret amount" }, -- 2983.887 nameplate6 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 2406, line = 2405, spell = 5740, unsure = "secret amount" }, -- 2983.887 nameplate4 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 2408, line = 2407, spell = 5740, unsure = "secret amount" }, -- 2983.887 nameplate8 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.002 s
	{ hit = 2409, line = false, unsure = "secret amount" }, -- 2983.887 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.002 s
	{ hit = 2410, line = false, unsure = "secret amount" }, -- 2983.887 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.002 s
	{ hit = 2413, line = false, unsure = "secret amount" }, -- 2983.887 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.002 s
	{ hit = 2415, line = false, unsure = "secret amount" }, -- 2984.037 nameplate8 DODGE <secret> <- other: swing SWING_MISSED +0.599 s
	{ hit = 2416, line = false, unsure = "2 file events fit" }, -- 2984.137 nameplate8 WOUND <secret> <- other: Rake SPELL_DAMAGE -0.002 s
	{ hit = 2417, line = false, unsure = "secret amount" }, -- 2984.171 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 2418, line = 2421, spell = 1014, unsure = "secret amount" }, -- 2984.204 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2422, line = 2423, spell = 1014, unsure = "secret amount" }, -- 2984.204 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2424, line = false, unsure = "2 file events fit" }, -- 2984.337 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.215 s
	{ hit = 2428, line = false, unsure = "2 file events fit" }, -- 2984.404 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE -0.018 s
	{ hit = 2429, line = false, unsure = "2 file events fit" }, -- 2984.504 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 2430, line = false, unsure = "secret amount" }, -- 2984.537 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 2431, line = 2434, spell = 6223, unsure = "secret amount" }, -- 2984.704 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2435, line = 2436, spell = 6223, unsure = "secret amount" }, -- 2984.721 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2440, line = false, unsure = "secret amount" }, -- 2984.821 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.866 s
	{ hit = 2444, line = false, unsure = "secret amount" }, -- 2984.971 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2447, line = false, unsure = "secret amount" }, -- 2984.971 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2448, line = false, unsure = "secret amount" }, -- 2984.971 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2449, line = false, unsure = "secret amount" }, -- 2985.104 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.002 s
	{ hit = 2450, line = false, unsure = "secret amount" }, -- 2985.104 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.002 s
	{ hit = 2451, line = false, unsure = "secret amount" }, -- 2985.104 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.002 s
	{ hit = 2454, line = 2455, spell = 1014, unsure = "secret amount" }, -- 2985.221 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2460, line = 2459, spell = false, unsure = "secret amount" }, -- 2985.604 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.216 s
	{ hit = 2464, line = false, unsure = "secret amount" }, -- 2985.804 nameplate4 WOUND <secret> <- other: Rake SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2467, line = false, unsure = "secret amount" }, -- 2985.804 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.399 s
	{ hit = 2469, line = 2468, spell = 5740, unsure = "secret amount" }, -- 2985.871 nameplate8 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 2471, line = 2470, spell = 5740, unsure = "secret amount" }, -- 2985.871 nameplate6 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 2473, line = 2472, spell = 5740, unsure = "secret amount" }, -- 2985.871 nameplate4 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 2476, line = false, unsure = "secret amount" }, -- 2986.104 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2477, line = false, unsure = "secret amount" }, -- 2986.104 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2478, line = false, unsure = "secret amount" }, -- 2986.104 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2481, line = 2484, spell = 1014, unsure = "secret amount" }, -- 2986.204 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2485, line = 2486, spell = 1014, unsure = "secret amount" }, -- 2986.221 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2487, line = false, unsure = "secret amount" }, -- 2986.221 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.001 s
	{ hit = 2490, line = false, unsure = "no file event fits" }, -- 2986.337 nameplate6 WOUND <secret> <- no file event 
	{ hit = 2494, line = 2495, spell = 6223, unsure = "secret amount" }, -- 2986.704 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2499, line = false, unsure = "secret amount" }, -- 2986.787 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.399 s
	{ hit = 2503, line = false, unsure = "secret amount" }, -- 2986.971 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2504, line = false, unsure = "secret amount" }, -- 2986.971 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2505, line = false, unsure = "secret amount" }, -- 2986.971 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2508, line = false, unsure = "secret amount" }, -- 2987.087 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2509, line = false, unsure = "secret amount" }, -- 2987.087 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2510, line = false, unsure = "secret amount" }, -- 2987.087 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2513, line = false, unsure = "secret amount" }, -- 2987.154 nameplate8 WOUND <secret> <- other: Rake SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2514, line = false, unsure = "secret amount" }, -- 2987.154 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.982 s
	{ hit = 2517, line = 2518, spell = 1014, unsure = "secret amount" }, -- 2987.221 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2520, line = false, unsure = "2 file events fit" }, -- 2987.537 nameplate8 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.002 s
	{ hit = 2521, line = false, unsure = "secret amount" }, -- 2987.554 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 2524, line = 2527, spell = 6223, unsure = "secret amount" }, -- 2987.704 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2528, line = 2529, spell = 6223, unsure = "secret amount" }, -- 2987.737 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2531, line = 2530, spell = 5740, unsure = "secret amount" }, -- 2987.854 nameplate6 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 2533, line = 2532, spell = 5740, unsure = "secret amount" }, -- 2987.854 nameplate4 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 2537, line = 2536, spell = 5740, unsure = "secret amount" }, -- 2987.854 nameplate8 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 2542, line = false, unsure = "secret amount" }, -- 2988.054 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2545, line = false, unsure = "secret amount" }, -- 2988.054 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2546, line = false, unsure = "secret amount" }, -- 2988.054 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2547, line = 2550, spell = 1014, unsure = "secret amount" }, -- 2988.204 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2551, line = 2552, spell = 1014, unsure = "secret amount" }, -- 2988.204 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2553, line = false, unsure = "2 file events fit" }, -- 2988.337 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE -0.035 s
	{ hit = 2556, line = false, unsure = "2 file events fit" }, -- 2988.354 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE -0.018 s
	{ hit = 2557, line = 2519, spell = false, unsure = "secret amount" }, -- 2988.354 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 2561, line = false, unsure = "2 file events fit" }, -- 2988.821 nameplate4 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.035 s
	{ hit = 2564, line = false, unsure = "late by 1.32 s" }, -- 2988.854 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +1.316 s
	{ hit = 2569, line = false, unsure = "secret amount" }, -- 2988.971 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2570, line = false, unsure = "secret amount" }, -- 2988.971 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2574, line = false, unsure = "secret amount" }, -- 2988.971 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.068 s
	{ hit = 2575, line = false, unsure = "secret amount" }, -- 2989.038 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE +0.000 s
	{ hit = 2576, line = false, unsure = "no file event fits" }, -- 2989.038 nameplate8 WOUND <secret> <- no file event 
	{ hit = 2578, line = 2579, spell = 1014, unsure = "secret amount" }, -- 2989.237 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2583, line = 2584, spell = 6223, unsure = "secret amount" }, -- 2989.704 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2585, line = false, unsure = "secret amount" }, -- 2989.754 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.399 s
	{ hit = 2587, line = false, unsure = "secret amount" }, -- 2990.021 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2590, line = false, unsure = "secret amount" }, -- 2990.021 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.001 s
	{ hit = 2591, line = false, unsure = "secret amount" }, -- 2990.154 nameplate8 WOUND <secret> <- other: Rake SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2592, line = 2595, spell = 1014, unsure = "secret amount" }, -- 2990.204 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2597, line = 2582, spell = false, unsure = "secret amount" }, -- 2990.354 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 2600, line = false, unsure = "3 file events fit" }, -- 2990.504 nameplate8 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 2601, line = false, unsure = "secret amount" }, -- 2990.537 nameplate8 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 2602, line = false, unsure = "2 file events fit" }, -- 2990.737 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.165 s
	{ hit = 2606, line = false, unsure = "secret amount" }, -- 2990.971 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2609, line = false, unsure = "secret amount" }, -- 2990.987 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.002 s
	{ hit = 2622, line = false, unsure = "secret amount" }, -- 2991.637 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 2625, line = 2628, spell = 5019, unsure = "secret amount" }, -- 2991.904 nameplate6 MISS <secret> <- you: Shoot RANGE_MISSED -0.003 s
	{ hit = 2630, line = false, unsure = "secret amount" }, -- 2992.021 nameplate6 WOUND <secret> <- other: Ice Lance SPELL_DAMAGE +0.032 s
	{ hit = 2632, line = false, unsure = "2 file events fit" }, -- 2992.204 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.599 s
	{ hit = 2636, line = 2618, spell = false, unsure = "secret amount" }, -- 2992.354 softinteract WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 2667, line = false, unsure = "secret amount" }, -- 3028.938 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 2674, line = false, unsure = "secret amount" }, -- 3030.938 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 2693, line = false, unsure = "secret amount" }, -- 3032.671 nameplate7 WOUND <secret> <- other: swing SWING_DAMAGE +0.465 s
	{ hit = 2694, line = false, unsure = "secret amount" }, -- 3032.921 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 2701, line = false, unsure = "5 file events fit" }, -- 3033.538 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE -0.001 s
	{ hit = 2702, line = false, unsure = "secret amount" }, -- 3033.538 nameplate12 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.001 s
	{ hit = 2705, line = false, unsure = "secret amount" }, -- 3033.538 nameplate7 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 2706, line = false, unsure = "secret amount" }, -- 3033.538 nameplate8 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 2715, line = false, unsure = "no file event fits" }, -- 3034.471 nameplate7 WOUND <secret> <- no file event 
	{ hit = 2724, line = false, unsure = "secret amount" }, -- 3034.921 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 2727, line = 2726, spell = 7814, unsure = "secret amount" }, -- 3034.954 nameplate12 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 2739, line = false, unsure = "secret amount" }, -- 3035.388 player HEAL <secret> <- other: Regrowth SPELL_HEAL -0.001 s
	{ hit = 2744, line = 2716, spell = false, unsure = "secret amount" }, -- 3035.588 nameplate12 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 2746, line = 2747, spell = 1014, unsure = "secret amount" }, -- 3036.004 nameplate12 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2753, line = false, unsure = "secret amount" }, -- 3036.604 nameplate12 MISS <secret> <- other: Fire Nova SPELL_MISSED -0.002 s
	{ hit = 2754, line = false, unsure = "secret amount" }, -- 3036.604 nameplate14 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 2755, line = false, unsure = "secret amount" }, -- 3036.604 nameplate8 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 2758, line = false, unsure = "5 file events fit" }, -- 3036.604 nameplate15 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 2759, line = false, unsure = "4 file events fit" }, -- 3036.604 nameplate4 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 2760, line = false, unsure = "secret amount" }, -- 3036.604 nameplate7 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 2761, line = false, unsure = "2 file events fit" }, -- 3036.604 nameplate9 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 2762, line = false, unsure = "secret amount" }, -- 3036.604 nameplate11 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 2789, line = false, unsure = "secret amount" }, -- 3037.354 nameplate14 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.002 s
	{ hit = 2790, line = false, unsure = "8 file events fit" }, -- 3037.354 nameplate11 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 2791, line = false, unsure = "7 file events fit" }, -- 3037.354 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 2794, line = false, unsure = "6 file events fit" }, -- 3037.354 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 2795, line = false, unsure = "5 file events fit" }, -- 3037.354 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 2796, line = false, unsure = "4 file events fit" }, -- 3037.354 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 2797, line = false, unsure = "no file event fits" }, -- 3037.354 nameplate8 WOUND <secret> <- no file event 
	{ hit = 2798, line = false, unsure = "no file event fits" }, -- 3037.354 nameplate7 WOUND <secret> <- no file event 
	{ hit = 2799, line = 2763, spell = false, unsure = "secret amount" }, -- 3037.354 nameplate12 WOUND <secret> <- pet: swing SWING_DAMAGE +0.715 s
	{ hit = 2806, line = false, unsure = "no file event fits" }, -- 3037.588 nameplate12 WOUND <secret> <- no file event 
	{ hit = 2811, line = 2812, spell = 1014, unsure = "secret amount" }, -- 3038.004 nameplate12 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2813, line = false, unsure = "2 file events fit" }, -- 3038.021 nameplate11 WOUND <secret> <- other: swing SWING_DAMAGE +0.382 s
	{ hit = 2814, line = false, unsure = "secret amount" }, -- 3038.404 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 2817, line = false, unsure = "3 file events fit" }, -- 3038.788 nameplate11 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.001 s
	{ hit = 2842, line = false, unsure = "secret amount" }, -- 3039.338 nameplate8 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.001 s
	{ hit = 2843, line = false, unsure = "secret amount" }, -- 3039.338 nameplate12 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2844, line = false, unsure = "6 file events fit" }, -- 3039.338 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2845, line = false, unsure = "5 file events fit" }, -- 3039.338 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2846, line = false, unsure = "4 file events fit" }, -- 3039.338 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2847, line = false, unsure = "no file event fits" }, -- 3039.338 nameplate14 WOUND <secret> <- no file event 
	{ hit = 2850, line = false, unsure = "3 file events fit" }, -- 3039.338 nameplate13 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2851, line = false, unsure = "2 file events fit" }, -- 3039.338 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.001 s
	{ hit = 2861, line = 2815, spell = false, unsure = "secret amount" }, -- 3039.604 nameplate12 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 2865, line = 2866, spell = 1014, unsure = "2 file events fit" }, -- 3039.938 nameplate15 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2867, line = 2868, spell = 1014, unsure = "secret amount" }, -- 3040.004 nameplate12 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2869, line = false, unsure = "secret amount" }, -- 3040.171 nameplate14 WOUND <secret> <- other: swing SWING_DAMAGE +0.449 s
	{ hit = 2872, line = false, unsure = "4 file events fit" }, -- 3040.571 nameplate9 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 2873, line = false, unsure = "secret amount" }, -- 3040.571 nameplate8 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 2874, line = false, unsure = "2 file events fit" }, -- 3040.571 nameplate13 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 2875, line = false, unsure = "no file event fits" }, -- 3040.571 nameplate14 WOUND <secret> <- no file event 
	{ hit = 2905, line = false, unsure = "secret amount" }, -- 3041.338 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 2906, line = false, unsure = "secret amount" }, -- 3041.338 nameplate14 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 2909, line = false, unsure = "5 file events fit" }, -- 3041.338 nameplate15 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 2910, line = false, unsure = "4 file events fit" }, -- 3041.338 nameplate13 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 2911, line = false, unsure = "3 file events fit" }, -- 3041.338 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 2912, line = false, unsure = "no file event fits" }, -- 3041.338 nameplate12 WOUND <secret> <- no file event 
	{ hit = 2913, line = false, unsure = "2 file events fit" }, -- 3041.338 nameplate9 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 2914, line = false, unsure = "secret amount" }, -- 3041.404 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 2915, line = 2918, spell = 1014, unsure = "secret amount" }, -- 3041.471 nameplate14 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2919, line = 2878, spell = false, unsure = "secret amount" }, -- 3041.607 nameplate14 DODGE <secret> <- pet: swing SWING_MISSED +0.946 s
	{ hit = 2925, line = 2926, spell = 1014, unsure = "2 file events fit" }, -- 3041.938 nameplate15 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2930, line = 2931, spell = 1014, unsure = "secret amount" }, -- 3042.009 nameplate12 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 2940, line = 2933, spell = false, unsure = "3 file events fit" }, -- 3042.927 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.254 s
	{ hit = 2941, line = false, unsure = "7 file events fit" }, -- 3043.088 nameplate13 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.002 s
	{ hit = 2942, line = false, unsure = "6 file events fit" }, -- 3043.088 nameplate9 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.002 s
	{ hit = 2943, line = false, unsure = "5 file events fit" }, -- 3043.088 nameplate15 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.002 s
	{ hit = 2944, line = false, unsure = "4 file events fit" }, -- 3043.088 nameplate10 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.002 s
	{ hit = 2945, line = false, unsure = "secret amount" }, -- 3043.088 nameplate14 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 2948, line = false, unsure = "2 file events fit" }, -- 3043.088 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 2949, line = false, unsure = "secret amount" }, -- 3043.088 nameplate12 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 2951, line = false, unsure = "2 file events fit" }, -- 3043.124 nameplate13 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.006 s
	{ hit = 2952, line = false, unsure = "secret amount" }, -- 3043.124 nameplate10 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.006 s
	{ hit = 2957, line = 2958, spell = 5740, unsure = "2 file events fit" }, -- 3043.193 nameplate13 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 2959, line = 2956, spell = 5740, unsure = "secret amount" }, -- 3043.193 nameplate10 WOUND <secret> <- you: Rain of Fire SPELL_DAMAGE -0.001 s
	{ hit = 2962, line = false, unsure = "2 file events fit" }, -- 3043.357 nameplate10 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 2963, line = false, unsure = "secret amount" }, -- 3043.357 nameplate13 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 2969, line = false, unsure = "secret amount" }, -- 3043.571 nameplate13 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 2978, line = false, unsure = "secret amount" }, -- 3044.404 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 2990, line = false, unsure = "secret amount" }, -- 3047.408 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 3002, line = false, unsure = "secret amount" }, -- 3050.404 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3003, line = false, unsure = "secret amount" }, -- 3050.938 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3008, line = false, unsure = "secret amount" }, -- 3052.924 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3009, line = false, unsure = "secret amount" }, -- 3053.388 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 3013, line = false, unsure = "secret amount" }, -- 3054.938 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3019, line = false, unsure = "2 file events fit" }, -- 3056.404 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3020, line = false, unsure = "secret amount" }, -- 3056.404 player HEAL <secret> <- other: Bloom SPELL_HEAL -0.002 s
	{ hit = 3025, line = false, unsure = "secret amount" }, -- 3058.154 nameplate2 WOUND <secret> <- other: Throw RANGE_DAMAGE -0.002 s
	{ hit = 3030, line = false, unsure = "secret amount" }, -- 3059.788 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.002 s
	{ hit = 3033, line = false, unsure = "secret amount" }, -- 3059.921 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.465 s
	{ hit = 3043, line = false, unsure = "2 file events fit" }, -- 3060.288 nameplate2 WOUND <secret> <- other: Victory Rush SPELL_DAMAGE -0.002 s
	{ hit = 3053, line = 3052, spell = 7814, unsure = "secret amount" }, -- 3060.904 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 3056, line = 3039, spell = false, unsure = "secret amount" }, -- 3061.038 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 3059, line = false, unsure = "secret amount" }, -- 3061.171 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3062, line = false, unsure = "secret amount" }, -- 3061.788 nameplate2 MISS <secret> <- other: Sunder Armor SPELL_MISSED -0.002 s
	{ hit = 3065, line = false, unsure = "secret amount" }, -- 3061.938 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.799 s
	{ hit = 3074, line = false, unsure = "2 file events fit" }, -- 3062.304 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 3077, line = false, unsure = "secret amount" }, -- 3062.321 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3080, line = false, unsure = "secret amount" }, -- 3062.321 nameplate2 PARRY <secret> <- other: swing SWING_MISSED +0.665 s
	{ hit = 3083, line = 3086, spell = 1014, unsure = "secret amount" }, -- 3062.688 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3087, line = false, unsure = "secret amount" }, -- 3062.788 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3096, line = false, unsure = "2 file events fit" }, -- 3063.038 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.048 s
	{ hit = 3106, line = 3102, spell = false, unsure = "secret amount" }, -- 3064.288 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.199 s
	{ hit = 3110, line = 3116, spell = 1014, unsure = "2 file events fit" }, -- 3064.671 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.018 s
	{ hit = 3113, line = 3109, spell = 5019, unsure = "secret amount" }, -- 3064.688 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.165 s
	{ hit = 3117, line = false, unsure = "secret amount" }, -- 3064.788 nameplate2 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 3120, line = false, unsure = "secret amount" }, -- 3065.038 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE -0.001 s
	{ hit = 3123, line = false, unsure = "secret amount" }, -- 3065.071 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3126, line = 3129, spell = 6223, unsure = "secret amount" }, -- 3065.188 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3130, line = false, unsure = "secret amount" }, -- 3065.638 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.448 s
	{ hit = 3133, line = false, unsure = "no file event fits" }, -- 3065.638 nameplate2 WOUND <secret> <- no file event 
	{ hit = 3136, line = false, unsure = "secret amount" }, -- 3065.788 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3142, line = false, unsure = "secret amount" }, -- 3066.154 nameplate2 WOUND <secret> <- creature: Attack SPELL_DAMAGE -0.002 s
	{ hit = 3149, line = false, unsure = "3 file events fit" }, -- 3066.454 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE -0.069 s
	{ hit = 3152, line = 3155, spell = 1014, unsure = "secret amount" }, -- 3066.688 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3156, line = 3148, spell = 5019, unsure = "2 file events fit" }, -- 3067.038 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.715 s
	{ hit = 3162, line = 3141, spell = false, unsure = "late by 1.23 s" }, -- 3067.321 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +1.232 s
	{ hit = 3172, line = 3175, spell = 6223, unsure = "secret amount" }, -- 3068.188 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 3176, line = 3167, spell = false, unsure = "2 file events fit" }, -- 3068.255 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.132 s
	{ hit = 3179, line = false, unsure = "secret amount" }, -- 3068.521 nameplate2 WOUND <secret> <- creature: Attack SPELL_DAMAGE -0.002 s
	{ hit = 3182, line = 3185, spell = 1014, unsure = "secret amount" }, -- 3068.704 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3186, line = false, unsure = "secret amount" }, -- 3068.788 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3190, line = false, unsure = "3 file events fit" }, -- 3069.038 target WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 3192, line = false, unsure = "secret amount" }, -- 3069.071 target WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3194, line = false, unsure = "2 file events fit" }, -- 3069.071 target WOUND <secret> <- other: swing SWING_DAMAGE +0.348 s
	{ hit = 3196, line = 3168, spell = 5019, unsure = "late by 1.05 s" }, -- 3069.171 target WOUND <secret> <- you: Shoot RANGE_DAMAGE +1.048 s
	{ hit = 3203, line = 3206, spell = false, unsure = "2 file events fit" }, -- 3070.088 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE -0.035 s
	{ hit = 3214, line = 3217, spell = 1014, unsure = "secret amount" }, -- 3070.688 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3218, line = false, unsure = "2 file events fit" }, -- 3070.804 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 3221, line = false, unsure = "2 file events fit" }, -- 3070.955 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE -0.003 s
	{ hit = 3224, line = false, unsure = "secret amount" }, -- 3070.971 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3227, line = false, unsure = "3 file events fit" }, -- 3071.071 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.131 s
	{ hit = 3230, line = 3233, spell = 6223, unsure = "secret amount" }, -- 3071.188 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3236, line = false, unsure = "2 file events fit" }, -- 3071.388 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.449 s
	{ hit = 3239, line = false, unsure = "no file event fits" }, -- 3071.538 nameplate3 WOUND <secret> <- no file event 
	{ hit = 3243, line = false, unsure = "secret amount" }, -- 3071.788 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3252, line = 3242, spell = 5019, unsure = "secret amount" }, -- 3071.921 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.182 s
	{ hit = 3259, line = 3262, spell = 1014, unsure = "secret amount" }, -- 3072.688 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3265, line = 3264, spell = 7814, unsure = "secret amount" }, -- 3073.055 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 3268, line = 3255, spell = false, unsure = "secret amount" }, -- 3073.071 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 3276, line = false, unsure = "secret amount" }, -- 3073.388 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE -0.001 s
	{ hit = 3280, line = 3279, spell = 5019, unsure = "secret amount" }, -- 3073.721 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.148 s
	{ hit = 3286, line = 3289, spell = 6223, unsure = "secret amount" }, -- 3074.188 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3293, line = false, unsure = "2 file events fit" }, -- 3074.388 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3296, line = false, unsure = "secret amount" }, -- 3074.471 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.002 s
	{ hit = 3299, line = 3302, spell = 1014, unsure = "secret amount" }, -- 3074.688 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3303, line = false, unsure = "4 file events fit" }, -- 3074.721 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 3308, line = false, unsure = "3 file events fit" }, -- 3075.071 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.431 s
	{ hit = 3312, line = 3311, spell = 5019, unsure = "3 file events fit" }, -- 3075.521 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.165 s
	{ hit = 3315, line = false, unsure = "late by 1.30 s" }, -- 3075.655 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.299 s
	{ hit = 3318, line = false, unsure = "secret amount" }, -- 3075.805 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE -0.001 s
	{ hit = 3321, line = false, unsure = "no file event fits" }, -- 3076.055 nameplate3 WOUND <secret> <- no file event 
	{ hit = 3331, line = false, unsure = "secret amount" }, -- 3076.538 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 3334, line = false, unsure = "secret amount" }, -- 3076.571 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3337, line = 3340, spell = 1014, unsure = "secret amount" }, -- 3076.688 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3348, line = 3324, spell = false, unsure = "secret amount" }, -- 3077.088 nameplate3 DODGE <secret> <- pet: swing SWING_MISSED +0.948 s
	{ hit = 3352, line = 3355, spell = 6223, unsure = "secret amount" }, -- 3077.188 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3356, line = 3351, spell = 5019, unsure = "2 file events fit" }, -- 3077.305 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.132 s
	{ hit = 3359, line = false, unsure = "secret amount" }, -- 3077.338 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.482 s
	{ hit = 3362, line = false, unsure = "secret amount" }, -- 3077.488 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3365, line = false, unsure = "2 file events fit" }, -- 3077.788 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 3391, line = false, unsure = "secret amount" }, -- 3102.655 nameplate5 WOUND <secret> <- other: Throw RANGE_DAMAGE +0.015 s
	{ hit = 3393, line = false, unsure = "secret amount" }, -- 3104.005 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.002 s
	{ hit = 3396, line = false, unsure = "secret amount" }, -- 3104.271 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 3399, line = false, unsure = "secret amount" }, -- 3104.638 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.448 s
	{ hit = 3407, line = false, unsure = "secret amount" }, -- 3105.105 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3410, line = false, unsure = "2 file events fit" }, -- 3105.521 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 3413, line = false, unsure = "secret amount" }, -- 3105.538 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3416, line = false, unsure = "secret amount" }, -- 3106.238 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 3421, line = false, unsure = "2 file events fit" }, -- 3106.555 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.165 s
	{ hit = 3427, line = false, unsure = "secret amount" }, -- 3107.005 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3430, line = false, unsure = "no file event fits" }, -- 3107.371 nameplate5 WOUND <secret> <- no file event 
	{ hit = 3433, line = false, unsure = "secret amount" }, -- 3107.805 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.002 s
	{ hit = 3438, line = false, unsure = "secret amount" }, -- 3107.838 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 3441, line = false, unsure = "2 file events fit" }, -- 3107.972 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.002 s
	{ hit = 3444, line = false, unsure = "secret amount" }, -- 3108.255 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 3447, line = 3450, spell = 1014, unsure = "secret amount" }, -- 3108.338 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3452, line = false, unsure = "secret amount" }, -- 3108.505 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3460, line = 3459, spell = 7814, unsure = "secret amount" }, -- 3108.722 nameplate5 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 3463, line = false, unsure = "5 file events fit" }, -- 3108.955 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.002 s
	{ hit = 3466, line = false, unsure = "4 file events fit" }, -- 3109.038 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.448 s
	{ hit = 3469, line = false, unsure = "4 file events fit" }, -- 3109.071 nameplate5 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.070 s
	{ hit = 3472, line = false, unsure = "3 file events fit" }, -- 3109.138 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.665 s
	{ hit = 3477, line = 3451, spell = false, unsure = "2 file events fit" }, -- 3109.338 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 3480, line = false, unsure = "secret amount" }, -- 3109.938 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.002 s
	{ hit = 3483, line = false, unsure = "secret amount" }, -- 3110.021 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3486, line = false, unsure = "secret amount" }, -- 3110.221 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.030 s
	{ hit = 3489, line = false, unsure = "secret amount" }, -- 3110.255 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 3493, line = false, unsure = "secret amount" }, -- 3110.322 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.001 s
	{ hit = 3496, line = 3499, spell = 1014, unsure = "2 file events fit" }, -- 3110.338 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3500, line = false, unsure = "secret amount" }, -- 3110.338 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 3504, line = 3503, spell = false, unsure = "secret amount" }, -- 3110.538 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.148 s
	{ hit = 3510, line = 3513, spell = 6223, unsure = "secret amount" }, -- 3110.838 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3514, line = false, unsure = "2 file events fit" }, -- 3111.255 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.332 s
	{ hit = 3517, line = false, unsure = "secret amount" }, -- 3111.322 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.515 s
	{ hit = 3522, line = 3521, spell = 1094, unsure = "secret amount" }, -- 3111.338 nameplate5 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.003 s
	{ hit = 3525, line = false, unsure = "no file event fits" }, -- 3111.338 nameplate5 WOUND <secret> <- no file event 
	{ hit = 3528, line = false, unsure = "secret amount" }, -- 3111.922 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3531, line = false, unsure = "2 file events fit" }, -- 3112.105 nameplate5 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.002 s
	{ hit = 3534, line = false, unsure = "secret amount" }, -- 3112.255 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 3537, line = 3540, spell = 1014, unsure = "secret amount" }, -- 3112.338 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3542, line = 3541, spell = false, unsure = "2 file events fit" }, -- 3112.472 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.082 s
	{ hit = 3545, line = false, unsure = "secret amount" }, -- 3112.572 nameplate5 WOUND <secret> <- other: Ice Lance SPELL_DAMAGE -0.001 s
	{ hit = 3548, line = false, unsure = "secret amount" }, -- 3112.588 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 3554, line = false, unsure = "secret amount" }, -- 3112.822 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.002 s
	{ hit = 3557, line = false, unsure = "secret amount" }, -- 3112.838 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 3560, line = false, unsure = "secret amount" }, -- 3112.905 nameplate5 DODGE <secret> <- other: swing SWING_MISSED +0.998 s
	{ hit = 3563, line = false, unsure = "secret amount" }, -- 3113.005 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3568, line = false, unsure = "secret amount" }, -- 3113.188 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.014 s
	{ hit = 3574, line = false, unsure = "3 file events fit" }, -- 3113.305 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.315 s
	{ hit = 3577, line = false, unsure = "2 file events fit" }, -- 3113.338 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.448 s
	{ hit = 3580, line = 3583, spell = 6223, unsure = "secret amount" }, -- 3113.838 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3584, line = false, unsure = "secret amount" }, -- 3113.871 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.003 s
	{ hit = 3587, line = false, unsure = "secret amount" }, -- 3113.971 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.097 s
	{ hit = 3591, line = 3590, spell = 5019, unsure = "secret amount" }, -- 3114.188 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 3596, line = 3599, spell = 1014, unsure = "secret amount" }, -- 3114.338 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3600, line = 3603, spell = 1094, unsure = "secret amount" }, -- 3114.338 nameplate5 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3605, line = 3604, spell = false, unsure = "secret amount" }, -- 3114.472 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.082 s
	{ hit = 3613, line = false, unsure = "2 file events fit" }, -- 3115.138 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.281 s
	{ hit = 3616, line = false, unsure = "secret amount" }, -- 3115.338 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.648 s
	{ hit = 3619, line = false, unsure = "secret amount" }, -- 3115.471 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.002 s
	{ hit = 3622, line = false, unsure = "secret amount" }, -- 3115.505 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3630, line = false, unsure = "secret amount" }, -- 3116.755 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3634, line = false, unsure = "secret amount" }, -- 3118.755 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3640, line = false, unsure = "secret amount" }, -- 3120.555 player HEAL <secret> <- other: Regrowth SPELL_HEAL -0.002 s
	{ hit = 3644, line = false, unsure = "secret amount" }, -- 3123.555 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3645, line = false, unsure = "secret amount" }, -- 3125.322 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3646, line = false, unsure = "secret amount" }, -- 3126.555 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3648, line = false, unsure = "secret amount" }, -- 3128.322 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3649, line = false, unsure = "secret amount" }, -- 3129.555 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3650, line = false, unsure = "secret amount" }, -- 3129.622 nameplate6 WOUND <secret> <- other: Throw RANGE_DAMAGE -0.002 s
	{ hit = 3651, line = false, unsure = "secret amount" }, -- 3130.188 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.003 s
	{ hit = 3652, line = false, unsure = "secret amount" }, -- 3131.338 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3653, line = false, unsure = "secret amount" }, -- 3131.522 nameplate6 RESIST <secret> <- other: Thorns DAMAGE_SHIELD_MISSED -0.002 s
	{ hit = 3654, line = false, unsure = "2 file events fit" }, -- 3131.922 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3655, line = false, unsure = "3 file events fit" }, -- 3131.955 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 3656, line = false, unsure = "secret amount" }, -- 3131.988 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3657, line = false, unsure = "2 file events fit" }, -- 3132.172 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.282 s
	{ hit = 3660, line = false, unsure = "secret amount" }, -- 3132.555 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3663, line = false, unsure = "secret amount" }, -- 3133.205 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3664, line = false, unsure = "secret amount" }, -- 3133.372 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE -0.018 s
	{ hit = 3665, line = false, unsure = "secret amount" }, -- 3133.522 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 3668, line = false, unsure = "secret amount" }, -- 3134.138 nameplate6 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.003 s
	{ hit = 3669, line = false, unsure = "secret amount" }, -- 3134.155 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 3670, line = false, unsure = "2 file events fit" }, -- 3134.338 player HEAL <secret> <- other: Rejuvenation SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3671, line = false, unsure = "secret amount" }, -- 3134.338 player HEAL <secret> <- other: Bloom SPELL_HEAL -0.003 s
	{ hit = 3672, line = false, unsure = "no file event fits" }, -- 3134.372 nameplate6 WOUND <secret> <- no file event 
	{ hit = 3673, line = false, unsure = "2 file events fit" }, -- 3134.738 nameplate6 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.003 s
	{ hit = 3678, line = false, unsure = "secret amount" }, -- 3135.455 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.981 s
	{ hit = 3681, line = false, unsure = "secret amount" }, -- 3135.472 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3684, line = false, unsure = "secret amount" }, -- 3135.555 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3685, line = false, unsure = "2 file events fit" }, -- 3135.738 nameplate6 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.003 s
	{ hit = 3690, line = false, unsure = "2 file events fit" }, -- 3136.188 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3693, line = false, unsure = "secret amount" }, -- 3136.205 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3696, line = false, unsure = "secret amount" }, -- 3136.422 nameplate6 WOUND <secret> <- other: Ice Lance SPELL_DAMAGE -0.003 s
	{ hit = 3699, line = false, unsure = "secret amount" }, -- 3136.438 nameplate6 PARRY <secret> <- other: swing SWING_MISSED +0.981 s
	{ hit = 3702, line = false, unsure = "2 file events fit" }, -- 3136.455 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 3705, line = false, unsure = "secret amount" }, -- 3136.455 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 3713, line = false, unsure = "2 file events fit" }, -- 3136.572 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.398 s
	{ hit = 3716, line = false, unsure = "secret amount" }, -- 3136.638 nameplate6 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.002 s
	{ hit = 3719, line = false, unsure = "secret amount" }, -- 3136.655 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 3725, line = false, unsure = "secret amount" }, -- 3136.838 nameplate6 DODGE <secret> <- other: swing SWING_MISSED +0.398 s
	{ hit = 3728, line = false, unsure = "late by 1.38 s" }, -- 3136.972 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.382 s
	{ hit = 3733, line = false, unsure = "secret amount" }, -- 3137.472 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 3736, line = false, unsure = "4 file events fit" }, -- 3137.855 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 3745, line = 3744, spell = 7814, unsure = "secret amount" }, -- 3137.888 nameplate6 MISS <secret> <- pet: Lash of Pain SPELL_MISSED -0.003 s
	{ hit = 3748, line = false, unsure = "4 file events fit" }, -- 3137.955 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 3751, line = false, unsure = "secret amount" }, -- 3137.988 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 3754, line = 3742, spell = false, unsure = "3 file events fit" }, -- 3138.022 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.131 s
	{ hit = 3757, line = false, unsure = "secret amount" }, -- 3138.555 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3761, line = false, unsure = "3 file events fit" }, -- 3138.772 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.365 s
	{ hit = 3764, line = false, unsure = "2 file events fit" }, -- 3138.838 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.048 s
	{ hit = 3768, line = false, unsure = "secret amount" }, -- 3138.938 nameplate6 WOUND <secret> <- other: Rake SPELL_DAMAGE -0.003 s
	{ hit = 3771, line = false, unsure = "secret amount" }, -- 3139.205 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3774, line = false, unsure = "secret amount" }, -- 3139.388 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE -0.002 s
	{ hit = 3779, line = false, unsure = "secret amount" }, -- 3139.472 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3782, line = 3785, spell = 1014, unsure = "secret amount" }, -- 3139.472 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3789, line = false, unsure = "secret amount" }, -- 3139.605 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 3793, line = false, unsure = "secret amount" }, -- 3139.988 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.414 s
	{ hit = 3797, line = 3796, spell = 5019, unsure = "secret amount" }, -- 3140.172 nameplate6 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.065 s
	{ hit = 3800, line = false, unsure = "no file event fits" }, -- 3140.188 nameplate6 WOUND <secret> <- no file event 
	{ hit = 3803, line = false, unsure = "secret amount" }, -- 3140.638 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 3806, line = false, unsure = "secret amount" }, -- 3140.655 nameplate6 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.031 s
	{ hit = 3812, line = false, unsure = "secret amount" }, -- 3140.772 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.398 s
	{ hit = 3815, line = 3792, spell = false, unsure = "secret amount" }, -- 3140.855 nameplate6 DODGE <secret> <- pet: swing SWING_MISSED +0.948 s
	{ hit = 3820, line = 3823, spell = 1014, unsure = "secret amount" }, -- 3141.472 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3824, line = false, unsure = "secret amount" }, -- 3141.472 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3827, line = false, unsure = "2 file events fit" }, -- 3141.555 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 3828, line = false, unsure = "secret amount" }, -- 3141.555 player HEAL <secret> <- other: Bloom SPELL_HEAL -0.003 s
	{ hit = 3829, line = false, unsure = "2 file events fit" }, -- 3141.772 nameplate6 WOUND <secret> <- other: Ferocious Bite SPELL_DAMAGE -0.019 s
	{ hit = 3832, line = false, unsure = "secret amount" }, -- 3141.788 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.414 s
	{ hit = 3837, line = false, unsure = "3 file events fit" }, -- 3141.938 nameplate6 WOUND <secret> <- other: Rake SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3840, line = 3836, spell = false, unsure = "2 file events fit" }, -- 3142.038 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.130 s
	{ hit = 3843, line = false, unsure = "secret amount" }, -- 3142.188 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3849, line = false, unsure = "2 file events fit" }, -- 3142.755 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.397 s
	{ hit = 3852, line = false, unsure = "secret amount" }, -- 3142.788 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 3855, line = 3835, spell = 5019, unsure = "secret amount" }, -- 3142.855 nameplate6 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.948 s
	{ hit = 3860, line = false, unsure = "secret amount" }, -- 3143.022 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 3864, line = false, unsure = "secret amount" }, -- 3143.272 nameplate6 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.098 s
	{ hit = 3875, line = false, unsure = "secret amount" }, -- 3147.455 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 3878, line = false, unsure = "secret amount" }, -- 3147.705 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.448 s
	{ hit = 3886, line = false, unsure = "secret amount" }, -- 3148.088 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.011 s
	{ hit = 3893, line = false, unsure = "secret amount" }, -- 3149.472 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3896, line = false, unsure = "2 file events fit" }, -- 3149.605 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 3897, line = false, unsure = "secret amount" }, -- 3149.638 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 3901, line = false, unsure = "late by 1.30 s" }, -- 3149.872 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.298 s
	{ hit = 3904, line = 3903, spell = 7814, unsure = "secret amount" }, -- 3150.088 nameplate5 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 3905, line = false, unsure = "2 file events fit" }, -- 3150.155 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.002 s
	{ hit = 3907, line = false, unsure = "secret amount" }, -- 3150.522 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 3910, line = false, unsure = "no file event fits" }, -- 3150.555 nameplate5 DODGE <secret> <- no file event 
	{ hit = 3914, line = false, unsure = "secret amount" }, -- 3150.872 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.448 s
	{ hit = 3922, line = false, unsure = "secret amount" }, -- 3151.105 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3923, line = false, unsure = "3 file events fit" }, -- 3151.138 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.003 s
	{ hit = 3924, line = 3906, spell = false, unsure = "2 file events fit" }, -- 3151.222 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 3925, line = false, unsure = "secret amount" }, -- 3151.355 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 3926, line = false, unsure = "2 file events fit" }, -- 3151.355 nameplate5 WOUND <secret> <- other: Rake SPELL_DAMAGE -0.003 s
	{ hit = 3927, line = false, unsure = "secret amount" }, -- 3151.472 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3928, line = false, unsure = "secret amount" }, -- 3151.472 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3934, line = false, unsure = "no file event fits" }, -- 3152.122 nameplate5 WOUND <secret> <- no file event 
	{ hit = 3936, line = false, unsure = "secret amount" }, -- 3152.505 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 3944, line = false, unsure = "secret amount" }, -- 3152.805 nameplate5 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.002 s
	{ hit = 3945, line = false, unsure = "secret amount" }, -- 3152.805 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 3951, line = false, unsure = "secret amount" }, -- 3153.072 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.598 s
	{ hit = 3952, line = false, unsure = "2 file events fit" }, -- 3153.072 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.448 s
	{ hit = 3955, line = 3958, spell = 1014, unsure = "secret amount" }, -- 3153.088 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3959, line = false, unsure = "2 file events fit" }, -- 3153.205 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 3962, line = false, unsure = "secret amount" }, -- 3153.205 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 3963, line = 3935, spell = false, unsure = "secret amount" }, -- 3153.238 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 3966, line = false, unsure = "secret amount" }, -- 3153.455 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 3970, line = false, unsure = "secret amount" }, -- 3153.822 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3971, line = false, unsure = "secret amount" }, -- 3153.822 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 3974, line = false, unsure = "2 file events fit" }, -- 3153.855 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.398 s
	{ hit = 3975, line = false, unsure = "secret amount" }, -- 3154.038 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 3976, line = false, unsure = "secret amount" }, -- 3154.122 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3980, line = false, unsure = "2 file events fit" }, -- 3154.372 nameplate5 WOUND <secret> <- other: Rake SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 3985, line = false, unsure = "secret amount" }, -- 3154.772 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 3986, line = false, unsure = "secret amount" }, -- 3154.988 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.003 s
	{ hit = 3987, line = false, unsure = "secret amount" }, -- 3155.039 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.615 s
	{ hit = 3990, line = false, unsure = "3 file events fit" }, -- 3155.055 nameplate6 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 3991, line = 3992, spell = 1014, unsure = "secret amount" }, -- 3155.088 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3993, line = false, unsure = "2 file events fit" }, -- 3155.238 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.414 s
	{ hit = 3994, line = false, unsure = "2 file events fit" }, -- 3155.572 nameplate5 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.002 s
	{ hit = 3997, line = 3998, spell = 6223, unsure = "secret amount" }, -- 3155.589 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4008, line = false, unsure = "secret amount" }, -- 3155.788 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4011, line = false, unsure = "secret amount" }, -- 3155.805 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 4014, line = false, unsure = "secret amount" }, -- 3155.805 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 4015, line = false, unsure = "no file event fits" }, -- 3155.805 nameplate6 WOUND <secret> <- no file event 
	{ hit = 4020, line = 4019, spell = 1094, unsure = "secret amount" }, -- 3156.139 nameplate6 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.003 s
	{ hit = 4022, line = false, unsure = "2 file events fit" }, -- 3156.405 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.002 s
	{ hit = 4025, line = false, unsure = "2 file events fit" }, -- 3156.488 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 4026, line = false, unsure = "secret amount" }, -- 3156.522 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 4030, line = false, unsure = "no file event fits" }, -- 3156.989 nameplate5 WOUND <secret> <- no file event 
	{ hit = 4033, line = 4034, spell = 1014, unsure = "secret amount" }, -- 3157.088 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4035, line = false, unsure = "secret amount" }, -- 3157.122 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4038, line = false, unsure = "secret amount" }, -- 3157.172 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4039, line = 4021, spell = false, unsure = "secret amount" }, -- 3157.239 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 4040, line = false, unsure = "2 file events fit" }, -- 3157.355 nameplate5 WOUND <secret> <- other: Rake SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4043, line = false, unsure = "secret amount" }, -- 3157.355 nameplate6 MISS <secret> <- other: Flametongue Attack SPELL_MISSED -0.003 s
	{ hit = 4049, line = false, unsure = "secret amount" }, -- 3157.789 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.398 s
	{ hit = 4052, line = false, unsure = "secret amount" }, -- 3157.805 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 4055, line = false, unsure = "secret amount" }, -- 3157.805 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 4056, line = false, unsure = "secret amount" }, -- 3157.939 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.598 s
	{ hit = 4057, line = false, unsure = "secret amount" }, -- 3157.989 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4058, line = 4061, spell = 1014, unsure = "secret amount" }, -- 3158.139 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4062, line = false, unsure = "secret amount" }, -- 3158.205 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4066, line = false, unsure = "3 file events fit" }, -- 3158.539 nameplate5 WOUND <secret> <- other: Heroic Strike SPELL_DAMAGE -0.002 s
	{ hit = 4069, line = false, unsure = "2 file events fit" }, -- 3158.539 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.165 s
	{ hit = 4072, line = 4073, spell = 6223, unsure = "secret amount" }, -- 3158.605 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4080, line = 4065, spell = false, unsure = "secret amount" }, -- 3158.972 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.681 s
	{ hit = 4084, line = 4085, spell = 1014, unsure = "secret amount" }, -- 3159.088 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4086, line = 4087, spell = 1094, unsure = "secret amount" }, -- 3159.139 nameplate6 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4088, line = false, unsure = "no file event fits" }, -- 3159.239 nameplate5 WOUND <secret> <- no file event 
	{ hit = 4099, line = false, unsure = "secret amount" }, -- 3159.572 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4100, line = false, unsure = "2 file events fit" }, -- 3159.755 nameplate5 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.086 s
	{ hit = 4103, line = false, unsure = "secret amount" }, -- 3159.822 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4106, line = false, unsure = "secret amount" }, -- 3159.822 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4107, line = false, unsure = "secret amount" }, -- 3159.838 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.481 s
	{ hit = 4110, line = false, unsure = "secret amount" }, -- 3160.105 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4113, line = 4116, spell = 1014, unsure = "secret amount" }, -- 3160.139 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4118, line = false, unsure = "2 file events fit" }, -- 3160.372 nameplate5 WOUND <secret> <- other: Rake SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4122, line = 4121, spell = 5019, unsure = "2 file events fit" }, -- 3160.505 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 4125, line = false, unsure = "secret amount" }, -- 3160.605 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 4128, line = 4131, spell = 6223, unsure = "secret amount" }, -- 3160.638 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4138, line = false, unsure = "secret amount" }, -- 3160.955 nameplate5 PARRY <secret> <- other: swing SWING_MISSED +0.614 s
	{ hit = 4141, line = false, unsure = "secret amount" }, -- 3160.989 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4142, line = 4143, spell = 1014, unsure = "secret amount" }, -- 3161.088 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4144, line = false, unsure = "2 file events fit" }, -- 3161.238 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.086 s
	{ hit = 4149, line = 4150, spell = 6223, unsure = "secret amount" }, -- 3161.589 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4151, line = 4117, spell = false, unsure = "late by 1.45 s" }, -- 3161.738 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +1.447 s
	{ hit = 4154, line = false, unsure = "2 file events fit" }, -- 3161.789 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 4155, line = false, unsure = "secret amount" }, -- 3161.822 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4158, line = false, unsure = "secret amount" }, -- 3161.822 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4159, line = 4160, spell = 1094, unsure = "secret amount" }, -- 3162.155 nameplate6 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4161, line = 4164, spell = 1014, unsure = "secret amount" }, -- 3162.155 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4167, line = 4166, spell = 7814, unsure = "secret amount" }, -- 3162.255 nameplate5 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 4172, line = 4171, spell = 5019, unsure = "4 file events fit" }, -- 3162.322 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 4175, line = false, unsure = "secret amount" }, -- 3162.355 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.598 s
	{ hit = 4179, line = false, unsure = "3 file events fit" }, -- 3162.722 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.398 s
	{ hit = 4185, line = false, unsure = "secret amount" }, -- 3162.755 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 4186, line = false, unsure = "secret amount" }, -- 3162.789 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 4187, line = 4170, spell = false, unsure = "2 file events fit" }, -- 3162.922 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.615 s
	{ hit = 4190, line = false, unsure = "secret amount" }, -- 3162.988 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4193, line = 4194, spell = 1014, unsure = "secret amount" }, -- 3163.105 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4197, line = false, unsure = "2 file events fit" }, -- 3163.255 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.053 s
	{ hit = 4203, line = 4206, spell = 6223, unsure = "secret amount" }, -- 3163.639 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4207, line = false, unsure = "late by 1.45 s" }, -- 3163.705 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.447 s
	{ hit = 4210, line = false, unsure = "secret amount" }, -- 3163.822 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 4211, line = false, unsure = "secret amount" }, -- 3163.822 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 4214, line = false, unsure = "secret amount" }, -- 3163.939 nameplate5 WOUND <secret> <- other: Ferocious Bite SPELL_DAMAGE -0.002 s
	{ hit = 4217, line = false, unsure = "secret amount" }, -- 3164.005 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4218, line = 4221, spell = 1014, unsure = "secret amount" }, -- 3164.139 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4223, line = 4222, spell = 5019, unsure = "secret amount" }, -- 3164.139 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 4227, line = false, unsure = "secret amount" }, -- 3164.389 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 4228, line = 4229, spell = 6223, unsure = "secret amount" }, -- 3164.589 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4230, line = 4226, spell = false, unsure = "2 file events fit" }, -- 3164.689 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.382 s
	{ hit = 4241, line = 4242, spell = 1014, unsure = "secret amount" }, -- 3165.089 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4243, line = 4244, spell = 1094, unsure = "2 file events fit" }, -- 3165.139 nameplate6 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4245, line = false, unsure = "secret amount" }, -- 3165.189 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 4246, line = false, unsure = "2 file events fit" }, -- 3165.255 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.003 s
	{ hit = 4249, line = false, unsure = "secret amount" }, -- 3165.405 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4252, line = false, unsure = "2 file events fit" }, -- 3165.455 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.297 s
	{ hit = 4253, line = false, unsure = "secret amount" }, -- 3165.822 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4254, line = false, unsure = "secret amount" }, -- 3165.822 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4260, line = 4263, spell = 5019, unsure = "secret amount" }, -- 3165.872 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.086 s
	{ hit = 4264, line = false, unsure = "no file event fits" }, -- 3165.955 nameplate5 WOUND <secret> <- no file event 
	{ hit = 4267, line = false, unsure = "late by 1.48 s" }, -- 3165.955 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.481 s
	{ hit = 4268, line = 4271, spell = 1014, unsure = "secret amount" }, -- 3166.138 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4273, line = 4276, spell = 6223, unsure = "secret amount" }, -- 3166.722 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4282, line = false, unsure = "3 file events fit" }, -- 3166.839 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.114 s
	{ hit = 4285, line = false, unsure = "3 file events fit" }, -- 3166.972 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 4288, line = false, unsure = "secret amount" }, -- 3166.972 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 4289, line = false, unsure = "secret amount" }, -- 3166.989 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4290, line = 4291, spell = 1014, unsure = "secret amount" }, -- 3167.089 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4295, line = false, unsure = "3 file events fit" }, -- 3167.255 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.014 s
	{ hit = 4298, line = 4299, spell = 6223, unsure = "secret amount" }, -- 3167.589 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4301, line = 4300, spell = 5019, unsure = "5 file events fit" }, -- 3167.755 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 4304, line = false, unsure = "secret amount" }, -- 3167.805 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 4307, line = false, unsure = "secret amount" }, -- 3167.805 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 4308, line = false, unsure = "secret amount" }, -- 3167.805 nameplate5 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 4311, line = false, unsure = "secret amount" }, -- 3167.839 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.068 s
	{ hit = 4314, line = false, unsure = "secret amount" }, -- 3167.905 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.036 s
	{ hit = 4317, line = false, unsure = "secret amount" }, -- 3167.922 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.085 s
	{ hit = 4320, line = false, unsure = "no file event fits" }, -- 3167.939 nameplate5 WOUND <secret> <- no file event 
	{ hit = 4326, line = 4327, spell = 1094, unsure = "secret amount" }, -- 3168.138 nameplate6 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4328, line = 4331, spell = 1014, unsure = "secret amount" }, -- 3168.138 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4334, line = false, unsure = "3 file events fit" }, -- 3168.472 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 4335, line = false, unsure = "secret amount" }, -- 3168.605 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 4338, line = 4332, spell = false, unsure = "2 file events fit" }, -- 3168.622 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.315 s
	{ hit = 4343, line = 4346, spell = 1014, unsure = "secret amount" }, -- 3169.089 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4347, line = false, unsure = "3 file events fit" }, -- 3169.172 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE -0.035 s
	{ hit = 4350, line = false, unsure = "secret amount" }, -- 3169.189 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 4353, line = false, unsure = "2 file events fit" }, -- 3169.205 nameplate6 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.003 s
	{ hit = 4358, line = false, unsure = "2 file events fit" }, -- 3169.605 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.086 s
	{ hit = 4364, line = false, unsure = "late by 1.11 s" }, -- 3169.689 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.115 s
	{ hit = 4367, line = false, unsure = "secret amount" }, -- 3169.722 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 4370, line = false, unsure = "secret amount" }, -- 3169.822 nameplate6 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.002 s
	{ hit = 4376, line = false, unsure = "4 file events fit" }, -- 3170.289 nameplate6 WOUND <secret> <- other: Victory Rush SPELL_DAMAGE -0.002 s
	{ hit = 4380, line = false, unsure = "secret amount" }, -- 3170.455 nameplate6 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.003 s
	{ hit = 4383, line = false, unsure = "2 file events fit" }, -- 3170.472 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.002 s
	{ hit = 4386, line = false, unsure = "secret amount" }, -- 3170.472 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 4391, line = 4394, spell = 6223, unsure = "secret amount" }, -- 3170.589 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4395, line = 4398, spell = 5019, unsure = "4 file events fit" }, -- 3170.589 nameplate6 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.018 s
	{ hit = 4399, line = 4379, spell = false, unsure = "3 file events fit" }, -- 3170.605 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.298 s
	{ hit = 4405, line = 4408, spell = 1014, unsure = "secret amount" }, -- 3171.089 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4409, line = 4412, spell = 1094, unsure = "secret amount" }, -- 3171.139 nameplate6 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4413, line = false, unsure = "3 file events fit" }, -- 3171.205 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.031 s
	{ hit = 4416, line = false, unsure = "2 file events fit" }, -- 3171.255 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.048 s
	{ hit = 4424, line = false, unsure = "secret amount" }, -- 3171.772 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.052 s
	{ hit = 4427, line = false, unsure = "no file event fits" }, -- 3171.822 nameplate6 WOUND <secret> <- no file event 
	{ hit = 4430, line = false, unsure = "secret amount" }, -- 3172.005 nameplate6 MISS <secret> <- other: Flametongue Attack SPELL_MISSED -0.003 s
	{ hit = 4436, line = false, unsure = "4 file events fit" }, -- 3172.555 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.147 s
	{ hit = 4459, line = false, unsure = "secret amount" }, -- 3180.755 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4464, line = false, unsure = "secret amount" }, -- 3182.755 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4472, line = false, unsure = "secret amount" }, -- 3184.772 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4477, line = false, unsure = "secret amount" }, -- 3186.755 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4480, line = false, unsure = "secret amount" }, -- 3187.722 player HEAL <secret> <- other: Regrowth SPELL_HEAL -0.003 s
	{ hit = 4487, line = false, unsure = "secret amount" }, -- 3190.739 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 4492, line = false, unsure = "secret amount" }, -- 3193.739 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 4496, line = false, unsure = "secret amount" }, -- 3196.739 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4498, line = false, unsure = "secret amount" }, -- 3198.372 nameplate3 MISS <secret> <- other: Flame Shock SPELL_MISSED -0.003 s
	{ hit = 4503, line = false, unsure = "secret amount" }, -- 3198.739 nameplate3 RESIST <secret> <- other: Thorns DAMAGE_SHIELD_MISSED -0.003 s
	{ hit = 4509, line = false, unsure = "secret amount" }, -- 3199.689 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.978 s
	{ hit = 4512, line = false, unsure = "secret amount" }, -- 3199.739 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4513, line = false, unsure = "secret amount" }, -- 3200.556 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 4516, line = false, unsure = "secret amount" }, -- 3200.572 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 4519, line = 4522, spell = 1014, unsure = "secret amount" }, -- 3200.689 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4523, line = false, unsure = "2 file events fit" }, -- 3200.739 nameplate3 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.002 s
	{ hit = 4526, line = false, unsure = "secret amount" }, -- 3200.739 nameplate3 WOUND <secret> <- other: Lightning Shield SPELL_DAMAGE -0.003 s
	{ hit = 4529, line = false, unsure = "secret amount" }, -- 3200.939 nameplate3 MISS <secret> <- other: Flametongue Attack SPELL_MISSED -0.003 s
	{ hit = 4534, line = false, unsure = "2 file events fit" }, -- 3201.372 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.447 s
	{ hit = 4537, line = false, unsure = "secret amount" }, -- 3201.522 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 4543, line = false, unsure = "2 file events fit" }, -- 3202.589 nameplate3 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.002 s
	{ hit = 4546, line = false, unsure = "secret amount" }, -- 3202.589 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 4551, line = false, unsure = "secret amount" }, -- 3202.672 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.097 s
	{ hit = 4554, line = 4557, spell = 1014, unsure = "secret amount" }, -- 3202.689 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4558, line = false, unsure = "secret amount" }, -- 3202.739 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 4562, line = 4561, spell = 7814, unsure = "secret amount" }, -- 3202.789 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 4567, line = false, unsure = "2 file events fit" }, -- 3203.572 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.464 s
	{ hit = 4570, line = 4559, spell = false, unsure = "secret amount" }, -- 3203.722 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 4573, line = false, unsure = "secret amount" }, -- 3204.355 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 4578, line = 4581, spell = 1014, unsure = "secret amount" }, -- 3204.689 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4583, line = false, unsure = "secret amount" }, -- 3205.106 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 4586, line = false, unsure = "secret amount" }, -- 3205.239 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.148 s
	{ hit = 4589, line = false, unsure = "secret amount" }, -- 3205.422 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4592, line = false, unsure = "3 file events fit" }, -- 3205.722 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.397 s
	{ hit = 4595, line = false, unsure = "secret amount" }, -- 3205.739 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4598, line = 4601, spell = 6223, unsure = "secret amount" }, -- 3206.089 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4605, line = false, unsure = "no file event fits" }, -- 3206.356 nameplate3 WOUND <secret> <- no file event 
	{ hit = 4613, line = 4616, spell = 1014, unsure = "secret amount" }, -- 3206.689 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4618, line = false, unsure = "2 file events fit" }, -- 3207.122 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 4621, line = false, unsure = "secret amount" }, -- 3207.422 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4626, line = false, unsure = "secret amount" }, -- 3207.605 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 4629, line = false, unsure = "3 file events fit" }, -- 3207.739 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE -0.002 s
	{ hit = 4633, line = 4636, spell = 1094, unsure = "4 file events fit" }, -- 3207.755 nameplate3 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 4637, line = false, unsure = "3 file events fit" }, -- 3207.755 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 4640, line = false, unsure = "2 file events fit" }, -- 3207.772 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 4643, line = false, unsure = "2 file events fit" }, -- 3207.772 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.005 s
	{ hit = 4646, line = false, unsure = "secret amount" }, -- 3207.772 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.181 s
	{ hit = 4649, line = false, unsure = "secret amount" }, -- 3207.805 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 4654, line = false, unsure = "secret amount" }, -- 3207.989 nameplate3 MISS <secret> <- other: swing SWING_MISSED +0.448 s
	{ hit = 4660, line = false, unsure = "secret amount" }, -- 3208.389 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4661, line = false, unsure = "2 file events fit" }, -- 3208.639 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 4664, line = 4667, spell = 1014, unsure = "secret amount" }, -- 3208.689 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4669, line = false, unsure = "2 file events fit" }, -- 3208.739 player HEAL <secret> <- other: Regrowth SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4670, line = false, unsure = "secret amount" }, -- 3208.739 player HEAL <secret> <- other: Bloom SPELL_HEAL -0.003 s
	{ hit = 4671, line = false, unsure = "secret amount" }, -- 3208.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4677, line = 4680, spell = 6223, unsure = "secret amount" }, -- 3209.089 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4681, line = 4668, spell = false, unsure = "secret amount" }, -- 3209.222 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.497 s
	{ hit = 4684, line = false, unsure = "secret amount" }, -- 3209.289 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.003 s
	{ hit = 4689, line = false, unsure = "secret amount" }, -- 3209.589 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 4692, line = false, unsure = "no file event fits" }, -- 3209.589 nameplate3 WOUND <secret> <- no file event 
	{ hit = 4695, line = false, unsure = "secret amount" }, -- 3209.755 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 4698, line = false, unsure = "secret amount" }, -- 3210.106 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 4701, line = false, unsure = "secret amount" }, -- 3210.239 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.148 s
	{ hit = 4713, line = 4716, spell = 1014, unsure = "secret amount" }, -- 3210.689 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4717, line = 4707, spell = false, unsure = "2 file events fit" }, -- 3210.722 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.181 s
	{ hit = 4720, line = 4723, spell = 1094, unsure = "secret amount" }, -- 3210.772 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4724, line = false, unsure = "secret amount" }, -- 3210.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4728, line = false, unsure = "late by 1.11 s" }, -- 3210.856 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.114 s
	{ hit = 4731, line = false, unsure = "secret amount" }, -- 3211.172 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 4734, line = false, unsure = "secret amount" }, -- 3211.406 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.265 s
	{ hit = 4737, line = false, unsure = "secret amount" }, -- 3211.755 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 4741, line = 4740, spell = 1088, unsure = "secret amount" }, -- 3211.856 nameplate3 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE -0.002 s
	{ hit = 4744, line = false, unsure = "secret amount" }, -- 3211.989 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4747, line = 4750, spell = 6223, unsure = "secret amount" }, -- 3212.089 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4751, line = false, unsure = "secret amount" }, -- 3212.289 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4755, line = 4754, spell = false, unsure = "2 file events fit" }, -- 3212.389 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.014 s
	{ hit = 4760, line = false, unsure = "secret amount" }, -- 3212.556 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.614 s
	{ hit = 4763, line = false, unsure = "2 file events fit" }, -- 3212.622 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 4766, line = 4769, spell = 1014, unsure = "secret amount" }, -- 3212.689 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4770, line = false, unsure = "secret amount" }, -- 3212.739 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.131 s
	{ hit = 4773, line = false, unsure = "secret amount" }, -- 3212.756 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 4777, line = false, unsure = "no file event fits" }, -- 3213.239 nameplate3 WOUND <secret> <- no file event 
	{ hit = 4783, line = false, unsure = "secret amount" }, -- 3213.389 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 4784, line = false, unsure = "secret amount" }, -- 3213.422 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4792, line = false, unsure = "2 file events fit" }, -- 3213.755 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 4795, line = 4798, spell = 1094, unsure = "secret amount" }, -- 3213.772 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4807, line = 4806, spell = 1088, unsure = "secret amount" }, -- 3214.572 nameplate3 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE -0.003 s
	{ hit = 4810, line = false, unsure = "secret amount" }, -- 3214.572 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 4813, line = false, unsure = "4 file events fit" }, -- 3214.606 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.036 s
	{ hit = 4816, line = false, unsure = "3 file events fit" }, -- 3214.639 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.081 s
	{ hit = 4819, line = 4822, spell = 1014, unsure = "secret amount" }, -- 3214.689 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4823, line = false, unsure = "secret amount" }, -- 3214.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4827, line = false, unsure = "secret amount" }, -- 3214.806 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 4832, line = 4831, spell = 7814, unsure = "secret amount" }, -- 3214.939 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 4835, line = 4799, spell = false, unsure = "2 file events fit" }, -- 3215.055 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.863 s
	{ hit = 4838, line = 4841, spell = 6223, unsure = "2 file events fit" }, -- 3215.089 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4842, line = false, unsure = "secret amount" }, -- 3215.122 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 4845, line = false, unsure = "secret amount" }, -- 3215.289 nameplate3 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.003 s
	{ hit = 4848, line = false, unsure = "secret amount" }, -- 3215.289 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4851, line = false, unsure = "secret amount" }, -- 3215.306 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.198 s
	{ hit = 4856, line = false, unsure = "secret amount" }, -- 3215.756 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4863, line = 4862, spell = false, unsure = "2 file events fit" }, -- 3216.039 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.014 s
	{ hit = 4869, line = false, unsure = "secret amount" }, -- 3216.122 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 4872, line = false, unsure = "secret amount" }, -- 3216.172 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4879, line = 4882, spell = 1014, unsure = "secret amount" }, -- 3216.689 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4883, line = 4886, spell = 1094, unsure = "secret amount" }, -- 3216.772 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4890, line = false, unsure = "secret amount" }, -- 3216.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4891, line = false, unsure = "no file event fits" }, -- 3216.889 nameplate3 WOUND <secret> <- no file event 
	{ hit = 4894, line = false, unsure = "secret amount" }, -- 3217.006 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 4897, line = false, unsure = "secret amount" }, -- 3217.072 nameplate3 PARRY <secret> <- other: swing SWING_MISSED +0.714 s
	{ hit = 4904, line = 4903, spell = 1088, unsure = "secret amount" }, -- 3217.339 nameplate3 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE -0.003 s
	{ hit = 4907, line = false, unsure = "secret amount" }, -- 3217.622 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 4910, line = false, unsure = "2 file events fit" }, -- 3217.622 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 4913, line = false, unsure = "secret amount" }, -- 3217.639 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4916, line = false, unsure = "secret amount" }, -- 3217.756 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4919, line = false, unsure = "secret amount" }, -- 3217.806 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.198 s
	{ hit = 4923, line = false, unsure = "secret amount" }, -- 3217.972 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 4926, line = 4929, spell = 6223, unsure = "secret amount" }, -- 3218.105 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4930, line = false, unsure = "3 file events fit" }, -- 3218.122 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 4933, line = false, unsure = "secret amount" }, -- 3218.156 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 4936, line = false, unsure = "secret amount" }, -- 3218.289 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4939, line = false, unsure = "secret amount" }, -- 3218.389 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4943, line = 4946, spell = 1014, unsure = "secret amount" }, -- 3218.689 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4947, line = false, unsure = "3 file events fit" }, -- 3218.689 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.114 s
	{ hit = 4953, line = false, unsure = "secret amount" }, -- 3218.755 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 4960, line = false, unsure = "2 file events fit" }, -- 3219.039 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.081 s
	{ hit = 4963, line = false, unsure = "secret amount" }, -- 3219.305 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 4966, line = false, unsure = "no file event fits" }, -- 3219.439 nameplate3 WOUND <secret> <- no file event 
	{ hit = 4973, line = false, unsure = "2 file events fit" }, -- 3219.756 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 4976, line = 4979, spell = 1094, unsure = "secret amount" }, -- 3219.772 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4981, line = 4980, spell = 1088, unsure = "2 file events fit" }, -- 3220.056 nameplate3 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.014 s
	{ hit = 4984, line = false, unsure = "secret amount" }, -- 3220.139 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 4990, line = false, unsure = "secret amount" }, -- 3220.289 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.181 s
	{ hit = 4995, line = 4972, spell = false, unsure = "secret amount" }, -- 3220.522 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.864 s
	{ hit = 4998, line = false, unsure = "secret amount" }, -- 3220.639 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5001, line = 5004, spell = 1014, unsure = "secret amount" }, -- 3220.706 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5005, line = false, unsure = "secret amount" }, -- 3220.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5009, line = 5012, spell = 6223, unsure = "secret amount" }, -- 3221.089 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5013, line = false, unsure = "secret amount" }, -- 3221.289 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5016, line = false, unsure = "secret amount" }, -- 3221.389 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 5022, line = false, unsure = "secret amount" }, -- 3221.706 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 5026, line = 5025, spell = 5019, unsure = "4 file events fit" }, -- 3221.756 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.014 s
	{ hit = 5033, line = 5019, spell = false, unsure = "3 file events fit" }, -- 3221.855 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.379 s
	{ hit = 5036, line = false, unsure = "2 file events fit" }, -- 3222.156 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.798 s
	{ hit = 5039, line = false, unsure = "no file event fits" }, -- 3222.339 nameplate3 WOUND <secret> <- no file event 
	{ hit = 5048, line = false, unsure = "3 file events fit" }, -- 3222.639 nameplate3 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 5051, line = false, unsure = "2 file events fit" }, -- 3222.639 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 5056, line = 5059, spell = 1014, unsure = "secret amount" }, -- 3222.689 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5060, line = 5063, spell = 1094, unsure = "secret amount" }, -- 3222.756 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5064, line = false, unsure = "secret amount" }, -- 3222.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5068, line = false, unsure = "secret amount" }, -- 3222.856 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.231 s
	{ hit = 5071, line = false, unsure = "secret amount" }, -- 3223.256 nameplate3 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.002 s
	{ hit = 5077, line = false, unsure = "secret amount" }, -- 3223.389 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5078, line = false, unsure = "secret amount" }, -- 3223.422 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.114 s
	{ hit = 5081, line = false, unsure = "secret amount" }, -- 3223.439 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.464 s
	{ hit = 5084, line = false, unsure = "secret amount" }, -- 3223.639 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5087, line = false, unsure = "secret amount" }, -- 3223.739 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 5090, line = 5074, spell = false, unsure = "secret amount" }, -- 3224.172 nameplate3 MISS <secret> <- pet: swing SWING_MISSED +0.864 s
	{ hit = 5095, line = false, unsure = "secret amount" }, -- 3224.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5099, line = false, unsure = "secret amount" }, -- 3224.789 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 5106, line = 5109, spell = 6223, unsure = "secret amount" }, -- 3224.822 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5110, line = false, unsure = "2 file events fit" }, -- 3224.839 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 5113, line = false, unsure = "secret amount" }, -- 3224.856 nameplate3 MISS <secret> <- other: Flametongue Attack SPELL_MISSED -0.003 s
	{ hit = 5119, line = false, unsure = "secret amount" }, -- 3225.156 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 5123, line = 5126, spell = 1014, unsure = "secret amount" }, -- 3225.322 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5127, line = false, unsure = "secret amount" }, -- 3225.389 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.264 s
	{ hit = 5134, line = false, unsure = "secret amount" }, -- 3226.106 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE -0.003 s
	{ hit = 5137, line = false, unsure = "2 file events fit" }, -- 3226.172 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.980 s
	{ hit = 5140, line = 5122, spell = false, unsure = "secret amount" }, -- 3226.206 nameplate3 DODGE <secret> <- pet: swing SWING_MISSED +0.947 s
	{ hit = 5143, line = false, unsure = "late by 1.48 s" }, -- 3226.239 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.480 s
	{ hit = 5146, line = false, unsure = "secret amount" }, -- 3226.522 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 5152, line = false, unsure = "secret amount" }, -- 3226.756 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 5155, line = 5154, spell = 1094, unsure = "secret amount" }, -- 3226.822 nameplate3 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 5160, line = 5159, spell = 7814, unsure = "secret amount" }, -- 3227.106 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 5167, line = 5170, spell = 1014, unsure = "secret amount" }, -- 3227.322 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5173, line = false, unsure = "secret amount" }, -- 3227.656 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 5176, line = false, unsure = "secret amount" }, -- 3227.706 nameplate3 WOUND <secret> <- other: Lightning Shield SPELL_DAMAGE -0.002 s
	{ hit = 5183, line = 5186, spell = 6223, unsure = "secret amount" }, -- 3227.822 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5187, line = false, unsure = "2 file events fit" }, -- 3227.839 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.464 s
	{ hit = 5190, line = false, unsure = "secret amount" }, -- 3227.922 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.280 s
	{ hit = 5193, line = false, unsure = "secret amount" }, -- 3228.206 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 5196, line = false, unsure = "3 file events fit" }, -- 3228.206 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.031 s
	{ hit = 5199, line = false, unsure = "2 file events fit" }, -- 3228.239 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5202, line = false, unsure = "secret amount" }, -- 3228.472 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.130 s
	{ hit = 5213, line = false, unsure = "secret amount" }, -- 3228.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5214, line = false, unsure = "no file event fits" }, -- 3228.772 nameplate3 WOUND <secret> <- no file event 
	{ hit = 5218, line = false, unsure = "secret amount" }, -- 3229.272 nameplate3 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 5221, line = 5224, spell = 1014, unsure = "secret amount" }, -- 3229.322 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5225, line = false, unsure = "4 file events fit" }, -- 3229.639 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 5229, line = 5235, spell = 1094, unsure = "4 file events fit" }, -- 3229.772 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.053 s
	{ hit = 5232, line = 5228, spell = 5019, unsure = "3 file events fit" }, -- 3229.822 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.163 s
	{ hit = 5236, line = false, unsure = "secret amount" }, -- 3230.122 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 5239, line = false, unsure = "secret amount" }, -- 3230.172 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 5242, line = false, unsure = "2 file events fit" }, -- 3230.222 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.630 s
	{ hit = 5245, line = false, unsure = "secret amount" }, -- 3230.422 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.280 s
	{ hit = 5254, line = 5217, spell = false, unsure = "late by 1.30 s" }, -- 3230.572 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +1.297 s
	{ hit = 5260, line = false, unsure = "secret amount" }, -- 3230.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5261, line = 5264, spell = 6223, unsure = "secret amount" }, -- 3230.822 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5265, line = false, unsure = "secret amount" }, -- 3230.839 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 5268, line = false, unsure = "2 file events fit" }, -- 3230.873 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 5271, line = false, unsure = "secret amount" }, -- 3230.873 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.098 s
	{ hit = 5277, line = false, unsure = "2 file events fit" }, -- 3231.239 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5281, line = 5284, spell = 1014, unsure = "secret amount" }, -- 3231.322 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5289, line = false, unsure = "3 file events fit" }, -- 3231.556 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE -0.003 s
	{ hit = 5292, line = false, unsure = "secret amount" }, -- 3231.589 nameplate3 MISS <secret> <- other: Flametongue Attack SPELL_MISSED -0.003 s
	{ hit = 5298, line = 5288, spell = 5019, unsure = "2 file events fit" }, -- 3232.156 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.681 s
	{ hit = 5301, line = 5280, spell = false, unsure = "secret amount" }, -- 3232.222 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 5306, line = false, unsure = "secret amount" }, -- 3232.239 nameplate3 DODGE <secret> <- other: swing SWING_MISSED +0.447 s
	{ hit = 5309, line = false, unsure = "secret amount" }, -- 3232.522 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 5312, line = false, unsure = "secret amount" }, -- 3232.672 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 5315, line = false, unsure = "secret amount" }, -- 3232.706 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 5319, line = false, unsure = "secret amount" }, -- 3232.756 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5320, line = 5323, spell = 1094, unsure = "secret amount" }, -- 3232.822 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5324, line = false, unsure = "secret amount" }, -- 3232.906 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.248 s
	{ hit = 5328, line = false, unsure = "secret amount" }, -- 3233.289 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.081 s
	{ hit = 5331, line = 5334, spell = 1014, unsure = "secret amount" }, -- 3233.322 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5338, line = 5341, spell = 6223, unsure = "secret amount" }, -- 3233.822 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5342, line = 5345, spell = 5019, unsure = "secret amount" }, -- 3233.906 nameplate3 MISS <secret> <- you: Shoot RANGE_MISSED -0.004 s
	{ hit = 5348, line = 5327, spell = false, unsure = "secret amount" }, -- 3234.222 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 5354, line = false, unsure = "secret amount" }, -- 3234.439 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 5360, line = false, unsure = "secret amount" }, -- 3234.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5364, line = false, unsure = "secret amount" }, -- 3234.972 nameplate3 PARRY <secret> <- other: swing SWING_MISSED +0.980 s
	{ hit = 5367, line = false, unsure = "secret amount" }, -- 3235.006 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 5370, line = false, unsure = "2 file events fit" }, -- 3235.056 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 5373, line = false, unsure = "secret amount" }, -- 3235.172 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 5380, line = 5383, spell = 1014, unsure = "secret amount" }, -- 3235.322 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5384, line = false, unsure = "2 file events fit" }, -- 3235.372 nameplate3 WOUND <secret> <- other: Ice Lance SPELL_DAMAGE -0.027 s
	{ hit = 5389, line = false, unsure = "secret amount" }, -- 3235.572 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.414 s
	{ hit = 5392, line = false, unsure = "secret amount" }, -- 3236.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5399, line = false, unsure = "secret amount" }, -- 3237.689 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5402, line = false, unsure = "secret amount" }, -- 3238.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5409, line = false, unsure = "secret amount" }, -- 3240.756 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 5412, line = false, unsure = "secret amount" }, -- 3242.689 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5413, line = false, unsure = "secret amount" }, -- 3242.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5414, line = false, unsure = "secret amount" }, -- 3244.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 5417, line = false, unsure = "secret amount" }, -- 3246.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 5419, line = false, unsure = "secret amount" }, -- 3247.706 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5422, line = false, unsure = "secret amount" }, -- 3248.773 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5423, line = false, unsure = "secret amount" }, -- 3250.756 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5426, line = false, unsure = "secret amount" }, -- 3252.689 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5427, line = false, unsure = "secret amount" }, -- 3252.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5430, line = false, unsure = "secret amount" }, -- 3254.773 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5433, line = false, unsure = "secret amount" }, -- 3257.689 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5434, line = false, unsure = "secret amount" }, -- 3258.789 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5439, line = false, unsure = "secret amount" }, -- 3260.773 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5440, line = false, unsure = "secret amount" }, -- 3262.706 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5441, line = false, unsure = "secret amount" }, -- 3262.773 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5442, line = false, unsure = "secret amount" }, -- 3264.773 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5443, line = false, unsure = "secret amount" }, -- 3267.689 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5444, line = false, unsure = "secret amount" }, -- 3268.772 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 5445, line = false, unsure = "secret amount" }, -- 3270.773 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5446, line = false, unsure = "secret amount" }, -- 3272.706 pet WOUND <secret> <- creature: Poison Cloud SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5447, line = false, unsure = "secret amount" }, -- 3272.773 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5448, line = false, unsure = "secret amount" }, -- 3274.773 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5449, line = false, unsure = "secret amount" }, -- 3276.773 pet HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 5460, line = false, unsure = "secret amount" }, -- 3335.223 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 5461, line = false, unsure = "secret amount" }, -- 3335.323 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.005 s
	{ hit = 5464, line = false, unsure = "secret amount" }, -- 3336.156 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.979 s
	{ hit = 5465, line = false, unsure = "secret amount" }, -- 3336.373 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 5466, line = false, unsure = "secret amount" }, -- 3336.940 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.596 s
	{ hit = 5473, line = false, unsure = "secret amount" }, -- 3337.840 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.446 s
	{ hit = 5477, line = false, unsure = "secret amount" }, -- 3338.323 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5482, line = false, unsure = "secret amount" }, -- 3339.223 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 5488, line = 5487, spell = 7814, unsure = "secret amount" }, -- 3339.390 nameplate4 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 5491, line = 5494, spell = 1014, unsure = "secret amount" }, -- 3339.706 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5495, line = false, unsure = "secret amount" }, -- 3339.706 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 5496, line = false, unsure = "secret amount" }, -- 3339.706 nameplate6 WOUND <secret> <- other: Ice Lance SPELL_DAMAGE +0.012 s
	{ hit = 5500, line = 5485, spell = false, unsure = "secret amount" }, -- 3340.323 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 5505, line = false, unsure = "secret amount" }, -- 3341.223 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 5508, line = false, unsure = "secret amount" }, -- 3341.340 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5513, line = 5511, spell = false, unsure = "2 file events fit" }, -- 3341.573 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.179 s
	{ hit = 5514, line = 5515, spell = 1014, unsure = "secret amount" }, -- 3341.723 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5518, line = 5519, spell = 6223, unsure = "secret amount" }, -- 3342.223 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5520, line = false, unsure = "late by 1.23 s" }, -- 3342.340 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +1.230 s
	{ hit = 5525, line = 5524, spell = 1094, unsure = "secret amount" }, -- 3342.740 nameplate4 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.005 s
	{ hit = 5526, line = false, unsure = "2 file events fit" }, -- 3343.256 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.005 s
	{ hit = 5529, line = false, unsure = "secret amount" }, -- 3343.256 nameplate6 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.005 s
	{ hit = 5539, line = 5540, spell = 1014, unsure = "secret amount" }, -- 3343.723 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5541, line = false, unsure = "secret amount" }, -- 3343.773 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.446 s
	{ hit = 5544, line = false, unsure = "secret amount" }, -- 3344.106 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 5547, line = false, unsure = "secret amount" }, -- 3344.323 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5548, line = 5532, spell = false, unsure = "secret amount" }, -- 3344.340 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 5551, line = false, unsure = "2 file events fit" }, -- 3344.690 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.037 s
	{ hit = 5554, line = false, unsure = "secret amount" }, -- 3344.723 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.630 s
	{ hit = 5557, line = false, unsure = "secret amount" }, -- 3344.723 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 5558, line = 5561, spell = 1014, unsure = "secret amount" }, -- 3344.740 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5562, line = false, unsure = "secret amount" }, -- 3345.073 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 5565, line = false, unsure = "secret amount" }, -- 3345.106 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 5568, line = 5569, spell = 6223, unsure = "secret amount" }, -- 3345.206 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5570, line = false, unsure = "secret amount" }, -- 3345.340 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 5574, line = 5575, spell = 1014, unsure = "secret amount" }, -- 3345.723 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5576, line = 5577, spell = 1094, unsure = "secret amount" }, -- 3345.756 nameplate4 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5581, line = false, unsure = "2 file events fit" }, -- 3345.973 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.446 s
	{ hit = 5586, line = 5571, spell = false, unsure = "secret amount" }, -- 3346.340 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 5589, line = 5592, spell = 1014, unsure = "secret amount" }, -- 3346.740 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5593, line = false, unsure = "secret amount" }, -- 3347.323 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5595, line = false, unsure = "secret amount" }, -- 3347.523 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 5598, line = 5601, spell = 6223, unsure = "secret amount" }, -- 3347.523 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5602, line = 5603, spell = 1014, unsure = "secret amount" }, -- 3347.723 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5604, line = false, unsure = "secret amount" }, -- 3347.740 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 5605, line = false, unsure = "secret amount" }, -- 3347.756 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 5610, line = 5609, spell = 1094, unsure = "secret amount" }, -- 3348.023 nameplate6 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 5618, line = false, unsure = "2 file events fit" }, -- 3348.090 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 5624, line = 5625, spell = 6223, unsure = "secret amount" }, -- 3348.223 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5626, line = 5594, spell = false, unsure = "secret amount" }, -- 3348.340 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 5629, line = false, unsure = "secret amount" }, -- 3348.440 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.004 s
	{ hit = 5630, line = false, unsure = "secret amount" }, -- 3348.440 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.004 s
	{ hit = 5633, line = false, unsure = "secret amount" }, -- 3348.473 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 5634, line = false, unsure = "2 file events fit" }, -- 3348.473 nameplate6 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.005 s
	{ hit = 5637, line = false, unsure = "secret amount" }, -- 3348.473 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.005 s
	{ hit = 5643, line = false, unsure = "secret amount" }, -- 3348.706 nameplate4 PARRY <secret> <- other: swing SWING_MISSED +0.979 s
	{ hit = 5646, line = 5649, spell = 1094, unsure = "secret amount" }, -- 3348.740 nameplate4 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5650, line = 5651, spell = 1014, unsure = "secret amount" }, -- 3348.740 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5661, line = false, unsure = "secret amount" }, -- 3349.190 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 5665, line = false, unsure = "secret amount" }, -- 3349.473 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5668, line = false, unsure = "secret amount" }, -- 3349.473 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5671, line = 5674, spell = 1014, unsure = "secret amount" }, -- 3349.723 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5679, line = false, unsure = "secret amount" }, -- 3350.156 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 5682, line = false, unsure = "secret amount" }, -- 3350.207 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.003 s
	{ hit = 5685, line = false, unsure = "secret amount" }, -- 3350.207 nameplate4 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 5686, line = 5664, spell = false, unsure = "secret amount" }, -- 3350.356 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 5689, line = false, unsure = "secret amount" }, -- 3350.456 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5692, line = false, unsure = "secret amount" }, -- 3350.456 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 5693, line = false, unsure = "secret amount" }, -- 3350.456 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.005 s
	{ hit = 5694, line = false, unsure = "secret amount" }, -- 3350.456 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.005 s
	{ hit = 5697, line = false, unsure = "secret amount" }, -- 3350.473 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 5698, line = false, unsure = "2 file events fit" }, -- 3350.473 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 5701, line = 5704, spell = 6223, unsure = "secret amount" }, -- 3350.523 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5708, line = 5711, spell = 1014, unsure = "secret amount" }, -- 3350.740 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5712, line = false, unsure = "secret amount" }, -- 3350.923 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 5715, line = 5718, spell = 1094, unsure = "secret amount" }, -- 3351.040 nameplate6 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5720, line = 5721, spell = 6223, unsure = "secret amount" }, -- 3351.207 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5722, line = false, unsure = "secret amount" }, -- 3351.223 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 5723, line = false, unsure = "secret amount" }, -- 3351.223 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 5727, line = false, unsure = "secret amount" }, -- 3351.423 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5730, line = false, unsure = "secret amount" }, -- 3351.423 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5733, line = 5732, spell = 7814, unsure = "secret amount" }, -- 3351.573 nameplate6 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.004 s
	{ hit = 5736, line = false, unsure = "secret amount" }, -- 3351.590 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 5739, line = false, unsure = "secret amount" }, -- 3351.673 nameplate4 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 5740, line = false, unsure = "3 file events fit" }, -- 3351.690 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.020 s
	{ hit = 5743, line = 5726, spell = false, unsure = "2 file events fit" }, -- 3351.706 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.296 s
	{ hit = 5746, line = 5747, spell = 1014, unsure = "secret amount" }, -- 3351.723 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5748, line = 5749, spell = 1094, unsure = "secret amount" }, -- 3351.740 nameplate4 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5750, line = false, unsure = "secret amount" }, -- 3351.740 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 5757, line = false, unsure = "late by 1.46 s" }, -- 3352.357 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +1.463 s
	{ hit = 5760, line = false, unsure = "secret amount" }, -- 3352.390 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.446 s
	{ hit = 5761, line = false, unsure = "secret amount" }, -- 3352.406 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5764, line = false, unsure = "secret amount" }, -- 3352.406 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5765, line = false, unsure = "secret amount" }, -- 3352.457 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 5768, line = false, unsure = "secret amount" }, -- 3352.457 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 5769, line = false, unsure = "secret amount" }, -- 3352.473 nameplate4 MISS <secret> <- other: Cursed Murloc Eye SPELL_MISSED -0.004 s
	{ hit = 5770, line = false, unsure = "secret amount" }, -- 3352.490 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 5774, line = 5773, spell = 5019, unsure = "secret amount" }, -- 3352.507 nameplate6 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 5779, line = 5782, spell = 1014, unsure = "secret amount" }, -- 3352.740 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5785, line = false, unsure = "secret amount" }, -- 3353.173 nameplate6 PARRY <secret> <- other: Sunder Armor SPELL_MISSED -0.004 s
	{ hit = 5788, line = false, unsure = "2 file events fit" }, -- 3353.206 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.004 s
	{ hit = 5789, line = false, unsure = "secret amount" }, -- 3353.223 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 5790, line = false, unsure = "secret amount" }, -- 3353.223 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 5793, line = false, unsure = "secret amount" }, -- 3353.390 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5796, line = false, unsure = "secret amount" }, -- 3353.390 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5800, line = 5803, spell = 6223, unsure = "secret amount" }, -- 3353.523 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5804, line = 5805, spell = 1014, unsure = "secret amount" }, -- 3353.723 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5812, line = false, unsure = "secret amount" }, -- 3354.006 nameplate4 RESIST <secret> <- other: Thorns DAMAGE_SHIELD_MISSED -0.004 s
	{ hit = 5813, line = false, unsure = "secret amount" }, -- 3354.006 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 5816, line = 5819, spell = 1094, unsure = "secret amount" }, -- 3354.040 nameplate6 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5820, line = 5821, spell = 6223, unsure = "secret amount" }, -- 3354.223 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5823, line = 5822, spell = 5019, unsure = "2 file events fit" }, -- 3354.273 nameplate6 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.030 s
	{ hit = 5829, line = 5797, spell = false, unsure = "secret amount" }, -- 3354.357 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 5832, line = false, unsure = "secret amount" }, -- 3354.373 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5833, line = false, unsure = "secret amount" }, -- 3354.373 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5836, line = false, unsure = "secret amount" }, -- 3354.457 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 5837, line = false, unsure = "secret amount" }, -- 3354.457 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 5840, line = false, unsure = "secret amount" }, -- 3354.473 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 5841, line = false, unsure = "secret amount" }, -- 3354.473 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 5844, line = 5847, spell = 1014, unsure = "secret amount" }, -- 3354.740 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5848, line = 5849, spell = 1094, unsure = "secret amount" }, -- 3354.740 nameplate4 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5851, line = false, unsure = "secret amount" }, -- 3354.890 nameplate4 DODGE <secret> <- other: swing SWING_MISSED +0.596 s
	{ hit = 5857, line = false, unsure = "secret amount" }, -- 3355.223 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 5858, line = false, unsure = "secret amount" }, -- 3355.223 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 5863, line = false, unsure = "secret amount" }, -- 3355.340 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5866, line = false, unsure = "secret amount" }, -- 3355.340 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 5868, line = 5871, spell = 1014, unsure = "secret amount" }, -- 3355.707 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5876, line = 5875, spell = 5019, unsure = "2 file events fit" }, -- 3356.090 nameplate6 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.046 s
	{ hit = 5877, line = false, unsure = "secret amount" }, -- 3356.207 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5880, line = 5867, spell = false, unsure = "secret amount" }, -- 3356.373 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 5881, line = false, unsure = "secret amount" }, -- 3356.407 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 5884, line = false, unsure = "secret amount" }, -- 3356.407 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 5885, line = false, unsure = "secret amount" }, -- 3356.456 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.004 s
	{ hit = 5888, line = false, unsure = "secret amount" }, -- 3356.456 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.004 s
	{ hit = 5889, line = false, unsure = "2 file events fit" }, -- 3356.490 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 5892, line = false, unsure = "2 file events fit" }, -- 3356.490 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 5893, line = 5894, spell = 6223, unsure = "secret amount" }, -- 3356.540 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5895, line = false, unsure = "secret amount" }, -- 3356.556 nameplate4 WOUND <secret> <- other: Ice Lance SPELL_DAMAGE -0.004 s
	{ hit = 5898, line = false, unsure = "secret amount" }, -- 3356.573 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 5907, line = false, unsure = "secret amount" }, -- 3357.140 softinteract WOUND <secret> <- other: swing SWING_DAMAGE +0.463 s
	{ hit = 5908, line = 5911, spell = 6223, unsure = "secret amount" }, -- 3357.207 nameplate4 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 5912, line = false, unsure = "secret amount" }, -- 3357.207 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 5919, line = false, unsure = "secret amount" }, -- 3357.707 nameplate4 PARRY <secret> <- other: Stormstrike SPELL_MISSED -0.003 s
	{ hit = 5922, line = 5925, spell = 1014, unsure = "secret amount" }, -- 3357.723 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5926, line = 5929, spell = 1094, unsure = "secret amount" }, -- 3357.740 nameplate4 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5931, line = 5930, spell = 5019, unsure = "2 file events fit" }, -- 3357.873 nameplate4 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.046 s
	{ hit = 5943, line = false, unsure = "2 file events fit" }, -- 3358.173 nameplate4 WOUND <secret> <- other: Victory Rush SPELL_DAMAGE -0.004 s
	{ hit = 5946, line = false, unsure = "secret amount" }, -- 3358.223 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 5949, line = 5918, spell = false, unsure = "secret amount" }, -- 3358.373 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 5960, line = false, unsure = "late by 1.48 s" }, -- 3359.173 nameplate4 MISS <secret> <- other: swing SWING_MISSED +1.479 s
	{ hit = 5963, line = false, unsure = "2 file events fit" }, -- 3359.223 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 5966, line = false, unsure = "secret amount" }, -- 3359.223 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5969, line = 5972, spell = false, unsure = "2 file events fit" }, -- 3359.340 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE -0.087 s
	{ hit = 5974, line = false, unsure = "3 file events fit" }, -- 3359.657 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 5977, line = 5983, spell = 1014, unsure = "3 file events fit" }, -- 3359.690 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.020 s
	{ hit = 5980, line = 5973, spell = 5019, unsure = "2 file events fit" }, -- 3359.707 nameplate4 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.063 s
	{ hit = 5984, line = false, unsure = "late by 1.50 s" }, -- 3360.373 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +1.496 s
	{ hit = 5987, line = false, unsure = "secret amount" }, -- 3360.607 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 5992, line = false, unsure = "secret amount" }, -- 3360.707 nameplate4 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.003 s
	{ hit = 5995, line = false, unsure = "secret amount" }, -- 3360.740 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 6001, line = false, unsure = "secret amount" }, -- 3361.223 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6006, line = 6005, spell = 5019, unsure = "3 file events fit" }, -- 3361.523 nameplate4 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.063 s
	{ hit = 6009, line = 6004, spell = false, unsure = "2 file events fit" }, -- 3361.540 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.096 s
	{ hit = 6012, line = false, unsure = "secret amount" }, -- 3361.707 nameplate4 MISS <secret> <- other: swing SWING_MISSED +0.597 s
	{ hit = 6015, line = 6018, spell = 1014, unsure = "secret amount" }, -- 3361.723 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6022, line = false, unsure = "secret amount" }, -- 3361.907 nameplate4 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 6025, line = false, unsure = "secret amount" }, -- 3362.223 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6028, line = false, unsure = "late by 1.31 s" }, -- 3362.390 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +1.313 s
	{ hit = 6033, line = false, unsure = "secret amount" }, -- 3363.023 nameplate4 RESIST <secret> <- other: Thorns DAMAGE_SHIELD_MISSED -0.004 s
	{ hit = 6036, line = false, unsure = "secret amount" }, -- 3363.223 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6040, line = false, unsure = "2 file events fit" }, -- 3363.290 nameplate4 WOUND <secret> <- other: Heroic Strike SPELL_DAMAGE -0.005 s
	{ hit = 6043, line = 6039, spell = 5019, unsure = "secret amount" }, -- 3363.290 nameplate4 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.030 s
	{ hit = 6046, line = false, unsure = "no file event fits" }, -- 3363.290 nameplate4 WOUND <secret> <- no file event 
	{ hit = 6075, line = false, unsure = "secret amount" }, -- 3405.557 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.976 s
	{ hit = 6080, line = false, unsure = "secret amount" }, -- 3407.074 nameplate4 MISS <secret> <- other: Stormstrike SPELL_MISSED -0.004 s
	{ hit = 6089, line = false, unsure = "2 file events fit" }, -- 3407.557 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.546 s
	{ hit = 6090, line = false, unsure = "late by 1.41 s" }, -- 3407.990 player WOUND <secret> <- creature: swing SWING_DAMAGE +1.412 s
	{ hit = 6094, line = false, unsure = "secret amount" }, -- 3408.140 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.996 s
	{ hit = 6096, line = false, unsure = "secret amount" }, -- 3408.607 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 6100, line = false, unsure = "secret amount" }, -- 3409.040 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 6102, line = false, unsure = "secret amount" }, -- 3409.307 nameplate4 DODGE <secret> <- other: Sunder Armor SPELL_MISSED -0.004 s
	{ hit = 6113, line = false, unsure = "secret amount" }, -- 3409.640 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 6116, line = false, unsure = "2 file events fit" }, -- 3409.807 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.196 s
	{ hit = 6122, line = false, unsure = "secret amount" }, -- 3410.007 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.005 s
	{ hit = 6127, line = false, unsure = "secret amount" }, -- 3410.607 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 6130, line = false, unsure = "secret amount" }, -- 3410.790 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 6131, line = false, unsure = "2 file events fit" }, -- 3410.790 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 6135, line = false, unsure = "secret amount" }, -- 3411.090 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.005 s
	{ hit = 6143, line = false, unsure = "no file event fits" }, -- 3411.590 nameplate4 WOUND <secret> <- no file event 
	{ hit = 6159, line = false, unsure = "secret amount" }, -- 3412.974 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 6162, line = false, unsure = "2 file events fit" }, -- 3413.007 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6167, line = false, unsure = "secret amount" }, -- 3413.040 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 6170, line = false, unsure = "2 file events fit" }, -- 3413.040 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.029 s
	{ hit = 6173, line = false, unsure = "secret amount" }, -- 3413.424 nameplate4 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 6176, line = false, unsure = "secret amount" }, -- 3413.424 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 6177, line = false, unsure = "2 file events fit" }, -- 3413.474 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 6180, line = false, unsure = "secret amount" }, -- 3413.474 nameplate4 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.004 s
	{ hit = 6185, line = false, unsure = "secret amount" }, -- 3413.540 nameplate4 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.079 s
	{ hit = 6188, line = false, unsure = "secret amount" }, -- 3413.607 nameplate8 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.005 s
	{ hit = 6189, line = false, unsure = "no file event fits" }, -- 3413.607 nameplate4 WOUND <secret> <- no file event 
	{ hit = 6198, line = false, unsure = "secret amount" }, -- 3414.357 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.446 s
	{ hit = 6199, line = false, unsure = "secret amount" }, -- 3414.440 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 6210, line = false, unsure = "secret amount" }, -- 3415.290 nameplate4 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.005 s
	{ hit = 6215, line = false, unsure = "secret amount" }, -- 3415.324 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 6218, line = false, unsure = "secret amount" }, -- 3415.374 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 6221, line = false, unsure = "secret amount" }, -- 3415.641 nameplate8 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 6222, line = false, unsure = "secret amount" }, -- 3415.890 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.005 s
	{ hit = 6223, line = false, unsure = "secret amount" }, -- 3416.007 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6237, line = false, unsure = "secret amount" }, -- 3416.940 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 6238, line = false, unsure = "secret amount" }, -- 3417.507 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.596 s
	{ hit = 6239, line = false, unsure = "secret amount" }, -- 3417.607 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.979 s
	{ hit = 6240, line = false, unsure = "secret amount" }, -- 3417.624 nameplate8 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.006 s
	{ hit = 6241, line = false, unsure = "2 file events fit" }, -- 3417.790 nameplate4 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.005 s
	{ hit = 6242, line = false, unsure = "secret amount" }, -- 3417.790 nameplate4 WOUND <secret> <- other: Lightning Shield SPELL_DAMAGE -0.005 s
	{ hit = 6243, line = false, unsure = "secret amount" }, -- 3418.307 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 6251, line = false, unsure = "secret amount" }, -- 3419.007 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6254, line = false, unsure = "secret amount" }, -- 3419.640 nameplate8 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 6255, line = false, unsure = "secret amount" }, -- 3419.807 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.979 s
	{ hit = 6256, line = false, unsure = "secret amount" }, -- 3420.190 nameplate4 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.004 s
	{ hit = 6258, line = false, unsure = "secret amount" }, -- 3420.424 nameplate8 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 6265, line = false, unsure = "secret amount" }, -- 3421.124 nameplate6 MISS <secret> <- other: swing SWING_MISSED +0.796 s
	{ hit = 6268, line = false, unsure = "secret amount" }, -- 3421.474 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.446 s
	{ hit = 6271, line = false, unsure = "secret amount" }, -- 3421.990 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 6276, line = false, unsure = "secret amount" }, -- 3422.540 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6277, line = false, unsure = "secret amount" }, -- 3422.540 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6278, line = false, unsure = "secret amount" }, -- 3422.540 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6281, line = false, unsure = "secret amount" }, -- 3422.807 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.446 s
	{ hit = 6282, line = false, unsure = "secret amount" }, -- 3423.440 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.005 s
	{ hit = 6283, line = false, unsure = "secret amount" }, -- 3423.440 nameplate4 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.005 s
	{ hit = 6284, line = false, unsure = "secret amount" }, -- 3423.440 nameplate8 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.005 s
	{ hit = 6285, line = false, unsure = "secret amount" }, -- 3423.540 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6286, line = false, unsure = "secret amount" }, -- 3423.540 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6287, line = false, unsure = "secret amount" }, -- 3423.540 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6290, line = false, unsure = "secret amount" }, -- 3423.640 nameplate8 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.005 s
	{ hit = 6293, line = false, unsure = "secret amount" }, -- 3423.757 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 6294, line = false, unsure = "secret amount" }, -- 3423.857 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6295, line = false, unsure = "secret amount" }, -- 3423.857 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6296, line = false, unsure = "secret amount" }, -- 3423.857 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6299, line = false, unsure = "secret amount" }, -- 3424.490 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6300, line = false, unsure = "secret amount" }, -- 3424.490 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6301, line = false, unsure = "secret amount" }, -- 3424.490 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6302, line = false, unsure = "secret amount" }, -- 3424.524 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.796 s
	{ hit = 6307, line = false, unsure = "2 file events fit" }, -- 3424.940 nameplate6 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.005 s
	{ hit = 6308, line = false, unsure = "secret amount" }, -- 3424.940 nameplate8 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 6309, line = false, unsure = "2 file events fit" }, -- 3424.940 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 6310, line = false, unsure = "secret amount" }, -- 3424.940 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 6313, line = false, unsure = "secret amount" }, -- 3424.974 nameplate6 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 6314, line = false, unsure = "secret amount" }, -- 3424.990 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.005 s
	{ hit = 6316, line = false, unsure = "secret amount" }, -- 3425.474 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 6317, line = false, unsure = "secret amount" }, -- 3425.474 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 6318, line = false, unsure = "secret amount" }, -- 3425.474 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 6320, line = false, unsure = "secret amount" }, -- 3425.857 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6323, line = false, unsure = "secret amount" }, -- 3425.857 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 6324, line = false, unsure = "secret amount" }, -- 3425.857 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 6325, line = false, unsure = "late by 1.30 s" }, -- 3425.874 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +1.296 s
	{ hit = 6331, line = false, unsure = "secret amount" }, -- 3426.424 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.004 s
	{ hit = 6332, line = false, unsure = "secret amount" }, -- 3426.440 nameplate4 PARRY <secret> <- other: Sunder Armor SPELL_MISSED -0.005 s
	{ hit = 6335, line = false, unsure = "secret amount" }, -- 3426.457 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6338, line = false, unsure = "secret amount" }, -- 3426.457 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6339, line = false, unsure = "secret amount" }, -- 3426.457 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6351, line = 6350, spell = 7814, unsure = "secret amount" }, -- 3426.891 nameplate4 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 6354, line = false, unsure = "secret amount" }, -- 3426.907 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD -0.005 s
	{ hit = 6355, line = false, unsure = "secret amount" }, -- 3426.940 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.005 s
	{ hit = 6360, line = false, unsure = "secret amount" }, -- 3427.140 nameplate8 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 6365, line = false, unsure = "secret amount" }, -- 3427.724 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.596 s
	{ hit = 6366, line = 6348, spell = false, unsure = "secret amount" }, -- 3427.840 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 6367, line = false, unsure = "secret amount" }, -- 3427.874 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6368, line = false, unsure = "secret amount" }, -- 3427.874 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6371, line = false, unsure = "secret amount" }, -- 3427.874 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6375, line = false, unsure = "secret amount" }, -- 3427.924 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 6383, line = false, unsure = "secret amount" }, -- 3428.174 nameplate8 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 6384, line = false, unsure = "secret amount" }, -- 3428.407 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.462 s
	{ hit = 6385, line = 6386, spell = 1014, unsure = "secret amount" }, -- 3428.557 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6391, line = false, unsure = "secret amount" }, -- 3428.907 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD -0.004 s
	{ hit = 6395, line = false, unsure = "secret amount" }, -- 3429.340 nameplate4 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.005 s
	{ hit = 6396, line = false, unsure = "secret amount" }, -- 3429.440 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 6399, line = false, unsure = "secret amount" }, -- 3429.440 nameplate8 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.005 s
	{ hit = 6406, line = 6387, spell = false, unsure = "secret amount" }, -- 3429.824 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 6407, line = false, unsure = "secret amount" }, -- 3429.874 nameplate4 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6408, line = false, unsure = "secret amount" }, -- 3429.874 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6411, line = false, unsure = "secret amount" }, -- 3429.874 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6412, line = false, unsure = "secret amount" }, -- 3430.040 nameplate4 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.005 s
	{ hit = 6413, line = false, unsure = "secret amount" }, -- 3430.040 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.005 s
	{ hit = 6414, line = false, unsure = "secret amount" }, -- 3430.040 nameplate8 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.005 s
	{ hit = 6417, line = false, unsure = "2 file events fit" }, -- 3430.074 nameplate4 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.004 s
	{ hit = 6418, line = false, unsure = "secret amount" }, -- 3430.074 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 6419, line = false, unsure = "secret amount" }, -- 3430.074 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 6420, line = false, unsure = "secret amount" }, -- 3430.074 nameplate8 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 6434, line = 6435, spell = 1014, unsure = "secret amount" }, -- 3430.557 nameplate4 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 6436, line = false, unsure = "secret amount" }, -- 3430.607 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.463 s
	{ hit = 6440, line = false, unsure = "secret amount" }, -- 3430.907 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD -0.004 s
	{ hit = 6441, line = false, unsure = "2 file events fit" }, -- 3430.941 nameplate8 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 6444, line = false, unsure = "2 file events fit" }, -- 3430.941 nameplate4 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 6445, line = false, unsure = "secret amount" }, -- 3430.941 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 6446, line = false, unsure = "secret amount" }, -- 3430.941 nameplate8 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 6451, line = false, unsure = "secret amount" }, -- 3430.974 nameplate8 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 6458, line = 6459, spell = 6223, unsure = "secret amount" }, -- 3431.057 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 6460, line = false, unsure = "secret amount" }, -- 3431.074 nameplate8 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 6469, line = false, unsure = "secret amount" }, -- 3431.490 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6470, line = false, unsure = "secret amount" }, -- 3431.490 nameplate4 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.006 s
	{ hit = 6471, line = false, unsure = "secret amount" }, -- 3431.490 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.006 s
	{ hit = 6477, line = 6478, spell = 1014, unsure = "secret amount" }, -- 3431.557 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6480, line = false, unsure = "secret amount" }, -- 3431.841 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.796 s
	{ hit = 6483, line = false, unsure = "secret amount" }, -- 3431.874 nameplate8 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6486, line = false, unsure = "secret amount" }, -- 3431.874 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6487, line = false, unsure = "secret amount" }, -- 3432.057 nameplate8 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.005 s
	{ hit = 6490, line = false, unsure = "secret amount" }, -- 3432.057 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.005 s
	{ hit = 6491, line = false, unsure = "secret amount" }, -- 3432.090 nameplate8 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.005 s
	{ hit = 6494, line = false, unsure = "secret amount" }, -- 3432.090 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.005 s
	{ hit = 6498, line = false, unsure = "secret amount" }, -- 3432.440 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 6499, line = false, unsure = "secret amount" }, -- 3432.474 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 6500, line = false, unsure = "secret amount" }, -- 3432.474 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 6507, line = false, unsure = "secret amount" }, -- 3432.907 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD -0.004 s
	{ hit = 6510, line = 6506, spell = false, unsure = "2 file events fit" }, -- 3433.324 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.429 s
	{ hit = 6511, line = false, unsure = "secret amount" }, -- 3433.440 nameplate6 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.005 s
	{ hit = 6514, line = false, unsure = "secret amount" }, -- 3433.440 nameplate8 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.005 s
	{ hit = 6515, line = false, unsure = "secret amount" }, -- 3433.457 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6516, line = false, unsure = "secret amount" }, -- 3433.457 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6519, line = 6522, spell = 1014, unsure = "secret amount" }, -- 3433.574 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6527, line = false, unsure = "late by 1.49 s" }, -- 3433.840 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +1.495 s
	{ hit = 6528, line = false, unsure = "secret amount" }, -- 3433.874 nameplate8 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.004 s
	{ hit = 6529, line = false, unsure = "secret amount" }, -- 3433.874 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6535, line = false, unsure = "secret amount" }, -- 3434.057 nameplate8 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.005 s
	{ hit = 6536, line = false, unsure = "secret amount" }, -- 3434.057 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.005 s
	{ hit = 6539, line = 6540, spell = 6223, unsure = "2 file events fit" }, -- 3434.074 nameplate8 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6541, line = 6544, spell = 6223, unsure = "2 file events fit" }, -- 3434.074 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6548, line = false, unsure = "secret amount" }, -- 3434.090 nameplate8 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.005 s
	{ hit = 6549, line = false, unsure = "secret amount" }, -- 3434.090 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.005 s
	{ hit = 6552, line = false, unsure = "secret amount" }, -- 3434.440 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6553, line = false, unsure = "secret amount" }, -- 3434.440 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6558, line = false, unsure = "secret amount" }, -- 3434.474 nameplate8 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 6559, line = 6560, spell = 1014, unsure = "secret amount" }, -- 3434.574 nameplate8 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6567, line = false, unsure = "secret amount" }, -- 3434.907 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD -0.005 s
	{ hit = 6568, line = 6566, spell = false, unsure = "3 file events fit" }, -- 3435.007 nameplate8 WOUND <secret> <- pet: swing SWING_DAMAGE +0.112 s
	{ hit = 6569, line = false, unsure = "2 file events fit" }, -- 3435.041 nameplate8 WOUND <secret> <- other: swing SWING_DAMAGE +0.479 s
	{ hit = 6571, line = false, unsure = "secret amount" }, -- 3435.140 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.005 s
	{ hit = 6574, line = 6570, spell = 5019, unsure = "secret amount" }, -- 3435.224 nameplate6 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.146 s
	{ hit = 6579, line = false, unsure = "secret amount" }, -- 3435.407 nameplate8 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6580, line = false, unsure = "secret amount" }, -- 3435.407 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6583, line = false, unsure = "secret amount" }, -- 3435.424 nameplate6 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 6586, line = 6589, spell = 1014, unsure = "secret amount" }, -- 3435.557 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 6591, line = false, unsure = "late by 1.40 s" }, -- 3435.840 softinteract WOUND <secret> <- other: swing SWING_DAMAGE +1.395 s
	{ hit = 6593, line = false, unsure = "secret amount" }, -- 3435.874 nameplate6 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 6596, line = false, unsure = "secret amount" }, -- 3436.057 nameplate6 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.005 s
	{ hit = 6600, line = false, unsure = "secret amount" }, -- 3436.090 nameplate6 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.005 s
	{ hit = 6609, line = false, unsure = "secret amount" }, -- 3436.390 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.005 s
	{ hit = 6614, line = false, unsure = "secret amount" }, -- 3436.774 nameplate6 WOUND <secret> <- other: Heroic Strike SPELL_DAMAGE -0.005 s
	{ hit = 6617, line = false, unsure = "no file event fits" }, -- 3436.774 nameplate6 WOUND <secret> <- no file event 
	{ hit = 6625, line = false, unsure = "secret amount" }, -- 3436.907 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD -0.004 s
	{ hit = 6626, line = 6632, spell = 6223, unsure = "3 file events fit" }, -- 3437.024 nameplate6 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.038 s
	{ hit = 6629, line = 6624, spell = false, unsure = "2 file events fit" }, -- 3437.057 nameplate6 WOUND <secret> <- pet: swing SWING_DAMAGE +0.162 s
	{ hit = 6637, line = false, unsure = "secret amount" }, -- 3437.374 nameplate6 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.004 s
	{ hit = 6641, line = 6644, spell = 1014, unsure = "secret amount" }, -- 3437.557 nameplate6 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6645, line = false, unsure = "2 file events fit" }, -- 3437.840 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE -0.024 s
	{ hit = 6719, line = 6718, spell = 1014, unsure = "secret amount" }, -- 3454.208 nameplate2 MISS <secret> <- you: Bane of Agony SPELL_MISSED -0.005 s
	{ hit = 6729, line = false, unsure = "2 file events fit" }, -- 3454.741 nameplate1 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6730, line = false, unsure = "secret amount" }, -- 3454.974 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.462 s
	{ hit = 6732, line = false, unsure = "secret amount" }, -- 3455.141 nameplate1 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 6735, line = false, unsure = "secret amount" }, -- 3455.191 nameplate1 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6740, line = 6739, spell = 7814, unsure = "secret amount" }, -- 3455.641 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 6748, line = 6737, spell = false, unsure = "secret amount" }, -- 3456.274 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 6758, line = false, unsure = "2 file events fit" }, -- 3456.641 nameplate6 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.005 s
	{ hit = 6759, line = false, unsure = "secret amount" }, -- 3456.691 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.796 s
	{ hit = 6761, line = false, unsure = "2 file events fit" }, -- 3456.957 nameplate6 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.005 s
	{ hit = 6767, line = false, unsure = "secret amount" }, -- 3457.691 nameplate6 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.005 s
	{ hit = 6768, line = false, unsure = "2 file events fit" }, -- 3457.724 nameplate6 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 6769, line = 6762, spell = false, unsure = "secret amount" }, -- 3458.274 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 6777, line = 6780, spell = 6223, unsure = "secret amount" }, -- 3458.874 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6783, line = false, unsure = "secret amount" }, -- 3459.007 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.395 s
	{ hit = 6790, line = 6785, spell = false, unsure = "secret amount" }, -- 3460.291 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 6793, line = false, unsure = "secret amount" }, -- 3460.741 nameplate6 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6796, line = 6795, spell = 1094, unsure = "secret amount" }, -- 3460.974 nameplate2 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.005 s
	{ hit = 6799, line = false, unsure = "secret amount" }, -- 3461.091 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.463 s
	{ hit = 6806, line = 6809, spell = 6223, unsure = "secret amount" }, -- 3461.874 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6810, line = 6801, spell = false, unsure = "secret amount" }, -- 3462.274 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 6815, line = false, unsure = "secret amount" }, -- 3462.957 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.005 s
	{ hit = 6820, line = false, unsure = "secret amount" }, -- 3463.057 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.428 s
	{ hit = 6823, line = 6826, spell = 1014, unsure = "secret amount" }, -- 3463.641 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6827, line = false, unsure = "2 file events fit" }, -- 3463.741 nameplate6 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6828, line = 6831, spell = 1094, unsure = "secret amount" }, -- 3463.991 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6833, line = 6822, spell = false, unsure = "secret amount" }, -- 3464.291 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 6838, line = false, unsure = "secret amount" }, -- 3464.724 nameplate2 MISS <secret> <- other: swing SWING_MISSED +0.445 s
	{ hit = 6845, line = 6848, spell = 6223, unsure = "secret amount" }, -- 3464.874 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 6849, line = false, unsure = "secret amount" }, -- 3465.091 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.463 s
	{ hit = 6852, line = false, unsure = "secret amount" }, -- 3465.124 nameplate2 WOUND <secret> <- other: Victory Rush SPELL_DAMAGE -0.005 s
	{ hit = 6858, line = 6861, spell = 1014, unsure = "secret amount" }, -- 3465.641 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6862, line = false, unsure = "2 file events fit" }, -- 3465.674 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.005 s
	{ hit = 6865, line = false, unsure = "secret amount" }, -- 3465.707 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 6868, line = false, unsure = "2 file events fit" }, -- 3465.924 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 6871, line = false, unsure = "secret amount" }, -- 3465.957 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 6876, line = false, unsure = "2 file events fit" }, -- 3466.291 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.396 s
	{ hit = 6880, line = false, unsure = "2 file events fit" }, -- 3466.491 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.013 s
	{ hit = 6885, line = 6891, spell = 1094, unsure = "secret amount" }, -- 3466.924 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.071 s
	{ hit = 6888, line = false, unsure = "no file event fits" }, -- 3466.991 nameplate2 WOUND <secret> <- no file event 
	{ hit = 6894, line = 6897, spell = 1014, unsure = "secret amount" }, -- 3467.641 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 6898, line = 6893, spell = 5019, unsure = "2 file events fit" }, -- 3467.691 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.046 s
	{ hit = 6903, line = 6902, spell = 7814, unsure = "secret amount" }, -- 3467.824 nameplate2 MISS <secret> <- pet: Lash of Pain SPELL_MISSED -0.005 s
	{ hit = 6906, line = 6909, spell = 6223, unsure = "secret amount" }, -- 3467.874 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6910, line = 6892, spell = false, unsure = "secret amount" }, -- 3468.307 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 6919, line = false, unsure = "secret amount" }, -- 3468.957 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6924, line = false, unsure = "secret amount" }, -- 3469.057 nameplate2 RESIST <secret> <- other: Thorns DAMAGE_SHIELD_MISSED -0.005 s
	{ hit = 6927, line = false, unsure = "secret amount" }, -- 3469.141 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.463 s
	{ hit = 6934, line = 6937, spell = 1014, unsure = "secret amount" }, -- 3469.641 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6938, line = 6941, spell = 5019, unsure = "secret amount" }, -- 3469.924 nameplate2 MISS <secret> <- you: Shoot RANGE_MISSED -0.005 s
	{ hit = 6942, line = 6945, spell = 1094, unsure = "secret amount" }, -- 3469.991 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6946, line = false, unsure = "3 file events fit" }, -- 3469.991 nameplate2 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.004 s
	{ hit = 6949, line = false, unsure = "secret amount" }, -- 3470.291 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 6950, line = false, unsure = "2 file events fit" }, -- 3470.307 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.696 s
	{ hit = 6953, line = false, unsure = "secret amount" }, -- 3470.491 nameplate2 IMMUNE <secret> <- other: Frostbolt SPELL_MISSED -0.005 s
	{ hit = 6958, line = false, unsure = "2 file events fit" }, -- 3470.591 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE -0.003 s
	{ hit = 6961, line = 6964, spell = 6223, unsure = "secret amount" }, -- 3470.874 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 6968, line = 6977, spell = 5019, unsure = "2 file events fit" }, -- 3471.191 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.087 s
	{ hit = 6971, line = false, unsure = "secret amount" }, -- 3471.207 nameplate2 MISS <secret> <- other: Claw SPELL_MISSED -0.004 s
	{ hit = 6978, line = false, unsure = "secret amount" }, -- 3471.291 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 6981, line = 6984, spell = false, unsure = "2 file events fit" }, -- 3471.324 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE -0.037 s
	{ hit = 6985, line = false, unsure = "secret amount" }, -- 3471.441 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6986, line = false, unsure = "secret amount" }, -- 3471.441 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 6992, line = 6995, spell = 1014, unsure = "secret amount" }, -- 3471.641 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 6996, line = false, unsure = "3 file events fit" }, -- 3471.674 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 6999, line = false, unsure = "secret amount" }, -- 3471.724 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 7002, line = false, unsure = "secret amount" }, -- 3471.874 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.980 s
	{ hit = 7003, line = false, unsure = "secret amount" }, -- 3471.957 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 7008, line = false, unsure = "2 file events fit" }, -- 3472.191 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 7011, line = false, unsure = "secret amount" }, -- 3472.274 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 7012, line = false, unsure = "late by 1.03 s" }, -- 3472.307 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.029 s
	{ hit = 7017, line = false, unsure = "secret amount" }, -- 3472.407 nameplate2 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.004 s
	{ hit = 7020, line = false, unsure = "secret amount" }, -- 3472.757 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.180 s
	{ hit = 7023, line = 7026, spell = 1094, unsure = "secret amount" }, -- 3472.991 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7028, line = false, unsure = "secret amount" }, -- 3473.057 nameplate2 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 7034, line = 7027, spell = 5019, unsure = "secret amount" }, -- 3473.124 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.080 s
	{ hit = 7037, line = false, unsure = "no file event fits" }, -- 3473.174 nameplate2 WOUND <secret> <- no file event 
	{ hit = 7044, line = false, unsure = "secret amount" }, -- 3473.441 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7045, line = false, unsure = "secret amount" }, -- 3473.441 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7051, line = false, unsure = "secret amount" }, -- 3473.524 nameplate2 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 7054, line = false, unsure = "secret amount" }, -- 3473.541 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.447 s
	{ hit = 7055, line = 7058, spell = 1014, unsure = "secret amount" }, -- 3473.657 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 7059, line = false, unsure = "secret amount" }, -- 3473.824 nameplate2 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE -0.003 s
	{ hit = 7062, line = false, unsure = "3 file events fit" }, -- 3473.841 nameplate2 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 7065, line = false, unsure = "2 file events fit" }, -- 3473.841 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 7070, line = 7073, spell = 6223, unsure = "secret amount" }, -- 3473.874 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7074, line = false, unsure = "2 file events fit" }, -- 3473.958 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7075, line = false, unsure = "secret amount" }, -- 3473.958 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 7076, line = false, unsure = "2 file events fit" }, -- 3473.958 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.397 s
	{ hit = 7084, line = false, unsure = "secret amount" }, -- 3474.291 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 7085, line = 7043, spell = false, unsure = "secret amount" }, -- 3474.324 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 7088, line = false, unsure = "secret amount" }, -- 3474.707 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 7091, line = false, unsure = "secret amount" }, -- 3474.841 nameplate2 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE -0.003 s
	{ hit = 7095, line = false, unsure = "secret amount" }, -- 3474.857 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 7098, line = false, unsure = "4 file events fit" }, -- 3474.924 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.036 s
	{ hit = 7101, line = 7094, spell = 5019, unsure = "3 file events fit" }, -- 3474.957 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.113 s
	{ hit = 7106, line = false, unsure = "secret amount" }, -- 3475.057 nameplate2 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 7109, line = false, unsure = "2 file events fit" }, -- 3475.141 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.464 s
	{ hit = 7115, line = false, unsure = "2 file events fit" }, -- 3475.274 nameplate2 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.020 s
	{ hit = 7118, line = false, unsure = "secret amount" }, -- 3475.291 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.747 s
	{ hit = 7125, line = false, unsure = "secret amount" }, -- 3475.441 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7126, line = false, unsure = "secret amount" }, -- 3475.441 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7129, line = false, unsure = "2 file events fit" }, -- 3475.457 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 7130, line = false, unsure = "3 file events fit" }, -- 3475.457 nameplate2 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 7138, line = 7141, spell = 1014, unsure = "secret amount" }, -- 3475.657 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7142, line = false, unsure = "secret amount" }, -- 3475.824 nameplate2 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE -0.003 s
	{ hit = 7145, line = false, unsure = "secret amount" }, -- 3475.841 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 7148, line = 7151, spell = 1094, unsure = "secret amount" }, -- 3475.974 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7153, line = false, unsure = "2 file events fit" }, -- 3476.124 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 7154, line = 7124, spell = false, unsure = "secret amount" }, -- 3476.341 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 7155, line = false, unsure = "secret amount" }, -- 3476.441 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.003 s
	{ hit = 7158, line = false, unsure = "secret amount" }, -- 3476.824 nameplate2 WOUND <secret> <- other: Arcane Missiles SPELL_DAMAGE -0.003 s
	{ hit = 7159, line = false, unsure = "secret amount" }, -- 3476.841 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 7160, line = false, unsure = "secret amount" }, -- 3476.924 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.036 s
	{ hit = 7163, line = false, unsure = "no file event fits" }, -- 3476.957 nameplate3 WOUND <secret> <- no file event 
	{ hit = 7168, line = false, unsure = "secret amount" }, -- 3477.107 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 7173, line = false, unsure = "secret amount" }, -- 3477.441 nameplate3 MISS <secret> <- creature: Magma Totem SPELL_MISSED -0.002 s
	{ hit = 7176, line = false, unsure = "secret amount" }, -- 3477.441 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7180, line = 7181, spell = 1014, unsure = "secret amount" }, -- 3477.641 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7182, line = false, unsure = "3 file events fit" }, -- 3477.691 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 7183, line = false, unsure = "2 file events fit" }, -- 3477.891 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.398 s
	{ hit = 7186, line = false, unsure = "secret amount" }, -- 3477.974 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.463 s
	{ hit = 7192, line = 7169, spell = false, unsure = "secret amount" }, -- 3478.341 softinteract WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 7195, line = 7198, spell = 1014, unsure = "secret amount" }, -- 3478.974 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7200, line = false, unsure = "2 file events fit" }, -- 3479.441 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7203, line = false, unsure = "secret amount" }, -- 3479.524 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.003 s
	{ hit = 7209, line = false, unsure = "2 file events fit" }, -- 3479.957 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7217, line = 7216, spell = 7814, unsure = "secret amount" }, -- 3480.024 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 7222, line = false, unsure = "3 file events fit" }, -- 3480.157 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 7230, line = false, unsure = "secret amount" }, -- 3480.241 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 7233, line = 7199, spell = false, unsure = "secret amount" }, -- 3480.341 nameplate3 PARRY <secret> <- pet: swing SWING_MISSED +0.947 s
	{ hit = 7236, line = false, unsure = "2 file events fit" }, -- 3480.691 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.481 s
	{ hit = 7239, line = 7242, spell = 1014, unsure = "secret amount" }, -- 3480.974 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7247, line = false, unsure = "2 file events fit" }, -- 3481.007 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE -0.036 s
	{ hit = 7258, line = false, unsure = "secret amount" }, -- 3481.424 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD -0.002 s
	{ hit = 7259, line = false, unsure = "secret amount" }, -- 3481.441 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 7262, line = 7265, spell = 6223, unsure = "secret amount" }, -- 3481.457 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7266, line = false, unsure = "2 file events fit" }, -- 3481.991 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.003 s
	{ hit = 7269, line = 7254, spell = false, unsure = "secret amount" }, -- 3482.024 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.631 s
	{ hit = 7274, line = 7273, spell = 1094, unsure = "secret amount" }, -- 3482.091 nameplate3 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 7277, line = false, unsure = "no file event fits" }, -- 3482.341 nameplate3 WOUND <secret> <- no file event 
	{ hit = 7280, line = false, unsure = "secret amount" }, -- 3482.524 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7283, line = false, unsure = "secret amount" }, -- 3482.974 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7286, line = 7289, spell = 1014, unsure = "secret amount" }, -- 3482.974 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7294, line = false, unsure = "secret amount" }, -- 3483.424 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD -0.002 s
	{ hit = 7295, line = false, unsure = "secret amount" }, -- 3483.441 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.002 s
	{ hit = 7300, line = false, unsure = "secret amount" }, -- 3483.657 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 7308, line = false, unsure = "3 file events fit" }, -- 3484.207 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 7311, line = 7293, spell = false, unsure = "2 file events fit" }, -- 3484.357 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.943 s
	{ hit = 7314, line = false, unsure = "late by 1.18 s" }, -- 3484.407 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.181 s
	{ hit = 7317, line = 7320, spell = 6223, unsure = "secret amount" }, -- 3484.474 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7322, line = 7321, spell = 5019, unsure = "secret amount" }, -- 3484.657 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.064 s
	{ hit = 7325, line = false, unsure = "secret amount" }, -- 3484.907 nameplate3 WOUND <secret> <- other: Fire Blast SPELL_DAMAGE -0.003 s
	{ hit = 7328, line = false, unsure = "2 file events fit" }, -- 3484.941 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 7331, line = 7334, spell = 1014, unsure = "secret amount" }, -- 3484.974 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7335, line = 7338, spell = 1094, unsure = "secret amount" }, -- 3485.091 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7339, line = false, unsure = "secret amount" }, -- 3485.241 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 7344, line = false, unsure = "secret amount" }, -- 3485.274 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 7348, line = false, unsure = "secret amount" }, -- 3485.424 pet WOUND <secret> <- creature: Barbs DAMAGE_SHIELD -0.003 s
	{ hit = 7349, line = false, unsure = "2 file events fit" }, -- 3485.441 nameplate3 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.003 s
	{ hit = 7352, line = false, unsure = "secret amount" }, -- 3485.524 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7357, line = false, unsure = "secret amount" }, -- 3485.891 nameplate3 PARRY <secret> <- other: swing SWING_MISSED +0.448 s
	{ hit = 7360, line = false, unsure = "2 file events fit" }, -- 3485.958 nameplate3 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7366, line = 7369, spell = 5019, unsure = "2 file events fit" }, -- 3486.357 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.036 s
	{ hit = 7370, line = 7347, spell = false, unsure = "late by 1.06 s" }, -- 3486.474 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +1.064 s
	{ hit = 7374, line = 7377, spell = 1014, unsure = "secret amount" }, -- 3487.007 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 7392, line = false, unsure = "secret amount" }, -- 3524.224 nameplate3 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.002 s
	{ hit = 7397, line = false, unsure = "secret amount" }, -- 3525.341 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.001 s
	{ hit = 7401, line = false, unsure = "secret amount" }, -- 3525.858 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 7405, line = false, unsure = "secret amount" }, -- 3527.108 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 7411, line = false, unsure = "2 file events fit" }, -- 3527.658 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.449 s
	{ hit = 7413, line = false, unsure = "secret amount" }, -- 3528.241 nameplate3 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 7416, line = false, unsure = "2 file events fit" }, -- 3528.341 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7429, line = false, unsure = "secret amount" }, -- 3529.824 nameplate3 DODGE <secret> <- other: swing SWING_MISSED +0.598 s
	{ hit = 7432, line = false, unsure = "secret amount" }, -- 3529.924 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.002 s
	{ hit = 7435, line = false, unsure = "secret amount" }, -- 3529.941 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 7438, line = false, unsure = "secret amount" }, -- 3530.408 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.982 s
	{ hit = 7446, line = 7449, spell = 1014, unsure = "secret amount" }, -- 3531.024 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7453, line = false, unsure = "secret amount" }, -- 3531.191 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.449 s
	{ hit = 7456, line = false, unsure = "secret amount" }, -- 3531.341 nameplate3 MISS <secret> <- other: Sunder Armor SPELL_MISSED -0.002 s
	{ hit = 7459, line = false, unsure = "secret amount" }, -- 3531.358 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 7462, line = false, unsure = "secret amount" }, -- 3532.524 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 7465, line = false, unsure = "secret amount" }, -- 3532.608 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.115 s
	{ hit = 7470, line = false, unsure = "secret amount" }, -- 3532.674 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 7476, line = false, unsure = "3 file events fit" }, -- 3532.824 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 7482, line = 7485, spell = 1014, unsure = "secret amount" }, -- 3533.024 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7491, line = false, unsure = "2 file events fit" }, -- 3533.441 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.782 s
	{ hit = 7494, line = 7497, spell = 6223, unsure = "secret amount" }, -- 3533.558 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 7498, line = false, unsure = "secret amount" }, -- 3533.641 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.998 s
	{ hit = 7503, line = false, unsure = "secret amount" }, -- 3533.774 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 7508, line = false, unsure = "secret amount" }, -- 3533.808 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 7512, line = 7511, spell = 5019, unsure = "secret amount" }, -- 3534.158 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.282 s
	{ hit = 7515, line = false, unsure = "secret amount" }, -- 3534.358 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7521, line = false, unsure = "2 file events fit" }, -- 3535.024 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 7525, line = 7524, spell = 1014, unsure = "secret amount" }, -- 3535.024 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7528, line = false, unsure = "secret amount" }, -- 3535.124 nameplate3 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.115 s
	{ hit = 7531, line = false, unsure = "secret amount" }, -- 3535.291 nameplate3 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.002 s
	{ hit = 7537, line = false, unsure = "secret amount" }, -- 3535.308 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.449 s
	{ hit = 7543, line = false, unsure = "2 file events fit" }, -- 3535.841 nameplate3 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 7546, line = false, unsure = "2 file events fit" }, -- 3535.991 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE -0.052 s
	{ hit = 7555, line = 7542, spell = 5019, unsure = "secret amount" }, -- 3536.641 softinteract WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.931 s
	{ hit = 7576, line = false, unsure = "secret amount" }, -- 3566.941 nameplate5 WOUND <secret> <- other: Throw RANGE_DAMAGE +0.397 s
	{ hit = 7578, line = false, unsure = "secret amount" }, -- 3567.458 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.002 s
	{ hit = 7583, line = false, unsure = "secret amount" }, -- 3568.591 nameplate5 PARRY <secret> <- other: Sunder Armor SPELL_MISSED -0.002 s
	{ hit = 7586, line = false, unsure = "secret amount" }, -- 3568.658 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 7592, line = false, unsure = "secret amount" }, -- 3569.058 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.464 s
	{ hit = 7597, line = false, unsure = "secret amount" }, -- 3569.991 nameplate5 PARRY <secret> <- other: Stormstrike SPELL_MISSED -0.002 s
	{ hit = 7600, line = false, unsure = "secret amount" }, -- 3570.025 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.001 s
	{ hit = 7605, line = false, unsure = "secret amount" }, -- 3570.425 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.001 s
	{ hit = 7608, line = false, unsure = "secret amount" }, -- 3570.458 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7611, line = false, unsure = "2 file events fit" }, -- 3570.791 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.019 s
	{ hit = 7617, line = false, unsure = "late by 1.27 s" }, -- 3571.258 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.265 s
	{ hit = 7620, line = false, unsure = "secret amount" }, -- 3571.508 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.148 s
	{ hit = 7623, line = false, unsure = "secret amount" }, -- 3571.575 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.001 s
	{ hit = 7626, line = false, unsure = "2 file events fit" }, -- 3571.592 nameplate5 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.002 s
	{ hit = 7629, line = false, unsure = "secret amount" }, -- 3571.592 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 7639, line = false, unsure = "2 file events fit" }, -- 3571.741 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.002 s
	{ hit = 7642, line = false, unsure = "secret amount" }, -- 3571.741 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.002 s
	{ hit = 7647, line = 7650, spell = 1014, unsure = "secret amount" }, -- 3572.258 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7651, line = false, unsure = "secret amount" }, -- 3572.408 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.004 s
	{ hit = 7657, line = false, unsure = "secret amount" }, -- 3573.208 nameplate5 MISS <secret> <- other: Rend SPELL_MISSED -0.002 s
	{ hit = 7662, line = false, unsure = "secret amount" }, -- 3573.458 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7665, line = false, unsure = "secret amount" }, -- 3573.941 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 7668, line = false, unsure = "2 file events fit" }, -- 3573.991 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.081 s
	{ hit = 7672, line = false, unsure = "secret amount" }, -- 3574.058 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.002 s
	{ hit = 7675, line = false, unsure = "secret amount" }, -- 3574.075 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.001 s
	{ hit = 7678, line = 7681, spell = 1014, unsure = "secret amount" }, -- 3574.258 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7682, line = false, unsure = "secret amount" }, -- 3574.425 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.001 s
	{ hit = 7685, line = false, unsure = "secret amount" }, -- 3574.458 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.165 s
	{ hit = 7688, line = false, unsure = "late by 1.50 s" }, -- 3574.508 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.498 s
	{ hit = 7691, line = 7694, spell = 6223, unsure = "secret amount" }, -- 3574.758 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7700, line = 7699, spell = 1094, unsure = "secret amount" }, -- 3575.275 nameplate5 MISS <secret> <- you: Immolate SPELL_MISSED -0.002 s
	{ hit = 7703, line = false, unsure = "secret amount" }, -- 3575.675 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.449 s
	{ hit = 7711, line = false, unsure = "2 file events fit" }, -- 3575.741 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.002 s
	{ hit = 7714, line = false, unsure = "secret amount" }, -- 3575.741 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.002 s
	{ hit = 7717, line = false, unsure = "secret amount" }, -- 3575.991 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 7720, line = false, unsure = "secret amount" }, -- 3576.025 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 7723, line = 7726, spell = 1014, unsure = "secret amount" }, -- 3576.258 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7727, line = false, unsure = "secret amount" }, -- 3576.458 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7730, line = false, unsure = "secret amount" }, -- 3576.558 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.002 s
	{ hit = 7733, line = false, unsure = "secret amount" }, -- 3576.575 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 7739, line = false, unsure = "secret amount" }, -- 3576.841 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.115 s
	{ hit = 7744, line = false, unsure = "2 file events fit" }, -- 3577.308 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.018 s
	{ hit = 7747, line = false, unsure = "secret amount" }, -- 3577.341 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 7750, line = false, unsure = "secret amount" }, -- 3577.491 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.002 s
	{ hit = 7754, line = false, unsure = "3 file events fit" }, -- 3577.708 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 7757, line = 7763, spell = 6223, unsure = "3 file events fit" }, -- 3577.758 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.018 s
	{ hit = 7760, line = 7753, spell = 5019, unsure = "2 file events fit" }, -- 3577.775 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.132 s
	{ hit = 7764, line = 7767, spell = 1014, unsure = "secret amount" }, -- 3578.258 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7768, line = false, unsure = "secret amount" }, -- 3578.441 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 7776, line = false, unsure = "secret amount" }, -- 3579.075 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.001 s
	{ hit = 7779, line = false, unsure = "secret amount" }, -- 3579.075 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.015 s
	{ hit = 7782, line = false, unsure = "secret amount" }, -- 3579.091 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 7785, line = false, unsure = "secret amount" }, -- 3579.225 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.002 s
	{ hit = 7788, line = false, unsure = "secret amount" }, -- 3579.241 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.065 s
	{ hit = 7795, line = false, unsure = "secret amount" }, -- 3579.458 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7798, line = 7794, spell = 5019, unsure = "secret amount" }, -- 3579.575 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.115 s
	{ hit = 7808, line = false, unsure = "3 file events fit" }, -- 3579.741 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.002 s
	{ hit = 7811, line = false, unsure = "2 file events fit" }, -- 3579.741 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.003 s
	{ hit = 7814, line = false, unsure = "secret amount" }, -- 3579.741 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.003 s
	{ hit = 7817, line = 7820, spell = 1014, unsure = "secret amount" }, -- 3580.258 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7821, line = false, unsure = "secret amount" }, -- 3580.675 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.001 s
	{ hit = 7824, line = false, unsure = "secret amount" }, -- 3580.691 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.035 s
	{ hit = 7829, line = false, unsure = "secret amount" }, -- 3580.758 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 7832, line = 7835, spell = 6223, unsure = "secret amount" }, -- 3580.758 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7840, line = 7839, spell = 5019, unsure = "2 file events fit" }, -- 3581.325 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.049 s
	{ hit = 7843, line = false, unsure = "secret amount" }, -- 3581.525 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.265 s
	{ hit = 7846, line = false, unsure = "secret amount" }, -- 3581.575 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.001 s
	{ hit = 7849, line = false, unsure = "secret amount" }, -- 3581.591 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 7852, line = false, unsure = "secret amount" }, -- 3581.708 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.115 s
	{ hit = 7855, line = false, unsure = "no file event fits" }, -- 3581.725 nameplate5 WOUND <secret> <- no file event 
	{ hit = 7858, line = 7861, spell = 1014, unsure = "secret amount" }, -- 3582.258 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7865, line = false, unsure = "secret amount" }, -- 3582.491 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.002 s
	{ hit = 7870, line = false, unsure = "secret amount" }, -- 3582.525 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 7873, line = false, unsure = "secret amount" }, -- 3582.708 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 7877, line = 7876, spell = 5019, unsure = "secret amount" }, -- 3583.208 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.132 s
	{ hit = 7890, line = false, unsure = "3 file events fit" }, -- 3583.758 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.002 s
	{ hit = 7893, line = false, unsure = "2 file events fit" }, -- 3583.758 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.002 s
	{ hit = 7896, line = false, unsure = "secret amount" }, -- 3583.758 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.002 s
	{ hit = 7899, line = 7902, spell = 6223, unsure = "secret amount" }, -- 3583.775 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7903, line = false, unsure = "secret amount" }, -- 3583.925 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.449 s
	{ hit = 7906, line = false, unsure = "2 file events fit" }, -- 3583.991 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.002 s
	{ hit = 7909, line = false, unsure = "secret amount" }, -- 3584.075 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.001 s
	{ hit = 7912, line = false, unsure = "secret amount" }, -- 3584.091 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 7915, line = false, unsure = "2 file events fit" }, -- 3584.158 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 7918, line = false, unsure = "secret amount" }, -- 3584.158 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.132 s
	{ hit = 7921, line = 7924, spell = 1014, unsure = "secret amount" }, -- 3584.258 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7927, line = false, unsure = "secret amount" }, -- 3584.725 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.599 s
	{ hit = 7934, line = 7930, spell = 5019, unsure = "secret amount" }, -- 3585.008 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.132 s
	{ hit = 7940, line = false, unsure = "secret amount" }, -- 3585.491 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 7950, line = 7953, spell = 1014, unsure = "secret amount" }, -- 3586.258 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7954, line = false, unsure = "secret amount" }, -- 3586.391 nameplate5 WOUND <secret> <- other: Ice Lance SPELL_DAMAGE -0.002 s
	{ hit = 7957, line = false, unsure = "secret amount" }, -- 3586.408 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 7960, line = false, unsure = "secret amount" }, -- 3586.575 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.001 s
	{ hit = 7963, line = false, unsure = "secret amount" }, -- 3586.591 nameplate5 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 7966, line = false, unsure = "secret amount" }, -- 3586.608 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.148 s
	{ hit = 7969, line = 7972, spell = 5019, unsure = "2 file events fit" }, -- 3586.658 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.052 s
	{ hit = 7973, line = 7976, spell = 6223, unsure = "secret amount" }, -- 3586.775 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7977, line = false, unsure = "late by 1.13 s" }, -- 3586.808 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.131 s
	{ hit = 7980, line = false, unsure = "secret amount" }, -- 3586.991 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 7990, line = false, unsure = "3 file events fit" }, -- 3587.741 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.002 s
	{ hit = 7993, line = false, unsure = "2 file events fit" }, -- 3587.741 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.002 s
	{ hit = 7996, line = false, unsure = "secret amount" }, -- 3587.741 nameplate5 HEAL <secret> <- creature: Leech Pulse SPELL_HEAL -0.002 s
	{ hit = 7999, line = false, unsure = "secret amount" }, -- 3587.891 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 8007, line = false, unsure = "secret amount" }, -- 3587.958 nameplate5 MISS <secret> <- other: Sunder Armor SPELL_MISSED -0.002 s
	{ hit = 8010, line = false, unsure = "secret amount" }, -- 3588.125 nameplate5 PARRY <secret> <- other: swing SWING_MISSED +0.598 s
	{ hit = 8013, line = 8016, spell = 1014, unsure = "secret amount" }, -- 3588.258 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8024, line = 8023, spell = 5019, unsure = "2 file events fit" }, -- 3588.608 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.098 s
	{ hit = 8027, line = false, unsure = "secret amount" }, -- 3588.875 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.982 s
	{ hit = 8030, line = false, unsure = "secret amount" }, -- 3589.058 nameplate5 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.165 s
	{ hit = 8035, line = false, unsure = "secret amount" }, -- 3589.692 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.002 s
	{ hit = 8040, line = 8043, spell = 6223, unsure = "secret amount" }, -- 3589.758 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8044, line = false, unsure = "secret amount" }, -- 3589.975 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.002 s
	{ hit = 8047, line = false, unsure = "secret amount" }, -- 3589.991 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8050, line = 8053, spell = 1014, unsure = "secret amount" }, -- 3590.258 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8054, line = false, unsure = "secret amount" }, -- 3590.291 nameplate5 WOUND <secret> <- other: Thorns DAMAGE_SHIELD -0.002 s
	{ hit = 8058, line = 8057, spell = 5019, unsure = "2 file events fit" }, -- 3590.425 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.099 s
	{ hit = 8061, line = false, unsure = "secret amount" }, -- 3590.541 nameplate5 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.002 s
	{ hit = 8064, line = false, unsure = "secret amount" }, -- 3590.558 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.465 s
	{ hit = 8067, line = false, unsure = "secret amount" }, -- 3590.575 nameplate5 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.007 s
	{ hit = 8139, line = false, unsure = "secret amount" }, -- 3716.526 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.003 s
	{ hit = 8145, line = false, unsure = "secret amount" }, -- 3717.748 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.987 s
	{ hit = 8148, line = false, unsure = "2 file events fit" }, -- 3718.442 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE -0.003 s
	{ hit = 8153, line = false, unsure = "2 file events fit" }, -- 3718.476 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 8156, line = false, unsure = "secret amount" }, -- 3718.476 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 8164, line = false, unsure = "secret amount" }, -- 3719.542 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8165, line = 8166, spell = 1014, unsure = "secret amount" }, -- 3719.726 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8167, line = false, unsure = "2 file events fit" }, -- 3719.926 nameplate2 WOUND <secret> <- other: Slam SPELL_DAMAGE -0.053 s
	{ hit = 8168, line = false, unsure = "2 file events fit" }, -- 3719.959 nameplate3 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.003 s
	{ hit = 8171, line = false, unsure = "secret amount" }, -- 3719.976 nameplate3 WOUND <secret> <- other: Lightning Shield SPELL_DAMAGE -0.002 s
	{ hit = 8174, line = false, unsure = "no file event fits" }, -- 3719.976 nameplate2 WOUND <secret> <- no file event 
	{ hit = 8185, line = false, unsure = "2 file events fit" }, -- 3721.159 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 8186, line = false, unsure = "secret amount" }, -- 3721.159 nameplate2 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.003 s
	{ hit = 8189, line = false, unsure = "secret amount" }, -- 3721.242 nameplate2 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.114 s
	{ hit = 8190, line = false, unsure = "secret amount" }, -- 3721.526 nameplate2 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.002 s
	{ hit = 8192, line = 8193, spell = 1014, unsure = "secret amount" }, -- 3721.726 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8194, line = false, unsure = "secret amount" }, -- 3721.942 nameplate3 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.003 s
	{ hit = 8199, line = 8198, spell = 7814, unsure = "secret amount" }, -- 3721.959 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 8205, line = 8206, spell = 6223, unsure = "secret amount" }, -- 3722.226 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8210, line = false, unsure = "secret amount" }, -- 3722.526 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8211, line = 8191, spell = false, unsure = "secret amount" }, -- 3722.576 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 8216, line = false, unsure = "secret amount" }, -- 3722.726 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 8217, line = 8218, spell = 1014, unsure = "secret amount" }, -- 3722.742 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8219, line = false, unsure = "2 file events fit" }, -- 3723.159 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE -0.003 s
	{ hit = 8222, line = false, unsure = "secret amount" }, -- 3723.492 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.797 s
	{ hit = 8223, line = false, unsure = "2 file events fit" }, -- 3723.526 nameplate2 WOUND <secret> <- other: Lightning Shield SPELL_DAMAGE -0.003 s
	{ hit = 8226, line = false, unsure = "secret amount" }, -- 3723.526 nameplate2 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.003 s
	{ hit = 8231, line = 8234, spell = 1014, unsure = "secret amount" }, -- 3723.726 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8235, line = false, unsure = "secret amount" }, -- 3723.959 nameplate3 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.003 s
	{ hit = 8237, line = 8236, spell = false, unsure = "2 file events fit" }, -- 3724.142 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.014 s
	{ hit = 8243, line = false, unsure = "2 file events fit" }, -- 3724.242 nameplate2 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.003 s
	{ hit = 8246, line = false, unsure = "secret amount" }, -- 3724.376 nameplate2 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 8249, line = false, unsure = "secret amount" }, -- 3724.376 nameplate3 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 8250, line = false, unsure = "secret amount" }, -- 3724.392 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 8253, line = false, unsure = "secret amount" }, -- 3724.392 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 8255, line = false, unsure = "secret amount" }, -- 3724.442 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 8256, line = false, unsure = "secret amount" }, -- 3724.476 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 8260, line = 8261, spell = 1014, unsure = "secret amount" }, -- 3724.742 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8267, line = false, unsure = "secret amount" }, -- 3724.809 pet WOUND <secret> <- creature: Frost Nova SPELL_DAMAGE -0.003 s
	{ hit = 8271, line = false, unsure = "secret amount" }, -- 3724.992 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 8272, line = false, unsure = "no file event fits" }, -- 3725.076 nameplate2 WOUND <secret> <- no file event 
	{ hit = 8273, line = 8274, spell = 6223, unsure = "secret amount" }, -- 3725.226 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8275, line = 8278, spell = 6223, unsure = "secret amount" }, -- 3725.226 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8279, line = false, unsure = "secret amount" }, -- 3725.526 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8280, line = 8281, spell = 1014, unsure = "secret amount" }, -- 3725.742 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8284, line = 8283, spell = 1094, unsure = "secret amount" }, -- 3725.742 nameplate2 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 8286, line = false, unsure = "secret amount" }, -- 3725.826 nameplate3 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.002 s
	{ hit = 8289, line = false, unsure = "secret amount" }, -- 3725.826 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.197 s
	{ hit = 8290, line = false, unsure = "secret amount" }, -- 3725.859 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.981 s
	{ hit = 8293, line = false, unsure = "secret amount" }, -- 3725.926 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.002 s
	{ hit = 8296, line = false, unsure = "no file event fits" }, -- 3726.026 nameplate2 WOUND <secret> <- no file event 
	{ hit = 8297, line = false, unsure = "secret amount" }, -- 3726.376 nameplate2 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.002 s
	{ hit = 8298, line = false, unsure = "secret amount" }, -- 3726.376 nameplate3 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.002 s
	{ hit = 8301, line = false, unsure = "secret amount" }, -- 3726.426 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 8302, line = false, unsure = "secret amount" }, -- 3726.426 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.002 s
	{ hit = 8306, line = false, unsure = "secret amount" }, -- 3726.726 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.002 s
	{ hit = 8309, line = 8312, spell = 1014, unsure = "secret amount" }, -- 3726.742 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8313, line = false, unsure = "secret amount" }, -- 3726.809 nameplate3 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.003 s
	{ hit = 8316, line = false, unsure = "3 file events fit" }, -- 3726.809 nameplate2 WOUND <secret> <- other: Claw SPELL_DAMAGE -0.004 s
	{ hit = 8317, line = false, unsure = "2 file events fit" }, -- 3726.809 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE -0.053 s
	{ hit = 8318, line = false, unsure = "secret amount" }, -- 3726.826 nameplate3 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.002 s
	{ hit = 8323, line = 8305, spell = false, unsure = "secret amount" }, -- 3727.259 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.614 s
	{ hit = 8324, line = false, unsure = "2 file events fit" }, -- 3727.326 nameplate3 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 8334, line = false, unsure = "secret amount" }, -- 3727.476 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.797 s
	{ hit = 8337, line = false, unsure = "no file event fits" }, -- 3727.592 nameplate2 WOUND <secret> <- no file event 
	{ hit = 8341, line = 8342, spell = 1014, unsure = "secret amount" }, -- 3727.726 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8343, line = false, unsure = "no file event fits" }, -- 3727.792 nameplate2 WOUND <secret> <- no file event 
	{ hit = 8344, line = false, unsure = "secret amount" }, -- 3727.792 nameplate3 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.003 s
	{ hit = 8348, line = false, unsure = "secret amount" }, -- 3728.076 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.447 s
	{ hit = 8349, line = 8352, spell = 6223, unsure = "secret amount" }, -- 3728.226 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8353, line = 8354, spell = 6223, unsure = "secret amount" }, -- 3728.226 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8355, line = false, unsure = "secret amount" }, -- 3728.392 nameplate3 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 8356, line = false, unsure = "secret amount" }, -- 3728.392 nameplate2 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 8359, line = false, unsure = "secret amount" }, -- 3728.409 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 8360, line = false, unsure = "secret amount" }, -- 3728.409 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 8363, line = false, unsure = "2 file events fit" }, -- 3728.476 nameplate2 WOUND <secret> <- other: Rake SPELL_DAMAGE -0.086 s
	{ hit = 8366, line = false, unsure = "secret amount" }, -- 3728.526 nameplate2 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8369, line = false, unsure = "secret amount" }, -- 3728.559 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.481 s
	{ hit = 8373, line = 8374, spell = 1014, unsure = "secret amount" }, -- 3728.726 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8375, line = 8378, spell = 1094, unsure = "secret amount" }, -- 3728.726 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8379, line = false, unsure = "secret amount" }, -- 3728.759 nameplate2 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.003 s
	{ hit = 8382, line = false, unsure = "secret amount" }, -- 3728.759 nameplate3 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.003 s
	{ hit = 8383, line = false, unsure = "secret amount" }, -- 3728.926 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8386, line = 8385, spell = 1094, unsure = "secret amount" }, -- 3729.026 nameplate3 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.003 s
	{ hit = 8394, line = 8397, spell = 1014, unsure = "secret amount" }, -- 3729.726 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8398, line = false, unsure = "secret amount" }, -- 3729.742 nameplate3 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.003 s
	{ hit = 8399, line = false, unsure = "secret amount" }, -- 3729.742 nameplate2 WOUND <secret> <- other: Blizzard SPELL_DAMAGE -0.003 s
	{ hit = 8402, line = false, unsure = "2 file events fit" }, -- 3729.909 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 8405, line = 8387, spell = false, unsure = "secret amount" }, -- 3730.092 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 8408, line = false, unsure = "2 file events fit" }, -- 3730.393 nameplate3 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.002 s
	{ hit = 8409, line = false, unsure = "secret amount" }, -- 3730.393 nameplate2 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.002 s
	{ hit = 8412, line = false, unsure = "secret amount" }, -- 3730.409 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 8413, line = false, unsure = "secret amount" }, -- 3730.409 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 8416, line = false, unsure = "2 file events fit" }, -- 3730.443 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 8417, line = false, unsure = "secret amount" }, -- 3730.476 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 8418, line = 8419, spell = 1014, unsure = "secret amount" }, -- 3730.726 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8420, line = false, unsure = "secret amount" }, -- 3730.759 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.464 s
	{ hit = 8423, line = false, unsure = "secret amount" }, -- 3731.126 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.598 s
	{ hit = 8427, line = 8428, spell = 6223, unsure = "secret amount" }, -- 3731.226 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8429, line = 8432, spell = 6223, unsure = "secret amount" }, -- 3731.226 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8433, line = false, unsure = "secret amount" }, -- 3731.376 nameplate2 WOUND <secret> <- other: Ice Lance SPELL_DAMAGE -0.003 s
	{ hit = 8437, line = false, unsure = "secret amount" }, -- 3731.409 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 8441, line = false, unsure = "2 file events fit" }, -- 3731.576 nameplate2 WOUND <secret> <- other: Rake SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8443, line = 8444, spell = 1014, unsure = "secret amount" }, -- 3731.726 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8445, line = false, unsure = "secret amount" }, -- 3731.726 nameplate3 DODGE <secret> <- other: swing SWING_MISSED +0.798 s
	{ hit = 8448, line = 8449, spell = 1094, unsure = "secret amount" }, -- 3731.742 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8451, line = 8450, spell = 5019, unsure = "2 file events fit" }, -- 3731.926 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 8452, line = false, unsure = "secret amount" }, -- 3731.942 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8455, line = false, unsure = "secret amount" }, -- 3731.976 nameplate3 WOUND <secret> <- other: Frost Shock SPELL_DAMAGE -0.003 s
	{ hit = 8458, line = 8461, spell = 1094, unsure = "secret amount" }, -- 3732.042 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8462, line = false, unsure = "secret amount" }, -- 3732.376 nameplate2 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 8463, line = false, unsure = "secret amount" }, -- 3732.376 nameplate3 WOUND <secret> <- other: Flamestrike SPELL_DAMAGE -0.003 s
	{ hit = 8466, line = false, unsure = "secret amount" }, -- 3732.426 nameplate3 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.003 s
	{ hit = 8469, line = 8442, spell = false, unsure = "secret amount" }, -- 3732.592 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 8473, line = 8476, spell = 1014, unsure = "secret amount" }, -- 3732.742 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8480, line = 8479, spell = 5019, unsure = "2 file events fit" }, -- 3733.676 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.002 s
	{ hit = 8485, line = 8484, spell = 7814, unsure = "secret amount" }, -- 3734.126 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 8489, line = 8492, spell = 6223, unsure = "secret amount" }, -- 3734.226 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8493, line = 8488, spell = false, unsure = "2 file events fit" }, -- 3734.359 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.214 s
	{ hit = 8498, line = 8501, spell = 1014, unsure = "secret amount" }, -- 3734.726 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8502, line = false, unsure = "secret amount" }, -- 3734.943 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 8506, line = 8509, spell = 1094, unsure = "secret amount" }, -- 3735.042 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8511, line = false, unsure = "no file event fits" }, -- 3735.092 nameplate3 WOUND <secret> <- no file event 
	{ hit = 8537, line = false, unsure = "secret amount" }, -- 3813.260 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.003 s
	{ hit = 8542, line = false, unsure = "2 file events fit" }, -- 3813.660 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.069 s
	{ hit = 8545, line = false, unsure = "no file event fits" }, -- 3814.710 nameplate5 WOUND <secret> <- no file event 
	{ hit = 8553, line = 8556, spell = 1014, unsure = "secret amount" }, -- 3815.443 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8557, line = false, unsure = "secret amount" }, -- 3815.593 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 8561, line = false, unsure = "secret amount" }, -- 3816.276 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8567, line = 8566, spell = 7814, unsure = "secret amount" }, -- 3816.593 nameplate5 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.004 s
	{ hit = 8571, line = 8564, spell = false, unsure = "2 file events fit" }, -- 3816.910 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.631 s
	{ hit = 8579, line = false, unsure = "late by 1.30 s" }, -- 3817.226 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.296 s
	{ hit = 8582, line = 8585, spell = 1014, unsure = "secret amount" }, -- 3817.460 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8586, line = false, unsure = "secret amount" }, -- 3817.460 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 8589, line = false, unsure = "secret amount" }, -- 3817.493 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 8592, line = false, unsure = "secret amount" }, -- 3817.776 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 8595, line = 8598, spell = 6223, unsure = "secret amount" }, -- 3817.943 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8600, line = 8599, spell = 5019, unsure = "4 file events fit" }, -- 3818.276 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8604, line = 8603, spell = false, unsure = "3 file events fit" }, -- 3818.543 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.263 s
	{ hit = 8612, line = false, unsure = "2 file events fit" }, -- 3819.143 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.997 s
	{ hit = 8615, line = false, unsure = "late by 1.48 s" }, -- 3819.226 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.480 s
	{ hit = 8618, line = false, unsure = "secret amount" }, -- 3819.276 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8621, line = 8624, spell = 1014, unsure = "secret amount" }, -- 3819.443 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8626, line = 8625, spell = 5019, unsure = "secret amount" }, -- 3820.093 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8629, line = false, unsure = "secret amount" }, -- 3820.193 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 8633, line = false, unsure = "3 file events fit" }, -- 3820.593 nameplate5 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.003 s
	{ hit = 8638, line = 8641, spell = 6223, unsure = "secret amount" }, -- 3820.943 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8645, line = false, unsure = "3 file events fit" }, -- 3821.143 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE -0.004 s
	{ hit = 8648, line = false, unsure = "secret amount" }, -- 3821.176 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 8651, line = false, unsure = "2 file events fit" }, -- 3821.226 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.880 s
	{ hit = 8654, line = 8657, spell = 1014, unsure = "secret amount" }, -- 3821.443 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8659, line = 8658, spell = 5019, unsure = "secret amount" }, -- 3821.910 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8662, line = false, unsure = "no file event fits" }, -- 3821.943 nameplate5 WOUND <secret> <- no file event 
	{ hit = 8665, line = false, unsure = "secret amount" }, -- 3822.093 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 8668, line = false, unsure = "secret amount" }, -- 3822.276 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8677, line = false, unsure = "2 file events fit" }, -- 3823.143 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 8680, line = 8671, spell = false, unsure = "secret amount" }, -- 3823.226 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 8683, line = 8686, spell = 1014, unsure = "secret amount" }, -- 3823.510 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8687, line = false, unsure = "secret amount" }, -- 3823.510 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 8690, line = false, unsure = "secret amount" }, -- 3823.510 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 8694, line = 8693, spell = 5019, unsure = "secret amount" }, -- 3823.710 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8697, line = 8700, spell = 6223, unsure = "secret amount" }, -- 3823.943 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8704, line = false, unsure = "secret amount" }, -- 3824.593 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 8707, line = false, unsure = "3 file events fit" }, -- 3825.160 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 8710, line = false, unsure = "2 file events fit" }, -- 3825.243 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.680 s
	{ hit = 8713, line = false, unsure = "secret amount" }, -- 3825.276 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8719, line = 8722, spell = 1014, unsure = "secret amount" }, -- 3825.443 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8724, line = 8723, spell = 5019, unsure = "2 file events fit" }, -- 3825.526 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8727, line = 8701, spell = false, unsure = "late by 1.36 s" }, -- 3825.660 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +1.364 s
	{ hit = 8734, line = false, unsure = "secret amount" }, -- 3826.910 nameplate5 DODGE <secret> <- other: swing SWING_MISSED +0.347 s
	{ hit = 8737, line = 8740, spell = 6223, unsure = "secret amount" }, -- 3826.943 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8741, line = 8744, spell = 5019, unsure = "2 file events fit" }, -- 3827.243 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.087 s
	{ hit = 8745, line = 8733, spell = false, unsure = "late by 1.03 s" }, -- 3827.326 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +1.030 s
	{ hit = 8748, line = 8751, spell = 1014, unsure = "secret amount" }, -- 3827.443 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8755, line = false, unsure = "secret amount" }, -- 3827.993 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 8761, line = false, unsure = "4 file events fit" }, -- 3828.526 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 8766, line = 8765, spell = 7814, unsure = "secret amount" }, -- 3828.743 nameplate5 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 8769, line = false, unsure = "3 file events fit" }, -- 3828.760 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.180 s
	{ hit = 8773, line = 8772, spell = 5019, unsure = "3 file events fit" }, -- 3829.143 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8776, line = 8760, spell = false, unsure = "2 file events fit" }, -- 3829.243 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 8779, line = false, unsure = "late by 1.40 s" }, -- 3829.360 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.397 s
	{ hit = 8782, line = 8785, spell = 1014, unsure = "secret amount" }, -- 3829.443 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8788, line = 8791, spell = 6223, unsure = "secret amount" }, -- 3829.943 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8795, line = false, unsure = "2 file events fit" }, -- 3830.227 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.003 s
	{ hit = 8798, line = false, unsure = "secret amount" }, -- 3830.260 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 8803, line = 8802, spell = 5019, unsure = "3 file events fit" }, -- 3830.960 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.003 s
	{ hit = 8806, line = false, unsure = "2 file events fit" }, -- 3831.143 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.563 s
	{ hit = 8809, line = 8801, spell = false, unsure = "secret amount" }, -- 3831.243 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 8812, line = 8815, spell = 1014, unsure = "secret amount" }, -- 3831.443 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 8818, line = false, unsure = "secret amount" }, -- 3831.910 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 8824, line = false, unsure = "3 file events fit" }, -- 3832.677 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.097 s
	{ hit = 8902, line = false, unsure = "2 file events fit" }, -- 3931.894 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.446 s
	{ hit = 8903, line = false, unsure = "secret amount" }, -- 3932.060 nameplate5 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.004 s
	{ hit = 8905, line = false, unsure = "secret amount" }, -- 3932.427 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.979 s
	{ hit = 8910, line = false, unsure = "secret amount" }, -- 3933.094 nameplate5 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8915, line = false, unsure = "secret amount" }, -- 3933.394 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 8918, line = false, unsure = "secret amount" }, -- 3933.610 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8922, line = false, unsure = "4 file events fit" }, -- 3933.927 nameplate5 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 8925, line = false, unsure = "secret amount" }, -- 3934.027 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 8928, line = false, unsure = "3 file events fit" }, -- 3934.061 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.447 s
	{ hit = 8931, line = false, unsure = "secret amount" }, -- 3934.127 nameplate5 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.004 s
	{ hit = 8937, line = 8936, spell = 7814, unsure = "secret amount" }, -- 3934.360 nameplate5 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 8945, line = 8934, spell = false, unsure = "3 file events fit" }, -- 3934.877 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.629 s
	{ hit = 8949, line = false, unsure = "no file event fits" }, -- 3935.194 nameplate5 WOUND <secret> <- no file event 
	{ hit = 8952, line = 8955, spell = 1014, unsure = "secret amount" }, -- 3935.294 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8958, line = false, unsure = "3 file events fit" }, -- 3936.044 nameplate5 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8961, line = false, unsure = "secret amount" }, -- 3936.144 nameplate5 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.004 s
	{ hit = 8965, line = 8964, spell = false, unsure = "3 file events fit" }, -- 3936.361 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.080 s
	{ hit = 8968, line = false, unsure = "secret amount" }, -- 3936.377 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.979 s
	{ hit = 8972, line = false, unsure = "secret amount" }, -- 3936.544 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8977, line = false, unsure = "secret amount" }, -- 3936.861 nameplate5 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.003 s
	{ hit = 8980, line = false, unsure = "3 file events fit" }, -- 3937.027 nameplate5 WOUND <secret> <- other: Thunder Clap SPELL_DAMAGE -0.004 s
	{ hit = 8984, line = 8987, spell = 1014, unsure = "secret amount" }, -- 3937.227 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 8988, line = 8983, spell = 5019, unsure = "3 file events fit" }, -- 3937.227 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 8991, line = false, unsure = "2 file events fit" }, -- 3937.344 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +0.596 s
	{ hit = 8994, line = false, unsure = "late by 1.45 s" }, -- 3937.361 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.447 s
	{ hit = 8997, line = 9000, spell = 6223, unsure = "secret amount" }, -- 3937.794 nameplate5 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9001, line = false, unsure = "secret amount" }, -- 3937.927 nameplate6 MISS <secret> <- other: swing SWING_MISSED +0.563 s
	{ hit = 9003, line = false, unsure = "secret amount" }, -- 3938.361 nameplate5 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.004 s
	{ hit = 9008, line = 9002, spell = false, unsure = "2 file events fit" }, -- 3938.527 nameplate5 WOUND <secret> <- pet: swing SWING_DAMAGE +0.263 s
	{ hit = 9015, line = false, unsure = "3 file events fit" }, -- 3939.061 nameplate5 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9019, line = 9014, spell = 5019, unsure = "2 file events fit" }, -- 3939.094 nameplate5 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.130 s
	{ hit = 9022, line = false, unsure = "late by 1.15 s" }, -- 3939.211 nameplate5 WOUND <secret> <- other: swing SWING_DAMAGE +1.147 s
	{ hit = 9025, line = 9028, spell = 1014, unsure = "secret amount" }, -- 3939.277 nameplate5 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9029, line = false, unsure = "2 file events fit" }, -- 3939.377 nameplate5 WOUND <secret> <- other: Execute SPELL_DAMAGE -0.004 s
	{ hit = 9032, line = false, unsure = "secret amount" }, -- 3939.611 nameplate5 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 9035, line = false, unsure = "secret amount" }, -- 3939.861 nameplate5 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.004 s
	{ hit = 9041, line = false, unsure = "secret amount" }, -- 3940.361 nameplate6 WOUND <secret> <- other: swing SWING_DAMAGE +0.980 s
	{ hit = 9071, line = false, unsure = "secret amount" }, -- 3949.311 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.004 s
	{ hit = 9074, line = false, unsure = "secret amount" }, -- 3949.311 nameplate4 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.005 s
	{ hit = 9083, line = false, unsure = "secret amount" }, -- 3950.011 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 9091, line = false, unsure = "secret amount" }, -- 3950.611 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.597 s
	{ hit = 9095, line = false, unsure = "secret amount" }, -- 3950.794 nameplate4 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 9098, line = false, unsure = "secret amount" }, -- 3950.794 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 9107, line = 9106, spell = 7814, unsure = "secret amount" }, -- 3951.761 nameplate4 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.004 s
	{ hit = 9110, line = 9104, spell = false, unsure = "3 file events fit" }, -- 3951.761 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE -0.004 s
	{ hit = 9116, line = false, unsure = "secret amount" }, -- 3952.327 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9122, line = false, unsure = "2 file events fit" }, -- 3952.644 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.979 s
	{ hit = 9125, line = 9103, spell = 5019, unsure = "late by 1.25 s" }, -- 3952.711 nameplate4 WOUND <secret> <- you: Shoot RANGE_DAMAGE +1.246 s
	{ hit = 9133, line = 9132, spell = 5019, unsure = "secret amount" }, -- 3953.544 nameplate4 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.329 s
	{ hit = 9136, line = false, unsure = "secret amount" }, -- 3953.661 nameplate4 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.004 s
	{ hit = 9143, line = false, unsure = "2 file events fit" }, -- 3954.244 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.462 s
	{ hit = 9146, line = false, unsure = "2 file events fit" }, -- 3954.694 nameplate4 WOUND <secret> <- other: Hamstring SPELL_DAMAGE -0.004 s
	{ hit = 9149, line = 9139, spell = false, unsure = "secret amount" }, -- 3954.727 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 9155, line = false, unsure = "secret amount" }, -- 3955.277 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9161, line = false, unsure = "secret amount" }, -- 3955.627 nameplate4 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.005 s
	{ hit = 9168, line = false, unsure = "2 file events fit" }, -- 3956.511 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.446 s
	{ hit = 9172, line = false, unsure = "secret amount" }, -- 3956.611 nameplate4 WOUND <secret> <- other: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 9175, line = false, unsure = "2 file events fit" }, -- 3956.694 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE -0.037 s
	{ hit = 9178, line = false, unsure = "secret amount" }, -- 3956.727 nameplate4 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.004 s
	{ hit = 9186, line = false, unsure = "3 file events fit" }, -- 3957.927 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE -0.005 s
	{ hit = 9188, line = false, unsure = "secret amount" }, -- 3957.927 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 9190, line = false, unsure = "secret amount" }, -- 3958.027 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 9193, line = false, unsure = "secret amount" }, -- 3958.327 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9204, line = false, unsure = "3 file events fit" }, -- 3958.527 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.396 s
	{ hit = 9206, line = false, unsure = "2 file events fit" }, -- 3958.644 target WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.712 s
	{ hit = 9209, line = false, unsure = "secret amount" }, -- 3959.244 nameplate4 WOUND <secret> <- other: swing SWING_DAMAGE +0.463 s
	{ hit = 9214, line = false, unsure = "secret amount" }, -- 3959.627 nameplate4 WOUND <secret> <- other: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9223, line = 9217, spell = false, unsure = "secret amount" }, -- 3960.677 nameplate4 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 9226, line = false, unsure = "secret amount" }, -- 3961.077 nameplate4 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.005 s
	{ hit = 9229, line = false, unsure = "secret amount" }, -- 3961.294 nameplate4 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9234, line = false, unsure = "secret amount" }, -- 3961.394 nameplate4 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 9246, line = false, unsure = "secret amount" }, -- 3965.677 nameplate4 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.005 s
	{ hit = 9247, line = false, unsure = "secret amount" }, -- 3965.677 nameplate4 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.005 s
	{ hit = 9268, line = false, unsure = "secret amount" }, -- 3967.877 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.979 s
	{ hit = 9272, line = false, unsure = "secret amount" }, -- 3968.677 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.010 s
	{ hit = 9275, line = false, unsure = "secret amount" }, -- 3968.694 nameplate2 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.012 s
	{ hit = 9283, line = false, unsure = "secret amount" }, -- 3969.494 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.446 s
	{ hit = 9286, line = false, unsure = "3 file events fit" }, -- 3969.527 nameplate1 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.595 s
	{ hit = 9289, line = false, unsure = "3 file events fit" }, -- 3970.378 nameplate1 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.004 s
	{ hit = 9290, line = 9293, spell = 1014, unsure = "secret amount" }, -- 3970.627 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9297, line = 9296, spell = 7814, unsure = "secret amount" }, -- 3970.744 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 9300, line = false, unsure = "2 file events fit" }, -- 3970.944 nameplate2 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9303, line = false, unsure = "secret amount" }, -- 3970.944 nameplate1 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.005 s
	{ hit = 9304, line = false, unsure = "secret amount" }, -- 3970.944 nameplate2 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.005 s
	{ hit = 9307, line = false, unsure = "secret amount" }, -- 3970.944 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.005 s
	{ hit = 9316, line = 9294, spell = false, unsure = "secret amount" }, -- 3971.694 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 9321, line = false, unsure = "2 file events fit" }, -- 3972.244 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.546 s
	{ hit = 9323, line = 9330, spell = false, unsure = "3 file events fit" }, -- 3972.661 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE -0.038 s
	{ hit = 9326, line = 9329, spell = 1014, unsure = "secret amount" }, -- 3972.694 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9331, line = false, unsure = "secret amount" }, -- 3972.911 nameplate1 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.005 s
	{ hit = 9332, line = 9335, spell = 6223, unsure = "secret amount" }, -- 3973.144 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9338, line = false, unsure = "secret amount" }, -- 3973.361 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 9341, line = false, unsure = "secret amount" }, -- 3973.361 nameplate1 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9342, line = false, unsure = "secret amount" }, -- 3973.361 nameplate2 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.095 s
	{ hit = 9348, line = false, unsure = "secret amount" }, -- 3973.611 nameplate2 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 9351, line = false, unsure = "secret amount" }, -- 3973.611 nameplate1 WOUND <secret> <- other: Fire Nova SPELL_DAMAGE -0.004 s
	{ hit = 9352, line = 9322, spell = 5019, unsure = "late by 1.05 s" }, -- 3973.644 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE +1.046 s
	{ hit = 9355, line = false, unsure = "secret amount" }, -- 3973.811 nameplate1 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 9356, line = false, unsure = "secret amount" }, -- 3973.911 nameplate2 WOUND <secret> <- other: Rend SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9359, line = false, unsure = "3 file events fit" }, -- 3973.961 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.146 s
	{ hit = 9363, line = 9362, spell = 5019, unsure = "secret amount" }, -- 3974.461 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.079 s
	{ hit = 9367, line = false, unsure = "3 file events fit" }, -- 3974.611 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE -0.021 s
	{ hit = 9370, line = false, unsure = "secret amount" }, -- 3974.628 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9371, line = false, unsure = "secret amount" }, -- 3974.628 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.004 s
	{ hit = 9374, line = 9375, spell = 1014, unsure = "secret amount" }, -- 3974.628 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9377, line = false, unsure = "3 file events fit" }, -- 3975.111 nameplate1 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.004 s
	{ hit = 9380, line = false, unsure = "secret amount" }, -- 3975.111 nameplate1 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 9389, line = 9376, spell = false, unsure = "secret amount" }, -- 3975.711 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 9390, line = false, unsure = "secret amount" }, -- 3975.711 nameplate2 WOUND <secret> <- other: Ice Lance SPELL_DAMAGE -0.004 s
	{ hit = 9391, line = false, unsure = "3 file events fit" }, -- 3975.827 nameplate2 WOUND <secret> <- other: Touch of the Grave SPELL_DAMAGE -0.005 s
	{ hit = 9392, line = false, unsure = "2 file events fit" }, -- 3975.827 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.005 s
	{ hit = 9395, line = false, unsure = "secret amount" }, -- 3975.827 nameplate2 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE -0.005 s
	{ hit = 9396, line = false, unsure = "secret amount" }, -- 3975.827 nameplate2 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.005 s
	{ hit = 9397, line = 9398, spell = 6223, unsure = "secret amount" }, -- 3976.228 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9399, line = false, unsure = "secret amount" }, -- 3976.361 nameplate1 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9402, line = false, unsure = "secret amount" }, -- 3976.611 nameplate2 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 9403, line = false, unsure = "secret amount" }, -- 3976.611 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 9406, line = 9411, spell = false, unsure = "3 file events fit" }, -- 3976.694 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE -0.021 s
	{ hit = 9409, line = 9410, spell = 1014, unsure = "secret amount" }, -- 3976.711 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9415, line = false, unsure = "secret amount" }, -- 3977.261 nameplate1 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.004 s
	{ hit = 9421, line = 9424, spell = 1014, unsure = "secret amount" }, -- 3977.494 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9425, line = false, unsure = "secret amount" }, -- 3977.494 nameplate1 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.005 s
	{ hit = 9428, line = false, unsure = "2 file events fit" }, -- 3977.728 nameplate1 WOUND <secret> <- other: Revenge SPELL_DAMAGE -0.004 s
	{ hit = 9432, line = false, unsure = "2 file events fit" }, -- 3978.411 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.463 s
	{ hit = 9435, line = false, unsure = "secret amount" }, -- 3978.544 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 9439, line = 9438, spell = false, unsure = "secret amount" }, -- 3979.078 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.280 s
	{ hit = 9447, line = false, unsure = "secret amount" }, -- 3979.528 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9452, line = 9451, spell = 5019, unsure = "secret amount" }, -- 3979.744 nameplate1 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.004 s
	{ hit = 9455, line = false, unsure = "secret amount" }, -- 3979.878 nameplate1 WOUND <secret> <- other: Cursed Murloc Eye SPELL_DAMAGE -0.004 s
	{ hit = 9458, line = false, unsure = "secret amount" }, -- 3979.894 nameplate1 WOUND <secret> <- other: Frostbolt SPELL_DAMAGE +0.012 s
	{ hit = 9461, line = 9467, spell = 6223, unsure = "secret amount" }, -- 3979.944 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.071 s
	{ hit = 9464, line = false, unsure = "no file event fits" }, -- 3980.011 nameplate1 WOUND <secret> <- no file event 
	{ hit = 9468, line = false, unsure = "secret amount" }, -- 3980.461 nameplate1 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 9471, line = false, unsure = "secret amount" }, -- 3980.561 nameplate1 WOUND <secret> <- creature: Magma Totem SPELL_DAMAGE -0.005 s
	{ hit = 9474, line = false, unsure = "2 file events fit" }, -- 3980.611 nameplate1 WOUND <secret> <- other: swing SWING_DAMAGE +0.045 s
	{ hit = 9628, line = false, unsure = "secret amount" }, -- 4192.229 nameplate2 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.006 s
	{ hit = 9631, line = false, unsure = "secret amount" }, -- 4192.996 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.005 s
	{ hit = 9637, line = false, unsure = "2 file events fit" }, -- 4193.729 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.006 s
	{ hit = 9638, line = false, unsure = "secret amount" }, -- 4193.729 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.006 s
	{ hit = 9639, line = 9640, spell = 1014, unsure = "secret amount" }, -- 4193.846 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9641, line = false, unsure = "2 file events fit" }, -- 4194.246 nameplate2 WOUND <secret> <- other: Lightning Shield SPELL_DAMAGE -0.005 s
	{ hit = 9642, line = false, unsure = "secret amount" }, -- 4194.246 nameplate2 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.005 s
	{ hit = 9643, line = false, unsure = "late by 1.48 s" }, -- 4194.479 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +1.478 s
	{ hit = 9651, line = 9650, spell = 7814, unsure = "secret amount" }, -- 4195.362 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.007 s
	{ hit = 9652, line = 9653, spell = 1014, unsure = "secret amount" }, -- 4195.779 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9654, line = false, unsure = "secret amount" }, -- 4196.212 nameplate2 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.006 s
	{ hit = 9655, line = 9648, spell = false, unsure = "secret amount" }, -- 4196.312 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.944 s
	{ hit = 9656, line = 9657, spell = 6223, unsure = "secret amount" }, -- 4196.329 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9660, line = false, unsure = "secret amount" }, -- 4196.446 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.006 s
	{ hit = 9662, line = 9663, spell = 1014, unsure = "secret amount" }, -- 4196.846 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9667, line = false, unsure = "secret amount" }, -- 4197.046 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.595 s
	{ hit = 9671, line = false, unsure = "secret amount" }, -- 4197.529 nameplate2 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.011 s
	{ hit = 9674, line = 9677, spell = 1014, unsure = "secret amount" }, -- 4197.829 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.007 s
	{ hit = 9678, line = false, unsure = "2 file events fit" }, -- 4198.229 nameplate2 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.006 s
	{ hit = 9681, line = false, unsure = "secret amount" }, -- 4198.229 nameplate2 WOUND <secret> <- other: Lightning Shield SPELL_DAMAGE -0.007 s
	{ hit = 9684, line = 9670, spell = false, unsure = "secret amount" }, -- 4198.296 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 9690, line = 9693, spell = 1014, unsure = "secret amount" }, -- 4198.829 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9694, line = false, unsure = "secret amount" }, -- 4199.329 player WOUND <secret> <- creature: Frostbolt SPELL_DAMAGE -0.005 s
	{ hit = 9695, line = 9697, spell = 6223, unsure = "secret amount" }, -- 4199.329 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9698, line = 9701, spell = 6223, unsure = "secret amount" }, -- 4199.412 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9703, line = false, unsure = "2 file events fit" }, -- 4199.779 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.006 s
	{ hit = 9706, line = false, unsure = "secret amount" }, -- 4199.779 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.006 s
	{ hit = 9709, line = 9712, spell = 1014, unsure = "secret amount" }, -- 4199.779 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9713, line = false, unsure = "secret amount" }, -- 4199.879 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.006 s
	{ hit = 9716, line = false, unsure = "secret amount" }, -- 4200.212 nameplate2 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.061 s
	{ hit = 9719, line = false, unsure = "secret amount" }, -- 4200.379 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.594 s
	{ hit = 9725, line = false, unsure = "secret amount" }, -- 4200.663 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 9726, line = 9727, spell = 1014, unsure = "secret amount" }, -- 4200.862 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9728, line = false, unsure = "secret amount" }, -- 4201.246 nameplate2 HEAL <secret> <- creature: Heal SPELL_HEAL -0.005 s
	{ hit = 9731, line = false, unsure = "secret amount" }, -- 4201.246 nameplate2 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.006 s
	{ hit = 9735, line = 9738, spell = 1014, unsure = "secret amount" }, -- 4201.796 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9739, line = 9742, spell = 6223, unsure = "secret amount" }, -- 4202.296 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9743, line = 9744, spell = 6223, unsure = "secret amount" }, -- 4202.412 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9745, line = 9734, spell = false, unsure = "secret amount" }, -- 4202.412 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.944 s
	{ hit = 9746, line = false, unsure = "secret amount" }, -- 4202.662 nameplate2 WOUND <secret> <- creature: Attack SPELL_DAMAGE -0.006 s
	{ hit = 9749, line = false, unsure = "secret amount" }, -- 4202.662 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.006 s
	{ hit = 9753, line = 9754, spell = 1014, unsure = "secret amount" }, -- 4202.762 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9757, line = false, unsure = "secret amount" }, -- 4203.246 nameplate2 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.006 s
	{ hit = 9763, line = 9767, spell = 1014, unsure = "secret amount" }, -- 4203.846 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9768, line = false, unsure = "secret amount" }, -- 4203.846 nameplate2 WOUND <secret> <- other: swing SWING_DAMAGE +0.595 s
	{ hit = 9773, line = 9772, spell = 5019, unsure = "secret amount" }, -- 4204.212 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.011 s
	{ hit = 9777, line = 9762, spell = false, unsure = "secret amount" }, -- 4204.429 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.944 s
	{ hit = 9780, line = false, unsure = "secret amount" }, -- 4204.612 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.006 s
	{ hit = 9781, line = 9782, spell = 1014, unsure = "secret amount" }, -- 4204.862 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9785, line = 9789, spell = 6223, unsure = "secret amount" }, -- 4205.279 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9790, line = 9791, spell = 6223, unsure = "secret amount" }, -- 4205.412 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.007 s
	{ hit = 9793, line = false, unsure = "secret amount" }, -- 4205.612 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE -0.006 s
	{ hit = 9794, line = 9798, spell = 1014, unsure = "secret amount" }, -- 4205.846 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9800, line = 9799, spell = 5019, unsure = "2 file events fit" }, -- 4205.946 nameplate2 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.005 s
	{ hit = 9803, line = false, unsure = "secret amount" }, -- 4206.012 nameplate2 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE +0.060 s
	{ hit = 9810, line = 9792, spell = false, unsure = "secret amount" }, -- 4206.463 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 9813, line = false, unsure = "secret amount" }, -- 4206.596 player MISS <secret> <- creature: Frostbolt SPELL_MISSED -0.007 s
	{ hit = 9815, line = false, unsure = "secret amount" }, -- 4206.663 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 9819, line = 9822, spell = 1014, unsure = "secret amount" }, -- 4206.762 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9827, line = false, unsure = "secret amount" }, -- 4208.012 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE +0.011 s
	{ hit = 9830, line = false, unsure = "secret amount" }, -- 4208.162 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.006 s
	{ hit = 9835, line = 9841, spell = 6223, unsure = "2 file events fit" }, -- 4208.379 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.007 s
	{ hit = 9838, line = 9834, spell = 7814, unsure = "secret amount" }, -- 4208.379 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.007 s
	{ hit = 9842, line = 9824, spell = false, unsure = "secret amount" }, -- 4208.379 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.944 s
	{ hit = 9847, line = false, unsure = "secret amount" }, -- 4208.596 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 9849, line = 9852, spell = 1014, unsure = "secret amount" }, -- 4208.796 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 9854, line = 9853, spell = 5019, unsure = "secret amount" }, -- 4209.296 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.005 s
	{ hit = 9860, line = false, unsure = "secret amount" }, -- 4209.796 player WOUND <secret> <- creature: Frostbolt SPELL_DAMAGE -0.005 s
	{ hit = 9862, line = false, unsure = "secret amount" }, -- 4209.796 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.006 s
	{ hit = 9865, line = false, unsure = "2 file events fit" }, -- 4210.462 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +0.660 s
	{ hit = 9868, line = 9857, spell = false, unsure = "late by 1.08 s" }, -- 4210.596 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +1.078 s
	{ hit = 9873, line = false, unsure = "secret amount" }, -- 4210.629 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.006 s
	{ hit = 9875, line = 9878, spell = 1014, unsure = "secret amount" }, -- 4210.779 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9879, line = false, unsure = "secret amount" }, -- 4210.896 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE -0.005 s
	{ hit = 9883, line = 9882, spell = 5019, unsure = "secret amount" }, -- 4211.129 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.006 s
	{ hit = 9886, line = false, unsure = "secret amount" }, -- 4211.229 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9891, line = 9894, spell = 6223, unsure = "secret amount" }, -- 4211.396 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9896, line = false, unsure = "2 file events fit" }, -- 4211.963 nameplate3 WOUND <secret> <- other: Stormstrike SPELL_DAMAGE -0.005 s
	{ hit = 9899, line = false, unsure = "secret amount" }, -- 4212.062 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.006 s
	{ hit = 9902, line = 9895, spell = false, unsure = "secret amount" }, -- 4212.479 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.944 s
	{ hit = 9908, line = false, unsure = "secret amount" }, -- 4212.662 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.006 s
	{ hit = 9909, line = 9912, spell = 1014, unsure = "secret amount" }, -- 4212.796 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9914, line = 9913, spell = 5019, unsure = "secret amount" }, -- 4212.929 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE -0.006 s
	{ hit = 9919, line = false, unsure = "2 file events fit" }, -- 4213.263 nameplate3 WOUND <secret> <- creature: Attack SPELL_DAMAGE -0.006 s
	{ hit = 9922, line = false, unsure = "secret amount" }, -- 4213.263 nameplate3 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.006 s
	{ hit = 9925, line = false, unsure = "secret amount" }, -- 4213.396 player WOUND <secret> <- creature: Frostbolt SPELL_DAMAGE +0.011 s
	{ hit = 9927, line = 9926, spell = false, unsure = "2 file events fit" }, -- 4213.946 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.444 s
	{ hit = 9930, line = false, unsure = "secret amount" }, -- 4214.129 nameplate3 WOUND <secret> <- other: Toxic Sporidium DAMAGE_SHIELD -0.006 s
	{ hit = 9933, line = false, unsure = "secret amount" }, -- 4214.229 nameplate3 WOUND <secret> <- other: Flame Shock SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9936, line = 9939, spell = 6223, unsure = "secret amount" }, -- 4214.413 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9940, line = false, unsure = "late by 1.30 s" }, -- 4214.446 nameplate3 WOUND <secret> <- other: swing SWING_DAMAGE +1.295 s
	{ hit = 9943, line = false, unsure = "secret amount" }, -- 4214.646 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 9951, line = 9947, spell = 5019, unsure = "secret amount" }, -- 4214.729 nameplate3 WOUND <secret> <- you: Shoot RANGE_DAMAGE +0.077 s
	{ hit = 9954, line = 9957, spell = 1014, unsure = "secret amount" }, -- 4214.862 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 9960, line = false, unsure = "secret amount" }, -- 4215.329 nameplate3 WOUND <secret> <- other: Earth Shock SPELL_DAMAGE -0.006 s
	{ hit = 9968, line = false, unsure = "secret amount" }, -- 4216.613 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.006 s
	{ hit = 9969, line = false, unsure = "secret amount" }, -- 4218.579 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.006 s
	{ hit = 9974, line = false, unsure = "secret amount" }, -- 4220.579 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.006 s
	{ hit = 9978, line = false, unsure = "secret amount" }, -- 4222.663 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 9984, line = false, unsure = "secret amount" }, -- 4224.629 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.006 s
	{ hit = 9989, line = false, unsure = "secret amount" }, -- 4226.679 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.006 s
	{ hit = 9992, line = false, unsure = "secret amount" }, -- 4228.596 player HEAL <secret> <- creature: Healing Stream SPELL_PERIODIC_HEAL -0.006 s
	{ hit = 9999, line = false, unsure = "secret amount" }, -- 4251.096 nameplate1 WOUND <secret> <- other: Flame Shock SPELL_DAMAGE -0.006 s
	{ hit = 10000, line = false, unsure = "secret amount" }, -- 4252.146 nameplate1 WOUND <secret> <- other: Flametongue Attack SPELL_DAMAGE -0.006 s
}

-- Log Lines with no Hit:
-- line 396 at 2810.870 <- pet: swing SWING_DAMAGE
-- line 1034 at 2868.970 <- you: Shoot RANGE_DAMAGE
-- line 2098 at 2975.354 <- pet: swing SWING_DAMAGE
-- line 2385 at 2983.387 <- pet: swing SWING_DAMAGE
-- line 3068 at 3062.088 <- pet: swing SWING_DAMAGE
-- line 3202 at 3069.938 <- you: Shoot RANGE_DAMAGE
-- line 3285 at 3074.121 <- pet: swing SWING_DAMAGE
-- line 3979 at 3154.288 <- pet: swing SWING_DAMAGE
-- line 4272 at 3166.305 <- pet: swing SWING_DAMAGE
-- line 4433 at 3172.305 <- pet: swing SWING_DAMAGE
-- line 4582 at 3204.772 <- pet: swing SWING_DAMAGE
-- line 4617 at 3206.789 <- pet: swing SWING_DAMAGE
-- line 4922 at 3217.822 <- pet: swing SWING_DAMAGE
-- line 5163 at 3227.256 <- pet: swing SWING_DAMAGE
-- line 5379 at 3235.273 <- pet: swing SWING_DAMAGE
-- line 5391 at 3235.706 <- you: Shoot RANGE_MISSED
-- line 6439 at 3430.874 <- pet: swing SWING_DAMAGE
-- line 6623 at 3436.874 <- you: Shoot RANGE_DAMAGE
-- line 6855 at 3465.341 <- pet: swing SWING_DAMAGE
-- line 6930 at 3469.357 <- pet: swing SWING_DAMAGE
-- line 7373 at 3487.007 <- you:  PARTY_KILL
-- line 8505 at 3735.042 <- you:  PARTY_KILL
-- line 8632 at 3820.276 <- pet: swing SWING_DAMAGE
-- line 8821 at 3832.310 <- pet: swing SWING_DAMAGE
-- line 9164 at 3955.744 <- pet: swing SWING_DAMAGE
-- line 9185 at 3957.694 <- pet: swing SWING_DAMAGE
-- line 9450 at 3979.644 <- no file event
