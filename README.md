# NameplateSCT Reforged

NameplateSCT's scrolling combat text, drawn above enemy nameplates, for WoW: Forever.

Forever closes the combat log to addons, so the original NameplateSCT can't tell which hits are yours. This version works it out from what the game still sends. Your damage, misses, and your pet's damage show above the enemy you hit, with the original's animations and options.

## Install

Download the latest release from [GitHub Releases](https://github.com/dbspringer/nameplatesct-reforged/releases) and unzip it into your Forever client's `Interface/AddOns` folder.

Enemy nameplates need to be on (press V), since the numbers draw on them.

## Use

- `/nsctr` opens the options. The Filters page can hide some spells, or some kinds of enemies.
- If your combat log filter isn't set up the way the addon needs, a window offers to fix it with one click and a reload. The colour of each combat log line is how the addon tells your hits from everything else.
- `/nsctr record` records your combat events, and typing it again stops. If something looks wrong, attach the recording to an [issue](https://github.com/dbspringer/nameplatesct-reforged/issues).
- `/nsctr forget` clears what the addon learned about your wand.

## Credits and license

Based on [NameplateSCT](https://github.com/Justw8/NameplateSCT) by mpstark and Justwait, which did all the hard work on how the text looks and moves.

MIT licensed. See [LICENSE](LICENSE).
