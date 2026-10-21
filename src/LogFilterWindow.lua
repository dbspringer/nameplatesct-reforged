local _, ns = ...
local L = LibStub("AceLocale-3.0"):GetLocale("NameplateSCT_Reforged")

local LogFilterWindow = {}
ns.LogFilterWindow = LogFilterWindow

-- Seconds after the loading screen, so the screen has settled first.
local LOGIN_DELAY = 3

local events = CreateFrame("Frame")
local started = false
local fixQueued = false
local window, text, fixButton

-- The addon's own window, not a StaticPopup: a StaticPopup needs a field in
-- Blizzard's StaticPopupDialogs, and a field that addon code writes on a
-- Blizzard table taints the Blizzard code that reads it.
local function build()
	window = CreateFrame("Frame", nil, UIParent, "BasicFrameTemplateWithInset")
	window:SetSize(420, 180)
	window:SetPoint("CENTER")
	window:SetFrameStrata("DIALOG")
	window:Hide()

	local title = window:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	title:SetPoint("TOP", 0, -5)
	title:SetText(L["NameplateSCT Reforged"])

	text = window:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	text:SetPoint("TOPLEFT", 16, -36)
	text:SetPoint("TOPRIGHT", -16, -36)
	text:SetJustifyH("LEFT")

	-- The game refuses a filter that an addon applies during a session, so the
	-- fix waits for the logout that the reload brings.
	fixButton = CreateFrame("Button", nil, window, "UIPanelButtonTemplate")
	fixButton:SetSize(150, 24)
	fixButton:SetPoint("BOTTOMLEFT", 16, 14)
	fixButton:SetText(L["Fix and reload"])
	fixButton:SetScript("OnClick", function()
		fixQueued = true
		C_UI.Reload()
	end)

	local later = CreateFrame("Button", nil, window, "UIPanelButtonTemplate")
	later:SetSize(150, 24)
	later:SetPoint("BOTTOMRIGHT", -16, 14)
	later:SetText(L["Not now"])
	later:SetScript("OnClick", function()
		window:Hide()
	end)
end

-- Shows the window while the Log Filter lacks what Pairing needs. "Not now"
-- closes it until the next login or reload.
local function offer()
	local myActions = QUICKBUTTON_NAME_MY_ACTIONS
	local state = ns.LogFilter.Check(Blizzard_CombatLog_Filters, myActions)
	if state ~= "fixable" and state ~= "gone" then
		return
	end
	if not window then
		build()
	end
	if state == "fixable" then
		text:SetText(L["Your combat log needs a few changes so the addon can tell which hits are yours and your pet's.\n\nFix and reload updates Blizzard's \"%s\" filter, including its line colours, and switches your combat log to it."]:format(myActions))
		fixButton:Show()
	else
		text:SetText(L["Your combat log has no \"%s\" filter, so some numbers can't show.\n\nPress Defaults in the combat log settings to get it back."]:format(myActions))
		fixButton:Hide()
	end
	window:Show()
end

local function offerOutOfCombat()
	if not started then
		return
	end
	if InCombatLockdown() then
		events:RegisterEvent("PLAYER_REGEN_ENABLED")
		return
	end
	offer()
end

events:SetScript("OnEvent", function(_, event, isInitialLogin, isReloadingUi)
	if event == "PLAYER_ENTERING_WORLD" then
		if isInitialLogin or isReloadingUi then
			C_Timer.After(LOGIN_DELAY, offerOutOfCombat)
		end
	elseif event == "PLAYER_REGEN_ENABLED" then
		events:UnregisterEvent("PLAYER_REGEN_ENABLED")
		offerOutOfCombat()
	elseif event == "PLAYER_LOGOUT" and fixQueued then
		ns.LogFilter.Fix(Blizzard_CombatLog_Filters, QUICKBUTTON_NAME_MY_ACTIONS)
	end
end)

-- Called at PLAYER_LOGIN, before the first PLAYER_ENTERING_WORLD.
function LogFilterWindow.Start()
	started = true
	events:RegisterEvent("PLAYER_ENTERING_WORLD")
	events:RegisterEvent("PLAYER_LOGOUT")
end

function LogFilterWindow.Stop()
	started = false
	events:UnregisterAllEvents()
	if window then
		window:Hide()
	end
end
