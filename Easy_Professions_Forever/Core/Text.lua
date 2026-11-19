-- Easy Professions (Forever): guide text markup -> game text
-- {i:id:icon:name} item, {s:...} spell/recipe, {q:...} quest, {n:0:faction:name} NPC,
-- {b}...{/b} bold; names of items and spells come from the game (client language)
local _, ns = ...

local ICONS = "Interface\\Icons\\"
local FACTION = {
  horde = "|TInterface\\TargetingFrame\\UI-PVP-Horde:%d:%d:0:0:64:64:2:38:2:38|t",
  alliance = "|TInterface\\TargetingFrame\\UI-PVP-Alliance:%d:%d:0:0:64:64:4:38:2:36|t",
}
local QUALITY = { [0] = "ff9d9d9d", "ffffffff", "ff1eff00", "ff0070dd", "ffa335ee", "ffff8000" }

-- the game gives names in the client language: when English is chosen on another client,
-- the English names of the guide are used instead
function ns.GameNames()
  return not (ns.LANG == "enUS" and ns.ClientLang() ~= "enUS")
end

function ns.ItemName(id, fallback)
  local name, _, quality = ns.GetItemInfo(id)
  if not ns.GameNames() and fallback and fallback ~= "" then name = fallback end
  return name or fallback, QUALITY[quality or 1] or "ffffffff"
end

function ns.SpellName(id, fallback)
  if not ns.GameNames() and fallback and fallback ~= "" then return fallback end
  local name = ns.GetSpellName(id)
  return name or fallback
end

function ns.IconPath(icon)
  if not icon or icon == "" then return "Interface\\Icons\\INV_Misc_QuestionMark" end
  return ICONS .. icon
end

local function icon(ic, size)
  if not ic or ic == "" then return "" end
  return ("|T%s%s:%d:%d:0:0:64:64:5:59:5:59|t "):format(ICONS, ic, size, size)
end

local function token(kind, id, ic, name, size, plain)
  id = tonumber(id) or 0
  if kind == "m" then -- money: amount + gold/silver/copper coin
    local coin = ({ g = "Gold", s = "Silver", c = "Copper" })[ic] or "Copper"
    if plain then return id .. ic end
    return ("|cffffffff%d|r|TInterface\\MoneyFrame\\UI-%sIcon:%d:%d:1:0|t"):format(id, coin, size - 2, size - 2)
  end
  if kind == "i" then
    local n, col = ns.ItemName(id, name)
    if plain then return n end
    return ("%s|c%s|Hitem:%d|h%s|h|r"):format(icon(ic, size), col, id, n)
  elseif kind == "s" then
    local n = ns.SpellName(id, name)
    if plain then return n end
    return ("%s|cff71d5ff|Hspell:%d|h%s|h|r"):format(icon(ic, size), id, n)
  elseif kind == "q" then
    if plain then return name end
    return ("|TInterface\\GossipFrame\\AvailableQuestIcon:%d:%d|t|cffffd100|Hepfquest:%d|h%s|h|r"):format(size, size, id, name)
  elseif kind == "n" then
    if plain then return name end
    local fac = FACTION[ic]
    return (fac and fac:format(size, size) or "") .. "|cff7fe0a0" .. name .. "|r"
  elseif kind == "o" then
    return plain and name or ("|cffd8c48a" .. name .. "|r")
  end
  return name
end

-- markup -> displayable string (plain = names only, no icons/colors)
function ns.Render(text, size, plain)
  if not text then return "" end
  size = size or 14
  text = ns.T(text) -- guide text translated into the chosen language
  text = text:gsub("{b}", plain and "" or "|cffffffff"):gsub("{/b}", plain and "" or "|r")
  text = text:gsub("{(%a):(%d+):([^:]*):(.-)}", function(k, id, ic, name) return token(k, id, ic, name, size, plain) end)
  return text
end

-- tooltips and clicks on the links of a frame's texts
function ns.EnableLinks(frame)
  if not frame.SetHyperlinksEnabled then return end
  frame:EnableMouse(true)
  frame:SetHyperlinksEnabled(true)
  frame:SetScript("OnHyperlinkEnter", function(self, link)
    GameTooltip:SetOwner(self, "ANCHOR_CURSOR_RIGHT")
    local kind, id = link:match("^(%a+):(%d+)")
    if kind == "epfquest" then
      GameTooltip:AddLine(ns.L("Quête", "Quest"), 1, 0.82, 0)
      GameTooltip:AddLine("ID " .. id, 0.7, 0.7, 0.7)
    elseif not pcall(GameTooltip.SetHyperlink, GameTooltip, link) then
      GameTooltip:AddLine(link)
    end
    GameTooltip:Show()
  end)
  frame:SetScript("OnHyperlinkLeave", function() GameTooltip:Hide() end)
  frame:SetScript("OnHyperlinkClick", function(_, link, text)
    if IsShiftKeyDown() and ChatEdit_GetActiveWindow and ChatEdit_GetActiveWindow() then
      local kind, id = link:match("^(%a+):(%d+)")
      local full
      if kind == "item" then full = select(2, ns.GetItemInfo(tonumber(id))) end
      if kind == "spell" then full = ns.GetSpellLink(tonumber(id)) end
      if full then ChatEdit_InsertLink(full) end
    end
  end)
end
