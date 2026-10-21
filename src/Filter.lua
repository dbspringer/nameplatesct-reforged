local _, ns = ...

local Filter = {}
ns.Filter = Filter

-- Words a Spell Filter line can hold in place of a spell. They stay English
-- in every locale, as upstream's melee and missed did, so one list works in
-- any client language.
local KEY_WORDS = { melee = true, missed = true, unknown = true }

-- Reads a Spell Filter's text: a spell name or spell ID, or a key word, on
-- each line. nameOf(spellID) gives a spell's name, or nil when there is no
-- such spell, and a line with such an ID is ignored. An ID turns into its
-- name, so any line stands for every rank of its spell. Case does not count
-- for English letters; string.lower leaves other letters as they are.
function Filter.ReadSpells(text, nameOf)
	local list = { names = {}, words = {}, empty = true }
	for line in text:gmatch("[^\r\n]+") do
		local entry = line:match("^%s*(.-)%s*$")
		local number = tonumber(entry)
		if number then
			-- Only a number in a spell ID's range goes to nameOf, since the
			-- game's API can error for one outside it.
			local isID = number % 1 == 0 and number > 0 and number < 2 ^ 31
			entry = isID and nameOf(number) or nil
		end
		if entry and entry ~= "" then
			entry = entry:lower()
			if KEY_WORDS[entry] then
				list.words[entry] = true
			else
				list.names[entry] = true
			end
			list.empty = false
		end
	end
	return list
end

-- Whether a Hit is a swing or a swing miss, the player's or the pet's. how
-- and lineKind are as for SpellShows. With no Line Kind, a Hit that paired as
-- melee is the best sign of a swing; a swing whose line came in its own frame
-- then does not count.
function Filter.IsSwing(how, lineKind)
	return how == "melee" or ns.LineKind.IsMelee(lineKind)
end

-- Whether the Spell Filter lets the Plate Text for a Hit through. A list
-- hides the Hits it matches, or, inverted, shows only them. spellName is the
-- name of the Hit's spell from Spell Identity, or nil when that is not
-- known; action is the Hit's ("WOUND" or a miss), how the rule that paired
-- it (see Pairing.New), and lineKind the Line Kind of its Log Line, or nil
-- when the colour told none. A swing has no Spell Identity, but unknown
-- never matches it: melee does, and missed too for a swing miss. A list with
-- no entries lets everything through, also inverted, so turning on Inverse
-- before typing a spell hides nothing.
function Filter.SpellShows(list, inverse, spellName, action, how, lineKind)
	if list.empty then
		return true
	end
	local miss = action ~= "WOUND"
	local swing = Filter.IsSwing(how, lineKind)
	local listed = (spellName ~= nil and list.names[spellName:lower()])
		or (miss and list.words.missed)
		or (swing and list.words.melee)
		or (not swing and spellName == nil and list.words.unknown)
	return (listed == true) == (inverse == true)
end

-- The NPC Types, highest rank first.
Filter.NPC_TYPES = { "boss", "rare", "elite", "normal", "minor" }

-- The NPC Type that each UnitClassification value gives when UnitIsBossMob
-- is false. A rare elite is Rare, not Elite.
local TYPE_OF_CLASSIFICATION = {
	worldboss = "boss",
	rareelite = "rare",
	rare = "rare",
	elite = "elite",
	normal = "normal",
	trivial = "minor",
	minus = "minor",
}

-- The NPC Type of a unit with this classification and UnitIsBossMob and
-- UnitIsPlayer results, so a dungeon boss, which is also elite, is a Boss.
-- A player is "player", which is no NPC Type: the game calls players normal,
-- and the NPC filter must not hide PvP numbers. nil when the game makes a
-- value secret, or for a classification it adds later.
function Filter.NpcType(classification, isBoss, isPlayer)
	if issecretvalue(classification) or issecretvalue(isBoss) or issecretvalue(isPlayer) then
		return nil
	end
	if isPlayer then
		return "player"
	end
	if isBoss then
		return "boss"
	end
	return TYPE_OF_CLASSIFICATION[classification]
end

-- Whether the NPC filter lets Plate Text on an NPC of this type through.
-- types holds the selected NPC Types ({ elite = true }); they hide, or,
-- inverted, are the only ones shown. An NPC with no type counts as not
-- selected. With no type selected it lets everything through, also
-- inverted, as an empty Spell Filter does. A player always passes. Only the
-- keys in NPC_TYPES count, so a saved key that the options no longer show
-- cannot hide anything.
function Filter.NpcShows(types, inverse, npcType)
	if npcType == "player" then
		return true
	end
	local any = false
	for _, key in ipairs(Filter.NPC_TYPES) do
		any = any or types[key] == true
	end
	if not any then
		return true
	end
	local selected = npcType ~= nil and types[npcType] == true
	return selected == (inverse == true)
end
