# NameplateSCT Reforged

NameplateSCT's scrolling combat text, drawn above enemy nameplates, for WoW: Forever.

Forever closes the combat log to addons, so the original NameplateSCT can't tell which hits are yours. Most of what the game still sends is secret. A hit on an enemy doesn't say who made it, and its amount is secret, which means the addon can show the number but can't read or compare it. Your combat log lines reach addons with no words, so their colour is all the addon can read.

This version pairs those hits with your combat log lines to work out which ones are yours. Your damage, misses, and your pet's damage show above the enemy you hit, with the original's animations and options.

## How it pairs your hits

The addon matches each hit on an enemy with one of your combat log lines, or with none, and then picks the spell that made it.

- **Timing.** A spell's line and its hit come within a fraction of a second of each other. A melee swing's hit comes a short, steady delay after its line, and the addon learns that delay as you fight.
- **Line colour.** The colour tells the kind of line: a spell hit, a DoT tick, a melee swing, a shot, a miss, or a heal.
- **School.** When the game shows a hit's school, the addon prefers lines from spells of that school, so a Fire hit won't take your Corruption tick's line.
- **Icons.** The icon comes from what you and your pet just cast, and from the steady rhythm of each DoT's ticks. When the addon isn't sure, it shows no icon (see [Icons](#icons)).

## If something looks off

Solo, the addon tells your hits apart well. In groups and busy fights, other players' hits can still pass for yours, so some of your numbers can be wrong or missing. Melee hits and misses get mixed up the most.

I'm still tuning it, and most of the tuning so far comes from Warlock fights. If you play another class or run in busy groups, you're the likeliest to see something off, and your report helps the most.

To send one:

1. Before the fight, type `/nsctr record` and `/combatlog`.
2. After the fight, type both again to stop them, then `/reload`.
3. Open an [issue](https://github.com/dbspringer/nameplatesct-reforged/issues) and attach two files from your Forever client folder: the recording, `WTF\Account\<account>\SavedVariables\NameplateSCT_Reforged.lua`, and the newest combat log, `Logs\WoWCombatLog-<date>_<time>.txt`. Say your class, whether you were solo or in a group, and what looked wrong.
4. Type `/nsctr record clear` once you've sent it. A long recording can slow down your login.

The recording holds your character name and zone, and the combat log holds the names of everyone in the fight. If you'd rather not use GitHub, a comment on [CurseForge](https://www.curseforge.com/wow/addons/nameplate-scrolling-combat-text-reforged) works too.

## Install

Install it from [CurseForge](https://www.curseforge.com/wow/addons/nameplate-scrolling-combat-text-reforged), or download the latest release from [GitHub Releases](https://github.com/dbspringer/nameplatesct-reforged/releases) and unzip it into your Forever client's `Interface/AddOns` folder.

Enemy nameplates need to be on (press V), since the numbers draw on them.

## Use

- `/nsctr` opens the options. The Filters page can hide some spells, or some kinds of enemies.
- If your combat log filter isn't set up the way the addon needs, a window offers to fix it with one click and a reload. The colour of each combat log line is how the addon tells your hits from everything else.
- `/nsctr record` starts or stops a recording for a bug report, and `/nsctr record clear` deletes it. See [If something looks off](#if-something-looks-off).
- `/nsctr forget` clears what the addon learned about your wand.

## Icons

The game doesn't tell addons which spell made a number, so the addon works it out from your casts, your pet's, and the timing of each hit. When two of your spells hit at the same moment, nothing tells which number is which. The game hides the amounts from addons, so those can't settle it either.

Those numbers show no icon. With Display Possible Icons on, each one shows a small stack with the icons of the two or three spells that could have made it.

## Develop

Run `./fetch-libs.sh` to fetch the libraries into `Libs/`, then link the repo as `NameplateSCT_Reforged` into your Forever client's `Interface/AddOns` folder. Lint with `luacheck .` and run the specs with `busted` (on Lua 5.1, since that's what WoW runs).

Releases are plain numbers that go up by one each time (`1`, `2`, `3`), and pushing that number as a tag cuts the release. If the CurseForge upload fails, `./export.sh <version> [destination]` builds the zip by hand, for example `./export.sh 1 ~/Desktop`. It ships exactly the files the game loads, plus the licenses. Run `./fetch-libs.sh` first, so the libraries match what the packager fetches.

## Credits and license

Based on [NameplateSCT](https://github.com/Justw8/NameplateSCT) by mpstark and Justwait, which did all the hard work on how the text looks and moves.

MIT licensed. See [LICENSE](LICENSE).
