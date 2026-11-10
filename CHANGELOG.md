# Changelog

## 5

- In groups, your swings and your pet's show their own numbers far more often. The addon learns how long each of your swings takes to land, so another player's hit that lands first no longer takes your number. Now and then a swing's number shows up to a second late.
- In groups, your DoT ticks and wand shots show their own numbers more often. Before, another player's hit that landed at the same moment (a Shaman's Flametongue, say, or a Warrior's swing) could show as yours, and your real number went missing.
- A recording (`/nsctr record`) now keeps your last 40,000 combat events, up from 10,000. That's about an hour of a dungeon run, less in a busy fight. When it's full, the oldest events make room for new ones.

## 4

- Your Thorns damage now shows its numbers, with no icon. The addon asks once more to fix your combat log, so it can see your Thorns. Press "Fix and reload" to accept.
- The "Scale Down Small Hits", "Small Hits Scale", "Hide Small Hits", and "Hide Hits Threshold" options are gone. The game only lets addons display a hit's amount, not compare it, so these options did nothing.
- Your spell hits no longer lose their number when the hit lands a moment after the game logs it. This fixes the occasional missing Wrath.
- Your Windfury hits now show their numbers, with the look of your melee hits. Before, most of them went missing. Right after a proc, another player's physical hit can sometimes show as yours and your own number can go missing, mostly in groups. That isn't tested yet.

## 3

- Your Seal of Righteousness, Seal of Command, and Seal of Fury numbers now show the Seal's icon, and your Judgement shows its icon, so a Seal's pale yellow crit no longer looks like a melee crit. They now count as those spells in the Spell Filter, not as `unknown`. Neither has an icon while your Consecration is up, and a Seal's number has none after a reload until you cast a Seal again. A missed Seal proc has no icon either.
- Another player's hit that lands just as you or your pet swing no longer takes your melee number, so your real number shows instead. Others' hits can still take your numbers at other moments, as described under release 1.

## 2

- The AddOns list now shows an icon for the addon, the Blacksmithing hammer and anvil.
- Maul, Heroic Strike, Cleave, and Raptor Strike now show their real number, with their icon, in place of a 0.
- In busy fights, your melee numbers should less often show on the wrong enemy or go missing. This helps, but it doesn't fix the problem described under release 1.
- Your wand shots no longer lose their number when the hit lands a moment after the shot.
- Your wand shots now show their icon from long range too, and the addon can learn your wand's school there.
- The "Animation Speed" option is now called "Text Duration", since it sets how many seconds text stays on screen. Your saved setting stays the same.
- Melee killing blows now show their number more often when the enemy's nameplate disappears first. This needs the game to tell the addon which enemy it was, so in dungeons the number can still go missing.

## 1

- This is a work in progress. In groups and busy fights, the addon can still mistake other players' hits for yours, so some of your numbers can be wrong or missing, mostly melee hits and misses. If you see it happen, a recording of that fight (`/nsctr record`) helps a lot.
- Type `/nsctr record` to record your combat events, then type it again to stop. Attach the recording to a bug report, so problems in groups, raids, and battlegrounds can be fixed.
- Your damage and your pet's damage now show above enemy nameplates, and so do misses and dodges. Your combat log filter needs to show them.
- Your numbers show the icon of the spell that made them when the addon is sure which spell it was. Your melee hits and misses show the Auto Attack icon, and your pet's show the pet Attack icon. Most procs such as poisons, and your pet's spells, have no icon. A wand's Shoot gets its icon from its second hit, once the addon learns your wand's school, and again from the second hit after you change wands. With "Display Icon Only" on, a hit with no known spell shows its number. To clear what the addon learned, type `/nsctr forget` or press "Forget learned spells" in the Icons options.
- Your and your pet's melee hits use the "Auto Attacks" animations. With "Use Damage Type Color" on, yours show in white and your pet's in orange, as in NameplateSCT, so they no longer look like physical abilities. Once in a while, when you and your pet swing close together, your pet's number can show your colour and icon, or the two numbers can swap them.
- To hide the numbers of some spells, list them in the Filters options, one name or spell ID on each line, and turn on "Enable". Turn on "Inverse Spell Filter" to show only those spells. A spell's name covers all of its ranks. You can also list `melee` for your and your pet's melee hits and misses, `missed` for every miss, or `unknown` for hits whose spell the addon isn't sure of (melee never counts as unknown). Each character keeps its own list.
- In the Filters options, you can also hide numbers on some kinds of enemies: Boss, Rare, Elite, Normal, or Minor (totems and critters). Turn on "Inverse NPC Filter" to show numbers only on the kinds you check. "Enable" turns on both filters, and a number shows only when both let it through. This filter never hides numbers on enemy players. Your NPC choices count for all your characters. Unlike NameplateSCT, there's no list of NPC IDs, since the game hides which NPC is which in instances.
- The game's own damage numbers over the unit you hit are hidden while the addon is on. Turn off "Hide Blizzard Target Text", or the addon, to get them back the way you had them.
- Your numbers no longer go missing when a mob hits a friendly player near you.
- Numbers finish their animation when an enemy's nameplate disappears, so you see your killing blow, even when the game reports it just after the nameplate goes.
- The bottom of the main options page credits NameplateSCT, which this addon is based on.
- If your enemy nameplates are off when you hit something, a chat message tells you which key turns them on, once each time you log in.
- If your combat log filter doesn't send your and your pet's damage and misses, each kind of line in its own colour, or mixes in other players' lines that look like yours, a window offers to fix it with one click and a reload. The fix gives each kind of line in your Combat Log tab its own colour (spells, ticks, melee, shots, misses, heals), so the addon can tell them apart, and it stops the filter showing what others do to you, since those lines would look like yours. Since every filter lacks these colours before the fix, the window shows once for everyone. Until then, the numbers that can show still do.
