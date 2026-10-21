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
	-- With no Line Kind, a Hit that paired as melee is the best sign of a
	-- swing; a swing whose line came in its own frame then counts as unknown.
	local swing = how == "melee" or ns.LineKind.IsMelee(lineKind)
	local listed = (spellName ~= nil and list.names[spellName:lower()])
		or (miss and list.words.missed)
		or (swing and list.words.melee)
		or (not swing and spellName == nil and list.words.unknown)
	return (listed == true) == (inverse == true)
end
