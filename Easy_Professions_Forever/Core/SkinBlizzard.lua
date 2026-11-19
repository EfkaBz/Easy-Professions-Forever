-- Easy Professions (Forever): "Blizzard Forever" theme (the game's own look: portrait window
-- with the spellbook parchment, dark tooltip boxes with a gold border, game buttons, close
-- buttons and drop-down menus). Chosen in the title bar; applied at ADDON_LOADED (a reload
-- switches theme), it replaces the skin constructors so every window keeps the same calls.
local _, ns = ...
local S = ns.Skin
local C = S.C
local WHITE = "Interface\\Buttons\\WHITE8x8"

S.BLIZZ = false

-- Blizzard colors: gold titles, white text, dark brown boxes, red-brown active pills
local PALETTE = {
  bg1 = { 0.07, 0.055, 0.04, 0.96 }, bg2 = { 0.03, 0.022, 0.015, 0.96 },
  well = { 0.04, 0.03, 0.02, 0.92 },
  trim = { 0.6, 0.5, 0.2, 0.85 }, ring = { 0.9, 0.75, 0.3, 1 },
  rule = { 0.45, 0.37, 0.18, 1 },
  gold = { 1, 0.82, 0, 1 }, accent = { 1, 0.82, 0, 1 },
  text = { 1, 1, 1, 1 }, muted = { 0.72, 0.7, 0.64, 1 }, dim = { 0.86, 0.84, 0.78, 1 },
  good = { 0.25, 1, 0.25, 1 }, bad = { 1, 0.3, 0.3, 1 },
  btn1 = { 0.16, 0.12, 0.08, 1 }, btn2 = { 0.07, 0.05, 0.03, 1 },
  primary1 = { 0.55, 0.1, 0.04, 1 }, primary2 = { 0.3, 0.05, 0.02, 1 },
  pill1 = { 0.55, 0.1, 0.04, 1 }, pill2 = { 0.3, 0.05, 0.02, 1 },
}

-- dark brown ink for text written straight on the parchment
S.INK = { 0.1, 0.05, 0.01, 1 }
function S.Ink(fs)
  if not S.BLIZZ then return fs end
  fs:SetTextColor(S.Color(S.INK))
  fs:SetShadowOffset(0, 0)
  return fs
end

local count = 0
local function uniqueName(kind)
  count = count + 1
  return "EasyProfessionsForever" .. kind .. count
end

local TOOLTIP_BACKDROP = {
  bgFile = WHITE,
  edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
  edgeSize = 12,
  insets = { left = 3, right = 3, top = 3, bottom = 3 },
}
local DIALOG_BACKDROP = {
  bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
  edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Border",
  tile = true, tileSize = 32, edgeSize = 24,
  insets = { left = 6, right = 6, top = 6, bottom = 6 },
}

local function addBackdrop(f, def)
  if not f.SetBackdrop and BackdropTemplateMixin then
    Mixin(f, BackdropTemplateMixin)
    f:HookScript("OnSizeChanged", f.OnBackdropSizeChanged)
  end
  if f.SetBackdrop then f:SetBackdrop(def) return true end
end

local function atlasExists(name)
  return C_Texture and C_Texture.GetAtlasInfo and C_Texture.GetAtlasInfo(name) ~= nil
end

-- one parchment page behind the whole window: the spellbook's left page, cut before the
-- spine and stretched, so there is no fold in the middle
local function parchment(f)
  local page = f:CreateTexture(nil, "BACKGROUND", nil, 2)
  page:SetPoint("TOPLEFT", 4, -22)
  page:SetPoint("BOTTOMRIGHT", -4, 4)
  local info = C_Texture and C_Texture.GetAtlasInfo and C_Texture.GetAtlasInfo("spellbook-background-evergreen-left")
  if type(info) == "table" and info.file then
    local l, r = info.leftTexCoord or 0, info.rightTexCoord or 1
    local t, b = info.topTexCoord or 0, info.bottomTexCoord or 1
    page:SetTexture(info.file)
    page:SetTexCoord(l + (r - l) * 0.04, l + (r - l) * 0.8, t + (b - t) * 0.02, b - (b - t) * 0.02)
  else
    page:SetTexture("Interface\\Spellbook\\Spellbook-Page-1")
    page:SetTexCoord(0.02, 0.7, 0.02, 0.88)
  end
end

-- colors of the big window's content, written in ink on the page
S.PAGE = {
  text = { 0.17, 0.1, 0.03, 1 }, dim = { 0.24, 0.15, 0.06, 1 }, muted = { 0.38, 0.28, 0.16, 1 },
  gold = { 0.52, 0.2, 0, 1 }, accent = { 0.52, 0.2, 0, 1 }, hover = { 0, 0, 0, 1 },
  good = { 0.05, 0.42, 0.05, 1 }, bad = { 0.62, 0.06, 0.02, 1 },
  trim = { 0.42, 0.3, 0.14, 0.6 }, ring = { 0.5, 0.32, 0.1, 1 }, rule = { 0.42, 0.3, 0.14, 0.8 },
  border = { 0.42, 0.3, 0.14, 0.6 },
  well = { 0.35, 0.22, 0.08, 0.1 }, card = { 0.35, 0.22, 0.08, 0.1 },
  btn1 = { 0.45, 0.3, 0.12, 0.16 }, btn2 = { 0.45, 0.3, 0.12, 0.05 },
  pill1 = { 0.55, 0.25, 0.05, 0.28 }, pill2 = { 0.55, 0.25, 0.05, 0.12 },
}

-- light color codes (made for dark boxes) -> darker ones that read on the page
local CODES = {
  ffffffff = "ff2b1a08", ff8e9ac0 = "ff5c4632", ffffc83d = "ff7a3a00", ffff7b6b = "ff9a1a0a",
  ff71d5ff = "ff0b4f8f", ffffd100 = "ff7a4800", ff7fe0a0 = "ff0d5e26", ffd8c48a = "ff5a3a12",
  ff7cdb6b = "ff1a6a10", ff1eff00 = "ff137000", ff9d9d9d = "ff5e5e5e", ffc2c8de = "ff3a2a18",
  ffe6e9f5 = "ff2b1a08",
}
function S.PageCodes(text)
  if type(text) ~= "string" then return text end
  return (text:gsub("|c(%x%x%x%x%x%x%x%x)", function(c) return "|c" .. (CODES[c:lower()] or c) end))
end

-- page text: ink color, no shadow, light codes darkened on every SetText
function S.PageText(fs)
  if not S.BLIZZ or fs.pageText then return fs end
  fs.pageText = true
  fs:SetShadowOffset(0, 0)
  local set = fs.SetText
  fs.SetText = function(self, t) return set(self, S.PageCodes(t)) end
  return fs
end

local function child(f, key)
  local v = rawget(f, key)
  if type(v) == "table" then return v end
end

local function setPortrait(f)
  local pc = child(f, "PortraitContainer")
  local tex = (pc and child(pc, "portrait")) or child(f, "portrait")
  if not tex then
    tex = f:CreateTexture(nil, "OVERLAY")
    tex:SetSize(58, 58)
    tex:SetPoint("TOPLEFT", -5, 7)
  end
  tex:SetTexture(ns.ICON)
  if tex.SetMask then pcall(tex.SetMask, tex, "Interface\\CharacterFrame\\TempPortraitAlphaMask") end
end

-- Constructors -------------------------------------------------------------------
local B = {}

-- dark box with the tooltip border (lists, cards, menus); tiny ones: a 1px gold frame
function B.Rounded(f, r, _, _, border)
  if (r or 12) <= 5 then
    S.Box(f, { PALETTE.pill1, PALETTE.pill2 }, border and PALETTE.ring or PALETTE.trim)
    return f
  end
  if addBackdrop(f, TOOLTIP_BACKDROP) then
    f:SetBackdropColor(0.04, 0.03, 0.02, 0.92)
    f.borders = {}
    f.SetBorderColor = function(self, red, g, b, a) self:SetBackdropBorderColor(red, g, b, a or 1) end
    f:SetBorderColor(S.Color(PALETTE.trim))
  else
    S.Box(f, PALETTE.well, PALETTE.trim)
  end
  return f
end

function B.Shadow(f) return f end
function B.EdgeGlow() end

function B.CloseButton(parent, onClick)
  local b = CreateFrame("Button", nil, parent, "UIPanelCloseButton")
  b:SetSize(26, 26)
  b:SetScript("OnClick", onClick or function() S.Close(parent) end)
  return b
end

function B.Button(parent, text, width, height, onClick)
  local b = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
  b:SetSize(width or 120, height or 24)
  b:SetText((text and text ~= "") and text or " ")
  b.text = child(b, "Text") or b:GetFontString()
  if not b.text then
    b.text = b:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    b.text:SetPoint("CENTER")
    b:SetFontString(b.text)
  end
  b:SetText(text or "")
  b.fitWidth = (width or 120) - 8
  b:SetScript("OnClick", onClick)
  return b
end

-- big windows: portrait frame with the parchment; small ones: dialog box with a title row
function B.Window(name, parent, width, height, title)
  local f
  if width >= 500 then
    local ok, frame = pcall(CreateFrame, "Frame", name, parent or UIParent, "PortraitFrameTemplate")
    if ok then
      f = frame
    else
      f = CreateFrame("Frame", name, parent or UIParent)
      addBackdrop(f, DIALOG_BACKDROP)
    end
    setPortrait(f)
    parchment(f)
    f.portraitFrame = true
    -- the title band (drag handle) runs from the portrait to the close button
    local bar = CreateFrame("Frame", nil, f)
    bar:SetPoint("TOPLEFT", 58, 0)
    bar:SetPoint("TOPRIGHT", -26, 0)
    bar:SetHeight(22)
    f.titleBar = bar
    local tc = child(f, "TitleContainer")
    local t = child(f, "TitleText") or (tc and child(tc, "TitleText"))
    if not t then
      t = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
      t:SetPoint("TOP", 0, -5)
    end
    f.title = t
  else
    f = CreateFrame("Frame", name, parent or UIParent)
    addBackdrop(f, DIALOG_BACKDROP)
    local bar = CreateFrame("Frame", nil, f)
    bar:SetPoint("TOPLEFT", 8, -6)
    bar:SetPoint("TOPRIGHT", -8, -6)
    bar:SetHeight(28)
    f.titleBar = bar
    f.title = bar:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    f.title:SetPoint("LEFT", 8, -2)
  end
  f.title:SetText(title or "")
  f.close = child(f, "CloseButton")
  if not f.close then
    f.close = B.CloseButton(f)
    f.close:SetPoint("TOPRIGHT", -4, -4)
  end
  f.close:SetScript("OnClick", function() S.Close(f) end)
  f:SetSize(width, height)
  f:EnableMouse(true)
  f:SetClampedToScreen(true)
  f:HookScript("OnShow", function(self) S.AnimateOpen(self, self.openDX, self.openDY) end)
  return f
end

-- the game's drop-down menu; options = { {value, button text, menu text, language of its font} }
function B.Dropdown(parent, options, width, _, getValue, onSelect, tooltip)
  local name = uniqueName("DropDown")
  local dd = CreateFrame("Frame", name, parent, "UIDropDownMenuTemplate")
  UIDropDownMenu_SetWidth(dd, math.max(44, width - 20))
  local function refresh()
    local v = getValue()
    for _, o in ipairs(options) do
      if o[1] == v then UIDropDownMenu_SetText(dd, o[2]) end
    end
  end
  UIDropDownMenu_Initialize(dd, function(_, level)
    local v = getValue()
    for _, o in ipairs(options) do
      local info = UIDropDownMenu_CreateInfo()
      info.text, info.value, info.checked = o[3] or o[2], o[1], o[1] == v
      -- each language is written in its own alphabet
      if o[4] then info.fontObject = S.Font(12, o[4]) end
      info.func = function()
        CloseDropDownMenus()
        onSelect(o[1])
        refresh()
      end
      UIDropDownMenu_AddButton(info, level)
    end
  end)
  local btn = child(dd, "Button") or _G[name .. "Button"]
  if tooltip and btn then
    btn:HookScript("OnEnter", function(self)
      GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
      GameTooltip:AddLine(tooltip, 1, 1, 1)
      GameTooltip:Show()
    end)
    btn:HookScript("OnLeave", function() GameTooltip:Hide() end)
  end
  function dd:SetText(t) UIDropDownMenu_SetText(self, t) end
  dd.Refresh = refresh
  refresh()
  return dd
end

function ns.ApplyTheme(theme)
  if theme ~= "blizzard" then return end
  S.BLIZZ = true
  for k, v in pairs(PALETTE) do C[k] = v end
  C.border, C.card, C.bg = C.trim, C.well, C.bg2
  for k, fn in pairs(B) do S[k] = fn end
end
