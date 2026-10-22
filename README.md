# NameplateSCT Reforged

NameplateSCT's scrolling combat text, drawn above enemy nameplates, for WoW: Forever.

Forever closes the combat log to addons, so the original NameplateSCT can't tell which hits are yours. This version works it out from what the game still sends. Your damage, misses, and your pet's damage show above the enemy you hit, with the original's animations and options.

## Work in progress

Solo, the addon tells your hits apart well. In groups and busy fights, it can still mistake other players' hits for yours, so some of your numbers can be wrong or missing. Melee hits and misses get mixed up the most.

I'm still working on this. If you see it happen, a recording of that fight (`/nsctr record`, see below) helps a lot.

## Install

Install it from [CurseForge](https://www.curseforge.com/wow/addons/nameplate-scrolling-combat-text-reforged), or download the latest release from [GitHub Releases](https://github.com/dbspringer/nameplatesct-reforged/releases) and unzip it into your Forever client's `Interface/AddOns` folder.

Enemy nameplates need to be on (press V), since the numbers draw on them.

## Use

- `/nsctr` opens the options. The Filters page can hide some spells, or some kinds of enemies.
- If your combat log filter isn't set up the way the addon needs, a window offers to fix it with one click and a reload. The colour of each combat log line is how the addon tells your hits from everything else.
- `/nsctr record` records your combat events, and typing it again stops. If something looks wrong, attach the recording to an [issue](https://github.com/dbspringer/nameplatesct-reforged/issues).
- `/nsctr forget` clears what the addon learned about your wand.

## Develop

Run `./fetch-libs.sh` to fetch the libraries into `Libs/`, then link the repo as `NameplateSCT_Reforged` into your Forever client's `Interface/AddOns` folder. Lint with `luacheck .` and run the specs with `busted` (on Lua 5.1, since that's what WoW runs).

Releases are plain numbers that go up by one each time (`1`, `2`, `3`), and pushing that number as a tag cuts the release. If the CurseForge upload fails, `./export.sh <version> [destination]` builds the zip by hand, for example `./export.sh 1 ~/Desktop`. It ships exactly the files the game loads, plus the licenses. Run `./fetch-libs.sh` first, so the libraries match what the packager fetches.

## Credits and license

Based on [NameplateSCT](https://github.com/Justw8/NameplateSCT) by mpstark and Justwait, which did all the hard work on how the text looks and moves.

MIT licensed. See [LICENSE](LICENSE).
