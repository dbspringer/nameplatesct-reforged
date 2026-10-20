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
-- heals and self-damage. readColours() gives the colours of Pairing.ColoursOf
-- at each Log Line: the player can change or switch the Log Filter at any
-- time, and the game can load the filters after login.
function Flow.New(options)
	local show, noPlate, readColours = options.show, options.noPlate, options.readColours

	local pairing = ns.Pairing.New({
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
		if entry[2] == "COMBAT_LOG_MESSAGE" then
			-- The adapter holds a frame's lines until a later event closes the
			-- frame. Close it now, so its lines meet the colours they came under.
			adapter.Tick(entry[1])
			pairing.SetColours(readColours())
		end
		adapter.Push(entry)
	end

	function flow.Tick(now)
		adapter.Tick(now)
		pairing.Tick(now)
	end

	return flow
end
