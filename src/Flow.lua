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
-- heals and self-damage. A Hit decided after its Nameplate hid goes nowhere
-- too: the renderer finds a Nameplate by its token, and by then the token can
-- name another unit, or none.
-- readColours() gives the colours of Pairing.ColoursOf
-- at each Log Line: the player can change or switch the Log Filter at any
-- time, and the game can load the filters after login.
function Flow.New(options)
	local show, noPlate, readColours = options.show, options.noPlate, options.readColours
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
				show(hit, how)
			elseif noPlate then
				noPlate(hit, how)
			end
		end,
	})
	local adapter = ns.Adapter.New(pairing.Push)

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
			return
		elseif entry[2] == "COMBAT_LOG_MESSAGE" then
			-- The adapter holds a frame's lines until a later event closes the
			-- frame. Close it now, so its lines meet the colours they came under.
			adapter.Tick(entry[1])
			pairing.SetColours(readColours())
		end
		adapter.Push(entry)
	end

	flow.Tick = tick

	return flow
end
