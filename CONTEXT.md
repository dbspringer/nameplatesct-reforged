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
The player's list of spells, by name or ID, and of key words. Plate Text for a Hit that the list matches hides, or, with the list inverted, only that Plate Text shows. A spell in the list means all of its ranks. The key word `melee` matches swings and their misses, the pet's too; `missed` matches every miss; `unknown` matches a Hit that is not a swing and has no Spell Identity. A Hit with Possible Spells matches when each of them is in the list. An empty list hides nothing.
_Avoid_: Spell blacklist, spell whitelist

**NPC Type**:
The one kind an enemy NPC has, by which the player can hide or show its Plate Text: Boss, Rare, Elite, Normal, or Minor. An enemy player has none, and the NPC filter never hides its Plate Text. A boss is a Boss even when it is also elite, and a rare elite is Rare. Minor covers totems, critters, and other trivial units. The game hides which NPC a unit is in instances, but not its NPC Type; if it ever hides the type, the NPC has none and counts as not selected.
_Avoid_: Classification, mob type, NPC filter list

**Grace Period**:
The short time after a Nameplate hides in which its Plate Text still shows, and in which Plate Text for a Hit that the game reports just after the hide can still start, so a killing blow is not lost.
_Avoid_: Orphan time, linger

## Combat data

**Hit**:
One time that a unit took damage, avoided it, or was healed, as the game reports it. The game sends one report of a Hit for each name the unit has (target, nameplate, soft target, player, pet), but it is still one Hit.
_Avoid_: Event, wound, combat event

**Empty Report**:
A report of damage with an amount of 0 or no amount, with no damage behind it, as when a Next-Swing Ability fires or after a pet's Torment. It is not a Hit, so it takes no Log Line and shows no Plate Text.
_Avoid_: Zero wound, 0 hit

**Log Line**:
One line of the player's own combat log that the game sends to addons. The addon uses only when it came and its colour, never its words.
_Avoid_: Combat log event, CLEU, chat message

**Line Kind**:
What a Log Line reports: a direct hit, a tick, a swing, a shot, or a damage shield's hit, a miss of one of these, a heal or a heal over time, or a killing blow. The Log Line's colour tells it, read by the colours of the Log Filter that sent it.
_Avoid_: Event type, line type

**Log Filter**:
The player's Blizzard combat log filter, which decides which Log Lines come and their colours. Pairing needs a Log Filter that sends only the player's and their pet's lines, with their damage and misses, and gives each Line Kind a colour of its own, far from every other colour in the filter. The filter can be Blizzard's or another addon's.
_Avoid_: Combat log settings, chat filter

**Pairing**:
The match of one Hit with one Log Line. A Hit that has a pair is Your Hit; a Hit with no pair belongs to someone else.
_Avoid_: Attribution, matching, confirmation

**Your Hit**:
A Hit that the player or their pet made, as proven by Pairing.
_Avoid_: My hit, own damage, player damage

**Swing Delay**:
The time by which a melee Log Line comes before its Hit. It depends on the unit that attacks, and one unit can have more than one. Each stays nearly constant.
_Avoid_: Melee lag, offset, cluster, learned window

**Proc**:
Your Hit with no cast of its own, set off when another Hit of the player's or the pet's lands. A Seal Proc, a Poison Proc, a Brand Proc, and a Weapon Proc are Procs.
_Avoid_: Castless hit, on-hit effect, trigger

**Weapon Proc**:
An extra attack from a weapon enchant, such as Windfury Weapon. Its Log Line looks like a direct spell's, but its Hit comes about as late as a swing's, and its Plate Text looks like a swing.
_Avoid_: Extra swing, Windfury hit

**Next-Swing Ability**:
An ability that replaces the player's next melee swing, such as Maul, Heroic Strike, or Raptor Strike.
_Avoid_: On-next-hit ability, queued attack

**Pet Swing**:
Your Hit from the pet's melee swing, not the player's. Its Plate Text has the pet's colour and icon.
_Avoid_: Pet melee, pet auto attack

**Physical Shot**:
Your Hit from a ranged weapon attack that is not a wand's: Auto Shot, a bow, gun, or crossbow shot, or Throw. Its Plate Text looks like the player's swing, but with its own spell's icon, which the player hides along with the Swing Icon. A wand's shot keeps the look of a spell of its school.
_Avoid_: Ranged auto attack, white shot, ranged swing

**Swing Icon**:
The icon on a swing's Plate Text: the Auto Attack icon for the player's swing, the pet Attack icon for a Pet Swing. A Weapon Proc shows it too.
_Avoid_: Weapon icon, melee icon, white hit icon

**Spell Identity**:
Which spell made Your Hit, the player's or the pet's. Icons and spell filters depend on it.
_Avoid_: Spell attribution, spell match

**Multi-Hit Spell**:
A spell whose one cast can make several of Your Hits: one on each of several units, as Arcane Explosion or Whirlwind does, or two on one unit, when a strike uses both weapons. Each of those Hits gets its Spell Identity from the one cast.
_Avoid_: AoE spell, cleave, splash

**Possible Spells**:
The spells that could have made Your Hit when it has no Spell Identity, when the addon is sure that one of them did: two to three spells that fit a Tick Tie, the ticks of one frame, or a direct Hit or shot. Text for players calls their icons possible icons.
_Avoid_: Candidates, ambiguous spells, guess

**Active Seal**:
The Seal that the player's casts say is on them now.
_Avoid_: Current seal, seal buff

**Seal Proc**:
Your Hit made by the Active Seal when a melee swing lands, with no cast of its own.
_Avoid_: Seal damage, seal hit

**Poison Proc**:
Your Hit made by a Rogue's poison on a weapon, with no cast of its own: Instant Poison's Hit just after a landed melee hit, or a Deadly Poison tick.
_Avoid_: Poison damage, poison tick

**Brand Proc**:
Your Hit made by the pet's Demonic Brand when the pet's melee swing or spell Hit lands, with no cast of its own.
_Avoid_: Brand damage, Brand hit

**Spell Facts**:
What the addon has learned about a spell whose school is not fixed, such as a wand's Shoot, from Your Hits: the school of its shots. A fact counts only once enough Hits agree on it. Other spells are known from the start, so they need none. Text for players calls them learned spells.
_Avoid_: Spell data, spell profile

**Tick Rhythm**:
The times at which one spell's ticks come on one unit: one interval apart, from its cast or landing. One tick can come a little early or late, but the next tick comes on the rhythm again, so a rhythm does not drift. A tick that comes on a spell's Tick Rhythm can be that spell's. A unit keeps its Tick Rhythms when its Nameplate hides and shows again, if the game lets the addon know that it is the same unit.
_Avoid_: DoT timer, tick schedule

**Tick Tie**:
A tick, alone of its school on its unit in its frame, that the Tick Rhythms of two or more spells fit. Only one of the spells made it, but nothing tells which, so it has no Spell Identity; when the addon is sure that one of them made it, they are its Possible Spells.
_Avoid_: Tie, rhythm clash

**Stop Tick**:
A channel's tick that comes in the same frame as the channel's stop. It can come before the next tick on the channel's Tick Rhythm, when the channel ends early. It is the channel's tick only when the channel ticked on the same unit less than one interval before.
_Avoid_: Last tick, final tick, partial tick

**Secret Amount**:
An amount that the game lets the addon show but not compare or calculate with.
_Avoid_: Hidden value, protected number

## Testing

**Trace**:
A recording of the raw game events from a real fight (Hits, Log Lines, casts, swings, nameplate changes), kept as input for Pairing tests and sent by players with bug reports.
_Avoid_: Log, replay, recording

**Label**:
The known Pairing of one Hit in a Trace: its Log Line, or no Log Line, and for Your Hit the spell that made it. It comes from the Combat Log File. Tests use only a Checked Label or a Sure Label.
_Avoid_: Expected result, ground truth, annotation

**Checked Label**:
A Label that a person checked against the Combat Log File.
_Avoid_: Verified label, clean label

**Sure Label**:
A Label that no person checked, for a Hit that the label script gave one event of the Combat Log File with no doubt, or with no doubt but that the Hit has a Secret Amount, which no event can prove. It tells the spell of the Hit. It can be wrong where two units take like Hits at one time, and for a swing, whose event comes one Swing Delay before its Hit.
_Avoid_: Unchecked label, unsure label, secret-amount label

**Combat Log File**:
The file the game writes while `/combatlog` is on, with every combat event of the fight, its amount, and the real GUIDs. Addons cannot read it; the label script does, after the fight.
_Avoid_: WoWCombatLog, CLEU log, advanced log
