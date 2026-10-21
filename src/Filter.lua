local _, ns = ...

local Filter = {}
ns.Filter = Filter

-- Words a Spell Filter line can hold in place of a spell. They stay English
-- in every locale, as upstream's did.
local KEY_WORDS = { melee = true, missed = true, unknown = true }

-- Reads a Spell Filter's text: a spell name or spell ID, or a key word, on
-- each line. nameOf(spellID) gives a spell's name, or nil when there is no
-- such spell, and a line with such an ID is ignored. An ID turns into its
-- name, so any line stands for every rank of its spell. Case does not count.
function Filter.ReadSpells(text, nameOf)
	local list = { names = {}, words = {}, empty = true }
	for line in text:gmatch("[^\r\n]+") do
		local entry = line:match("^%s*(.-)%s*$")
		local spellID = tonumber(entry)
		if spellID then
			entry = nameOf(spellID)
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
-- known; miss tells a miss, and swing a Hit whose Log Line is a swing or a
-- swing miss. A swing has no Spell Identity, but only melee matches it. A
-- list with no entries lets everything through, also inverted, so turning on
-- Inverse before typing a spell hides nothing.
function Filter.SpellShows(list, inverse, spellName, miss, swing)
	if list.empty then
		return true
	end
	local listed = (spellName ~= nil and list.names[spellName:lower()])
		or (miss and list.words.missed)
		or (swing and list.words.melee)
		or (not swing and spellName == nil and list.words.unknown)
	return (listed == true) == (inverse == true)
end
