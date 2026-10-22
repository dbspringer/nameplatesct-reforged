local _, ns = ...

local Flow = {}
ns.Flow = Flow

-- Connects the adapter, Pairing and Spell Identity, and sends on Your Hits
-- on enemies. Raw events go in through Push, in the shape of Trace entries.
-- Tick(now) closes the open frame and ends the holds that are over; call it
-- once each frame. show(hit, how, spellID, lineKind, late, pet) gets Your Hit
-- on an enemy Nameplate, with the spell that made it or nil (see
-- Identity.New), the Line Kind of its Log Line, or nil when the colour told
-- none, and pet, true when the line is the pet's swing (see Adapter.New);
-- noPlate(hit, how), which is optional, gets Your Hit on target or a soft
-- target that has no Nameplate. how is the rule that paired the Hit (see
-- Pairing.New). spellFacts, which is required, holds the Spell Facts, which
-- Identity changes in place. Hits on the player or the pet go nowhere: they
-- are there to use up the Log Lines of heals and self-damage.
-- A Hit decided after its Nameplate hid, such as a killing blow whose Log
-- Line came late, is a late Hit: its token can by then name another unit, or
-- none. show gets it with late, the Nameplate as it hid: { frame, wasTarget,
-- classification, isBoss, isPlayer }, from the NAME_PLATE_UNIT_REMOVED entry
-- (Events.lua), which the adapter keeps on the Hit's plate life. A late Hit
-- whose frame the game gave to a new unit since the hide is not shown, as
-- its text would show where that unit is or was.
function Flow.New(options)
	local show, noPlate = options.show, options.noPlate
	local identity = ns.Identity.New(options.spellFacts)
	-- Pairing's decisions of Your Hits on enemies, and the casts, in the order
	-- they came. Identity takes the decisions that come together as one group,
	-- so it can see two ticks that come at once. Identity and show run after
	-- Pairing returns, so an error in them cannot drop the rest of Pairing's
	-- frame; it drops the rest of the queue.
	local pending = {}

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
		local spellIDs = identity.OfAll(decisions)
		for i, decision in ipairs(decisions) do
			local hit, life = decision.hit, decision.hit.life
			if not life then
				if noPlate then
					noPlate(hit, decision.how)
				end
			elseif not life.reused then
				show(hit, decision.how, spellIDs[i], decision.line.lineKind, life.hid, decision.line.pet == true)
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
		end
		adapter.Push(entry)
		flush()
	end

	flow.Tick = tick

	return flow
end
