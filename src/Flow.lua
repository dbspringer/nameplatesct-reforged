local _, ns = ...

local Flow = {}
ns.Flow = Flow

-- Connects the adapter and Pairing, and sends on Your Hits on enemies. Raw
-- events go in through Push, in the shape of Trace entries. Tick(now) closes
-- the open frame and ends the holds that are over; call it once each frame.
-- show(hit, how) gets Your Hit on an enemy Nameplate; noPlate(hit, how), which
-- is optional, gets Your Hit on target or a soft target that has no
-- Nameplate. how is the rule that paired the Hit (see Pairing.New). Hits on
-- the player or the pet go nowhere: they are there to use up the Log Lines of
-- heals. colours comes from Pairing.ColoursOf.
function Flow.New(options)
	local show, noPlate = options.show, options.noPlate

	local pairing = ns.Pairing.New({
		colours = options.colours,
		onDecision = function(hit, line, how)
			if not line or hit.unit == "player" or hit.unit == "pet" then
				return
			end
			if hit.unit:match("^nameplate%d+$") then
				show(hit, how)
			elseif noPlate then
				noPlate(hit, how)
			end
		end,
	})
	local adapter = ns.Adapter.New(pairing.Push)

	local flow = {}

	function flow.Push(entry)
		adapter.Push(entry)
	end

	function flow.Tick(now)
		adapter.Tick(now)
		pairing.Tick(now)
	end

	return flow
end
