local _, ns = ...

local Flow = {}
ns.Flow = Flow

-- Connects the adapter, Pairing and Spell Identity, and sends on Your Hits
-- on enemies. Raw events go in through Push, in the shape of Trace entries.
-- Tick(now) closes the open frame and ends the holds that are over; call it
-- once each frame. show(hit, how, spellID, lineKind, late) gets Your Hit on
-- an enemy Nameplate, with the spell that made it or nil (see Identity.New),
-- and the Line Kind of its Log Line, or nil when the colour told none;
-- noPlate(hit, how), which is optional, gets Your Hit on target or a soft
-- target that has no Nameplate. how is the rule that paired the Hit (see
-- Pairing.New). spellFacts, which is required, holds the Spell Facts, which
-- Identity changes in place. Hits on the player or the pet go nowhere: they
-- are there to use up the Log Lines of heals and self-damage.
-- A Hit decided after its Nameplate hid, such as a killing blow whose Log
-- Line came late, is a late Hit: its token can by then name another unit, or
-- none. show gets it with late, the Nameplate as it hid: { frame, wasTarget,
-- classification, isBoss, isPlayer }, from the NAME_PLATE_UNIT_REMOVED entry
-- (Events.lua). A late Hit whose frame the game already gave to a new unit
-- is not shown, as its text would show on that unit.
function Flow.New(options)
	local show, noPlate = options.show, options.noPlate
	local identity = ns.Identity.New(options.spellFacts)
	-- Pairing's decisions of Your Hits on enemies, and the casts, in the order
	-- they came. Identity takes the decisions that come together as one group,
	-- so it can see two ticks that come at once. Identity and show run after
	-- Pairing returns, so an error in them cannot drop the rest of Pairing's
	-- frame; it drops the rest of the queue.
	local pending = {}
	-- The adapter's entry number at which each token's Nameplate last hid.
	-- Entry order, not time, so a Hit on a new unit in the same frame stays.
	local hiddenAt = {}
	-- For each token, its Nameplate as it last hid (see late above), and how
	-- many times it hid: a plate life. A Hit's life keys its Tick Rhythms in
	-- Spell Identity, so a late tick keeps its own unit's and the next unit
	-- on the token starts with none.
	local asItHid, lives = {}, {}
	-- The token whose unit each Nameplate frame shows now.
	local shownBy = {}

	local pairing = ns.Pairing.New({
		onDecision = function(hit, line, how)
			if line and hit.unit ~= "player" and hit.unit ~= "pet" then
				pending[#pending + 1] = { hit = hit, line = line, how = how }
			end
		end,
	})
	-- A cast goes in after Pairing has decided the frames before it.
	local adapter = ns.Adapter.New(function(record)
		pairing.Push(record)
		if record.kind == "cast" then
			pending[#pending + 1] = { cast = record }
		end
	end)

	local function send(decisions)
		if #decisions == 0 then
			return
		end
		for _, decision in ipairs(decisions) do
			local unit = decision.hit.unit
			if unit:match("^nameplate%d+$") then
				local hidden = (hiddenAt[unit] or 0) > decision.hit.entry
				decision.late = hidden and asItHid[unit] or nil
				decision.plate = unit .. "#" .. ((lives[unit] or 0) - (hidden and 1 or 0))
			end
		end
		local spellIDs = identity.OfAll(decisions)
		for i, decision in ipairs(decisions) do
			local hit, late = decision.hit, decision.late
			if not decision.plate then
				if noPlate then
					noPlate(hit, decision.how)
				end
			elseif not (late and late.frame and shownBy[late.frame]) then
				show(hit, decision.how, spellIDs[i], decision.line.lineKind, late)
			end
		end
	end

	local function flush()
		if #pending == 0 then
			return
		end
		local items = pending
		pending = {}
		local decisions = {}
		for _, item in ipairs(items) do
			if item.cast then
				send(decisions)
				decisions = {}
				identity.Cast(item.cast)
			else
				decisions[#decisions + 1] = item
			end
		end
		send(decisions)
	end

	local function tick(now)
		adapter.Tick(now)
		pairing.Tick(now)
		flush()
	end

	local flow = {}

	function flow.Push(entry)
		local event, token = entry[2], entry[3]
		if event == "NAME_PLATE_UNIT_REMOVED" then
			-- Decide the Hits from before this moment first, as the live Tick of
			-- each frame does, so the result is the same at any tick rate.
			tick(entry[1])
			hiddenAt[token] = adapter.Push(entry)
			asItHid[token] = { frame = entry.frame, wasTarget = entry.wasTarget, classification = entry.classification,
				isBoss = entry.isBoss, isPlayer = entry.isPlayer }
			if entry.frame and shownBy[entry.frame] == token then
				shownBy[entry.frame] = nil
			end
			-- Late Hits come at most one hide late, so the life before the one
			-- that just ended can get no more ticks.
			lives[token] = (lives[token] or 0) + 1
			identity.PlateGone(token .. "#" .. (lives[token] - 2))
			return
		end
		if event == "NAME_PLATE_UNIT_ADDED" and entry.frame then
			shownBy[entry.frame] = token
		end
		adapter.Push(entry)
		flush()
	end

	flow.Tick = tick

	return flow
end
