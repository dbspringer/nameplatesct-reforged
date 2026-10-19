local _, ns = ...

local Events = {}
ns.Events = Events

-- Forever sends COMBAT_LOG_MESSAGE only while filtered events are on, and
-- dungeons start with them off. The ticker turns them back on if anything
-- turns them off later.
local KEEP_INTERVAL = 2

local keepTicker

local function keepFilteredEvents()
	local enabled = C_CombatLog.AreFilteredEventsEnabled()
	if issecretvalue(enabled) or enabled then
		return
	end
	C_CombatLog.SetFilteredEventsEnabled(true)
end

function Events.Start()
	keepFilteredEvents()
	if not keepTicker then
		keepTicker = C_Timer.NewTicker(KEEP_INTERVAL, keepFilteredEvents)
	end
end

function Events.Stop()
	if keepTicker then
		keepTicker:Cancel()
		keepTicker = nil
	end
end
