-- Labels for warlock-drain-life: the Pairing of each Hit, from the Combat Log File.
-- Made by tools/label-trace.lua. Check each row with `unsure`, correct `line`
-- if needed, then delete `unsure` and run the script with --spells. `spell`
-- is the spell ID of the line's file event, or false for a melee swing.
-- Comments: Hit time, unit, action, amount; the file event that made it; how
-- long before the Hit it came.
return {
	{ hit = 1, line = false }, -- 0.175 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 3, line = 4, spell = 1261483 }, -- 1.717 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 5, line = false }, -- 3.150 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 8, line = false }, -- 6.184 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 10, line = false }, -- 9.184 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE +0.001 s
	{ hit = 12, line = false }, -- 12.175 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 16, line = false }, -- 15.175 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 19, line = false }, -- 18.175 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 41, line = 40, spell = 7816 }, -- 38.443 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 44, line = 36, spell = false }, -- 38.534 nameplate3 DODGE <secret> <- pet: swing SWING_MISSED +0.950 s
	{ hit = 47, line = false }, -- 38.695 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.251 s
	{ hit = 51, line = 54, spell = 6217 }, -- 39.892 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 55, line = 50, spell = false }, -- 40.601 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.959 s
	{ hit = 58, line = false }, -- 40.798 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.398 s
	{ hit = 63, line = 66, spell = 6217 }, -- 41.892 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 69, line = 72, spell = 7648 }, -- 42.334 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 73, line = 62, spell = false }, -- 42.550 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 77, line = false }, -- 43.759 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.392 s
	{ hit = 83, line = 82, spell = 18265 }, -- 43.817 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 86, line = 88, spell = 18265 }, -- 43.817 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 89, line = 92, spell = 6217 }, -- 43.817 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 93, line = 76, spell = false }, -- 44.561 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.969 s
	{ hit = 97, line = 96, spell = 709 }, -- 44.759 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 100, line = 102, spell = 709 }, -- 44.759 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 103, line = 106, spell = 7648 }, -- 45.309 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 109, line = 108, spell = 709 }, -- 45.825 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 112, line = 114, spell = 709 }, -- 45.825 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 115, line = 118, spell = 6217 }, -- 45.825 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 119, line = false }, -- 45.850 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 121, line = 107, spell = false }, -- 46.609 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.959 s
	{ hit = 125, line = 124, spell = 709 }, -- 46.759 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 128, line = 130, spell = 709 }, -- 46.759 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 132, line = 131, spell = 18265 }, -- 46.859 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 135, line = 137, spell = 18265 }, -- 46.859 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 139, line = 138, spell = 709 }, -- 47.559 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 142, line = 144, spell = 709 }, -- 47.559 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 147, line = 150, spell = 6217 }, -- 47.818 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 151, line = false }, -- 47.834 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 156, line = 159, spell = 7648 }, -- 48.359 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 160, line = 146, spell = false }, -- 48.517 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 164, line = 163, spell = 709 }, -- 49.175 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 167, line = 169, spell = 709 }, -- 49.175 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 171, line = false }, -- 49.734 player MISS <secret> <- creature: swing SWING_MISSED +0.259 s
	{ hit = 174, line = 173, spell = 18265 }, -- 49.775 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 177, line = 179, spell = 18265 }, -- 49.775 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 180, line = 183, spell = 6217 }, -- 49.892 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 185, line = 184, spell = 709 }, -- 50.175 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 188, line = 190, spell = 709 }, -- 50.175 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 192, line = 170, spell = false }, -- 50.617 nameplate3 DODGE <secret> <- pet: swing SWING_MISSED +0.966 s
	{ hit = 197, line = 196, spell = 7816 }, -- 50.992 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 201, line = 200, spell = 709 }, -- 51.134 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 204, line = 206, spell = 709 }, -- 51.134 player HEAL <secret> <- you: Drain Life SPELL_HEAL +0.000 s
	{ hit = 207, line = 210, spell = 7648 }, -- 51.375 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 212, line = false }, -- 51.742 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.267 s
	{ hit = 214, line = 217, spell = 6217 }, -- 51.809 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 219, line = 218, spell = 709 }, -- 51.925 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 222, line = 224, spell = 709 }, -- 51.925 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 229, line = 211, spell = false }, -- 52.600 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.941 s
	{ hit = 233, line = 232, spell = 18265 }, -- 52.809 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 236, line = 238, spell = 18265 }, -- 52.809 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 240, line = false }, -- 53.784 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.383 s
	{ hit = 242, line = 245, spell = 6217 }, -- 53.825 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 247, line = 250, spell = 7648 }, -- 54.317 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 254, line = 239, spell = false }, -- 54.609 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 262, line = 263, spell = 1261483 }, -- 56.509 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 264, line = 265, spell = 1261483 }, -- 58.492 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 270, line = 271, spell = 1261483 }, -- 60.492 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 272, line = 273, spell = 1261483 }, -- 62.509 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 276, line = 277, spell = 1261483 }, -- 64.501 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 300, line = 299, spell = 7816 }, -- 92.375 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 304, line = false }, -- 92.767 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.390 s
	{ hit = 309, line = 297, spell = false }, -- 93.225 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 318, line = false }, -- 94.775 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.391 s
	{ hit = 322, line = 317, spell = false }, -- 95.234 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 325, line = 328, spell = 6217 }, -- 95.784 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 332, line = false }, -- 96.792 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.391 s
	{ hit = 334, line = 329, spell = false }, -- 97.234 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 337, line = 340, spell = 6217 }, -- 97.784 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 344, line = false }, -- 98.809 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.408 s
	{ hit = 346, line = 343, spell = false }, -- 99.175 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 351, line = 354, spell = 7648 }, -- 99.692 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 355, line = 358, spell = 6217 }, -- 99.784 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 360, line = false }, -- 100.800 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.399 s
	{ hit = 366, line = 365, spell = 18265 }, -- 101.217 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 369, line = 370, spell = 18265 }, -- 101.217 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 371, line = 359, spell = false }, -- 101.234 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.958 s
	{ hit = 374, line = 377, spell = 6217 }, -- 101.700 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 379, line = 378, spell = 709 }, -- 102.184 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 382, line = 383, spell = 709 }, -- 102.184 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 385, line = 388, spell = 7648 }, -- 102.700 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 390, line = 389, spell = 709 }, -- 103.208 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 393, line = 395, spell = 709 }, -- 103.208 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 396, line = 384, spell = false }, -- 103.242 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 399, line = false }, -- 103.317 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.400 s
	{ hit = 401, line = 404, spell = 6217 }, -- 103.734 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 406, line = 405, spell = 709 }, -- 104.227 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 410, line = 409, spell = 18265 }, -- 104.227 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 413, line = 415, spell = 709 }, -- 104.227 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 416, line = 418, spell = 18265 }, -- 104.227 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 422, line = 421, spell = 7816 }, -- 104.475 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.001 s
	{ hit = 425, line = 419, spell = false }, -- 105.184 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 428, line = false }, -- 105.184 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.267 s
	{ hit = 431, line = 430, spell = 709 }, -- 105.234 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 434, line = 436, spell = 709 }, -- 105.234 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 437, line = 440, spell = 7648 }, -- 105.742 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 441, line = 444, spell = 6217 }, -- 105.742 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 446, line = 445, spell = 709 }, -- 106.159 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 449, line = 451, spell = 709 }, -- 106.159 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 457, line = 456, spell = 7641 }, -- 106.525 nameplate1 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE -0.001 s
	{ hit = 460, line = 453, spell = false }, -- 107.209 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.958 s
	{ hit = 463, line = false }, -- 107.317 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.391 s
	{ hit = 466, line = 465, spell = 18265 }, -- 107.442 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 469, line = 471, spell = 18265 }, -- 107.442 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 473, line = 476, spell = 6217 }, -- 107.775 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 482, line = 485, spell = 7648 }, -- 108.675 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 489, line = 480, spell = false }, -- 109.175 nameplate1 DODGE <secret> <- pet: swing SWING_MISSED +0.958 s
	{ hit = 495, line = 496, spell = 1261483 }, -- 110.867 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 497, line = 498, spell = 1261483 }, -- 112.825 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 501, line = 502, spell = 1261483 }, -- 114.867 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 504, line = 505, spell = 1261483 }, -- 116.775 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 506, line = 508, spell = 1261483 }, -- 118.800 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 511, line = false }, -- 119.875 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.257 s
	{ hit = 515, line = 514, spell = 7816 }, -- 120.025 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 521, line = 513, spell = false }, -- 120.994 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.968 s
	{ hit = 526, line = false }, -- 122.009 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.391 s
	{ hit = 533, line = 536, spell = 6217 }, -- 122.934 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 537, line = 528, spell = false }, -- 122.975 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 540, line = false }, -- 123.865 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.264 s
	{ hit = 545, line = 548, spell = 6217 }, -- 124.900 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 549, line = 544, spell = false }, -- 124.983 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 554, line = 557, spell = 7648 }, -- 125.392 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 562, line = 561, spell = 18265 }, -- 126.856 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 565, line = 567, spell = 18265 }, -- 126.856 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 568, line = 571, spell = 6217 }, -- 126.856 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 572, line = 558, spell = false }, -- 127.036 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.968 s
	{ hit = 575, line = false }, -- 127.120 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.261 s
	{ hit = 582, line = 585, spell = 7648 }, -- 128.353 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 588, line = 591, spell = 6217 }, -- 128.909 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 592, line = 578, spell = false }, -- 129.017 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.941 s
	{ hit = 595, line = false }, -- 129.320 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.411 s
	{ hit = 598, line = 597, spell = 709 }, -- 129.417 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 601, line = 603, spell = 709 }, -- 129.417 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 605, line = 604, spell = 18265 }, -- 129.809 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 608, line = 610, spell = 18265 }, -- 129.809 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 613, line = 612, spell = 709 }, -- 130.359 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 616, line = 618, spell = 709 }, -- 130.359 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 619, line = 622, spell = 6217 }, -- 130.917 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 623, line = 611, spell = false }, -- 131.042 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.958 s
	{ hit = 628, line = 627, spell = 709 }, -- 131.325 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 631, line = 633, spell = 709 }, -- 131.325 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 634, line = 637, spell = 7648 }, -- 131.325 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 638, line = false }, -- 131.325 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.408 s
	{ hit = 642, line = 641, spell = 709 }, -- 132.092 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 645, line = 647, spell = 709 }, -- 132.092 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 654, line = 653, spell = 7816 }, -- 132.534 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE +0.000 s
	{ hit = 658, line = 657, spell = 18265 }, -- 132.909 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 661, line = 663, spell = 18265 }, -- 132.909 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 664, line = 667, spell = 6217 }, -- 132.909 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 668, line = 640, spell = false }, -- 133.051 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.958 s
	{ hit = 671, line = false }, -- 133.167 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.257 s
	{ hit = 674, line = 673, spell = 709 }, -- 133.234 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 677, line = 679, spell = 709 }, -- 133.234 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 682, line = 681, spell = 709 }, -- 134.184 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 685, line = 687, spell = 709 }, -- 134.184 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 688, line = 691, spell = 7648 }, -- 134.400 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 692, line = 695, spell = 6217 }, -- 134.925 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 696, line = 680, spell = false }, -- 134.967 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.958 s
	{ hit = 700, line = 699, spell = 709 }, -- 135.242 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 703, line = 705, spell = 709 }, -- 135.242 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 706, line = false }, -- 135.320 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.394 s
	{ hit = 709, line = 708, spell = 18265 }, -- 135.851 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE +0.000 s
	{ hit = 712, line = 714, spell = 18265 }, -- 135.851 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.001 s
	{ hit = 717, line = 716, spell = 709 }, -- 136.192 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 720, line = 722, spell = 709 }, -- 136.192 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 723, line = 726, spell = 6217 }, -- 136.925 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 727, line = 715, spell = false }, -- 137.059 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 730, line = false }, -- 137.184 player MISS <secret> <- creature: swing SWING_MISSED +0.258 s
	{ hit = 734, line = 733, spell = 709 }, -- 137.242 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 738, line = 740, spell = 709 }, -- 137.242 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 744, line = 745, spell = 1261483 }, -- 139.234 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 747, line = 748, spell = 1261483 }, -- 141.250 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 753, line = 754, spell = 1261483 }, -- 143.250 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 755, line = 756, spell = 1261483 }, -- 145.206 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL +0.000 s
	{ hit = 759, line = 760, spell = 1261483 }, -- 147.193 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 788, line = 787, spell = 7816 }, -- 210.850 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 794, line = 786, spell = false }, -- 211.800 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 797, line = false }, -- 212.334 pet WOUND <secret> <- creature: swing SWING_DAMAGE +1.482 s
	{ hit = 802, line = 805, spell = 6217 }, -- 213.284 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 806, line = false }, -- 213.617 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.789 s
	{ hit = 808, line = 801, spell = false }, -- 213.784 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 814, line = 817, spell = 6217 }, -- 215.361 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 818, line = false }, -- 215.658 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.798 s
	{ hit = 822, line = 813, spell = false }, -- 215.809 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.950 s
	{ hit = 825, line = 828, spell = 7648 }, -- 215.825 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 834, line = 833, spell = 18265 }, -- 217.284 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 837, line = 838, spell = 18265 }, -- 217.284 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 839, line = 842, spell = 6217 }, -- 217.284 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 843, line = false }, -- 217.658 pet MISS <secret> <- creature: swing SWING_MISSED +0.800 s
	{ hit = 845, line = 829, spell = false }, -- 217.817 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.959 s
	{ hit = 849, line = 848, spell = 709 }, -- 218.284 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 852, line = 853, spell = 709 }, -- 218.284 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 854, line = 857, spell = 7648 }, -- 218.842 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 860, line = 859, spell = 709 }, -- 219.292 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 863, line = 865, spell = 709 }, -- 219.292 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 866, line = 869, spell = 6217 }, -- 219.292 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 870, line = 858, spell = false }, -- 219.792 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 874, line = 873, spell = 709 }, -- 220.284 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 877, line = 879, spell = 709 }, -- 220.284 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.001 s
	{ hit = 881, line = 880, spell = 18265 }, -- 220.284 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 884, line = 886, spell = 18265 }, -- 220.284 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 889, line = 888, spell = 709 }, -- 221.308 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 892, line = 894, spell = 709 }, -- 221.308 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 895, line = 898, spell = 6217 }, -- 221.308 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 899, line = false }, -- 221.375 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.799 s
	{ hit = 901, line = 904, spell = 7648 }, -- 221.828 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 905, line = 887, spell = false }, -- 221.828 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.960 s
	{ hit = 909, line = 908, spell = 709 }, -- 222.200 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 912, line = 914, spell = 709 }, -- 222.200 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 919, line = 918, spell = 7641 }, -- 222.683 nameplate2 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.079 s
	{ hit = 925, line = 924, spell = 7816 }, -- 223.000 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 928, line = false }, -- 223.292 player DODGE <secret> <- creature: swing SWING_MISSED +0.798 s
	{ hit = 931, line = 930, spell = 18265 }, -- 223.309 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 934, line = 936, spell = 18265 }, -- 223.309 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 937, line = 940, spell = 6217 }, -- 223.309 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 941, line = 922, spell = false }, -- 223.767 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.959 s
	{ hit = 946, line = 949, spell = 7648 }, -- 224.833 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 952, line = 955, spell = 6217 }, -- 225.359 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 959, line = 950, spell = false }, -- 225.792 nameplate2 DODGE <secret> <- pet: swing SWING_MISSED +0.957 s
	{ hit = 960, line = false }, -- 226.083 player DODGE <secret> <- creature: swing SWING_MISSED +1.498 s
	{ hit = 965, line = 966, spell = 1261483 }, -- 227.361 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 967, line = 968, spell = 1261483 }, -- 229.367 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 969, line = 970, spell = 1261483 }, -- 231.367 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 971, line = 972, spell = 1261483 }, -- 233.375 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 973, line = 974, spell = 1261483 }, -- 235.358 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 995, line = 994, spell = 7816 }, -- 285.850 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 1001, line = 993, spell = false }, -- 286.808 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 1004, line = false }, -- 287.350 player WOUND <secret> <- creature: swing SWING_DAMAGE +1.498 s
	{ hit = 1008, line = 1011, spell = 6217 }, -- 288.475 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1012, line = false }, -- 288.609 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.798 s
	{ hit = 1014, line = 1005, spell = false }, -- 288.767 nameplate2 PARRY <secret> <- pet: swing SWING_MISSED +0.957 s
	{ hit = 1020, line = 1023, spell = 6217 }, -- 290.467 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1024, line = false }, -- 290.667 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.798 s
	{ hit = 1026, line = 1019, spell = false }, -- 290.825 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 1029, line = 1032, spell = 7648 }, -- 290.967 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1037, line = 1036, spell = 18265 }, -- 292.350 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1040, line = 1042, spell = 18265 }, -- 292.350 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1046, line = 1049, spell = 6217 }, -- 292.483 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1050, line = false }, -- 292.748 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.779 s
	{ hit = 1052, line = 1035, spell = false }, -- 292.925 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 1056, line = 1055, spell = 709 }, -- 293.451 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1059, line = 1061, spell = 709 }, -- 293.451 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 1063, line = 1066, spell = 7648 }, -- 293.884 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1068, line = 1067, spell = 709 }, -- 294.383 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1071, line = 1073, spell = 709 }, -- 294.383 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1074, line = 1077, spell = 6217 }, -- 294.383 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1078, line = false }, -- 294.676 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.790 s
	{ hit = 1080, line = 1062, spell = false }, -- 294.842 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 1084, line = 1083, spell = 18265 }, -- 295.442 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1087, line = 1089, spell = 18265 }, -- 295.442 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1091, line = 1090, spell = 709 }, -- 295.442 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1094, line = 1096, spell = 709 }, -- 295.442 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1099, line = 1098, spell = 709 }, -- 296.217 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1102, line = 1104, spell = 709 }, -- 296.217 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 1106, line = 1109, spell = 6217 }, -- 296.409 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1112, line = false }, -- 296.667 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.782 s
	{ hit = 1114, line = 1097, spell = false }, -- 296.833 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 1117, line = 1120, spell = 7648 }, -- 296.950 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1124, line = 1123, spell = 7816 }, -- 298.011 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 1131, line = 1130, spell = 18265 }, -- 298.400 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1134, line = 1136, spell = 18265 }, -- 298.400 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 1137, line = 1140, spell = 6217 }, -- 298.400 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1141, line = false }, -- 298.661 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.775 s
	{ hit = 1143, line = 1121, spell = false }, -- 298.825 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.940 s
	{ hit = 1147, line = 1146, spell = 709 }, -- 299.109 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1150, line = 1152, spell = 709 }, -- 299.109 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 1154, line = 1157, spell = 7648 }, -- 299.942 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1159, line = 1158, spell = 709 }, -- 300.025 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1162, line = 1164, spell = 709 }, -- 300.025 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1165, line = 1168, spell = 6217 }, -- 300.458 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1169, line = 1153, spell = false }, -- 300.900 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 1173, line = 1172, spell = 709 }, -- 301.109 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1176, line = 1178, spell = 709 }, -- 301.109 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 1179, line = false }, -- 301.434 player WOUND <secret> <- creature: swing SWING_DAMAGE +1.489 s
	{ hit = 1182, line = 1181, spell = 18265 }, -- 301.450 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1185, line = 1187, spell = 18265 }, -- 301.450 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.002 s
	{ hit = 1190, line = 1189, spell = 709 }, -- 301.867 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1195, line = 1196, spell = 709 }, -- 301.867 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 1201, line = false }, -- 303.392 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE -0.009 s
	{ hit = 1202, line = 1203, spell = 1261483 }, -- 303.850 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1204, line = 1205, spell = 1261483 }, -- 305.867 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1206, line = false }, -- 306.463 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1209, line = 1210, spell = 1261483 }, -- 307.859 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1214, line = false }, -- 309.442 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1215, line = 1216, spell = 1261483 }, -- 309.875 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1218, line = 1219, spell = 1261483 }, -- 311.859 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1220, line = false }, -- 312.467 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1221, line = false }, -- 315.369 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1222, line = false }, -- 318.450 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1225, line = false }, -- 321.458 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1226, line = false }, -- 324.392 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1227, line = false }, -- 327.392 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1228, line = false }, -- 330.383 player WOUND <secret> <- creature: Poison SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1241, line = 1240, spell = 7816 }, -- 341.026 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 1244, line = 1236, spell = false }, -- 341.200 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 1247, line = false }, -- 341.492 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.464 s
	{ hit = 1252, line = 1255, spell = 6217 }, -- 342.450 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1256, line = 1251, spell = false }, -- 343.200 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 1261, line = false }, -- 343.534 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.490 s
	{ hit = 1264, line = 1267, spell = 6217 }, -- 344.442 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1270, line = 1273, spell = 7648 }, -- 344.917 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1274, line = 1263, spell = false }, -- 345.167 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.965 s
	{ hit = 1277, line = false }, -- 345.517 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.490 s
	{ hit = 1284, line = 1283, spell = 18265 }, -- 346.367 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1287, line = 1288, spell = 18265 }, -- 346.367 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 1289, line = 1292, spell = 6217 }, -- 346.367 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 1293, line = 1279, spell = false }, -- 347.117 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 1297, line = 1296, spell = 709 }, -- 347.317 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1300, line = 1301, spell = 709 }, -- 347.317 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1302, line = false }, -- 347.567 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.498 s
	{ hit = 1304, line = 1307, spell = 7648 }, -- 347.900 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1308, line = 1314, spell = 709 }, -- 348.361 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1311, line = 1315, spell = 709 }, -- 348.361 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 1316, line = 1319, spell = 6217 }, -- 348.459 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1320, line = 1313, spell = false }, -- 349.183 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 1324, line = 1323, spell = 709 }, -- 349.358 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1327, line = 1329, spell = 709 }, -- 349.358 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1331, line = 1330, spell = 18265 }, -- 349.358 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 1334, line = 1336, spell = 18265 }, -- 349.358 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 1337, line = false }, -- 349.542 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.465 s
	{ hit = 1341, line = 1340, spell = 709 }, -- 350.353 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1344, line = 1346, spell = 709 }, -- 350.353 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 1347, line = 1350, spell = 6217 }, -- 350.450 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1351, line = 1354, spell = 7648 }, -- 350.942 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1355, line = 1339, spell = false }, -- 351.161 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.951 s
	{ hit = 1361, line = false }, -- 351.567 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.507 s
	{ hit = 1365, line = 1364, spell = 709 }, -- 352.267 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1368, line = 1370, spell = 709 }, -- 352.267 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1372, line = 1371, spell = 18265 }, -- 352.406 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1375, line = 1377, spell = 18265 }, -- 352.406 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 1378, line = 1381, spell = 6217 }, -- 352.406 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1384, line = 1383, spell = 7816 }, -- 353.159 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 1387, line = 1363, spell = false }, -- 353.217 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 1391, line = 1390, spell = 709 }, -- 353.292 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1394, line = 1396, spell = 709 }, -- 353.292 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 1397, line = false }, -- 353.500 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.465 s
	{ hit = 1399, line = 1402, spell = 7648 }, -- 353.850 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1406, line = 1405, spell = 709 }, -- 354.283 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1409, line = 1411, spell = 709 }, -- 354.283 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 1412, line = 1415, spell = 6217 }, -- 354.375 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1416, line = 1404, spell = false }, -- 355.242 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 1420, line = 1419, spell = 709 }, -- 355.342 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.001 s
	{ hit = 1423, line = 1425, spell = 709 }, -- 355.342 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 1427, line = 1426, spell = 18265 }, -- 355.342 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1430, line = 1432, spell = 18265 }, -- 355.342 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 1433, line = false }, -- 355.600 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.490 s
	{ hit = 1437, line = 1436, spell = 709 }, -- 356.328 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1440, line = 1442, spell = 709 }, -- 356.328 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1444, line = 1447, spell = 6217 }, -- 356.442 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1451, line = 1454, spell = 7648 }, -- 356.875 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1455, line = 1435, spell = false }, -- 357.150 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 1459, line = false }, -- 357.517 player MISS <secret> <- creature: swing SWING_MISSED +0.490 s
	{ hit = 1466, line = 1461, spell = false }, -- 359.192 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 1470, line = 1471, spell = 1261483 }, -- 360.417 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.001 s
	{ hit = 1474, line = 1475, spell = 1261483 }, -- 362.433 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1476, line = 1477, spell = 1261483 }, -- 364.433 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1479, line = 1480, spell = 1261483 }, -- 366.425 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1485, line = 1486, spell = 1261483 }, -- 368.433 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1497, line = 1496, spell = 7816 }, -- 375.500 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 1501, line = false }, -- 375.967 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.464 s
	{ hit = 1503, line = 1495, spell = false }, -- 376.458 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 1508, line = 1511, spell = 6217 }, -- 377.083 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1513, line = false }, -- 377.933 pet MISS <secret> <- creature: swing SWING_MISSED +0.497 s
	{ hit = 1517, line = 1512, spell = false }, -- 378.392 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 1520, line = 1523, spell = 6217 }, -- 379.050 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1527, line = 1530, spell = 7648 }, -- 379.592 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1531, line = false }, -- 379.950 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.461 s
	{ hit = 1533, line = 1524, spell = false }, -- 380.433 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 1537, line = 1536, spell = 18265 }, -- 381.025 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1540, line = 1541, spell = 18265 }, -- 381.025 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 1542, line = 1545, spell = 6217 }, -- 381.125 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1551, line = 1550, spell = 2941 }, -- 381.550 nameplate1 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.003 s
	{ hit = 1554, line = false }, -- 381.936 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.501 s
	{ hit = 1556, line = 1546, spell = false }, -- 382.392 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 1559, line = 1562, spell = 7648 }, -- 382.625 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1566, line = 1569, spell = 6217 }, -- 383.050 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1572, line = 1571, spell = 709 }, -- 383.958 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1575, line = 1577, spell = 709 }, -- 383.958 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1579, line = 1578, spell = 18265 }, -- 384.058 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1582, line = 1584, spell = 18265 }, -- 384.058 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 1585, line = 1570, spell = false }, -- 384.442 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 1588, line = 1591, spell = 2941 }, -- 384.525 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1592, line = false }, -- 384.858 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.488 s
	{ hit = 1595, line = 1594, spell = 709 }, -- 385.033 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1598, line = 1600, spell = 709 }, -- 385.033 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1601, line = 1604, spell = 6217 }, -- 385.142 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1606, line = 1609, spell = 7648 }, -- 385.600 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1611, line = 1610, spell = 709 }, -- 386.017 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1614, line = 1616, spell = 709 }, -- 386.017 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1617, line = 1605, spell = false }, -- 386.450 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.965 s
	{ hit = 1621, line = false }, -- 386.867 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.465 s
	{ hit = 1624, line = 1623, spell = 709 }, -- 386.994 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1627, line = 1629, spell = 709 }, -- 386.994 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1631, line = 1630, spell = 18265 }, -- 387.108 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1634, line = 1636, spell = 18265 }, -- 387.108 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 1637, line = 1640, spell = 6217 }, -- 387.108 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 1642, line = 1645, spell = 2941 }, -- 387.583 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1648, line = 1647, spell = 709 }, -- 388.050 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1652, line = 1651, spell = 7816 }, -- 388.050 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 1655, line = 1657, spell = 709 }, -- 388.050 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 1662, line = 1641, spell = false }, -- 388.525 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.965 s
	{ hit = 1665, line = 1668, spell = 7648 }, -- 388.625 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1669, line = false }, -- 388.817 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.456 s
	{ hit = 1671, line = 1674, spell = 6217 }, -- 389.117 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1676, line = 1675, spell = 709 }, -- 389.350 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1679, line = 1680, spell = 709 }, -- 389.350 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.002 s
	{ hit = 1689, line = 1690, spell = 1261483 }, -- 391.542 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1693, line = 1694, spell = 1261483 }, -- 393.549 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1698, line = 1699, spell = 1261483 }, -- 395.534 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1704, line = 1705, spell = 1261483 }, -- 397.550 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1706, line = 1707, spell = 1261483 }, -- 399.525 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1722, line = 1721, spell = 7816 }, -- 431.767 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 1725, line = false }, -- 432.225 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.456 s
	{ hit = 1727, line = 1719, spell = false }, -- 432.450 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.965 s
	{ hit = 1732, line = 1735, spell = 6217 }, -- 433.067 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1739, line = false }, -- 434.225 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.464 s
	{ hit = 1741, line = 1736, spell = false }, -- 434.417 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 1744, line = 1747, spell = 6217 }, -- 435.083 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1749, line = 1752, spell = 7648 }, -- 435.508 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1757, line = 1756, spell = 2941 }, -- 435.975 nameplate1 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.003 s
	{ hit = 1760, line = false }, -- 436.207 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.463 s
	{ hit = 1761, line = 1748, spell = false }, -- 436.467 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 1764, line = 1767, spell = 6217 }, -- 437.083 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1771, line = false }, -- 438.245 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.493 s
	{ hit = 1773, line = 1768, spell = false }, -- 438.433 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 1776, line = 1779, spell = 7648 }, -- 438.517 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1783, line = 1786, spell = 2941 }, -- 439.042 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1788, line = 1787, spell = 18265 }, -- 439.042 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1791, line = 1793, spell = 18265 }, -- 439.042 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 1794, line = 1797, spell = 6217 }, -- 439.042 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 1800, line = 1799, spell = 709 }, -- 439.967 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1803, line = 1805, spell = 709 }, -- 439.967 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1806, line = false }, -- 440.308 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.497 s
	{ hit = 1808, line = 1798, spell = false }, -- 440.417 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 1812, line = 1811, spell = 709 }, -- 440.956 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1815, line = 1817, spell = 709 }, -- 440.956 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1818, line = 1821, spell = 6217 }, -- 441.067 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1823, line = 1826, spell = 7648 }, -- 441.500 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1828, line = 1827, spell = 709 }, -- 441.950 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1831, line = 1833, spell = 709 }, -- 441.950 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1834, line = 1837, spell = 2941 }, -- 442.067 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1839, line = 1838, spell = 18265 }, -- 442.067 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1842, line = 1844, spell = 18265 }, -- 442.067 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 1845, line = false }, -- 442.233 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.497 s
	{ hit = 1847, line = 1822, spell = false }, -- 442.458 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 1851, line = 1850, spell = 709 }, -- 442.925 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1854, line = 1856, spell = 709 }, -- 442.925 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1857, line = 1860, spell = 6217 }, -- 443.092 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1863, line = 1862, spell = 709 }, -- 443.958 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1866, line = 1868, spell = 709 }, -- 443.958 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 1875, line = 1874, spell = 7816 }, -- 444.283 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 1878, line = 1861, spell = false }, -- 444.408 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 1881, line = 1884, spell = 7648 }, -- 444.525 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1885, line = 1888, spell = 2941 }, -- 444.967 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1890, line = 1889, spell = 18265 }, -- 444.967 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1893, line = 1895, spell = 18265 }, -- 444.967 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 1896, line = 1899, spell = 6217 }, -- 445.092 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1901, line = 1900, spell = 709 }, -- 445.092 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1904, line = 1906, spell = 709 }, -- 445.092 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1910, line = 1909, spell = 709 }, -- 446.192 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1913, line = 1915, spell = 709 }, -- 446.192 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 1920, line = 1908, spell = false }, -- 446.500 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.972 s
	{ hit = 1923, line = 1926, spell = 6217 }, -- 447.017 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1933, line = 1927, spell = false }, -- 448.417 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 1936, line = 1937, spell = 1261483 }, -- 449.608 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 1942, line = 1943, spell = 1261483 }, -- 451.600 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1947, line = 1948, spell = 1261483 }, -- 453.692 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1956, line = 1958, spell = 1261483 }, -- 455.658 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 1959, line = false }, -- 455.658 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 1964, line = 1966, spell = 1261483 }, -- 457.600 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 1970, line = false }, -- 458.150 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.421 s
	{ hit = 1972, line = 1975, spell = 6217 }, -- 458.642 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 1976, line = 1967, spell = false }, -- 458.675 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 1982, line = 1981, spell = 7816 }, -- 458.885 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 1989, line = false }, -- 460.117 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.488 s
	{ hit = 1991, line = 1987, spell = false }, -- 460.583 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 1994, line = 1997, spell = 6217 }, -- 460.647 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 1998, line = 2001, spell = 7648 }, -- 461.067 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2005, line = false }, -- 462.233 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.505 s
	{ hit = 2008, line = 2007, spell = 18265 }, -- 462.573 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2011, line = 2012, spell = 18265 }, -- 462.573 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2013, line = 2016, spell = 6217 }, -- 462.573 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2017, line = 2004, spell = false }, -- 462.684 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 2024, line = 2023, spell = 2941 }, -- 463.150 nameplate1 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 2028, line = 2031, spell = 7648 }, -- 464.133 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2032, line = 2027, spell = false }, -- 464.633 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 2037, line = 2040, spell = 6217 }, -- 464.675 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2042, line = 2041, spell = 18265 }, -- 465.634 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2045, line = 2047, spell = 18265 }, -- 465.634 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2048, line = false }, -- 465.634 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2051, line = false }, -- 465.733 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.422 s
	{ hit = 2056, line = 2059, spell = 2941 }, -- 466.183 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2060, line = 2063, spell = 6217 }, -- 466.650 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2064, line = 2050, spell = false }, -- 466.692 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 2067, line = 2070, spell = 7648 }, -- 467.142 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2072, line = 2071, spell = 709 }, -- 467.142 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2075, line = 2077, spell = 709 }, -- 467.142 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 2079, line = false }, -- 467.800 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.423 s
	{ hit = 2082, line = 2081, spell = 709 }, -- 468.125 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2085, line = 2087, spell = 709 }, -- 468.125 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 2090, line = 2089, spell = 18265 }, -- 468.600 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2093, line = 2095, spell = 18265 }, -- 468.600 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2096, line = 2099, spell = 6217 }, -- 468.600 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2100, line = 2078, spell = false }, -- 468.700 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 2104, line = 2103, spell = 709 }, -- 469.117 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2107, line = 2109, spell = 709 }, -- 469.117 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 2110, line = 2113, spell = 2941 }, -- 469.117 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2115, line = false }, -- 469.801 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.424 s
	{ hit = 2118, line = 2117, spell = 709 }, -- 469.825 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2121, line = 2123, spell = 709 }, -- 469.825 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 2127, line = 2130, spell = 7648 }, -- 470.125 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2132, line = 2131, spell = 7641 }, -- 470.317 nameplate1 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.072 s
	{ hit = 2135, line = 2138, spell = 6217 }, -- 470.650 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2139, line = 2114, spell = false }, -- 470.683 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 2144, line = 2143, spell = 7816 }, -- 471.483 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 2148, line = 2147, spell = 18265 }, -- 471.633 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2151, line = 2152, spell = 18265 }, -- 471.633 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2157, line = false }, -- 471.775 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.481 s
	{ hit = 2159, line = 2162, spell = 2941 }, -- 472.135 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2170, line = 2171, spell = 1261483 }, -- 474.317 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 2174, line = false }, -- 475.708 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2176, line = 2177, spell = 1261483 }, -- 476.292 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 2180, line = 2181, spell = 1261483 }, -- 478.235 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 2186, line = 2188, spell = 1261483 }, -- 480.275 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 2194, line = 2193, spell = false }, -- 482.103 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 2197, line = 2199, spell = 1261483 }, -- 482.308 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 2203, line = 2206, spell = 6217 }, -- 483.083 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2210, line = 2209, spell = 7816 }, -- 483.567 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 2213, line = false }, -- 483.708 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.505 s
	{ hit = 2217, line = 2207, spell = false }, -- 484.158 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 2220, line = 2223, spell = 6217 }, -- 485.150 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2227, line = 2230, spell = 7648 }, -- 485.595 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2231, line = false }, -- 485.642 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.488 s
	{ hit = 2232, line = false }, -- 485.692 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2235, line = 2224, spell = false }, -- 486.108 nameplate3 PARRY <secret> <- pet: swing SWING_MISSED +0.955 s
	{ hit = 2236, line = false }, -- 486.975 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.498 s
	{ hit = 2239, line = 2238, spell = 18265 }, -- 487.100 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2240, line = 2242, spell = 18265 }, -- 487.100 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2243, line = 2244, spell = 6217 }, -- 487.100 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2246, line = false }, -- 487.717 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.489 s
	{ hit = 2247, line = 2245, spell = false }, -- 488.175 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 2251, line = 2252, spell = 7648 }, -- 488.625 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2254, line = false }, -- 488.808 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.422 s
	{ hit = 2256, line = 2257, spell = 6217 }, -- 489.150 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2263, line = 2262, spell = 18265 }, -- 490.109 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2266, line = 2267, spell = 18265 }, -- 490.109 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2268, line = 2258, spell = false }, -- 490.109 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 2275, line = false }, -- 490.900 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.489 s
	{ hit = 2276, line = 2279, spell = 6217 }, -- 491.108 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2281, line = 2284, spell = 7648 }, -- 491.566 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2285, line = 2280, spell = false }, -- 492.183 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 2288, line = 2287, spell = 2941 }, -- 492.808 nameplate3 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 2291, line = false }, -- 492.917 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.423 s
	{ hit = 2293, line = 2292, spell = 18265 }, -- 493.025 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2296, line = 2297, spell = 18265 }, -- 493.025 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2298, line = 2301, spell = 6217 }, -- 493.125 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2304, line = 2302, spell = false }, -- 494.185 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 2309, line = 2310, spell = 7648 }, -- 494.600 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2311, line = false }, -- 494.908 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.508 s
	{ hit = 2313, line = 2314, spell = 6217 }, -- 495.092 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2316, line = false }, -- 495.717 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2321, line = 2320, spell = 7816 }, -- 495.817 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.002 s
	{ hit = 2324, line = 2325, spell = 2941 }, -- 495.817 nameplate3 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2327, line = 2326, spell = 18265 }, -- 496.050 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2328, line = 2329, spell = 18265 }, -- 496.050 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2330, line = 2315, spell = false }, -- 496.175 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 2333, line = 2336, spell = 6217 }, -- 496.259 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2338, line = false }, -- 496.992 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.498 s
	{ hit = 2347, line = 2346, spell = 2941 }, -- 497.708 nameplate1 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 2350, line = 2341, spell = false }, -- 498.158 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 2353, line = 2356, spell = 6217 }, -- 498.167 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2358, line = false }, -- 498.917 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.423 s
	{ hit = 2361, line = 2362, spell = 18265 }, -- 499.050 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 2367, line = 2370, spell = 6217 }, -- 500.179 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2371, line = 2366, spell = false }, -- 500.200 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 2377, line = 2380, spell = 2941 }, -- 500.708 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2381, line = 2384, spell = 7648 }, -- 500.708 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2385, line = false }, -- 500.959 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.498 s
	{ hit = 2391, line = 2392, spell = 18265 }, -- 502.092 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2396, line = 2395, spell = 18265 }, -- 502.200 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2399, line = 2400, spell = 18265 }, -- 502.200 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 2401, line = 2404, spell = 6217 }, -- 502.200 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 2405, line = 2388, spell = false }, -- 502.208 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 2408, line = false }, -- 502.917 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.489 s
	{ hit = 2415, line = 2418, spell = 7648 }, -- 503.669 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2419, line = 2422, spell = 2941 }, -- 503.669 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 2423, line = 2426, spell = 6217 }, -- 504.205 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2427, line = 2411, spell = false }, -- 504.225 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.964 s
	{ hit = 2431, line = 2430, spell = 709 }, -- 504.608 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2434, line = 2435, spell = 709 }, -- 504.608 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 2437, line = false }, -- 504.959 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.481 s
	{ hit = 2439, line = 2441, spell = 18265 }, -- 505.059 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 2444, line = 2443, spell = 18265 }, -- 505.200 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2447, line = 2449, spell = 18265 }, -- 505.200 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2452, line = 2451, spell = 709 }, -- 505.667 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2455, line = 2457, spell = 709 }, -- 505.667 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 2458, line = false }, -- 505.667 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2461, line = 2450, spell = false }, -- 506.158 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 2464, line = 2467, spell = 6217 }, -- 506.167 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2469, line = 2468, spell = 709 }, -- 506.575 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2472, line = 2474, spell = 709 }, -- 506.575 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 2475, line = 2478, spell = 2941 }, -- 506.733 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2479, line = 2482, spell = 7648 }, -- 506.733 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2483, line = false }, -- 506.850 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.431 s
	{ hit = 2487, line = 2486, spell = 709 }, -- 507.575 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2490, line = 2492, spell = 709 }, -- 507.575 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 2493, line = 2494, spell = 2941 }, -- 507.817 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2496, line = 2495, spell = 18265 }, -- 508.108 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2497, line = 2499, spell = 18265 }, -- 508.108 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 2501, line = 2500, spell = 18265 }, -- 508.217 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2504, line = 2506, spell = 18265 }, -- 508.217 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2507, line = 2510, spell = 6217 }, -- 508.217 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2511, line = 2485, spell = false }, -- 508.233 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 2516, line = 2515, spell = 7816 }, -- 508.350 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 2521, line = false }, -- 508.945 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.492 s
	{ hit = 2524, line = 2525, spell = 2941 }, -- 509.683 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2526, line = 2527, spell = 7648 }, -- 509.683 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2529, line = 2523, spell = false }, -- 510.192 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 2532, line = 2535, spell = 6217 }, -- 510.267 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2537, line = false }, -- 510.483 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.439 s
	{ hit = 2539, line = 2538, spell = 18265 }, -- 511.117 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2540, line = 2541, spell = 18265 }, -- 511.117 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2543, line = 2542, spell = 18265 }, -- 511.217 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2546, line = 2547, spell = 18265 }, -- 511.217 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2554, line = 2548, spell = false }, -- 512.175 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 2555, line = 2558, spell = 6217 }, -- 512.225 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2559, line = false }, -- 512.575 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.504 s
	{ hit = 2560, line = 2563, spell = 2941 }, -- 512.736 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2565, line = 2568, spell = 7648 }, -- 512.736 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2579, line = 2578, spell = 18265 }, -- 514.092 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2582, line = 2583, spell = 18265 }, -- 514.092 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2584, line = 2573, spell = false }, -- 514.233 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 2587, line = 2588, spell = 1261483 }, -- 514.750 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 2590, line = 2589, spell = 709 }, -- 514.975 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2593, line = 2594, spell = 709 }, -- 514.975 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 2597, line = 2596, spell = 709 }, -- 516.033 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2600, line = 2601, spell = 709 }, -- 516.033 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 2602, line = 2595, spell = false }, -- 516.245 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.951 s
	{ hit = 2605, line = 2606, spell = 1261483 }, -- 516.675 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 2609, line = 2608, spell = false }, -- 518.233 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 2612, line = 2613, spell = 1261483 }, -- 518.750 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 2621, line = 2622, spell = 1261483 }, -- 521.310 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 2623, line = 2624, spell = 1261483 }, -- 523.225 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 2625, line = 2626, spell = 1261483 }, -- 525.308 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 2628, line = 2629, spell = 1261483 }, -- 527.513 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.002 s
	{ hit = 2631, line = 2632, spell = 1261483 }, -- 529.308 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 2655, line = 2654, spell = 7816 }, -- 571.217 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 2660, line = false }, -- 571.658 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.438 s
	{ hit = 2664, line = 2653, spell = false }, -- 572.183 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.964 s
	{ hit = 2671, line = false }, -- 573.633 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.430 s
	{ hit = 2673, line = 2676, spell = 6217 }, -- 574.058 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2677, line = 2668, spell = false }, -- 574.167 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.964 s
	{ hit = 2687, line = false }, -- 575.742 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.497 s
	{ hit = 2689, line = 2692, spell = 6217 }, -- 576.067 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.002 s
	{ hit = 2696, line = 2699, spell = 7648 }, -- 576.491 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2701, line = 2704, spell = 6217 }, -- 578.058 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2705, line = false }, -- 578.628 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.425 s
	{ hit = 2711, line = 2710, spell = 2941 }, -- 579.175 nameplate1 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 2714, line = 2717, spell = 7648 }, -- 579.516 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2718, line = 2721, spell = 6217 }, -- 579.967 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2725, line = false }, -- 580.719 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.503 s
	{ hit = 2727, line = false }, -- 581.045 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.508 s
	{ hit = 2729, line = 2723, spell = false }, -- 581.500 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.964 s
	{ hit = 2735, line = 2738, spell = 6217 }, -- 582.017 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2740, line = 2739, spell = 18265 }, -- 582.266 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2743, line = 2746, spell = 2941 }, -- 582.266 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2747, line = 2749, spell = 18265 }, -- 582.266 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 2750, line = 2753, spell = 7648 }, -- 582.542 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2755, line = false }, -- 582.633 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.496 s
	{ hit = 2757, line = false }, -- 583.067 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.431 s
	{ hit = 2760, line = 2759, spell = 7816 }, -- 583.375 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 2761, line = 2754, spell = false }, -- 583.592 nameplate2 DODGE <secret> <- pet: swing SWING_MISSED +0.956 s
	{ hit = 2763, line = 2766, spell = 6217 }, -- 584.066 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2770, line = false }, -- 585.008 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.438 s
	{ hit = 2774, line = 2775, spell = 2941 }, -- 585.243 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2777, line = 2776, spell = 18265 }, -- 585.243 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2778, line = 2779, spell = 18265 }, -- 585.243 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 2780, line = 2781, spell = 7648 }, -- 585.475 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2782, line = 2769, spell = false }, -- 585.533 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.963 s
	{ hit = 2785, line = 2786, spell = 6217 }, -- 586.000 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2790, line = 2793, spell = 6217 }, -- 587.017 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2794, line = false }, -- 587.075 pet MISS <secret> <- creature: swing SWING_MISSED +0.496 s
	{ hit = 2797, line = 2789, spell = false }, -- 587.535 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 2805, line = 2806, spell = 18265 }, -- 588.250 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 2809, line = false }, -- 589.008 pet MISS <secret> <- creature: swing SWING_MISSED +0.421 s
	{ hit = 2811, line = 2814, spell = 6217 }, -- 589.075 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2815, line = 2808, spell = false }, -- 589.533 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 2818, line = 2821, spell = 7648 }, -- 589.542 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2827, line = 2826, spell = 2941 }, -- 590.092 nameplate2 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 2832, line = 2835, spell = 6217 }, -- 591.067 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2836, line = false }, -- 591.167 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.488 s
	{ hit = 2840, line = 2841, spell = 18265 }, -- 591.208 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 2845, line = 2830, spell = false }, -- 591.625 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 2849, line = 2852, spell = 7648 }, -- 592.583 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2854, line = false }, -- 593.017 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.430 s
	{ hit = 2856, line = 2859, spell = 6217 }, -- 593.075 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2862, line = 2865, spell = 2941 }, -- 593.075 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 2867, line = 2866, spell = 18265 }, -- 593.075 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 2870, line = 2871, spell = 18265 }, -- 593.075 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 2872, line = 2853, spell = false }, -- 593.541 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 2878, line = 2880, spell = 18265 }, -- 594.242 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 2885, line = 2888, spell = 6217 }, -- 595.067 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2889, line = false }, -- 595.133 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.488 s
	{ hit = 2893, line = 2892, spell = 7816 }, -- 595.533 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.004 s
	{ hit = 2896, line = 2899, spell = 7648 }, -- 595.533 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2901, line = 2900, spell = 709 }, -- 595.533 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 2904, line = 2906, spell = 709 }, -- 595.533 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 2907, line = 2884, spell = false }, -- 595.591 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 2911, line = 2914, spell = 2941 }, -- 596.158 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2916, line = 2915, spell = 18265 }, -- 596.158 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2919, line = 2921, spell = 18265 }, -- 596.158 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 2923, line = 2922, spell = 709 }, -- 596.591 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2926, line = 2928, spell = 709 }, -- 596.591 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 2930, line = 2933, spell = 6217 }, -- 596.983 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2934, line = false }, -- 597.225 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.497 s
	{ hit = 2937, line = 2939, spell = 18265 }, -- 597.253 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2940, line = 2929, spell = false }, -- 597.541 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 2944, line = 2943, spell = 709 }, -- 597.625 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2947, line = 2949, spell = 709 }, -- 597.625 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 2951, line = 2950, spell = 709 }, -- 598.367 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2954, line = 2956, spell = 709 }, -- 598.367 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 2958, line = 2961, spell = 7648 }, -- 598.625 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2966, line = 2969, spell = 6217 }, -- 599.050 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2971, line = 2970, spell = 18265 }, -- 599.158 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2974, line = 2977, spell = 2941 }, -- 599.158 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 2978, line = 2980, spell = 18265 }, -- 599.158 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 2981, line = false }, -- 599.158 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.430 s
	{ hit = 2983, line = 2965, spell = false }, -- 599.583 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 2987, line = 2986, spell = 709 }, -- 599.650 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 2990, line = 2992, spell = 709 }, -- 599.650 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 2994, line = 2996, spell = 18265 }, -- 600.259 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 2998, line = 2997, spell = 709 }, -- 600.575 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3001, line = 3003, spell = 709 }, -- 600.575 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3005, line = 3008, spell = 6217 }, -- 601.050 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3009, line = false }, -- 601.125 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.438 s
	{ hit = 3011, line = 3014, spell = 7648 }, -- 601.525 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3018, line = 3004, spell = false }, -- 601.644 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.958 s
	{ hit = 3023, line = 3024, spell = 18265 }, -- 603.283 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.007 s
	{ hit = 3026, line = 3027, spell = 1261483 }, -- 603.600 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3030, line = 3031, spell = 1261483 }, -- 605.533 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3035, line = 3034, spell = 18265 }, -- 606.233 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3037, line = 3038, spell = 18265 }, -- 606.233 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 3039, line = 3040, spell = 1261483 }, -- 607.608 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3042, line = 3041, spell = 18265 }, -- 609.275 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3044, line = 3046, spell = 18265 }, -- 609.275 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 3047, line = 3049, spell = 1261483 }, -- 609.625 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3053, line = 3052, spell = 7816 }, -- 610.583 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 3056, line = 3050, spell = false }, -- 610.708 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 3059, line = 3061, spell = 1261483 }, -- 611.558 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3069, line = 3070, spell = 1261483 }, -- 613.716 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 3073, line = 3074, spell = 1261483 }, -- 615.783 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3078, line = 3079, spell = 1261483 }, -- 617.767 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3082, line = 3083, spell = 1261483 }, -- 619.767 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3085, line = 3086, spell = 1261483 }, -- 621.700 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3094, line = 3093, spell = 7816 }, -- 624.367 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.003 s
	{ hit = 3099, line = false }, -- 624.825 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.455 s
	{ hit = 3101, line = 3091, spell = false }, -- 625.035 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.949 s
	{ hit = 3107, line = false }, -- 626.833 pet MISS <secret> <- creature: swing SWING_MISSED +0.496 s
	{ hit = 3109, line = 3104, spell = false }, -- 627.017 nameplate2 PARRY <secret> <- pet: swing SWING_MISSED +0.956 s
	{ hit = 3117, line = 3119, spell = 6217 }, -- 628.317 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3120, line = false }, -- 628.770 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.449 s
	{ hit = 3122, line = 3114, spell = false }, -- 629.025 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 3127, line = 3129, spell = 6217 }, -- 630.417 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3130, line = false }, -- 630.792 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.487 s
	{ hit = 3132, line = 3126, spell = false }, -- 631.000 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 3136, line = 3138, spell = 7648 }, -- 631.325 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3140, line = 3142, spell = 6217 }, -- 632.375 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3147, line = 3146, spell = 18265 }, -- 632.850 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3149, line = 3150, spell = 18265 }, -- 632.850 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 3151, line = false }, -- 632.850 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.472 s
	{ hit = 3153, line = 3139, spell = false }, -- 633.009 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 3156, line = 3155, spell = 709 }, -- 633.758 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3158, line = 3159, spell = 709 }, -- 633.758 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3161, line = 3163, spell = 7648 }, -- 634.358 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3164, line = 3166, spell = 6217 }, -- 634.358 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3168, line = 3167, spell = 709 }, -- 634.842 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3170, line = 3172, spell = 709 }, -- 634.842 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 3173, line = 3160, spell = false }, -- 635.058 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.963 s
	{ hit = 3176, line = 3175, spell = 709 }, -- 635.733 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3178, line = 3180, spell = 709 }, -- 635.733 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3182, line = 3181, spell = 18265 }, -- 635.849 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3184, line = 3186, spell = 18265 }, -- 635.849 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 3188, line = 3190, spell = 6217 }, -- 636.358 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3193, line = 3192, spell = 7816 }, -- 636.508 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 3196, line = 3195, spell = 709 }, -- 636.508 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3198, line = 3200, spell = 709 }, -- 636.508 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 3202, line = false }, -- 636.717 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.456 s
	{ hit = 3206, line = 3187, spell = false }, -- 637.075 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 3208, line = 3210, spell = 7648 }, -- 637.308 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3212, line = 3214, spell = 6217 }, -- 638.417 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3219, line = 3218, spell = 18265 }, -- 638.867 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3221, line = 3223, spell = 18265 }, -- 638.867 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.003 s
	{ hit = 3224, line = 3211, spell = false }, -- 639.008 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 3227, line = 3226, spell = 709 }, -- 639.492 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3229, line = 3231, spell = 709 }, -- 639.492 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.003 s
	{ hit = 3233, line = 3235, spell = 7648 }, -- 640.367 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3236, line = 3238, spell = 6217 }, -- 640.367 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3240, line = 3239, spell = 709 }, -- 640.500 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3242, line = 3244, spell = 709 }, -- 640.500 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3245, line = 3232, spell = false }, -- 641.017 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.964 s
	{ hit = 3248, line = 3247, spell = 709 }, -- 641.558 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3250, line = 3251, spell = 709 }, -- 641.558 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3253, line = 3252, spell = 18265 }, -- 641.800 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3255, line = 3256, spell = 18265 }, -- 641.800 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 3258, line = 3260, spell = 6217 }, -- 642.408 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3262, line = 3261, spell = 709 }, -- 642.550 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3264, line = 3265, spell = 709 }, -- 642.550 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3269, line = 3257, spell = false }, -- 643.025 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 3274, line = 3272, spell = 7641 }, -- 643.384 nameplate2 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.097 s
	{ hit = 3281, line = 3282, spell = 1261483 }, -- 645.325 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3285, line = 3286, spell = 1261483 }, -- 647.325 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3287, line = 3288, spell = 1261483 }, -- 649.242 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3289, line = false }, -- 649.883 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3290, line = 3291, spell = 1261483 }, -- 651.242 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3294, line = 3295, spell = 1261483 }, -- 653.267 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.003 s
	{ hit = 3299, line = false }, -- 659.900 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3300, line = false }, -- 669.950 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3301, line = false }, -- 679.858 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3306, line = false }, -- 689.916 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3310, line = false }, -- 699.950 player WOUND <secret> <- creature: Creeping Mold SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3318, line = 3317, spell = 7816 }, -- 706.941 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 3321, line = false }, -- 707.402 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.456 s
	{ hit = 3323, line = 3316, spell = false }, -- 707.892 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 3327, line = false }, -- 709.477 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.464 s
	{ hit = 3329, line = 3326, spell = false }, -- 709.958 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 3336, line = false }, -- 711.458 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.487 s
	{ hit = 3337, line = false }, -- 711.550 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.463 s
	{ hit = 3340, line = 3334, spell = false }, -- 711.916 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 3343, line = 3346, spell = 6217 }, -- 712.325 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3350, line = false }, -- 713.525 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.496 s
	{ hit = 3352, line = false }, -- 713.525 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.496 s
	{ hit = 3356, line = 3349, spell = false }, -- 713.983 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 3357, line = 3360, spell = 6217 }, -- 714.350 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3364, line = 3367, spell = 7648 }, -- 715.428 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3368, line = false }, -- 715.483 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.454 s
	{ hit = 3370, line = false }, -- 715.525 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.496 s
	{ hit = 3372, line = 3361, spell = false }, -- 715.975 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 3373, line = 3376, spell = 6217 }, -- 716.267 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3381, line = 3380, spell = 18265 }, -- 716.883 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3384, line = 3385, spell = 18265 }, -- 716.883 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 3388, line = false }, -- 717.475 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.462 s
	{ hit = 3390, line = 3386, spell = false }, -- 717.958 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 3393, line = 3394, spell = 6217 }, -- 718.344 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3395, line = 3396, spell = 7648 }, -- 718.344 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3401, line = 3400, spell = 2941 }, -- 718.875 nameplate1 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.005 s
	{ hit = 3405, line = 3404, spell = 7816 }, -- 719.183 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.004 s
	{ hit = 3408, line = false }, -- 719.533 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.495 s
	{ hit = 3411, line = 3410, spell = 18265 }, -- 719.841 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3412, line = 3413, spell = 18265 }, -- 719.841 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 3414, line = 3402, spell = false }, -- 719.983 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 3420, line = 3423, spell = 6217 }, -- 720.350 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3424, line = 3425, spell = 6217 }, -- 720.883 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3427, line = 3430, spell = 7648 }, -- 721.433 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3431, line = false }, -- 721.500 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.462 s
	{ hit = 3434, line = 3437, spell = 2941 }, -- 721.825 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3438, line = 3426, spell = false }, -- 722.003 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.966 s
	{ hit = 3440, line = 3441, spell = 6217 }, -- 722.292 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3442, line = false }, -- 722.525 player MISS <secret> <- creature: swing SWING_MISSED +0.496 s
	{ hit = 3443, line = 3446, spell = 6217 }, -- 722.791 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3448, line = 3447, spell = 18265 }, -- 722.903 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3449, line = 3450, spell = 18265 }, -- 722.903 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 3453, line = 3456, spell = 7648 }, -- 723.350 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3457, line = false }, -- 723.492 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.463 s
	{ hit = 3459, line = 3451, spell = false }, -- 723.975 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 3464, line = 3465, spell = 6217 }, -- 724.300 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3466, line = 3467, spell = 7648 }, -- 724.425 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3468, line = 3469, spell = 2941 }, -- 724.900 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3470, line = 3473, spell = 6217 }, -- 724.900 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3475, line = false }, -- 725.608 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.496 s
	{ hit = 3478, line = 3477, spell = 18265 }, -- 725.900 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3479, line = 3480, spell = 18265 }, -- 725.900 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 3481, line = 3474, spell = false }, -- 725.967 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 3486, line = 3485, spell = 2941 }, -- 726.317 nameplate2 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.004 s
	{ hit = 3489, line = 3490, spell = 6217 }, -- 726.317 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3491, line = 3494, spell = 7648 }, -- 726.317 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3497, line = 3500, spell = 6217 }, -- 726.891 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3502, line = 3503, spell = 7648 }, -- 727.441 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3504, line = false }, -- 727.583 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.488 s
	{ hit = 3506, line = 3507, spell = 2941 }, -- 727.816 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3511, line = 3501, spell = false }, -- 727.942 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 3515, line = 3518, spell = 6217 }, -- 728.875 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3520, line = 3521, spell = 18265 }, -- 728.875 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 3523, line = 3526, spell = 2941 }, -- 729.267 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3527, line = 3530, spell = 7648 }, -- 729.267 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3534, line = 3533, spell = 18265 }, -- 729.375 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3537, line = 3538, spell = 18265 }, -- 729.375 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 3539, line = false }, -- 729.642 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.497 s
	{ hit = 3542, line = 3541, spell = 7641 }, -- 729.908 nameplate2 WOUND <secret> <- you: Shadow Bolt SPELL_DAMAGE +0.063 s
	{ hit = 3545, line = 3522, spell = false }, -- 729.992 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 3551, line = 3554, spell = 6217 }, -- 730.783 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3560, line = 3559, spell = 7816 }, -- 731.317 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.004 s
	{ hit = 3564, line = 3566, spell = 18265 }, -- 731.925 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 3567, line = 3557, spell = false }, -- 731.992 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.947 s
	{ hit = 3570, line = false }, -- 732.208 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.454 s
	{ hit = 3572, line = 3578, spell = 2941 }, -- 732.283 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3575, line = 3580, spell = 7648 }, -- 732.283 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3585, line = 3584, spell = 18265 }, -- 732.383 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3588, line = 3590, spell = 18265 }, -- 732.383 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 3591, line = 3594, spell = 6217 }, -- 732.875 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3597, line = 3596, spell = 709 }, -- 733.350 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3600, line = 3601, spell = 709 }, -- 733.350 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3603, line = 3595, spell = false }, -- 733.950 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 3608, line = 3607, spell = 709 }, -- 734.400 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3611, line = 3612, spell = 709 }, -- 734.400 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3614, line = 3617, spell = 6217 }, -- 734.891 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3621, line = 3622, spell = 18265 }, -- 734.891 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.009 s
	{ hit = 3625, line = 3626, spell = 1261483 }, -- 736.891 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 3628, line = 3629, spell = 18265 }, -- 737.842 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 3632, line = 3633, spell = 1261483 }, -- 738.900 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 3635, line = 3636, spell = 1261483 }, -- 740.866 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 3638, line = 3637, spell = 18265 }, -- 740.866 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 3639, line = 3640, spell = 18265 }, -- 740.866 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 3642, line = 3643, spell = 1261483 }, -- 742.816 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 3646, line = 3645, spell = 18265 }, -- 743.833 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3648, line = 3649, spell = 18265 }, -- 743.833 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 3652, line = 3653, spell = 1261483 }, -- 744.900 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 3660, line = 3663, spell = 6217 }, -- 749.133 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3664, line = false }, -- 749.916 player WOUND <secret> <- creature: Lightning Bolt SPELL_DAMAGE +0.054 s
	{ hit = 3668, line = 3671, spell = 6217 }, -- 751.169 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3674, line = 3677, spell = 7648 }, -- 751.608 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3679, line = 3678, spell = 7816 }, -- 751.608 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 3684, line = 3672, spell = false }, -- 752.219 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 3689, line = 3688, spell = 18265 }, -- 753.083 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3692, line = 3694, spell = 18265 }, -- 753.083 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 3695, line = 3698, spell = 6217 }, -- 753.083 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3703, line = 3699, spell = false }, -- 754.286 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 3707, line = 3706, spell = 709 }, -- 754.644 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3710, line = 3712, spell = 709 }, -- 754.644 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 3713, line = 3716, spell = 7648 }, -- 754.644 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 3717, line = false }, -- 754.942 player WOUND <secret> <- creature: Lightning Bolt SPELL_DAMAGE +0.155 s
	{ hit = 3719, line = 3722, spell = 6217 }, -- 755.166 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3726, line = 3725, spell = 709 }, -- 755.625 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3729, line = 3731, spell = 709 }, -- 755.625 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3733, line = 3732, spell = 18265 }, -- 756.066 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3736, line = 3738, spell = 18265 }, -- 756.066 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 3739, line = 3723, spell = false }, -- 756.233 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.963 s
	{ hit = 3744, line = 3743, spell = 709 }, -- 756.633 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3747, line = 3749, spell = 709 }, -- 756.633 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 3751, line = 3754, spell = 6217 }, -- 757.158 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3757, line = 3756, spell = 709 }, -- 757.575 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3760, line = 3763, spell = 7648 }, -- 757.575 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3764, line = 3766, spell = 709 }, -- 757.575 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 3768, line = 3755, spell = false }, -- 758.226 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 3772, line = 3771, spell = 709 }, -- 758.583 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3775, line = 3777, spell = 709 }, -- 758.583 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 3783, line = 3782, spell = 18265 }, -- 759.058 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3786, line = 3788, spell = 18265 }, -- 759.058 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 3789, line = 3792, spell = 6217 }, -- 759.158 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3796, line = 3795, spell = 709 }, -- 760.070 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3797, line = 3798, spell = 709 }, -- 760.070 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3799, line = 3793, spell = false }, -- 760.233 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 3800, line = 3801, spell = 7648 }, -- 760.542 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3802, line = false }, -- 761.016 player WOUND <secret> <- creature: Lightning Bolt SPELL_DAMAGE +0.196 s
	{ hit = 3804, line = 3803, spell = 709 }, -- 761.100 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3805, line = 3806, spell = 709 }, -- 761.100 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3807, line = 3808, spell = 6217 }, -- 761.100 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3812, line = 3811, spell = 709 }, -- 762.083 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3813, line = 3814, spell = 709 }, -- 762.083 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 3816, line = 3815, spell = 18265 }, -- 762.083 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3817, line = 3818, spell = 18265 }, -- 762.083 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 3822, line = 3821, spell = 709 }, -- 763.129 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3826, line = 3827, spell = 709 }, -- 763.129 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3828, line = 3832, spell = 6217 }, -- 763.129 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3834, line = false }, -- 763.483 nameplate2 HEAL <secret> <- creature: Healing Wave SPELL_HEAL -0.005 s
	{ hit = 3838, line = 3842, spell = 7648 }, -- 763.650 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3845, line = 3844, spell = 7816 }, -- 763.803 nameplate3 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.004 s
	{ hit = 3846, line = false }, -- 763.975 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.487 s
	{ hit = 3850, line = 3833, spell = false }, -- 764.437 nameplate3 DODGE <secret> <- pet: swing SWING_MISSED +0.950 s
	{ hit = 3852, line = 3851, spell = 709 }, -- 764.983 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3855, line = 3857, spell = 709 }, -- 764.983 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 3859, line = 3858, spell = 18265 }, -- 765.125 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3862, line = 3864, spell = 18265 }, -- 765.125 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 3865, line = 3868, spell = 6217 }, -- 765.125 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3870, line = false }, -- 765.941 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.503 s
	{ hit = 3872, line = 3871, spell = 709 }, -- 765.975 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3875, line = 3877, spell = 709 }, -- 765.975 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 3878, line = 3869, spell = false }, -- 766.391 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 3879, line = 3882, spell = 7648 }, -- 766.642 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3884, line = 3883, spell = 709 }, -- 766.933 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3887, line = 3889, spell = 709 }, -- 766.933 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 3890, line = 3893, spell = 6217 }, -- 767.158 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3896, line = 3895, spell = 709 }, -- 767.917 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 3899, line = 3900, spell = 709 }, -- 767.917 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 3901, line = false }, -- 767.958 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.486 s
	{ hit = 3903, line = 3902, spell = 18265 }, -- 768.050 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3906, line = 3907, spell = 18265 }, -- 768.050 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.004 s
	{ hit = 3908, line = 3894, spell = false }, -- 768.425 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 3912, line = 3915, spell = 6217 }, -- 769.123 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3917, line = false }, -- 769.967 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.463 s
	{ hit = 3918, line = 3916, spell = false }, -- 770.458 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 3923, line = 3922, spell = 18265 }, -- 771.108 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3926, line = 3927, spell = 18265 }, -- 771.108 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 3928, line = 3931, spell = 6217 }, -- 771.108 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 3934, line = 3933, spell = 709 }, -- 771.608 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3937, line = 3938, spell = 709 }, -- 771.608 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 3939, line = false }, -- 771.967 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.496 s
	{ hit = 3941, line = 3944, spell = 7648 }, -- 772.141 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 3949, line = 3932, spell = false }, -- 772.428 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.958 s
	{ hit = 3955, line = false }, -- 773.942 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.454 s
	{ hit = 3956, line = 3957, spell = 1261483 }, -- 774.108 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 3959, line = 3953, spell = false }, -- 774.442 nameplate3 WOUND <secret> <- pet: swing SWING_DAMAGE +0.955 s
	{ hit = 3964, line = 3966, spell = 1261483 }, -- 776.150 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 3969, line = false }, -- 776.425 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.499 s
	{ hit = 3971, line = 3974, spell = 6217 }, -- 776.808 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3977, line = 3979, spell = 1261483 }, -- 778.133 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 3980, line = false }, -- 778.408 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.496 s
	{ hit = 3982, line = 3985, spell = 6217 }, -- 778.758 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3986, line = 3989, spell = 7648 }, -- 779.317 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 3990, line = 3992, spell = 1261483 }, -- 780.166 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 3993, line = false }, -- 780.408 player MISS <secret> <- creature: swing SWING_MISSED +0.462 s
	{ hit = 3997, line = 4000, spell = 6217 }, -- 780.800 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4002, line = 4001, spell = 18265 }, -- 780.800 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4005, line = 4007, spell = 18265 }, -- 780.800 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 4008, line = 4010, spell = 1261483 }, -- 782.158 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4013, line = 4016, spell = 7648 }, -- 782.258 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4017, line = false }, -- 782.425 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.496 s
	{ hit = 4019, line = 4022, spell = 6217 }, -- 782.812 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4027, line = 4026, spell = 18265 }, -- 783.833 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4030, line = 4032, spell = 18265 }, -- 783.833 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 4033, line = false }, -- 784.450 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.488 s
	{ hit = 4036, line = 4035, spell = 709 }, -- 784.714 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4039, line = 4041, spell = 709 }, -- 784.714 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4042, line = 4045, spell = 6217 }, -- 784.841 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4046, line = 4049, spell = 7648 }, -- 785.300 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4051, line = 4050, spell = 709 }, -- 785.728 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.003 s
	{ hit = 4054, line = 4056, spell = 709 }, -- 785.728 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 4057, line = false }, -- 786.450 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.488 s
	{ hit = 4060, line = 4059, spell = 709 }, -- 786.642 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4063, line = 4065, spell = 709 }, -- 786.642 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4066, line = 4069, spell = 6217 }, -- 786.800 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4071, line = 4070, spell = 18265 }, -- 786.800 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4074, line = 4076, spell = 18265 }, -- 786.800 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 4078, line = 4077, spell = 709 }, -- 787.708 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4081, line = 4083, spell = 709 }, -- 787.708 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4084, line = 4087, spell = 7648 }, -- 788.283 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4088, line = false }, -- 788.533 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.488 s
	{ hit = 4091, line = 4090, spell = 709 }, -- 788.700 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4094, line = 4096, spell = 709 }, -- 788.700 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.004 s
	{ hit = 4098, line = 4101, spell = 6217 }, -- 788.800 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4105, line = 4104, spell = 18265 }, -- 789.783 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4108, line = 4110, spell = 18265 }, -- 789.783 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 4115, line = false }, -- 790.491 player MISS <secret> <- creature: swing SWING_MISSED +0.473 s
	{ hit = 4117, line = 4120, spell = 6217 }, -- 790.841 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4121, line = 4124, spell = 7648 }, -- 791.242 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4126, line = 4125, spell = 709 }, -- 791.508 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4129, line = 4131, spell = 709 }, -- 791.508 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4132, line = false }, -- 792.456 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.485 s
	{ hit = 4135, line = 4134, spell = 709 }, -- 792.483 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4138, line = 4140, spell = 709 }, -- 792.483 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4141, line = 4144, spell = 6217 }, -- 792.750 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4146, line = 4145, spell = 18265 }, -- 792.750 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4149, line = 4151, spell = 18265 }, -- 792.750 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 4153, line = 4152, spell = 709 }, -- 793.458 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4156, line = 4158, spell = 709 }, -- 793.458 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4159, line = 4162, spell = 7648 }, -- 794.300 nameplate3 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4164, line = 4163, spell = 709 }, -- 794.547 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4167, line = 4169, spell = 709 }, -- 794.547 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4170, line = false }, -- 794.567 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.496 s
	{ hit = 4172, line = 4175, spell = 6217 }, -- 794.808 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4177, line = 4176, spell = 709 }, -- 795.492 nameplate3 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4180, line = 4181, spell = 709 }, -- 795.492 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4184, line = 4183, spell = 18265 }, -- 795.783 nameplate3 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4187, line = 4188, spell = 18265 }, -- 795.783 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 4193, line = 4196, spell = 6217 }, -- 796.816 nameplate3 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 4200, line = 4201, spell = 1261483 }, -- 798.875 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4203, line = 4204, spell = 1261483 }, -- 800.750 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4207, line = 4208, spell = 1261483 }, -- 802.767 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4212, line = 4213, spell = 1261483 }, -- 804.791 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4214, line = 4215, spell = 1261483 }, -- 806.750 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4220, line = 4221, spell = 1260270 }, -- 809.369 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4222, line = 4223, spell = 1260270 }, -- 810.625 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4224, line = 4225, spell = 1260270 }, -- 811.733 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4226, line = 4227, spell = 1260270 }, -- 812.950 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4228, line = 4229, spell = 1260270 }, -- 814.209 player HEAL <secret> <- you: Rapid Regeneration SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4245, line = 4244, spell = 7816 }, -- 836.483 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 4249, line = false }, -- 836.942 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.455 s
	{ hit = 4253, line = 4243, spell = false }, -- 837.433 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 4256, line = 4259, spell = 6217 }, -- 837.641 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4263, line = false }, -- 839.000 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.504 s
	{ hit = 4265, line = 4260, spell = false }, -- 839.458 nameplate1 DODGE <secret> <- pet: swing SWING_MISSED +0.962 s
	{ hit = 4268, line = 4271, spell = 6217 }, -- 839.642 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4272, line = 4275, spell = 7648 }, -- 840.125 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4282, line = false }, -- 840.992 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.496 s
	{ hit = 4284, line = 4276, spell = false }, -- 841.450 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 4289, line = 4292, spell = 6217 }, -- 841.633 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4294, line = false }, -- 843.000 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.487 s
	{ hit = 4296, line = 4299, spell = 7648 }, -- 843.092 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4300, line = 4293, spell = false }, -- 843.458 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 4303, line = 4306, spell = 6217 }, -- 843.700 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4309, line = 4308, spell = 2941 }, -- 844.466 nameplate1 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.005 s
	{ hit = 4315, line = false }, -- 844.966 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.494 s
	{ hit = 4317, line = 4312, spell = false }, -- 845.416 nameplate1 DODGE <secret> <- pet: swing SWING_MISSED +0.944 s
	{ hit = 4320, line = 4323, spell = 6217 }, -- 845.641 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4324, line = 4327, spell = 7648 }, -- 846.133 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4331, line = 4328, spell = false }, -- 847.400 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 4334, line = 4337, spell = 2941 }, -- 847.441 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4338, line = false }, -- 847.508 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.468 s
	{ hit = 4341, line = 4340, spell = 18265 }, -- 847.575 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4344, line = 4346, spell = 18265 }, -- 847.575 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 4347, line = 4350, spell = 6217 }, -- 847.575 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4357, line = 4356, spell = 7816 }, -- 848.666 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 4361, line = 4360, spell = 709 }, -- 849.000 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4364, line = 4366, spell = 709 }, -- 849.000 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4367, line = 4370, spell = 7648 }, -- 849.125 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4371, line = false }, -- 849.467 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.462 s
	{ hit = 4373, line = 4354, spell = false }, -- 849.475 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 4376, line = 4379, spell = 6217 }, -- 849.642 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4381, line = 4380, spell = 709 }, -- 850.016 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4384, line = 4386, spell = 709 }, -- 850.016 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 4387, line = 4390, spell = 2941 }, -- 850.425 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4393, line = 4392, spell = 18265 }, -- 850.550 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4396, line = 4398, spell = 18265 }, -- 850.550 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 4400, line = 4399, spell = 709 }, -- 851.008 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4403, line = 4405, spell = 709 }, -- 851.008 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4406, line = 4391, spell = false }, -- 851.375 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 4409, line = false }, -- 851.472 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.458 s
	{ hit = 4411, line = 4414, spell = 6217 }, -- 851.642 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4416, line = 4415, spell = 709 }, -- 851.916 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4419, line = 4421, spell = 709 }, -- 851.916 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 4422, line = 4425, spell = 7648 }, -- 852.067 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4428, line = 4427, spell = 709 }, -- 852.933 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4431, line = 4433, spell = 709 }, -- 852.933 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4438, line = 4426, spell = false }, -- 853.467 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 4441, line = 4444, spell = 2941 }, -- 853.483 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4446, line = 4445, spell = 18265 }, -- 853.483 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 4449, line = 4450, spell = 18265 }, -- 853.483 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.007 s
	{ hit = 4451, line = false }, -- 853.550 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.496 s
	{ hit = 4452, line = 4455, spell = 6217 }, -- 853.642 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4457, line = 4456, spell = 709 }, -- 854.325 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4460, line = 4461, spell = 709 }, -- 854.325 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4468, line = 4462, spell = false }, -- 855.458 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.953 s
	{ hit = 4472, line = 4473, spell = 1261483 }, -- 856.500 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 4475, line = 4476, spell = 1261483 }, -- 858.558 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 4479, line = 4480, spell = 1261483 }, -- 860.550 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4483, line = 4484, spell = 1261483 }, -- 862.491 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 4488, line = 4489, spell = 1261483 }, -- 864.550 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4499, line = 4498, spell = 7816 }, -- 872.588 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.006 s
	{ hit = 4503, line = false }, -- 873.066 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.472 s
	{ hit = 4507, line = 4510, spell = 6217 }, -- 873.300 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4511, line = 4497, spell = false }, -- 873.550 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.957 s
	{ hit = 4517, line = false }, -- 875.116 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.503 s
	{ hit = 4520, line = 4523, spell = 6217 }, -- 875.358 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4524, line = 4514, spell = false }, -- 875.475 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.962 s
	{ hit = 4527, line = 4530, spell = 7648 }, -- 876.292 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4536, line = 4535, spell = 2941 }, -- 876.833 nameplate2 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.006 s
	{ hit = 4539, line = 4542, spell = 6217 }, -- 877.294 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4543, line = 4531, spell = false }, -- 877.558 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.943 s
	{ hit = 4550, line = false }, -- 878.717 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.479 s
	{ hit = 4552, line = 4555, spell = 7648 }, -- 879.267 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4556, line = 4559, spell = 6217 }, -- 879.383 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4560, line = 4549, spell = false }, -- 879.577 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.948 s
	{ hit = 4564, line = 4563, spell = 18265 }, -- 879.900 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4567, line = 4570, spell = 2941 }, -- 879.900 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4571, line = 4573, spell = 18265 }, -- 879.900 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 4578, line = false }, -- 880.775 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.454 s
	{ hit = 4581, line = 4580, spell = 709 }, -- 880.950 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4584, line = 4586, spell = 709 }, -- 880.950 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4587, line = 4590, spell = 6217 }, -- 881.391 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4591, line = 4577, spell = false }, -- 881.716 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.953 s
	{ hit = 4595, line = 4594, spell = 709 }, -- 881.850 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4598, line = 4600, spell = 709 }, -- 881.958 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4601, line = 4604, spell = 7648 }, -- 882.241 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4606, line = false }, -- 882.733 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.487 s
	{ hit = 4608, line = 4611, spell = 2941 }, -- 882.875 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4613, line = 4612, spell = 18265 }, -- 882.875 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4616, line = 4618, spell = 18265 }, -- 882.875 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.005 s
	{ hit = 4620, line = 4619, spell = 709 }, -- 882.875 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 4623, line = 4625, spell = 709 }, -- 882.875 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.007 s
	{ hit = 4626, line = 4629, spell = 6217 }, -- 883.383 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4630, line = 4605, spell = false }, -- 883.575 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 4634, line = 4633, spell = 709 }, -- 883.708 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4637, line = 4639, spell = 709 }, -- 883.708 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4645, line = false }, -- 884.666 player WOUND <secret> <- creature: swing SWING_DAMAGE +0.453 s
	{ hit = 4649, line = 4648, spell = 7816 }, -- 884.816 nameplate2 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 4653, line = 4652, spell = 709 }, -- 884.950 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4656, line = 4658, spell = 709 }, -- 884.950 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4660, line = 4663, spell = 7648 }, -- 885.292 nameplate2 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4664, line = 4667, spell = 6217 }, -- 885.383 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4668, line = 4644, spell = false }, -- 885.566 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 4671, line = 4674, spell = 2941 }, -- 885.908 nameplate2 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4676, line = 4675, spell = 18265 }, -- 885.908 nameplate2 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4679, line = 4680, spell = 18265 }, -- 885.908 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 4682, line = 4681, spell = 709 }, -- 885.908 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 4685, line = 4686, spell = 709 }, -- 885.908 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.007 s
	{ hit = 4689, line = 4688, spell = 709 }, -- 886.992 nameplate2 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4692, line = 4693, spell = 709 }, -- 886.992 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4695, line = 4698, spell = 6217 }, -- 887.333 nameplate2 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4702, line = 4687, spell = false }, -- 887.550 nameplate2 WOUND <secret> <- pet: swing SWING_DAMAGE +0.946 s
	{ hit = 4707, line = 4708, spell = 1261483 }, -- 889.291 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 4710, line = 4711, spell = 1261483 }, -- 891.389 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4714, line = 4716, spell = 1261483 }, -- 893.300 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4720, line = 4719, spell = false }, -- 895.175 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.943 s
	{ hit = 4725, line = 4727, spell = 1261483 }, -- 895.358 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 4728, line = 4731, spell = 6217 }, -- 895.733 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4732, line = false }, -- 895.866 player MISS <secret> <- creature: Lightning Bolt SPELL_MISSED -0.006 s
	{ hit = 4739, line = 4738, spell = 7816 }, -- 896.950 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 4742, line = 4734, spell = false }, -- 897.191 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.953 s
	{ hit = 4745, line = 4746, spell = 1261483 }, -- 897.308 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 4747, line = 4750, spell = 6217 }, -- 897.727 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4752, line = 4755, spell = 7648 }, -- 898.266 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4760, line = 4759, spell = 2941 }, -- 898.633 nameplate1 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.005 s
	{ hit = 4763, line = 4751, spell = false }, -- 899.125 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 4766, line = 4769, spell = 6217 }, -- 899.766 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4773, line = false }, -- 900.433 player WOUND <secret> <- creature: Lightning Bolt SPELL_DAMAGE +0.012 s
	{ hit = 4775, line = 4772, spell = false }, -- 901.091 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.943 s
	{ hit = 4778, line = 4781, spell = 7648 }, -- 901.158 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4785, line = 4788, spell = 2941 }, -- 901.686 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 4790, line = 4789, spell = 18265 }, -- 901.686 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 4793, line = 4795, spell = 18265 }, -- 901.686 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.007 s
	{ hit = 4796, line = 4799, spell = 6217 }, -- 901.686 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.007 s
	{ hit = 4802, line = 4801, spell = 709 }, -- 902.633 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4805, line = 4807, spell = 709 }, -- 902.633 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4808, line = 4800, spell = false }, -- 903.183 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.956 s
	{ hit = 4812, line = 4811, spell = 709 }, -- 903.691 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4815, line = 4817, spell = 709 }, -- 903.691 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 4818, line = 4821, spell = 6217 }, -- 903.691 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 4823, line = 4826, spell = 7648 }, -- 904.233 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4828, line = 4827, spell = 709 }, -- 904.650 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4831, line = 4833, spell = 709 }, -- 904.650 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 4835, line = 4834, spell = 18265 }, -- 904.650 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 4838, line = 4841, spell = 2941 }, -- 904.650 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.007 s
	{ hit = 4842, line = 4844, spell = 18265 }, -- 904.650 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.007 s
	{ hit = 4845, line = 4822, spell = false }, -- 905.192 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 4849, line = 4848, spell = 709 }, -- 905.683 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4852, line = 4854, spell = 709 }, -- 905.683 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4855, line = 4858, spell = 6217 }, -- 905.683 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 4861, line = 4860, spell = 709 }, -- 906.608 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4864, line = 4866, spell = 709 }, -- 906.608 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 4868, line = false }, -- 906.916 player WOUND <secret> <- creature: Lightning Bolt SPELL_DAMAGE +0.303 s
	{ hit = 4873, line = 4859, spell = false }, -- 907.201 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.944 s
	{ hit = 4876, line = 4879, spell = 7648 }, -- 907.266 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4880, line = 4883, spell = 2941 }, -- 907.725 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4885, line = 4884, spell = 18265 }, -- 907.725 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4888, line = 4890, spell = 18265 }, -- 907.725 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 4891, line = 4894, spell = 6217 }, -- 907.725 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 4896, line = 4895, spell = 709 }, -- 908.025 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4899, line = 4901, spell = 709 }, -- 908.025 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4904, line = 4903, spell = 709 }, -- 908.945 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 4907, line = 4909, spell = 709 }, -- 908.945 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 4910, line = 4902, spell = false }, -- 909.133 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.953 s
	{ hit = 4915, line = 4914, spell = 7816 }, -- 909.142 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 4918, line = 4921, spell = 6217 }, -- 909.691 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4924, line = 4923, spell = 709 }, -- 910.025 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4928, line = 4930, spell = 709 }, -- 910.025 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 4935, line = 4936, spell = 1261483 }, -- 911.925 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 4941, line = 4942, spell = 1261483 }, -- 914.000 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.008 s
	{ hit = 4945, line = 4946, spell = 1261483 }, -- 915.975 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4951, line = 4952, spell = 1261483 }, -- 918.025 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
	{ hit = 4953, line = 4954, spell = 1261483 }, -- 919.958 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 4957, line = 4956, spell = 7816 }, -- 935.458 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.005 s
	{ hit = 4962, line = false }, -- 935.955 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.492 s
	{ hit = 4967, line = 4966, spell = 1714 }, -- 936.466 nameplate1 MISS <secret> <- you: Curse of Tongues SPELL_MISSED -0.005 s
	{ hit = 4970, line = 4961, spell = false }, -- 936.550 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 4976, line = false }, -- 938.000 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.504 s
	{ hit = 4978, line = 4973, spell = false }, -- 938.591 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.953 s
	{ hit = 4984, line = false }, -- 939.941 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.494 s
	{ hit = 4986, line = 4983, spell = false }, -- 940.633 nameplate1 DODGE <secret> <- pet: swing SWING_MISSED +0.954 s
	{ hit = 4991, line = 4994, spell = 6217 }, -- 941.366 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 4996, line = false }, -- 941.953 pet WOUND <secret> <- creature: swing SWING_DAMAGE +0.488 s
	{ hit = 5000, line = 4995, spell = false }, -- 942.633 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.945 s
	{ hit = 5003, line = 5006, spell = 6217 }, -- 943.441 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5008, line = 5011, spell = 7648 }, -- 943.917 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5016, line = 5015, spell = 2941 }, -- 944.383 nameplate1 WOUND <secret> <- you: Immolate SPELL_DAMAGE -0.006 s
	{ hit = 5019, line = 5007, spell = false }, -- 944.658 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.962 s
	{ hit = 5023, line = 5026, spell = 6217 }, -- 945.416 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5031, line = 5027, spell = false }, -- 946.600 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.962 s
	{ hit = 5035, line = 5034, spell = 709 }, -- 946.900 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5038, line = 5039, spell = 709 }, -- 946.900 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 5040, line = 5043, spell = 7648 }, -- 946.900 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 5044, line = 5047, spell = 2941 }, -- 947.316 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5049, line = 5048, spell = 18265 }, -- 947.316 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 5052, line = 5054, spell = 18265 }, -- 947.316 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 5055, line = 5058, spell = 6217 }, -- 947.425 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5061, line = 5060, spell = 7816 }, -- 947.691 nameplate1 WOUND <secret> <- pet: Lash of Pain SPELL_DAMAGE -0.006 s
	{ hit = 5066, line = 5065, spell = 709 }, -- 947.891 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5069, line = 5070, spell = 709 }, -- 947.891 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 5071, line = false }, -- 948.366 pet WOUND <secret> <- creature: Lightning Bolt SPELL_DAMAGE +0.570 s
	{ hit = 5073, line = 5064, spell = false }, -- 948.649 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.952 s
	{ hit = 5077, line = 5076, spell = 709 }, -- 948.825 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5080, line = 5081, spell = 709 }, -- 948.825 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 5082, line = 5085, spell = 6217 }, -- 949.441 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5088, line = 5087, spell = 709 }, -- 949.833 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5091, line = 5093, spell = 709 }, -- 949.833 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 5094, line = 5097, spell = 7648 }, -- 949.933 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5098, line = 5101, spell = 2941 }, -- 950.316 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5103, line = 5102, spell = 18265 }, -- 950.316 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.006 s
	{ hit = 5106, line = 5108, spell = 18265 }, -- 950.316 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 5109, line = 5086, spell = false }, -- 950.666 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.953 s
	{ hit = 5113, line = 5112, spell = 709 }, -- 950.816 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5116, line = 5118, spell = 709 }, -- 950.816 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 5123, line = 5126, spell = 6217 }, -- 951.442 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5129, line = 5128, spell = 709 }, -- 952.133 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5132, line = 5134, spell = 709 }, -- 952.133 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 5135, line = 5127, spell = false }, -- 952.633 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.953 s
	{ hit = 5138, line = 5141, spell = 7648 }, -- 952.941 nameplate1 WOUND <secret> <- you: Corruption SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5143, line = 5142, spell = 709 }, -- 953.075 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5146, line = 5148, spell = 709 }, -- 953.075 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 5150, line = 5149, spell = 18265 }, -- 953.325 nameplate1 WOUND <secret> <- you: Siphon Life SPELL_PERIODIC_DAMAGE -0.004 s
	{ hit = 5153, line = 5156, spell = 2941 }, -- 953.325 nameplate1 WOUND <secret> <- you: Immolate SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5157, line = 5159, spell = 18265 }, -- 953.325 player HEAL <secret> <- you: Siphon Life SPELL_HEAL -0.006 s
	{ hit = 5160, line = 5163, spell = 6217 }, -- 953.436 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5166, line = 5165, spell = 709 }, -- 954.116 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5169, line = 5170, spell = 709 }, -- 954.116 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.006 s
	{ hit = 5171, line = false }, -- 954.367 player WOUND <secret> <- creature: Lightning Bolt SPELL_DAMAGE +0.246 s
	{ hit = 5172, line = 5164, spell = false }, -- 954.675 nameplate1 WOUND <secret> <- pet: swing SWING_DAMAGE +0.954 s
	{ hit = 5176, line = 5175, spell = 709 }, -- 954.875 nameplate1 WOUND <secret> <- you: Drain Life SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5179, line = 5180, spell = 709 }, -- 954.875 player HEAL <secret> <- you: Drain Life SPELL_HEAL -0.005 s
	{ hit = 5182, line = 5185, spell = 6217 }, -- 955.400 nameplate1 WOUND <secret> <- you: Bane of Agony SPELL_PERIODIC_DAMAGE -0.005 s
	{ hit = 5196, line = 5197, spell = 1261483 }, -- 957.750 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 5203, line = 5204, spell = 1261483 }, -- 959.749 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 5205, line = 5206, spell = 1261483 }, -- 961.725 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.005 s
	{ hit = 5207, line = 5208, spell = 1261483 }, -- 963.742 player HEAL <secret> <- you: Thrill of Adventure SPELL_PERIODIC_HEAL -0.004 s
}

-- Log Lines with no Hit:
-- line 246 at 54.317 <- you:  PARTY_KILL
-- line 481 at 108.675 <- you:  PARTY_KILL
-- line 732 at 137.242 <- you:  PARTY_KILL
-- line 951 at 225.359 <- you:  PARTY_KILL
-- line 1188 at 301.867 <- you:  PARTY_KILL
-- line 1681 at 389.525 <- pet: swing SWING_DAMAGE
-- line 2156 at 471.750 <- pet: swing SWING_DAMAGE
-- line 2158 at 472.135 <- you:  PARTY_KILL
-- line 2340 at 497.092 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 2342 at 497.608 <- you: Corruption SPELL_PERIODIC_DAMAGE
-- line 2357 at 498.750 <- you: Immolate SPELL_PERIODIC_DAMAGE
-- line 2360 at 499.050 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 2363 at 499.142 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 2374 at 500.592 <- you: Corruption SPELL_PERIODIC_DAMAGE
-- line 2387 at 501.108 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 2389 at 501.800 <- you: Immolate SPELL_PERIODIC_DAMAGE
-- line 2390 at 502.092 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 2410 at 503.108 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 2436 at 504.817 <- you: Immolate SPELL_PERIODIC_DAMAGE
-- line 2438 at 505.059 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 2442 at 505.059 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 2564 at 512.736 <- you:  PARTY_KILL
-- line 2614 at 519.292 <- pet: swing SWING_DAMAGE
-- line 2800 at 588.008 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 2803 at 588.250 <- you: Immolate SPELL_PERIODIC_DAMAGE
-- line 2804 at 588.250 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 2807 at 588.467 <- you: Corruption SPELL_PERIODIC_DAMAGE
-- line 2822 at 590.000 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 2838 at 591.208 <- you: Immolate SPELL_PERIODIC_DAMAGE
-- line 2839 at 591.208 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 2842 at 591.561 <- you: Corruption SPELL_PERIODIC_DAMAGE
-- line 2848 at 592.050 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 2875 at 594.067 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 2876 at 594.242 <- you: Immolate SPELL_PERIODIC_DAMAGE
-- line 2877 at 594.242 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 2910 at 596.050 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 2936 at 597.253 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 2993 at 600.259 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 3010 at 601.525 <- you:  PARTY_KILL
-- line 3022 at 603.283 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 3062 at 611.719 <- pet: swing SWING_DAMAGE
-- line 3271 at 643.283 <- you:  PARTY_KILL
-- line 3514 at 728.333 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 3519 at 728.875 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 3548 at 730.341 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 3549 at 730.341 <- you: Corruption SPELL_PERIODIC_DAMAGE
-- line 3550 at 730.783 <- you: Immolate SPELL_PERIODIC_DAMAGE
-- line 3563 at 731.925 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 3579 at 732.316 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 3602 at 733.883 <- you: Immolate SPELL_PERIODIC_DAMAGE
-- line 3606 at 734.266 <- you: Bane of Agony SPELL_PERIODIC_DAMAGE
-- line 3613 at 734.891 <- you:  PARTY_KILL
-- line 3620 at 734.891 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 3627 at 737.842 <- you: Siphon Life SPELL_PERIODIC_DAMAGE
-- line 3940 at 772.141 <- you:  PARTY_KILL
-- line 4192 at 796.816 <- you:  PARTY_KILL
-- line 4694 at 887.333 <- you:  PARTY_KILL
-- line 4922 at 910.025 <- you:  PARTY_KILL
-- line 5189 at 955.700 <- pet: swing SWING_DAMAGE
