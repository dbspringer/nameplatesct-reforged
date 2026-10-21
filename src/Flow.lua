local _, ns = ...

local Flow = {}
ns.Flow = Flow

-- Connects the adapter and Pairing, and sends on Your Hits on enemies. Raw
-- events go in through Push, in the shape of Trace entries. Tick(now) closes
-- the open frame and ends the holds that are over; call it once each frame.
-- show(hit, how, spellID) gets Your Hit on an enemy Nameplate, with the spell
-- that made it or nil (see Identity.New); noPlate(hit, how), which is
-- optional, gets Your Hit on target or a soft target that has no Nameplate.
-- how is the rule that paired the Hit (see Pairing.New). spellFacts holds the
-- Spell Facts, which Identity changes in place. Hits on
-- the player or the pet go nowhere: they are there to use up the Log Lines of
-- heals and self-damage. A Hit decided after its Nameplate hid goes nowhere
-- too: the renderer finds a Nameplate by its token, and by then the token can
-- name another unit, or none.
function Flow.New(options)
	local show, noPlate = options.show, options.noPlate
	local identity = ns.Identity.New(options.spellFacts or {})
	-- The adapter's entry number at which each token's Nameplate last hid.
	-- Entry order, not time, so a Hit on a new unit in the same frame stays.
	local hiddenAt = {}

	local pairing = ns.Pairing.New({
		onDecision = function(hit, line, how)
			if not line or hit.unit == "player" or hit.unit == "pet" then
				return
			end
			if (hiddenAt[hit.unit] or 0) > hit.entry then
				return
			end
			if hit.unit:match("^nameplate%d+$") then
				show(hit, how, identity.Of(hit, line))
			elseif noPlate then
				noPlate(hit, how)
			end
		end,
	})
	local adapter = ns.Adapter.New(function(record)
		if record.kind == "cast" then
			identity.Cast(record)
		end
		pairing.Push(record)
	end)

	local function tick(now)
		adapter.Tick(now)
		pairing.Tick(now)
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
	end

	flow.Tick = tick

	return flow
end
