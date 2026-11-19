-- Easy Professions (Forever): data model, skill detection, guide steps
local ADDON, ns = ...
ns.ADDON = ADDON
ns.ICON = "Interface\\AddOns\\Easy_Professions_Forever\\adds\\icon"
ns.VERSION = (C_AddOns and C_AddOns.GetAddOnMetadata or GetAddOnMetadata)(ADDON, "Version") or "1.0"

-- Game API: newer clients moved these into C_Item / C_Spell --------------------------
local C_Item, C_Spell = C_Item, C_Spell
function ns.GetItemInfo(id)
  local fn = (C_Item and C_Item.GetItemInfo) or GetItemInfo
  if not fn then return end
  local ok, name, link, quality = pcall(fn, id)
  if ok then return name, link, quality end
end

-- name of a spell (C_Spell returns a table)
function ns.GetSpellName(id)
  if C_Spell and C_Spell.GetSpellName then
    local ok, name = pcall(C_Spell.GetSpellName, id)
    if ok and name then return name end
  end
  if C_Spell and C_Spell.GetSpellInfo then
    local ok, info = pcall(C_Spell.GetSpellInfo, id)
    if ok and type(info) == "table" then return info.name end
  end
  if GetSpellInfo then
    local ok, name = pcall(GetSpellInfo, id)
    if ok then return name end
  end
end

function ns.GetSpellLink(id)
  local fn = (C_Spell and C_Spell.GetSpellLink) or GetSpellLink
  if not fn then return end
  local ok, link = pcall(fn, id)
  if ok then return link end
end

function ns.GetItemCountRaw(id, bank)
  local fn = (C_Item and C_Item.GetItemCount) or GetItemCount
  if not fn then return 0 end
  local ok, n = pcall(fn, id, bank)
  return ok and n or 0
end

function ns.GetItemIcon(id)
  local fn = (C_Item and C_Item.GetItemIconByID) or GetItemIcon
  if not fn then return end
  local ok, icon = pcall(fn, id)
  if ok then return icon end
end

local L = ns.L

-- Guides ---------------------------------------------------------------------
ns.guides, ns.guideList = {}, {}

-- tab blocks get an id so the chosen tab can be saved
-- route steps inside a tabs block remember it (the tabs are the step's variants)
local function indexTabs(g, blocks, parent)
  for _, b in ipairs(blocks) do
    if b.t == "tabs" then
      g.nTabs = g.nTabs + 1
      b.id = g.nTabs
      for _, pane in ipairs(b.p) do indexTabs(g, pane, b) end
    elseif b.t == "step" then
      b.parentTabs = parent
      indexTabs(g, b.b)
    end
  end
end

function ns.AddGuide(g)
  g.nTabs = 0
  indexTabs(g, g.blocks)
  ns.guides[g.key] = g
  table.insert(ns.guideList, g)
  table.sort(ns.guideList, function(a, b) return a.order < b.order end)
end

ns.CATEGORIES = {
  { key = "craft", fr = "Métiers de production", en = "Crafting professions" },
  { key = "gather", fr = "Métiers de récolte", en = "Gathering professions" },
  { key = "second", fr = "Métiers secondaires", en = "Secondary skills" },
  { key = "other", fr = "Guides", en = "Guides" },
}

-- names of the skill lines (skill window), every client language we know
ns.SKILLS = {
  alchemy = { 2259, "Alchemy", "Alchimie", "Alchemie", "Alquimia", "Alchimia", "Alquimia", "Алхимия" },
  blacksmithing = { 2018, "Blacksmithing", "Forge", "Schmiedekunst", "Herrería", "Forgiatura", "Ferraria", "Кузнечное дело" },
  enchanting = { 7411, "Enchanting", "Enchantement", "Verzauberkunst", "Encantamiento", "Incantamento", "Encantamento", "Наложение чар" },
  engineering = { 4036, "Engineering", "Ingénierie", "Ingenieurskunst", "Ingeniería", "Ingegneria", "Engenharia", "Инженерное дело" },
  leatherworking = { 2108, "Leatherworking", "Travail du cuir", "Lederverarbeitung", "Peletería", "Conciatura", "Couraria", "Кожевничество" },
  tailoring = { 3908, "Tailoring", "Couture", "Schneiderei", "Sastrería", "Sartoria", "Alfaiataria", "Портняжное дело" },
  mining = { 2575, "Mining", "Minage", "Bergbau", "Minería", "Estrazione", "Mineração", "Горное дело" },
  herbalism = { 0, "Herbalism", "Herboristerie", "Kräuterkunde", "Herboristería", "Erbalismo", "Herborismo", "Травничество" },
  skinning = { 8613, "Skinning", "Dépeçage", "Kürschnerei", "Desuello", "Scuoiatura", "Esfolamento", "Снятие шкур" },
  fishing = { 7620, "Fishing", "Pêche", "Angeln", "Pesca", "Pesca", "Pesca", "Рыбная ловля" },
  cooking = { 2550, "Cooking", "Cuisine", "Kochkunst", "Cocina", "Cucina", "Culinária", "Кулинария" },
  firstaid = { 3273, "First Aid", "Secourisme", "Erste Hilfe", "Primeros auxilios", "Primo soccorso", "Primeiros Socorros", "Первая помощь" },
  lockpicking = { 0, "Lockpicking", "Crochetage", "Schlossknacken", "Forzar cerraduras", "Scassinare", "Arrombamento", "Взлом замков" },
}
-- Asian clients
local ASIAN = {
  alchemy = { "연금술", "炼金术", "鍊金術" },
  blacksmithing = { "대장기술", "锻造", "鍛造" },
  enchanting = { "마법부여", "附魔" },
  engineering = { "기계공학", "工程学", "工程學" },
  leatherworking = { "가죽세공", "制皮", "製皮" },
  tailoring = { "재봉술", "裁缝", "裁縫" },
  mining = { "채광", "采矿", "採礦" },
  herbalism = { "약초채집", "草药学", "草藥學" },
  skinning = { "무두질", "剥皮", "剝皮" },
  fishing = { "낚시", "钓鱼", "釣魚" },
  cooking = { "요리", "烹饪", "烹飪" },
  firstaid = { "응급치료", "急救" },
  lockpicking = { "자물쇠 따기", "开锁", "開鎖" },
}
for key, list in pairs(ASIAN) do
  for _, n in ipairs(list) do table.insert(ns.SKILLS[key], n) end
end

-- comparable form of a skill name: lower case, no spaces/punctuation (UTF-8 kept)
local function norm(s)
  return (s:lower():gsub("[%s%p]", ""))
end

local skillByName -- normalised skill line name -> key
local function buildNames()
  skillByName = {}
  for key, t in pairs(ns.SKILLS) do
    for i = 2, #t do skillByName[norm(t[i])] = key end
    if t[1] > 0 then
      local name = ns.GetSpellName(t[1])
      if name then skillByName[norm(name)] = skillByName[norm(name)] or key end
    end
  end
end
function ns.SkillKey(name)
  if not name or name == "" then return end
  if not skillByName then buildNames() end
  return skillByName[norm(name)]
end

-- current skills: key -> { rank, max, name, bonus }
ns.skills = {}
-- skill line ids (C_SkillInfo gives them: no name matching needed)
local SKILL_IDS = { [171] = "alchemy", [164] = "blacksmithing", [333] = "enchanting", [202] = "engineering",
  [165] = "leatherworking", [197] = "tailoring", [186] = "mining", [182] = "herbalism", [393] = "skinning",
  [356] = "fishing", [185] = "cooking", [129] = "firstaid", [633] = "lockpicking" }

-- skill line API: WoW Forever replaced the globals with C_SkillInfo (a table per line)
local SI = C_SkillInfo
local function numLines()
  if SI and SI.GetNumSkillLines then return SI.GetNumSkillLines() or 0 end
  return GetNumSkillLines and GetNumSkillLines() or 0
end
-- name, isHeader, isExpanded, rank, bonus, max, skillID
local function lineInfo(i)
  if SI and SI.GetSkillLineInfo then
    local s = SI.GetSkillLineInfo(i)
    if not s then return end
    local bonus = (s.tempRank or s.numTempPoints or 0) + (s.modifier or s.skillModifier or 0)
    return s.name, s.isHeader, not s.isCollapsed, s.rank or s.skillRank, bonus,
      s.maxRank or s.max or s.skillMaxRank or s.maxSkillRank, s.skillID or s.skillLineID
  end
  local name, header, expanded, rank, temp, modifier, max = GetSkillLineInfo(i)
  return name, header, expanded, rank, (temp or 0) + (modifier or 0), max
end
local function expand(i)
  local fn = (SI and SI.ExpandSkillHeader) or ExpandSkillHeader
  if fn then pcall(fn, i) end
end
local function collapse(i)
  local fn = (SI and SI.CollapseSkillHeader) or CollapseSkillHeader
  if fn then pcall(fn, i) end
end
ns.SkillLineCount, ns.SkillLineInfo = numLines, lineInfo

local scanning
function ns.ScanSkills()
  if scanning then return end
  if not (SI and SI.GetSkillLineInfo) and not (GetNumSkillLines and GetSkillLineInfo) then return end
  scanning = true
  local ok, err = pcall(function()
    -- open the collapsed headers (Professions, Secondary skills...) or their lines stay hidden
    -- (back to front: opening a header adds lines after it)
    local collapsed = {}
    for i = numLines(), 1, -1 do
      local name, header, expanded = lineInfo(i)
      if header and not expanded then
        collapsed[#collapsed + 1] = name
        expand(i)
      end
    end
    local found = {}
    for i = 1, numLines() do
      local name, header, _, rank, bonus, max, id = lineInfo(i)
      if name and not header then
        local key = (id and SKILL_IDS[id]) or ns.SkillKey(name)
        if key then found[key] = { rank = rank or 0, max = max or 0, name = name, bonus = bonus or 0 } end
      end
    end
    -- close again what the player had collapsed (from the bottom, indexes stay valid)
    if #collapsed > 0 then
      for i = numLines(), 1, -1 do
        local name, header, expanded = lineInfo(i)
        if header and expanded then
          for _, c in ipairs(collapsed) do
            if c == name then collapse(i) break end
          end
        end
      end
      -- our own expand/collapse fires SKILL_LINES_CHANGED: ignore it for a moment
      ns.skillToggleTime = GetTime()
    end
    -- an empty list means the client has not sent the skills yet: keep what we had
    if next(found) or numLines() > 0 then
      wipe(ns.skills)
      for k, v in pairs(found) do ns.skills[k] = v end
    end
  end)
  scanning = nil
  if not ok then ns.lastScanError = err end
end

-- the rank shown by an opened profession window (also catches skills the list missed)
function ns.NoteTradeSkill(name, rank, max)
  local key = ns.SkillKey(name)
  if not key or not rank or rank <= 0 then return end
  local s = ns.skills[key]
  if not s then
    ns.skills[key] = { rank = rank, max = max or rank, name = name, bonus = 0 }
  elseif rank > s.rank then
    s.rank = rank
    if max and max > s.max then s.max = max end
  end
end

-- the guide's display name: the skill name of the client, or the French/English title
function ns.GuideName(g)
  local s = g.skill and ns.skills[g.skill]
  if g.skill and g.key == g.skill and s and ns.LANG == ns.ClientLang() then return s.name end
  local en = g.title:gsub(" Leveling Guide.*", ""):gsub(" Guide.*", ""):gsub(": .*", "")
  if ns.LANG == "frFR" and g.titleFR then return g.titleFR end
  return L(en)
end

function ns.SkillOf(g)
  return g and g.skill and ns.skills[g.skill]
end

-- Saved settings --------------------------------------------------------------
local DEFAULTS = {
  tracked = nil,           -- key of the tracked guide
  tabs = {},               -- [guide] = { [tab id] = chosen index }
  tracker = { shown = true, collapsed = false, w = 290, h = 380 },
  browser = { guide = nil },
  minimap = { angle = 205, shown = true },
  autoSwitch = true,       -- follow the profession window that is opened
  bank = true,             -- count the bank in the materials
  lang = "auto",           -- interface and guide language ("auto" = game language)
  theme = "forever",       -- window theme: "forever" (own skin) or "blizzard" (Blizzard Forever)
}

local function fill(dst, src)
  for k, v in pairs(src) do
    if type(v) == "table" then
      if type(dst[k]) ~= "table" then dst[k] = {} end
      fill(dst[k], v)
    elseif dst[k] == nil then
      dst[k] = v
    end
  end
end

-- Tabs ------------------------------------------------------------------------
local faction
function ns.TabIndex(g, b)
  local saved = ns.db.tabs[g.key] and ns.db.tabs[g.key][b.id]
  if saved and b.p[saved] then return saved end
  if b.f then
    faction = faction or (UnitFactionGroup("player") or ""):lower()
    for i, f in ipairs(b.f) do if f == faction then return i end end
  end
  return 1
end

function ns.SetTab(g, b, i)
  ns.db.tabs[g.key] = ns.db.tabs[g.key] or {}
  ns.db.tabs[g.key][b.id] = i
  g.steps = nil
  ns.Fire("TABS", g)
end

-- Steps -----------------------------------------------------------------------
-- a guide is cut into steps (skill ranges) following the chosen tabs:
-- the route steps of the site, or, in sections without them, the h2 section
local function range(r)
  local a, b = (r or ""):match("(%d+)%s*%-%s*(%d+)")
  return tonumber(a), tonumber(b)
end

-- flattens the active path: { block, ... } (tabs replaced by their chosen pane)
local function flatten(g, blocks, out)
  for _, b in ipairs(blocks) do
    if b.t == "tabs" then
      out[#out + 1] = b -- kept, so the step can show a variant picker
      flatten(g, b.p[ns.TabIndex(g, b)] or {}, out)
    else
      out[#out + 1] = b
    end
  end
  return out
end

function ns.Steps(g)
  if g.steps then return g.steps end
  local steps = {}
  local flat = flatten(g, g.blocks, {})
  -- group by h2
  local groups, cur = {}, { head = nil, blocks = {} }
  groups[1] = cur
  for _, b in ipairs(flat) do
    if b.t == "h" and b.l == 2 then
      cur = { head = b, blocks = {} }
      groups[#groups + 1] = cur
    else
      cur.blocks[#cur.blocks + 1] = b
    end
  end
  for _, grp in ipairs(groups) do
    local routeSteps = {}
    if not g.sections then
      for _, b in ipairs(grp.blocks) do if b.t == "step" then routeSteps[#routeSteps + 1] = b end end
    end
    local title = grp.head and grp.head.x
    if #routeSteps > 0 then
      for _, b in ipairs(routeSteps) do
        local from, to = range(b.r)
        if from then
          local pt = b.parentTabs
          steps[#steps + 1] = { from = from, to = to, r = b.r, section = title, head = grp.head,
            blocks = flatten(g, b.b, {}), crafts = b.c, alt = b.a, block = b,
            parentTabs = (pt and not pt.f) and pt or nil }
        end
      end
    elseif grp.head and grp.head.r then
      local from, to = range(grp.head.r)
      steps[#steps + 1] = { from = from, to = to, r = grp.head.r, section = title, head = grp.head,
        blocks = grp.blocks, isSection = true }
    end
  end
  for i, s in ipairs(steps) do s.index = i end
  g.steps = steps
  return steps
end

-- index of the step for a skill rank (the first one not finished)
function ns.CurrentStep(g, rank)
  local steps = ns.Steps(g)
  if #steps == 0 then return nil end
  rank = rank or 0
  for i, s in ipairs(steps) do
    if rank < s.to then return i end
  end
  return #steps, true -- everything done
end

-- crafts left for a step at a rank (estimate: the site counts crafts for the whole range)
function ns.CraftsLeft(step, craft, rank)
  if not rank or rank < step.from then return craft.n end
  if rank >= step.to then return 0 end
  local span = step.to - step.from
  if span <= 0 then return craft.n end
  return math.max(1, math.ceil(craft.n * (step.to - rank) / span))
end

function ns.ItemCount(id)
  if not id then return 0 end
  return ns.GetItemCountRaw(id, ns.db and ns.db.bank) or 0
end

-- Events ----------------------------------------------------------------------
local listeners = {}
function ns.On(event, fn)
  listeners[event] = listeners[event] or {}
  table.insert(listeners[event], fn)
end
function ns.Fire(event, ...)
  for _, fn in ipairs(listeners[event] or {}) do fn(...) end
end

function ns.Track(key)
  ns.db.tracked = key
  ns.Fire("TRACKED", key)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
pcall(frame.RegisterEvent, frame, "TRADE_SKILL_UPDATE")
pcall(frame.RegisterEvent, frame, "CRAFT_UPDATE")
frame:RegisterEvent("SKILL_LINES_CHANGED")
frame:RegisterEvent("CHAT_MSG_SKILL")
frame:RegisterEvent("BAG_UPDATE_DELAYED")
frame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
frame:RegisterEvent("TRADE_SKILL_SHOW")
pcall(frame.RegisterEvent, frame, "CRAFT_SHOW")

local pending = {}
local function later(event, delay)
  if pending[event] then return end
  pending[event] = true
  C_Timer.After(delay or 0.2, function()
    pending[event] = nil
    if event == "SKILLS" then ns.ScanSkills() end
    ns.Fire(event)
  end)
end

-- the guide of an opened profession window
local function autoSwitch(name)
  if not ns.db.autoSwitch or not name then return end
  local key = ns.SkillKey(name)
  if not key then return end
  local cur = ns.guides[ns.db.tracked or ""]
  if cur and cur.skill == key then return end
  for _, g in ipairs(ns.guideList) do
    if g.skill == key and g.key == key then ns.Track(g.key) return end
  end
end

frame:SetScript("OnEvent", function(_, event, arg)
  if event == "ADDON_LOADED" and arg == ADDON then
    EasyProfessionsForeverDB = EasyProfessionsForeverDB or {}
    ns.db = EasyProfessionsForeverDB
    fill(ns.db, DEFAULTS)
    ns.ApplyLanguage(ns.db.lang)
    ns.ApplyTheme(ns.db.theme)
  elseif event == "PLAYER_LOGIN" then
    ns.ScanSkills()
    -- first login: track the most advanced profession that has a guide
    if not ns.db.tracked then
      local best, bestRank
      for _, g in ipairs(ns.guideList) do
        local s = g.key == g.skill and ns.skills[g.skill]
        if s and g.cat ~= "second" and (not bestRank or s.rank > bestRank) then best, bestRank = g.key, s.rank end
      end
      ns.db.tracked = best
    end
    ns.Fire("LOGIN")
    -- the skill list can arrive a little after login
    for _, d in ipairs({ 1, 3, 8 }) do
      C_Timer.After(d, function() ns.ScanSkills(); ns.Fire("SKILLS") end)
    end
  elseif event == "PLAYER_ENTERING_WORLD" then
    later("SKILLS", 0.5)
  elseif event == "SKILL_LINES_CHANGED" or event == "CHAT_MSG_SKILL" then
    if event == "CHAT_MSG_SKILL" or not ns.skillToggleTime or GetTime() - ns.skillToggleTime > 1 then
      later("SKILLS", 0.1)
    end
  elseif event == "BAG_UPDATE_DELAYED" then
    later("BAGS", 0.3)
  elseif event == "GET_ITEM_INFO_RECEIVED" then
    later("ITEMINFO", 0.5)
  elseif event == "TRADE_SKILL_SHOW" or event == "TRADE_SKILL_UPDATE" then
    if GetTradeSkillLine then
      local name, rank, max = GetTradeSkillLine()
      ns.NoteTradeSkill(name, rank, max)
      if event == "TRADE_SKILL_SHOW" then autoSwitch(name) end
      later("SKILLS", 0.1)
    end
  elseif event == "CRAFT_SHOW" or event == "CRAFT_UPDATE" then
    if GetCraftDisplaySkillLine then
      local name, rank, max = GetCraftDisplaySkillLine()
      ns.NoteTradeSkill(name, rank, max)
      if event == "CRAFT_SHOW" then autoSwitch(name) end
      later("SKILLS", 0.1)
    end
  end
end)

-- Slash commands ----------------------------------------------------------------
SLASH_EASYPROFESSIONSFOREVER1 = "/epf"
SLASH_EASYPROFESSIONSFOREVER2 = "/easyprof"
SlashCmdList.EASYPROFESSIONSFOREVER = function(msg)
  msg = (msg or ""):lower():match("^%s*(.-)%s*$")
  if msg == "" or msg == "guides" or msg == "guide" then
    ns.Browser:Toggle()
  elseif msg == "show" or msg == "tracker" or msg == "suivi" then
    ns.Tracker:Toggle()
  elseif msg == "reset" then
    ns.Tracker:ResetPosition()
    ns.Browser:ResetPosition()
  elseif msg == "minimap" then
    ns.db.minimap.shown = not ns.db.minimap.shown
    ns.Minimap:Apply()
  elseif msg == "skills" or msg == "metiers" or msg == "métiers" then
    ns.ScanSkills()
    print("|cffffc83dEasy Professions|r: " .. ns.SkillLineCount() .. " skill lines" .. (C_SkillInfo and " (C_SkillInfo)" or "")
      .. (ns.lastScanError and (" |cffff7b6b" .. tostring(ns.lastScanError) .. "|r") or ""))
    for i = 1, ns.SkillLineCount() do
      local name, header, expanded, rank, _, max, id = ns.SkillLineInfo(i)
      if header then
        print("  |cff8e9ac0[" .. tostring(name) .. "]|r" .. (expanded and "" or " (-)"))
      else
        print("  " .. tostring(name) .. " " .. tostring(rank) .. "/" .. tostring(max) .. (id and (" #" .. id) or ""))
      end
    end
    local list = {}
    for k, v in pairs(ns.skills) do list[#list + 1] = k .. " " .. v.rank .. "/" .. v.max end
    table.sort(list)
    print("  |cffffc83d=>|r " .. (#list > 0 and table.concat(list, ", ") or "-"))
  elseif msg == "auto" then
    ns.db.autoSwitch = not ns.db.autoSwitch
    print("|cffffc83dEasy Professions|r: " .. L("suivi automatique du métier ouvert ", "follow the opened profession ")
      .. (ns.db.autoSwitch and L("activé", "on") or L("désactivé", "off")))
  elseif ns.guides[msg] then
    ns.Track(msg)
  else
    print("|cffffc83dEasy Professions|r /epf : " .. L("guides", "guides") .. " | /epf show : " .. L("fenêtre de suivi", "tracker")
      .. " | /epf auto | /epf minimap | /epf reset")
  end
end
