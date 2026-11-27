-- WoW Forever Guide: quest log sync for RestedXP.
--
-- 1. Empty your quest log (abandon everything) and a window asks which guide you want to do: one button per route
--    for your class (your race's route and every "Start in ..." route), each on the bracket that fits your level.
-- 2. Whenever a WoW Forever guide is opened (from that window or from RestedXP's own list) it skips what you have
--    already done and jumps to the quests that are in your quest log: steps are matched by quest ID, or by the quest
--    names written in the step text. With an empty log it skips steps whose quests you have already handed in: the
--    names are looked up in QuestIDs.lua and checked with IsQuestFlaggedCompleted.
--
-- /wfg        pick a guide
-- /wfg sync   jump the current guide to the quests in your log again
--
-- It only uses RestedXP's own functions (the global RXP table: guides, currentGuide, LoadGuide, SetStep, applies).

local GROUP_PREFIX = "WoW Forever - "

-- FuntGuides patch: sync these guide groups too, not only "WoW Forever - *"
local SYNC_GROUPS = {
    ["WoW Forever - "] = "prefix",
    ["RestedXP Horde 30-45"] = "exact",
    ["FuntGuides - Class Quests"] = "exact",
    ["FuntGuides - Forever Custom"] = "exact",
    ["RestedXP Forever Guide (H)"] = "exact",
    ["RestedXP Forever Guide (A)"] = "exact",
}

local WFG = {}
_G.WoWForeverGuide = WFG

local function say(msg)
    DEFAULT_CHAT_FRAME:AddMessage("|cff7fd1ffFuntGuides:|r " .. msg)
end

local function rxpReady()
    return type(RXP) == "table" and type(RXP.guides) == "table" and type(RXP.LoadGuide) == "function"
end

local function isOurGuide(guide)
    if type(guide) ~= "table" or type(guide.group) ~= "string" then return false end
    for name, mode in pairs(SYNC_GROUPS) do
        if mode == "prefix" then
            if guide.group:sub(1, #name) == name then return true end
        elseif guide.group == name then
            return true
        end
    end
    return false
end

-- Current RestedXP builds keep a step's elements in step.elements; older builds stored them in the
-- step table itself. Walk whichever is there.
local function stepElements(step)
    if type(step.elements) == "table" then return step.elements end
    return step
end

---------------------------------------------------------------------------------------------------
-- The quest log
---------------------------------------------------------------------------------------------------

local function questTitleAndId(i)
    if C_QuestLog and C_QuestLog.GetInfo then
        local info = C_QuestLog.GetInfo(i)
        if info then
            return (not info.isHeader) and info.title or nil, info.questID
        end
        return nil
    end
    local title, _, _, isHeader, _, _, _, questID = GetQuestLogTitle(i)
    if isHeader then return nil end
    return title, questID
end

local function numLogEntries()
    if C_QuestLog and C_QuestLog.GetNumQuestLogEntries then
        return (C_QuestLog.GetNumQuestLogEntries())
    end
    return (GetNumQuestLogEntries())
end

-- every quest in the log: { ids = {[id] = true}, titles = {"lower case title", ...}, count = n }
local function readQuestLog()
    local log = { ids = {}, titles = {}, count = 0 }
    for i = 1, numLogEntries() or 0 do
        local title, id = questTitleAndId(i)
        if title then
            log.count = log.count + 1
            if id and id > 0 then log.ids[id] = true end
            local clean = title:lower():gsub("^%s+", ""):gsub("%s+$", "")
            if #clean >= 5 then table.insert(log.titles, clean) end
        end
    end
    return log
end

local function turnedIn(id)
    if not id then return false end
    if C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted then return C_QuestLog.IsQuestFlaggedCompleted(id) end
    if IsQuestFlaggedCompleted then return IsQuestFlaggedCompleted(id) end
    return false
end

---------------------------------------------------------------------------------------------------
-- Quest titles -> IDs (QuestIDs.lua), for steps that only name quests in their text
---------------------------------------------------------------------------------------------------

-- "The Hunt Begins" -> "the hunt begins", "Break Sharptusk!" -> "break sharptusk"
local function normalizeTitle(title)
    local t = tostring(title):lower():gsub("’", "'")
    t = t:gsub("^[%s.]+", ""):gsub("[%s.!?:]+$", "")
    return t
end

local TITLE_ENTRIES -- { {title = "lower case", ids = {n, ...}}, ... }
local TITLE_BY_ID   -- [id] = "lower case"

local function buildTitleIndex()
    TITLE_ENTRIES, TITLE_BY_ID = {}, {}
    for title, v in pairs(WoWForeverGuide_QuestIds or {}) do
        local ids = type(v) == "table" and v or { v }
        local norm = normalizeTitle(title)
        if #norm >= 3 then
            local copy = {}
            for i = 1, #ids do copy[i] = tonumber(ids[i]) or 0 end
            table.sort(copy)
            TITLE_ENTRIES[#TITLE_ENTRIES + 1] = { title = norm, ids = copy }
            for i = 1, #copy do TITLE_BY_ID[copy[i]] = norm end
        end
    end
end

local ROMAN_PARTS = { ii = true, iii = true, iv = true, vi = true, vii = true, viii = true, ix = true, xi = true, xii = true }
local function isWordChar(c)
    if c == nil or c == "" then return false end
    -- any UTF-8 continuation/lead byte belongs to a word: Lua's %w is ASCII-only,
    -- so without this Cyrillic/CJK titles could match inside longer words
    if c:byte(1) >= 128 then return true end
    return c:find("[%w']") ~= nil
end

-- does text name this quest title? plain find with word boundaries; "The Foo" inside
-- "The Foo II" does not count (that's a different quest in the chain)
local function textNamesTitle(text, title)
    local from = 1
    while true do
        local s, e = text:find(title, from, true)
        if not s then return false end
        local beforeOk = s == 1 or not isWordChar(text:sub(s - 1, s - 1))
        local afterOk = e >= #text or not isWordChar(text:sub(e + 1, e + 1))
        if beforeOk and afterOk then
            -- "The Foo II" / "The Foo 2" is a follow-up, not "The Foo"
            local rest = text:sub(e + 1):lower():gsub("^[%s!.,;:]-", "")
            local word = rest:match("^(%w+)") or ""
            if not ROMAN_PARTS[word] and word ~= "2" and word ~= "3" then return true end
        end
        from = s + 1
    end
end

-- every quest ID a step refers to: by element questId, or by the titles its text names
local function stepQuestIds(step)
    local ids, seen = {}, {}
    local function add(id)
        if id and not seen[id] then seen[id] = true; ids[#ids + 1] = id end
    end
    for _, element in ipairs(stepElements(step)) do
        if type(element) == "table" then
            local id = tonumber(element.questId)
            if id then
                add(id)
            elseif type(element.text) == "string" and not element.questId then
                if not TITLE_ENTRIES then buildTitleIndex() end
                local text = element.text:lower():gsub("’", "'")
                for _, entry in ipairs(TITLE_ENTRIES) do
                    if textNamesTitle(text, entry.title) then
                        for i = 1, #entry.ids do add(entry.ids[i]) end
                    end
                end
            end
        end
    end
    return ids
end

---------------------------------------------------------------------------------------------------
-- Jumping the open guide to the quests in the log
---------------------------------------------------------------------------------------------------

-- How a step relates to the quest log:
--   "work"   it turns in / completes a quest you have, or its text names one (that's where you are)
--   "picked" it only accepts a quest you already have (you are past it)
local function stepAgainstLog(step, log)
    local picked = false
    for _, element in ipairs(stepElements(step)) do
        if type(element) == "table" then
            local id = tonumber(element.questId)
            if id and log.ids[id] then
                if element.tag == "accept" then picked = true else return "work" end
            elseif type(element.text) == "string" and not element.questId then
                local text = element.text:lower()
                for _, title in ipairs(log.titles) do
                    if text:find(title, 1, true) then return "work" end
                end
                -- its text names a quest that is in the log under one of our known IDs
                if not TITLE_ENTRIES then buildTitleIndex() end
                for _, entry in ipairs(TITLE_ENTRIES) do
                    if textNamesTitle(text, entry.title) then
                        for i = 1, #entry.ids do
                            if log.ids[entry.ids[i]] then return "work" end
                        end
                    end
                end
            end
        end
    end
    return picked and "picked" or nil
end

-- Steps that name no quest (travel, grind, class tips) only matter for the quests around them:
-- a quest-less step is skippable when everything after it in the guide is skippable too.
local function firstStepWithSomethingToDo(guide)
    local n = #guide.steps
    local allDone, questless = {}, {}
    for i = 1, n do
        local ids = stepQuestIds(guide.steps[i])
        questless[i] = #ids == 0
        allDone[i] = not questless[i]
        for j = 1, #ids do
            if not turnedIn(ids[j]) then allDone[i] = false; break end
        end
    end
    local skippable = {}
    for i = n, 1, -1 do
        if allDone[i] then
            skippable[i] = true
        elseif questless[i] then
            skippable[i] = i == n or skippable[i + 1] == true
        else
            skippable[i] = false
        end
    end
    for i = 1, n do
        if not skippable[i] then return i end
    end
    return n -- everything is done: the last step rounds the bracket off and loads the next one
end

function WFG.Sync(quiet)
    if not rxpReady() then return end
    local guide = RXP.currentGuide
    if not isOurGuide(guide) or type(guide.steps) ~= "table" or #guide.steps == 0 then return end
    local log = readQuestLog()
    local target, why

    if log.count > 0 then
        local lastPicked
        for i, step in ipairs(guide.steps) do
            local hit = stepAgainstLog(step, log)
            if hit == "work" then target = i; why = "the quests in your log"; break end
            if hit == "picked" then lastPicked = i end
        end
        -- only accepted so far: carry on from the step after the last pick-up
        if not target and lastPicked then
            target = math.min(lastPicked + 1, #guide.steps)
            why = "the quests you just picked up"
        end
    end

    if not target then
        -- nothing from the log in this guide: start at the first step that still has something to do
        target = firstStepWithSomethingToDo(guide)
        why = "the first quest you haven't done yet"
    end

    if target and target > 1 and RXP.SetStep then
        RXP.SetStep(target)
        if not quiet then say("skipped what you've done; now on step " .. target .. " (" .. why .. ").") end
    elseif not quiet then
        say("you're at the start of this guide already.")
    end
end

---------------------------------------------------------------------------------------------------
-- Picking a guide
---------------------------------------------------------------------------------------------------

local function playerClass()
    local _, token = UnitClass("player")
    token = tostring(token or "")
    return token:sub(1, 1) .. token:sub(2):lower()
end

local function bracketOf(guide)
    local a, b = tostring(guide.displayname or guide.name or ""):match("(%d+)%-(%d+)")
    return tonumber(a), tonumber(b)
end

local function guideApplies(guide)
    if guide.enabledFor and RXP.applies then
        local ok, res = pcall(RXP.applies, guide.enabledFor)
        if ok and not res then return false end
    end
    if RXP.IsGuideActive then
        local ok, res = pcall(RXP.IsGuideActive, guide)
        if ok and not res then return false end
    end
    return true
end

-- one guide per route (subgroup) for this class: the bracket that fits the level, routes in a stable order
function WFG.ChoicesForMe()
    if not rxpReady() then return {} end
    local group = GROUP_PREFIX .. playerClass()
    local level = UnitLevel("player") or 1
    local best = {}
    for _, guide in ipairs(RXP.guides) do
        if guide.group == group and guideApplies(guide) then
            local a, b = bracketOf(guide)
            if a and b then
                local route = guide.subgroup or "Route"
                local cur = best[route]
                local fits = level >= a and (level < b or (b >= 60 and level >= 60))
                local score = fits and 1000 + a or (a <= level and a or -a)
                if not cur or score > cur.score then best[route] = { guide = guide, score = score, route = route } end
            end
        end
    end
    local list = {}
    for _, v in pairs(best) do table.insert(list, v) end
    table.sort(list, function(x, y)
        local xs = x.route:find("^Start in") and 1 or 0
        local ys = y.route:find("^Start in") and 1 or 0
        if xs ~= ys then return xs < ys end
        return x.route < y.route
    end)
    return list
end

local picker

local function loadAndSync(guide)
    if picker then picker:Hide() end
    WFG.pendingSync = true
    RXP:LoadGuide(guide)
    -- the steps are built during the load: sync once they're there
    C_Timer.After(0.6, function() WFG.pendingSync = false; WFG.Sync(false) end)
end

local function makePicker()
    local ok, f = pcall(CreateFrame, "Frame", "WoWForeverGuidePicker", UIParent, "BasicFrameTemplateWithInset")
    if not ok or not f then
        f = CreateFrame("Frame", "WoWForeverGuidePicker", UIParent, BackdropTemplateMixin and "BackdropTemplate" or nil)
        if f.SetBackdrop then
            f:SetBackdrop({ bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border", tile = true, tileSize = 32, edgeSize = 32, insets = { left = 11, right = 12, top = 12, bottom = 11 } })
        end
    end
    f:SetSize(380, 140)
    f:SetPoint("CENTER", 0, 120)
    f:SetFrameStrata("DIALOG")
    f:EnableMouse(true)
    f:SetMovable(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", f.StartMoving)
    f:SetScript("OnDragStop", f.StopMovingOrSizing)
    table.insert(UISpecialFrames, "WoWForeverGuidePicker")

    f.title = f:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    f.title:SetPoint("TOP", 0, -6)
    f.title:SetText("FuntGuides")

    f.text = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    f.text:SetPoint("TOPLEFT", 18, -34)
    f.text:SetPoint("TOPRIGHT", -18, -34)
    f.text:SetJustifyH("LEFT")

    f.buttons = {}
    f.later = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    f.later:SetSize(110, 22)
    f.later:SetText("Not now")
    f.later:SetScript("OnClick", function() f:Hide() end)
    return f
end

function WFG.ShowPicker(reason)
    if not rxpReady() then
        say("RestedXP isn't loaded yet.")
        return
    end
    picker = picker or makePicker()
    local choices = WFG.ChoicesForMe()
    local level = UnitLevel("player") or 1
    picker.text:SetText((reason or "Pick the guide you want to do.") .. "\nLevel " .. level .. " " .. playerClass() .. ": these are the brackets for your level.")

    for _, b in ipairs(picker.buttons) do b:Hide() end
    local y = -78
    for i, c in ipairs(choices) do
        local b = picker.buttons[i]
        if not b then
            b = CreateFrame("Button", nil, picker, "UIPanelButtonTemplate")
            b:SetHeight(24)
            picker.buttons[i] = b
        end
        b:ClearAllPoints()
        b:SetPoint("TOPLEFT", 18, y)
        b:SetPoint("TOPRIGHT", -18, y)
        b:SetText(c.route .. ":  " .. tostring(c.guide.displayname or c.guide.name))
        b:SetScript("OnClick", function() loadAndSync(c.guide) end)
        b:Show()
        y = y - 28
    end
    if #choices == 0 then
        picker.text:SetText("No WoW Forever guides found for your class. Open RestedXP's guide list and pick one there.")
    end
    picker.later:ClearAllPoints()
    picker.later:SetPoint("BOTTOM", 0, 14)
    picker:SetHeight(math.max(140, -y + 50))
    picker:Show()
end

---------------------------------------------------------------------------------------------------
-- Watching the quest log, and guides opened from RestedXP's own list
---------------------------------------------------------------------------------------------------

local lastCount
local checkQueued = false

local function checkLog()
    checkQueued = false
    local count = readQuestLog().count
    -- had quests, now none (abandoned them all): ask which guide to do
    if lastCount and lastCount > 0 and count == 0 and not UnitAffectingCombat("player") then
        WFG.ShowPicker("Your quest log is empty. Which guide do you want to do?")
    end
    lastCount = count
end

local events = CreateFrame("Frame")
events:RegisterEvent("PLAYER_ENTERING_WORLD")
events:RegisterEvent("QUEST_LOG_UPDATE")
events:SetScript("OnEvent", function(_, event)
    if event == "PLAYER_ENTERING_WORLD" then
        -- the count at login is only remembered: logging in with an empty log doesn't pop the window
        C_Timer.After(3, function() lastCount = readQuestLog().count end)
        if rxpReady() and not WFG.hooked and hooksecurefunc then
            WFG.hooked = true
            -- a WoW Forever guide opened by hand (not the saved one coming back at login) syncs to the log too
            hooksecurefunc(RXP, "LoadGuide", function(_, guide, onLoad)
                if onLoad or WFG.pendingSync then return end
                if isOurGuide(guide) then C_Timer.After(0.6, function() WFG.Sync(false) end) end
            end)
        end
        return
    end
    if lastCount == nil or checkQueued then return end
    checkQueued = true
    -- QUEST_LOG_UPDATE comes in bursts: look once it settles
    C_Timer.After(1, checkLog)
end)

SLASH_WOWFOREVERGUIDE1 = "/wfg"
SlashCmdList.WOWFOREVERGUIDE = function(msg)
    msg = tostring(msg or ""):lower():gsub("^%s+", ""):gsub("%s+$", "")
    if msg == "sync" then
        if isOurGuide(rxpReady() and RXP.currentGuide) then WFG.Sync(false) else say("open a synced guide first (WoW Forever, RestedXP Horde 30-45, FuntGuides Class Quests).") end
    else
        WFG.ShowPicker()
    end
end
