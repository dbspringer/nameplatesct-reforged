# Changelog

## 1

- Type `/nsctr record` to record your combat events, then type it again to stop. Attach the recording to a bug report, so problems in groups, raids, and battlegrounds can be fixed.
- Your damage and your pet's damage now show above enemy nameplates, and so do misses and dodges. Your combat log filter needs to show them.
- Your numbers show the icon of the spell that made them when the addon is sure which spell it was. Melee, most procs such as poisons, and your pet's spells have no icon. A wand's Shoot gets its icon from its second hit, once the addon learns your wand's school, and again from the second hit after you change wands. With "Display Icon Only" on, a hit with no known spell shows its number. To clear what the addon learned, type `/nsctr forget` or press "Forget learned spells" in the Icons options.
- The spell filter works. In the Filters options, list the spells whose numbers you want to hide, one name or spell ID on each line, or turn on "Inverse Spell Filter" to show only those spells. Add `melee` for your and your pet's melee hits, `missed` for every miss, or `unknown` for hits whose spell the addon isn't sure of. Each character keeps its own list.
- The game's own damage numbers over the unit you hit are hidden while the addon is on. Turn off "Hide Blizzard Target Text", or the addon, to get them back the way you had them.
- Numbers finish their animation when an enemy's nameplate disappears, so you see your killing blow.
- If your enemy nameplates are off when you hit something, a chat message tells you to press V, once each time you log in.
- If your combat log filter doesn't send your and your pet's damage and misses, each kind of line in its own colour, or mixes in other players' lines that look like yours, a window offers to fix it with one click and a reload. The fix gives each kind of line in your Combat Log tab its own colour (spells, ticks, melee, shots, misses, heals), so the addon can tell them apart, and it stops the filter showing what others do to you, since those lines would look like yours. Since every filter lacks these colours before the fix, the window shows once for everyone. Until then, the numbers that can show still do.
