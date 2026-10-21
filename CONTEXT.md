# NameplateSCT Reforged

A WoW addon that draws combat text above enemy nameplates on the Forever client, where the game hides the combat log from addons and can hide amounts. It shows only the player's own hits and draws all of its text itself.

## Text

**Plate Text**:
The text this addon draws above an enemy's Nameplate for one of Your Hits: an amount or a miss word, with an optional spell icon.
_Avoid_: SCT, damage numbers, floating combat text

**Blizzard Target Text**:
The damage text the game engine draws over the unit the player hits. The addon hides it while the addon and its "Hide Blizzard Target Text" option are on, and gives back the player's own setting when either goes off.
_Avoid_: Blizzard SCT, Blizzard FCT, world text

**Nameplate**:
The health bar the game shows above a unit in the world. Plate Text exists only on a Nameplate.
_Avoid_: Plate, enemy health bar

**Spell Filter**:
The player's list of spells, by name or ID, and of the key words `melee`, `missed`, and `unknown`. Plate Text for a Hit that the list matches hides, or, with the list inverted, only that Plate Text shows. A spell in the list means all of its ranks. A Hit with no Spell Identity matches only a key word.
_Avoid_: Spell blacklist, spell whitelist

**NPC Type**:
The one kind an enemy NPC has, for the NPC filter: Boss, Rare, Elite, Normal, or Minor. A boss is a Boss even when it is also elite. The game hides which NPC a unit is in instances, but not its NPC Type.
_Avoid_: Classification, mob type, NPC filter list

**Grace Period**:
The short time after a Nameplate hides in which its Plate Text still shows, so a killing blow is not lost.
_Avoid_: Orphan time, linger

## Combat data

**Hit**:
One time that a unit took damage, avoided it, or was healed, as the game reports it. The game sends one report of a Hit for each name the unit has (target, nameplate, soft target, player, pet), but it is still one Hit.
_Avoid_: Event, wound, combat event

**Log Line**:
One line of the player's own combat log that the game sends to addons. The addon uses only when it came and its colour, never its words.
_Avoid_: Combat log event, CLEU, chat message

**Line Kind**:
What a Log Line reports: a direct hit, a tick, a swing, a shot, or a damage shield's hit, a miss of one of these, a heal or a heal over time, or a killing blow. The Log Line's colour tells it.
_Avoid_: Event type, line type

**Log Filter**:
The player's Blizzard combat log filter, which decides which Log Lines come and their colours. Pairing needs a Log Filter that sends only the player's and their pet's lines, with their damage and misses, each in the colour of its Line Kind.
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

**Spell Facts**:
What the addon has learned about a spell whose school is not fixed, such as a wand's Shoot, from Your Hits: the school of its shots. A fact counts only once enough Hits agree on it. Other spells are known from the start, so they need none. Text for players calls them learned spells.
_Avoid_: Spell data, spell profile

**Tick Rhythm**:
The times at which one spell's ticks come on one Nameplate. A tick that comes on a spell's Tick Rhythm can be that spell's.
_Avoid_: DoT timer, tick schedule

**Secret Amount**:
An amount that the game lets the addon show but not compare or calculate with.
_Avoid_: Hidden value, protected number

## Testing

**Trace**:
A recording of the raw game events from a real fight (Hits, Log Lines, casts, swings, nameplate changes), kept as input for Pairing tests and sent by players with bug reports.
_Avoid_: Log, replay, recording

**Label**:
The known Pairing of one Hit in a Trace: its Log Line, or no Log Line, and for Your Hit the spell that made it. It comes from the Combat Log File, and a person checks each Label before tests use it.
_Avoid_: Expected result, ground truth, annotation

**Combat Log File**:
The file the game writes while `/combatlog` is on, with every combat event of the fight, its amount, and the real GUIDs. Addons cannot read it; the label script does, after the fight.
_Avoid_: WoWCombatLog, CLEU log, advanced log
