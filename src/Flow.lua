local _, ns = ...

local Flow = {}
ns.Flow = Flow

-- Connects the adapter, Pairing and Spell Identity, and sends on Your Hits
-- on enemies. Raw events go in through Push, in the shape of Trace entries.
-- Tick(now) closes the open frame and ends the holds that are over; call it
-- once each frame. show(hit, how, spellID) gets Your Hit on an enemy
-- Nameplate, with the spell that made it or nil (see Identity.New);
-- noPlate(hit, how), which is optional, gets Your Hit on target or a soft
-- target that has no Nameplate. how is the rule that paired the Hit (see
-- Pairing.New). spellFacts, which is required, holds the Spell Facts, which
-- Identity changes in place. Hits on the player or the pet go nowhere: they are there to use up
-- the Log Lines of heals and self-damage. A Hit decided after its Nameplate
-- hid goes nowhere too: the renderer finds a Nameplate by its token, and by
-- then the token can name another unit, or none.
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

	-- A Hit decided after its Nameplate hid still goes to Identity, so its
	-- cast is used up, but not to show.
	local function send(decisions)
		if #decisions == 0 then
			return
		end
		local spellIDs = identity.OfAll(decisions)
		for i, decision in ipairs(decisions) do
			local hit = decision.hit
			local hidden = (hiddenAt[hit.unit] or 0) > hit.entry
			if not hidden and hit.unit:match("^nameplate%d+$") then
				show(hit, decision.how, spellIDs[i])
			elseif not hidden and noPlate then
				noPlate(hit, decision.how)
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
		if entry[2] == "NAME_PLATE_UNIT_REMOVED" then
			-- Decide the Hits from before this moment first, as the live Tick of
			-- each frame does, so the result is the same at any tick rate.
			tick(entry[1])
			hiddenAt[entry[3]] = adapter.Push(entry)
			identity.PlateHidden(entry[3])
			return
		end
		adapter.Push(entry)
		flush()
	end

	flow.Tick = tick

	return flow
end
