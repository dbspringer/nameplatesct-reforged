_G.issecretvalue = function(value)
	return value == "<secret>"
end
_G.Enum = { CombatLogMessageOrder = { Newest = 0, Oldest = 1 } }

local ns = {}
for _, file in ipairs({ "src/LineKind.lua", "src/TickSpells.lua", "src/Adapter.lua", "src/Pairing.lua", "src/DirectSpells.lua", "src/Identity.lua", "src/Flow.lua" }) do
	assert(loadfile(file))("NameplateSCT_Reforged", ns)
end
local Flow = ns.Flow
local Label = assert(loadfile("tools/label-trace.lua"))()
local Trace = assert(loadfile("tools/trace.lua"))()

-- Pushes the entries through a new Flow, ends every hold, and returns the
-- Hits that went to show and to noPlate, each with its how, and for show
-- the Line Kind, who swung, and for a late Hit its Nameplate as it hid.
-- class is the player's class token, or nil.
local function run(entries, class)
	local shown, plateless = {}, {}
	local flow = Flow.New({
		spellFacts = {},
		class = class,
		show = function(hit, spellID, late, swinger, how, lineKind)
			shown[#shown + 1] = { hit = hit, how = how, spellID = spellID, lineKind = lineKind, late = late,
				swinger = swinger }
		end,
		noPlate = function(hit, how)
			plateless[#plateless + 1] = { hit = hit, how = how }
		end,
	})
	for _, entry in ipairs(entries) do
		flow.Push(entry)
	end
	flow.Tick(math.huge)
	return shown, plateless
end

local function entriesOf(results)
	local entries = {}
	for i, result in ipairs(results) do
		entries[i] = result.hit.entry
	end
	return entries
end

describe("Flow", function()
	it("shows a spell's Hit that comes a frame after its line, with its spell", function()
		local shown = run({
			{ 0.5, "NAME_PLATE_UNIT_ADDED", "nameplate1" },
			{ 1, "UNIT_SPELLCAST_SUCCEEDED", "player", "Cast", 5176, nil, target = "nameplate1" },
			{ 1.083, "COMBAT_LOG_MESSAGE", "|Ky1|k", 1, 0.85, 0.25, 0, colouring = "kind", lineKind = "direct" },
			{ 1.2, "UNIT_COMBAT", "nameplate1", "WOUND", "", 10, 8, plate = "nameplate1", canAttack = true },
		})
		assert.are.equal(1, #shown)
		assert.are.equal(5176, shown[1].spellID)
		assert.is_nil(shown[1].swinger)
	end)

	describe("a Weapon Proc", function()
		local function directLine(time)
			return { time, "COMBAT_LOG_MESSAGE", "|Ky1|k", 1, 0.85, 0.25, 0, colouring = "kind", lineKind = "direct" }
		end

		it("shows as a swing with no spell", function()
			local shown = run({
				{ 0.5, "NAME_PLATE_UNIT_ADDED", "nameplate1" },
				{ 1, "UNIT_SPELLCAST_SUCCEEDED", "player", "Cast", 17364, nil, target = "nameplate1" },
				directLine(1),
				{ 1.5, "UNIT_COMBAT", "nameplate1", "WOUND", "", 10, 1, plate = "nameplate1", canAttack = true },
			})
			assert.are.equal(1, #shown)
			assert.are.equal("player", shown[1].swinger)
			assert.is_nil(shown[1].spellID)
		end)

		it("keeps the swing look on a Hit that comes soon after its line", function()
			local shown = run({
				{ 0.5, "NAME_PLATE_UNIT_ADDED", "nameplate1" },
				{ 1, "PLAYER_SWING", 3.3, 0 },
				directLine(1),
				{ 1.143, "UNIT_COMBAT", "nameplate1", "WOUND", "", 10, 1, plate = "nameplate1", canAttack = true },
			})
			assert.are.equal(1, #shown)
			assert.are.equal("player", shown[1].swinger)
		end)

		it("shows on a Nameplate that hid before the last Hit", function()
			local frame = {}
			local shown = run({
				{ 0.5, "NAME_PLATE_UNIT_ADDED", "nameplate1", frame = frame },
				{ 1, "PLAYER_SWING", 3.3, 0 },
				directLine(1),
				{ 1.28, "NAME_PLATE_UNIT_REMOVED", "nameplate1", frame = frame, guid = "Creature-1" },
				{ 2.41, "UNIT_COMBAT", "softinteract", "WOUND", "", 10, 1, guid = "Creature-1", canAttack = true },
			})
			assert.are.equal(1, #shown)
			assert.are.equal(frame, shown[1].late.frame)
		end)
	end)
	it("sends Your Hit with no Nameplate to noPlate, not to show", function()
		local shown, plateless = run({
			{ 1, "UNIT_COMBAT", "target", "WOUND", "", 29, 32 },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same({}, shown)
		assert.are.equal(1, #plateless)
		assert.are.same({ "target", "frame" }, { plateless[1].hit.unit, plateless[1].how })
	end)

	it("works with no noPlate, and passes how to show", function()
		local shown = {}
		local flow = Flow.New({
			spellFacts = {},
			show = function(hit, _, _, _, how)
				shown[#shown + 1] = hit.entry .. ":" .. how
			end,
		})
		for _, entry in ipairs({
			{ 1, "UNIT_COMBAT", "target", "WOUND", "", 29, 32 },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
			{ 2, "COMBAT_LOG_MESSAGE", "|Ky2|k", 0.7, 0.7, 0.7, 0 },
			{ 2.05, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
		}) do
			flow.Push(entry)
		end
		flow.Tick(math.huge)
		assert.are.same({ "4:short" }, shown)
	end)

	it("passes the Line Kind of the Hit's Log Line to show", function()
		local swing = ns.LineKind.EventColours().SWING_DAMAGE
		local shown = run({
			{ 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 1, plate = "nameplate1" },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", swing.r, swing.g, swing.b, 0, colouring = "kind", lineKind = "swing" },
		})
		assert.are.equal(1, #shown)
		assert.are.equal("swing", shown[1].lineKind)
	end)

	it("takes a Hit with no Line Kind for a swing only when it paired as melee", function()
		local shown = run({
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
			{ 1.3, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 1, plate = "nameplate1" },
			{ 5, "COMBAT_LOG_MESSAGE", "|Ky2|k", 0.7, 0.7, 0.7, 0 },
			{ 5, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 1, plate = "nameplate1" },
		})
		assert.are.same({ "melee", "frame" }, { shown[1].how, shown[2].how })
		assert.are.equal("player", shown[1].swinger)
		assert.is_nil(shown[2].swinger)
	end)

	it("shows a swing whose line and Hit a frame hitch delivers close together", function()
		local swing = ns.LineKind.EventColours().SWING_DAMAGE
		for _, gap in ipairs({ 0, 0.041 }) do
			local shown = run({
				{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", swing.r, swing.g, swing.b, 0, colouring = "kind", lineKind = "swing" },
				{ 1 + gap, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 1, plate = "nameplate1" },
			})
			assert.are.equal(1, #shown)
			assert.are.equal(29, shown[1].hit.amount)
		end
	end)

	it("shows the later Hit, not the early one, when both could be the swing's", function()
		local swing = ns.LineKind.EventColours().SWING_DAMAGE
		local shown = run({
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", swing.r, swing.g, swing.b, 0, colouring = "kind", lineKind = "swing" },
			{ 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 1, plate = "nameplate1" },
			{ 1.37, "UNIT_COMBAT", "nameplate1", "WOUND", "", 50, 1, plate = "nameplate1" },
		})
		assert.are.equal(1, #shown)
		assert.are.equal(50, shown[1].hit.amount)
	end)

	it("gives Seal of Righteousness to the Seal Procs of a live Paladin, and to no other Hit", function()
		local trace = assert(Trace.Load("spec/traces/paladin-seal.lua"))
		local shown = run(trace.entries)
		local procs, wrongly = 0, 0
		for _, result in ipairs(shown) do
			if result.spellID == 20154 then
				if result.hit.school == 2 and result.lineKind == "direct" then
					procs = procs + 1
				else
					wrongly = wrongly + 1
				end
			end
		end
		assert.are.equal(49, procs)
		assert.are.equal(0, wrongly)
	end)

	it("keeps the Seal after each Judgement of a live Paladin, and gives each Judgement its own icon", function()
		local trace = assert(Trace.Load("spec/traces/paladin-judgement.lua"))
		local counts = {}
		for _, result in ipairs(run(trace.entries)) do
			counts[result.spellID or "none"] = (counts[result.spellID or "none"] or 0) + 1
		end
		assert.are.same({ 20, 11 }, { counts[21084], counts[20271] })
	end)

	-- The 11th Judgement is Hit 359: another player's Shadow Hit in its frame
	-- took its line until the direct line went first to the Judgement's school.
	it("gives no icon when a live Paladin's Judgement and Seal Proc share a frame, and keeps the Seal across fights", function()
		local trace = assert(Trace.Load("spec/traces/paladin-seal-fights.lua"))
		local counts, holyWithNone = {}, 0
		for _, result in ipairs(run(trace.entries)) do
			counts[result.spellID or "none"] = (counts[result.spellID or "none"] or 0) + 1
			if not result.spellID and result.hit.school == 2 then
				holyWithNone = holyWithNone + 1
			end
		end
		assert.are.same({ 25, 11, 4 }, { counts[21084], counts[20271], holyWithNone })
	end)

	-- Counts alone hid a Touch of the Grave miss with the Seal's icon.
	it("gives the Seal only to Holy Hits on direct lines, and not to another proc's miss before a real proc", function()
		local spellOf = {}
		for _, name in ipairs({ "paladin-seal", "paladin-judgement", "paladin-seal-fights" }) do
			local trace = assert(Trace.Load("spec/traces/" .. name .. ".lua"))
			for _, result in ipairs(run(trace.entries)) do
				if name == "paladin-seal-fights" then
					spellOf[result.hit.entry] = result.spellID or "none"
				end
				if result.spellID == 20154 or result.spellID == 21084 then
					assert.are.same({ "WOUND", 2, "direct" }, { result.hit.action, result.hit.school, result.lineKind })
				end
			end
		end
		assert.are.same({ "none", 21084 }, { spellOf[275], spellOf[278] })
	end)

	-- A stand-in for a Nameplate frame, and the plate events that carry it.
	local FRAME = {}
	local function added(time, token, frame)
		return { time, "NAME_PLATE_UNIT_ADDED", token, frame = frame }
	end
	local function removed(time, token, frame, classification)
		return { time, "NAME_PLATE_UNIT_REMOVED", token, frame = frame, wasTarget = true,
			classification = classification or "elite", isBoss = false, isPlayer = false }
	end
	local AS_IT_HID = { frame = FRAME, wasTarget = true, classification = "elite", isBoss = false, isPlayer = false }
	local plateHit = { 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" }

	it("shows a Hit whose Nameplate hid in its frame on that Nameplate as it hid, and a Hit on another as usual", function()
		local shown = run({
			added(0, "nameplate1", FRAME),
			{ 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
			{ 1, "UNIT_COMBAT", "nameplate2", "WOUND", "", 29, 32, plate = "nameplate2" },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky2|k", 0.7, 0.7, 0.7, 0 },
			removed(1, "nameplate1", FRAME),
		})
		assert.are.same({ 2, 3 }, entriesOf(shown))
		assert.are.same(AS_IT_HID, shown[1].late)
		assert.is_nil(shown[2].late)
	end)

	-- The Nameplate showed before Flow started, as after a /reload, so Flow
	-- never saw it added.
	it("shows a Hit held for a late Log Line whose Nameplate hid during the hold on that Nameplate", function()
		local shown = run({
			{ 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
			removed(1.05, "nameplate1", FRAME),
			{ 1.1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same({ 1 }, entriesOf(shown))
		assert.are.same(AS_IT_HID, shown[1].late)
	end)

	it("shows nothing for a late Hit whose Nameplate frame already shows a new unit", function()
		local shown = run({
			added(0, "nameplate1", FRAME),
			{ 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
			removed(1.05, "nameplate1", FRAME),
			added(1.08, "nameplate4", FRAME),
			{ 1.1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same({}, entriesOf(shown))
	end)

	it("shows nothing for a late Hit whose frame, never seen added, shows a new unit", function()
		local shown = run({
			plateHit,
			removed(1.05, "nameplate1", FRAME),
			added(1.08, "nameplate4", FRAME),
			{ 1.1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same({}, entriesOf(shown))
	end)

	it("shows nothing for a late Hit whose frame showed a new unit that hid again", function()
		local shown = run({
			added(0, "nameplate1", FRAME), plateHit,
			removed(1.02, "nameplate1", FRAME),
			added(1.04, "nameplate1", FRAME),
			removed(1.06, "nameplate1", FRAME),
			{ 1.1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same({}, entriesOf(shown))
	end)

	it("gives a late Hit its own Nameplate as it hid, though its token hid again during the hold", function()
		local OTHER = {}
		local shown = run({
			added(0, "nameplate1", FRAME), plateHit,
			removed(1.02, "nameplate1", FRAME),
			added(1.04, "nameplate1", OTHER),
			removed(1.06, "nameplate1", OTHER, "minus"),
			{ 1.1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same(AS_IT_HID, shown[1].late)
	end)

	it("gives a late Hit its own Nameplate however often its token hid during the hold", function()
		local shown = run({
			added(0, "nameplate1", FRAME), plateHit,
			removed(1.02, "nameplate1", FRAME),
			added(1.04, "nameplate1", {}),
			removed(1.06, "nameplate1", {}),
			added(1.08, "nameplate1", {}),
			removed(1.1, "nameplate1", {}),
			{ 1.12, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same(AS_IT_HID, shown[1].late)
	end)

	it("shows a Hit on the unit that a token names after the token's Nameplate hid, even in the same frame", function()
		local shown = run({
			added(0, "nameplate1", FRAME),
			removed(1, "nameplate1", FRAME),
			added(1, "nameplate1", FRAME),
			{ 1, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
			{ 1, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0 },
			{ 2, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
			{ 2, "COMBAT_LOG_MESSAGE", "|Ky2|k", 0.7, 0.7, 0.7, 0 },
		})
		assert.are.same({ 4, 6 }, entriesOf(shown))
		assert.are.same({}, { shown[1].late, shown[2].late })
	end)

	describe("a unit whose Nameplate hides and shows again", function()
		local CORRUPTION = 172
		-- Corruption cast on the unit at 1, its first tick at 4, a hide at 5 and
		-- a show on another token at 6, then the next tick at 7.
		local function reshown(guid, castWhileHidden)
			local entries = {
				{ 0, "NAME_PLATE_UNIT_ADDED", "nameplate1", frame = FRAME, guid = guid },
				{ 1, "UNIT_SPELLCAST_SENT", "player", "<secret>", "Cast-1", CORRUPTION, target = "nameplate1" },
				{ 1, "UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-1", CORRUPTION, "CastBar-1", target = "nameplate1" },
				{ 4, "UNIT_COMBAT", "nameplate1", "WOUND", "", 29, 32, plate = "nameplate1" },
				{ 4, "COMBAT_LOG_MESSAGE", "|Ky1|k", 0.7, 0.7, 0.7, 0, lineKind = "tick" },
				{ 5, "NAME_PLATE_UNIT_REMOVED", "nameplate1", frame = FRAME, guid = guid },
			}
			if castWhileHidden then
				entries[#entries + 1] = { 5.5, "UNIT_SPELLCAST_SENT", "player", "<secret>", "Cast-2", CORRUPTION }
				entries[#entries + 1] = { 5.5, "UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-2", CORRUPTION, "CastBar-2" }
			end
			for _, entry in ipairs({
				{ 6, "NAME_PLATE_UNIT_ADDED", "nameplate2", frame = {}, guid = guid },
				{ 7, "UNIT_COMBAT", "nameplate2", "WOUND", "", 29, 32, plate = "nameplate2" },
				{ 7, "COMBAT_LOG_MESSAGE", "|Ky2|k", 0.7, 0.7, 0.7, 0, lineKind = "tick" },
			}) do
				entries[#entries + 1] = entry
			end
			local shown = run(entries)
			return shown[1] and shown[1].spellID, shown[2] and shown[2].spellID
		end

		it("keeps its Tick Rhythms when its GUID is public", function()
			assert.are.same({ CORRUPTION, CORRUPTION }, { reshown("Creature-1") })
		end)

		-- A cast with no Nameplate for its target can be a refresh on the hidden
		-- unit, whose ticks then leave the old rhythm: the tick at 7 can be
		-- another spell's.
		it("drops a spell's Tick Rhythm when the spell was cast with no known target while it hid", function()
			assert.are.same({ CORRUPTION }, { reshown("Creature-1", true) })
		end)

		-- A secret GUID cannot be compared, so the shown unit can be another.
		it("starts with no Tick Rhythms when its GUID is secret", function()
			assert.are.same({ CORRUPTION }, { reshown("<secret>") })
		end)
	end)

	-- A live Trace: every amount is secret, so only the descriptor tells the
	-- real Hit. The second Heroic Strike was a crit in the Combat Log File.
	it("shows the real Hit of each Heroic Strike in the Warrior Trace, with its icon", function()
		local trace = Trace.Load("spec/traces/warrior-heroic-strike.lua")
		local strikes = {}
		for _, result in ipairs((run(trace.entries))) do
			if result.lineKind == "direct" then
				strikes[#strikes + 1] = { descriptor = result.hit.descriptor, spellID = result.spellID }
			end
		end
		assert.are.same({ { descriptor = "", spellID = 78 }, { descriptor = "CRITICAL", spellID = 78 } }, strikes)
	end)

	-- The mob's Nameplate hid 0.267 s after the swing's Log Line, and the Hit
	-- came 0.3 s after it, on softinteract only.
	it("shows a melee killing blow whose Hit comes after the Nameplate hid", function()
		local trace = Trace.Load("spec/traces/warrior-heroic-strike-2.lua")
		local killingBlow
		for _, result in ipairs((run(trace.entries))) do
			if result.hit.time == 772370.993 then
				killingBlow = result
			end
		end
		assert.is_table(killingBlow)
		assert.are.equal("melee", killingBlow.how)
		assert.is_table(killingBlow.late)
	end)

	-- At 32 yd a shot landed 1.58 s to 1.72 s after its cast. The first shot only
	-- teaches the wand's school.
	it("gives Shoot's icon to shots from maximum range", function()
		local trace = Trace.Load("spec/traces/warlock-wand-range.lua")
		local icons = {}
		for _, result in ipairs((run(trace.entries))) do
			if result.lineKind == "shot" then
				icons[#icons + 1] = result.spellID or false
			end
		end
		assert.are.same({ false, 5019, 5019, 5019, 5019 }, icons)
	end)

	-- On the live client a wand's Hit came up to 0.2 s after its shot line.
	it("shows a wand's Hit that comes up to 0.2 s after its shot line", function()
		local trace = Trace.Load("spec/traces/warlock-wand-live.lua")
		local shown = {}
		for _, result in ipairs((run(trace.entries))) do
			shown[result.hit.entry] = true
		end
		for _, entry in ipairs({ 81, 105, 122, 411, 452 }) do
			assert.is_true(shown[entry], "entry " .. entry)
		end
	end)

	-- A DoT tick came in the shot line's frame, and the wand's Hit 0.334 s later.
	it("keeps a wand's Hit when a tick comes in its shot line's frame", function()
		local trace = Trace.Load("spec/traces/warlock-wand-overlap.lua")
		local wand
		for _, result in ipairs((run(trace.entries))) do
			if result.hit.time == 783696.627 then
				wand = result
			end
		end
		assert.is_table(wand)
		assert.are.equal("shot", wand.lineKind)
	end)

	-- The longest gap seen: 0.283 s, on the seventh shot of this Trace.
	it("shows a wand's Hit that comes 0.283 s after its shot line", function()
		local trace = Trace.Load("spec/traces/warlock-wand-icon.lua")
		local shots = 0
		for _, result in ipairs((run(trace.entries))) do
			if result.lineKind == "shot" then
				shots = shots + 1
			end
		end
		assert.are.equal(7, shots)
	end)

	-- Another mob's Hit (entry 17) came 0.1 s before the player's swing line, and
	-- the swing's real Hit (entry 22) came 0.667 s after that line.
	it("gives a swing line to the swing's Hit, not to a Hit just before the line", function()
		local trace = Trace.Load("spec/traces/warrior-retest.lua")
		local entries = {}
		for _, result in ipairs((run(trace.entries))) do
			entries[result.hit.entry] = true
		end
		assert.is_nil(entries[17])
		assert.is_true(entries[22])
	end)

	-- A live Druid among several mobs. Twice another unit's Hit on another
	-- Nameplate came between a swing line and the swing's Hit: entry 69 at
	-- 0.367 s after the line and the real Hit (70) at 0.617 s, then entry 168
	-- at 0.333 s and the real Hit (169) at 0.450 s. Both rivals come off this
	-- Druid's Swing Delays (0.45 s and 0.62 s). Without learned Swing Delays
	-- each rival took the line.
	it("gives a swing line to the Hit on the Druid's Swing Delay, not to a rival's Hit before it", function()
		local trace = assert(Trace.Load("spec/traces/druid-weapon-swap.lua"))
		local shown = {}
		for _, result in ipairs((run(trace.entries))) do
			shown[result.hit.entry] = true
		end
		assert.are.same({ false, true, false, true }, { shown[69] == true, shown[70] == true, shown[168] == true,
			shown[169] == true })
	end)

	-- Unit A's Nameplate hid, and its token and frame now show unit B. A's late
	-- report comes in B's Heroic Strike frame. No Trace has this order. A's Hit
	-- can still take the frame's line, so B's real Hit may show nothing, but B's
	-- Empty Report must not show as a 0.
	it("finds a Next-Swing Ability's Empty Report when a late Hit shares its token", function()
		local function wound(unit, descriptor, extra)
			local entry = { 1.5, "UNIT_COMBAT", unit, "WOUND", descriptor, "<secret>", 1, canAttack = true }
			for key, value in pairs(extra) do
				entry[key] = value
			end
			return entry
		end
		local shown = run({
			{ 1, "NAME_PLATE_UNIT_ADDED", "nameplate1", frame = "frame1" },
			{ 1.2, "NAME_PLATE_UNIT_REMOVED", "nameplate1", frame = "frame1", guid = "Creature-A" },
			{ 1.3, "NAME_PLATE_UNIT_ADDED", "nameplate1", frame = "frame1" },
			{ 1.5, "UNIT_SPELLCAST_SUCCEEDED", "player", "Cast-1", 78, target = "nameplate1" },
			wound("nameplate1", "EMPTY", { plate = "nameplate1" }),
			wound("softinteract", "LATE", { guid = "Creature-A" }),
			{ 1.5, "COMBAT_LOG_MESSAGE", "|Ky1|k", 1, 0.85, 0.25, 0 },
			wound("nameplate1", "REAL", { plate = "nameplate1" }),
		})
		for _, result in ipairs(shown) do
			assert.are_not.equal("EMPTY", result.hit.descriptor)
		end
	end)

	-- The Heroic Strikes of entries 53 and 94 do not kill, so their frames have
	-- no killing blow line. Each of the three entries is the frame's last WOUND.
	it("shows the real Hit of a Heroic Strike that does not kill", function()
		local trace = Trace.Load("spec/traces/warrior-heroic-strike-2.lua")
		local entries = {}
		for _, result in ipairs((run(trace.entries))) do
			if result.lineKind == "direct" then
				entries[#entries + 1] = result.hit.entry
			end
		end
		assert.are.same({ 24, 53, 94 }, entries)
	end)

	describe("on the Warlock Traces", function()
		for _, name in ipairs(Trace.NAMES) do
			it("shows exactly the Hits on an enemy Nameplate whose Label has a Log Line in " .. name, function()
				local trace, labels = Trace.LoadLabelled(name)
				local unitOf = {}
				for _, hit in ipairs((Label.Adapt(trace))) do
					unitOf[hit.entry] = hit.unit
				end
				local onPlate, noPlate = {}, {}
				for _, row in ipairs(labels) do
					local unit = unitOf[row.hit]
					if (Trace.LOST[name] or {})[row.hit] then
						assert.is_truthy(row.line)
					elseif row.line and unit:match("^nameplate%d+$") then
						onPlate[#onPlate + 1] = row.hit
					elseif row.line and unit ~= "player" and unit ~= "pet" then
						noPlate[#noPlate + 1] = row.hit
					end
				end
				table.sort(onPlate)
				table.sort(noPlate)

				local shown, plateless = run(trace.entries)
				local shownEntries, platelessEntries = entriesOf(shown), entriesOf(plateless)
				table.sort(shownEntries)
				table.sort(platelessEntries)
				assert.are.same(onPlate, shownEntries)
				assert.are.same(noPlate, platelessEntries)
			end)
		end

		-- Pairing gives a melee Hit the oldest melee line that fits, so when the
		-- player's and the pet's swing lines wait at once, their Hits can swap
		-- them: once in the Traces, the two wrong owners expected here. The pet's
		-- Hit came 0.567 s after its line, off the pet's learned 0.533 s, and
		-- the player had too few swings yet to refuse it.
		it("tells the player's swings from the pet's, as the Combat Log File does", function()
			local seen, wrong = { you = 0, pet = 0 }, {}
			for _, name in ipairs(Trace.NAMES) do
				local trace, labels = Trace.LoadLabelled(name)
				local _, _, eventAt = Label.Make(trace, Trace.LoadLog(name))
				local lineOf = {}
				for _, row in ipairs(labels) do
					lineOf[row.hit] = row.line
				end
				for _, result in ipairs((run(trace.entries))) do
					if ns.LineKind.IsMelee(result.lineKind) then
						local who = eventAt[lineOf[result.hit.entry]].srcWho
						seen[who] = seen[who] + 1
						if (who == "pet") ~= (result.swinger == "pet") then
							wrong[#wrong + 1] = ("%s hit %d"):format(name, result.hit.entry)
						end
					else
						assert.are_not.equal("pet", result.swinger, ("%s hit %d"):format(name, result.hit.entry))
					end
				end
			end
			assert.is_true(seen.you > 0 and seen.pet > 0)
			assert.are.same({ "warlock-line-kind hit 229", "warlock-line-kind hit 231" }, wrong)
		end)
	end)

	-- Floors that catch a regression in a group, where many players' Hits come
	-- in a line's window. warlock-rfk is a 55 minute dungeon run in a party of
	-- five. Its Labels are all unsure, so these counts need none. Every swing
	-- line is the Incubus's, and its Hit comes one Swing Delay (0.95 s) later;
	-- a swing Hit shown at another time is most likely another player's. Of 741
	-- swing lines, 662 show a Hit on the delay and 44 show another (60 before
	-- a fallback Hit could lose its line). Of 231 shot lines, 221 show as
	-- Shoot (207 when one Hit of another school restarted the Spell Fact).
	it("keeps the pet's swings and the wand's shots through a long dungeon run", function()
		local trace = assert(Trace.Load("spec/traces/warlock-rfk.lua"))
		local swingLines = {}
		for _, entry in ipairs(trace.entries) do
			if entry.lineKind == "swing" then
				swingLines[#swingLines + 1] = entry[1]
			end
		end
		local onDelay, offDelay, shots = 0, 0, 0
		local from = 1
		for _, result in ipairs(run(trace.entries)) do
			if result.lineKind == "swing" then
				local time = result.hit.time
				while swingLines[from] and time - swingLines[from] > 0.975 do
					from = from + 1
				end
				if swingLines[from] and time - swingLines[from] >= 0.94 then
					onDelay = onDelay + 1
				else
					offDelay = offDelay + 1
				end
			elseif result.lineKind == "shot" and result.spellID == 5019 then
				shots = shots + 1
			end
		end
		assert.is_true(onDelay >= 658, ("%d swing Hits on the delay"):format(onDelay))
		assert.is_true(offDelay <= 48, ("%d swing Hits off the delay"):format(offDelay))
		assert.is_true(shots >= 218, ("%d shots shown as Shoot"):format(shots))
	end)

	-- warlock-sm-armory is a Scarlet Monastery Armory run in a group, with all
	-- four DoTs and Drain Life on several mobs at once. Its Labels are all
	-- unsure, but a row unsure only for its secret amount has one file event,
	-- so its spell is sure. Before Tick Rhythms took a cast's target (#69), 15
	-- such ticks showed another DoT's icon and 772 ticks showed an icon; now
	-- none and 811.
	it("keeps every DoT's icon on its own mob through a dungeon run", function()
		local trace, labels = Trace.LoadLabelled("warlock-sm-armory")
		local spellOf = Trace.SureSpells(labels)
		local icons, wrong = 0, {}
		for _, result in ipairs(run(trace.entries)) do
			if result.lineKind == "tick" and result.spellID then
				icons = icons + 1
			end
			local spell = spellOf[result.hit.entry]
			if result.spellID and spell ~= nil and result.spellID ~= spell then
				wrong[#wrong + 1] = ("hit %d: %s, Label %s"):format(result.hit.entry, result.spellID, tostring(spell))
			end
		end
		assert.are.same({}, wrong)
		assert.is_true(icons >= 800, ("%d ticks shown with an icon"):format(icons))
	end)

	-- warlock-zf is a Zul'Farrak run in a party (2026-11-22), a Warlock with a
	-- Succubus and Demonic Brand: each of the pet's Hits can set off a Brand
	-- Proc, a Shadow Hit with no cast. Its Labels are all unsure; as above, a
	-- row unsure only for its secret amount has a sure spell. Before Brand
	-- Procs had a rule, 6 of them took the icon of a Shadow Bolt or Death Coil
	-- still in flight, whose own Hit then had none; and before the pet's casts
	-- could win, Lash of Pain showed no icon; and before a Brand Proc after a
	-- Lash of Pain Hit had a rule, 35 more showed none; and while a Brand Proc
	-- that a cast of the player's fit too got a stack, 6 more showed none. Now
	-- 286 Brand Procs show Demonic Brand, 61 Lash of Pain Hits show theirs, and
	-- no icon is wrong.
	it("shows Demonic Brand on Brand Procs and Lash of Pain on its Hits, and leaves Shadow Bolt its own", function()
		local DEMONIC_BRAND, LASH_OF_PAIN = 1293697, 11778
		local trace, labels = Trace.LoadLabelled("warlock-zf")
		local spellOf = Trace.SureSpells(labels)
		local brands, lashes, wrong = 0, 0, {}
		for _, result in ipairs(run(trace.entries, trace.header.class)) do
			local spell = spellOf[result.hit.entry]
			if result.spellID and spell == result.spellID then
				brands = brands + (spell == DEMONIC_BRAND and 1 or 0)
				lashes = lashes + (spell == LASH_OF_PAIN and 1 or 0)
			elseif result.spellID and spell ~= nil then
				wrong[#wrong + 1] = ("hit %d: %s, Label %s"):format(result.hit.entry, result.spellID, tostring(spell))
			end
		end
		assert.are.same({}, wrong)
		assert.is_true(brands >= 283, ("%d Brand Procs shown with Demonic Brand's icon"):format(brands))
		assert.is_true(lashes >= 58, ("%d Lash of Pain Hits shown with its icon"):format(lashes))
	end)

	-- In a group, another player's Hit of another school can come first in the
	-- frame of the player's or the pet's direct spell. Before a direct line went
	-- first to a Hit with a recent cast's school, it took the line, and the
	-- real Hit showed nothing. Over the Checked and Sure Labels, wrong and missing were 47 and 127 in warlock-rfk,
	-- and 70 and 98 in warlock-zf. A Brand Proc has no cast, so for a Warlock
	-- the pet's landed swing line counts as one: before that, zf was at 66 and
	-- 94. The pet's spell Hit counts too: before that, 60 and 87. Hellfire's
	-- Hits count as an area spell's: before that, zf was at 60 and 85. With the
	-- line-order rule zf is at 49 and 72, and warlock-maraudon, a party run
	-- with an Imp, at 31 and 62. warlock-open-world-2 is a busy open-world
	-- fight on the beta, where GUIDs and amounts are public, so its Labels are
	-- proven by amount: 18 and 13.
	it("gives a direct line to the Hit with its cast's school in a group", function()
		local floors = { ["warlock-rfk"] = { 42, 124 }, ["warlock-zf"] = { 50, 73 }, ["warlock-maraudon"] = { 32, 63 },
			["warlock-open-world-2"] = { 19, 14 } }
		for name, floor in pairs(floors) do
			local trace, labels = Trace.LoadLabelled(name)
			local shown = {}
			for _, result in ipairs(run(trace.entries, trace.header.class)) do
				shown[result.hit.entry] = true
			end
			local wrong, missing = 0, 0
			for _, row in ipairs(labels) do
				if Trace.IsSure(row) then
					local unit = tostring(trace.entries[row.hit][3])
					if shown[row.hit] and not row.line then
						wrong = wrong + 1
					elseif not shown[row.hit] and row.line and unit:match("^nameplate%d+$") then
						missing = missing + 1
					end
				end
			end
			assert.is_true(wrong <= floor[1], ("%s: %d wrong"):format(name, wrong))
			assert.is_true(missing <= floor[2], ("%s: %d missing"):format(name, missing))
		end
	end)

	-- warlock-maraudon is a Maraudon run in a party (2026-11-25), a Warlock with
	-- an Imp's Fire Shield and a party Paladin's Retribution Aura. Twice a mob
	-- hit the player and another mob of the same kind hit a group mate with the
	-- same shields, for the same amounts. Entry order in each frame: plate 11's
	-- Fire and Holy Hits, the player's Fire Shield line, plate 13's Fire Hit,
	-- the Retribution Aura line, plate 13's Holy Hit. The Combat Log File puts
	-- both of the player's shield lines on one creature, which other Hits show
	-- is plate 13's mob. The Labels are unsure there, so this lists the Hits.
	it("gives a group's shield lines to the Hits after them, on the mob that hit the player", function()
		local trace = assert(Trace.Load("spec/traces/warlock-maraudon.lua"))
		local shown = {}
		for _, result in ipairs(run(trace.entries, trace.header.class)) do
			shown[result.hit.entry] = true
		end
		local function shownOf(entries)
			local list = {}
			for i, entry in ipairs(entries) do
				list[i] = shown[entry] == true
			end
			return list
		end
		-- Plate 11's Fire and Holy Hits, then plate 13's, in each frame.
		assert.are.same({ false, false, true, true }, shownOf({ 32524, 32525, 32528, 32530 }))
		assert.are.same({ false, false, true, true }, shownOf({ 32634, 32635, 32638, 32640 }))
	end)

	-- Hellfire is a channel whose ticks hit the mobs near you as direct hits of
	-- another spell ID, and also burn you, with a tick line in their frame.
	-- Before it was an area spell, its Hits showed no icon; and before the
	-- burn took its own tick line, a Hit on a mob took it and showed none; and
	-- before a tick in the channel's stop frame fit, 11 more showed none. Over
	-- the rows that are sure or unsure only for their secret amount, 245 of 247
	-- show Hellfire in warlock-zf, and 269 of 269 in warlock-sm-armory.
	it("shows Hellfire's icon on its Hits on the mobs", function()
		local HELLFIRE = { [1949] = true, [11683] = true }
		local icons, wrong = 0, {}
		for _, name in ipairs({ "warlock-zf", "warlock-sm-armory" }) do
			local trace, labels = Trace.LoadLabelled(name)
			local spellOf = {}
			for _, row in ipairs(labels) do
				local unit = tostring(trace.entries[row.hit][3])
				if HELLFIRE[row.spell] and Trace.IsSure(row) and unit:match("^nameplate%d+$") then
					spellOf[row.hit] = row.spell
				end
			end
			for _, result in ipairs(run(trace.entries, trace.header.class)) do
				local spell = spellOf[result.hit.entry]
				if spell and result.spellID == spell then
					icons = icons + 1
				elseif spell and result.spellID then
					wrong[#wrong + 1] = ("%s hit %d: %s"):format(name, result.hit.entry, result.spellID)
				end
			end
		end
		assert.are.same({}, wrong)
		assert.is_true(icons >= 512, ("%d Hellfire Hits shown with its icon"):format(icons))
	end)

	-- warlock-wrack is an open-world fight of a Warlock with Wrack, a channel
	-- on Forever only, and the other DoTs and Drain Life (2026-11-21): the
	-- first Trace with Wrack. Its Labels are all unsure; as above, a row unsure
	-- only for its secret amount has a sure spell. 29 of its 30 Wrack ticks
	-- have one: 20 show Wrack's icon, and 9 none. Two of those (hits 260 and 1502) are Tick
	-- Ties with Bane of Agony; at hit 260 the mob kept Agony's Tick Rhythm when
	-- its Nameplate showed again at 48.9 s.
	it("shows Wrack's icon on Wrack's ticks, and no wrong icon", function()
		local WRACK = 1316697
		local trace, labels = Trace.LoadLabelled("warlock-wrack")
		local spellOf = Trace.SureSpells(labels)
		local wrack, wrong = 0, {}
		for _, result in ipairs(run(trace.entries)) do
			local spell = spellOf[result.hit.entry]
			if result.spellID == WRACK and spell == WRACK then
				wrack = wrack + 1
			end
			if result.spellID and spell ~= nil and result.spellID ~= spell then
				wrong[#wrong + 1] = ("hit %d: %s, Label %s"):format(result.hit.entry, result.spellID, tostring(spell))
			end
		end
		assert.are.same({}, wrong)
		assert.is_true(wrack >= 20, ("%d Wrack ticks shown with Wrack's icon"):format(wrack))
	end)
end)
