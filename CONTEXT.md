# NameplateSCT Reforged

A WoW addon that draws combat text above enemy nameplates on the Forever client, where the game hides the combat log from addons and can hide amounts. It shows only the player's own hits and draws all of its text itself.

## Text

**Plate Text**:
The text this addon draws above an enemy's Nameplate for one of Your Hits: an amount or a miss word, with an optional spell icon.
_Avoid_: SCT, damage numbers, floating combat text

**Blizzard Target Text**:
The damage text the game engine draws over the unit the player hits. The addon hides it while Plate Text is on.
_Avoid_: Blizzard SCT, Blizzard FCT, world text

**Nameplate**:
The health bar the game shows above a unit in the world. Plate Text exists only on a Nameplate.
_Avoid_: Plate, enemy health bar

**Grace Period**:
The short time after a Nameplate hides in which its Plate Text still shows, so a killing blow is not lost.
_Avoid_: Orphan time, linger

## Combat data

**Hit**:
One report from the game that a unit took damage or avoided it. The game repeats a Hit for each name the unit has (target, nameplate, soft target), but it is still one Hit.
_Avoid_: Event, wound, combat event

**Log Line**:
One line of the player's own combat log that the game sends to addons. The addon uses only when it came and its colour, never its words.
_Avoid_: Combat log event, CLEU, chat message

**Log Filter**:
The player's Blizzard combat log filter, which decides which Log Lines come. Pairing needs a Log Filter that sends the player's damage and their pet's damage.
_Avoid_: Combat log settings, chat filter

**Pairing**:
The match of one Hit with one Log Line. A Hit that has a pair is Your Hit; a Hit with no pair belongs to someone else.
_Avoid_: Attribution, matching, confirmation

**Your Hit**:
A Hit that the player or their pet made, as proven by Pairing.
_Avoid_: My hit, own damage, player damage

**Swing Delay**:
The time by which a melee Log Line comes before its Hit. It changes with the weapon.
_Avoid_: Melee lag, offset

**Spell Identity**:
Which spell made Your Hit. Icons and spell filters depend on it.
_Avoid_: Spell attribution, spell match

**Secret Amount**:
An amount that the game lets the addon show but not compare or calculate with.
_Avoid_: Hidden value, protected number

## Testing

**Trace**:
A recording of the Hits, Log Lines, casts, and swings from a real fight, kept as input for Pairing tests.
_Avoid_: Log, replay, recording
