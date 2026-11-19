-- Easy Professions (Forever): "Bug" button (Discord link) and language menu
local _, ns = ...
local L, S = ns.L, ns.Skin
local C, color = S.C, S.Color
local PAD = 14

-- Bug report -----------------------------------------------------------------
-- the game can't open links: the Discord invite is shown selected, ready for Ctrl+C
ns.DISCORD = "https://discord.com/invite/2WXxyC84NJ"
local bugWin
local function buildBug()
  local BW, BH = 440, 150
  local f = S.Window("EasyProfessionsForeverBug", UIParent, BW, BH, L("Report a bug"))
  bugWin = f
  f:SetFrameStrata("DIALOG")
  f:SetToplevel(true)
  f:SetPoint("CENTER", 0, 80)
  S.Draggable(f, f.titleBar)
  tinsert(UISpecialFrames, "EasyProfessionsForeverBug")

  local hint = S.Text(f, 12, "muted")
  hint:SetPoint("TOPLEFT", PAD + 2, -50)
  hint:SetText(L("Report a bug on Discord: press Ctrl+C to copy the link."))
  S.FitText(hint, BW - 2 * PAD - 4, 12)

  local box = CreateFrame("Frame", nil, f)
  box:SetPoint("TOPLEFT", PAD, -72)
  box:SetPoint("TOPRIGHT", -PAD, -72)
  box:SetHeight(30)
  S.Rounded(box, 6, C.well, { 0.01, 0.02, 0.07, 1 }, C.trim)
  local glow = box:CreateTexture(nil, "ARTWORK")
  glow:SetPoint("TOPLEFT", 2, -2); glow:SetPoint("BOTTOMRIGHT", -2, 2)
  S.Gradient(glow, { C.gold[1], C.gold[2], C.gold[3], 0 }, { C.gold[1], C.gold[2], C.gold[3], 0.2 })
  glow:SetBlendMode("ADD")
  glow:SetAlpha(0)

  local e = CreateFrame("EditBox", nil, box)
  e:SetPoint("TOPLEFT", 10, 0)
  e:SetPoint("BOTTOMRIGHT", -10, 0)
  e:SetAutoFocus(false)
  e:SetFontObject(S.Font(13))
  e:SetTextColor(color(C.gold))
  f.edit = e
  local function selectAll() e:SetFocus(); e:HighlightText() end
  e:SetScript("OnTextChanged", function(self, user)
    if user and self:GetText() ~= ns.DISCORD then self:SetText(ns.DISCORD); self:HighlightText() end
  end)
  e:SetScript("OnEditFocusGained", function(self) self:HighlightText() end)
  e:SetScript("OnMouseUp", selectAll)
  e:SetScript("OnEscapePressed", function() S.AnimateClose(f) end)
  e:SetScript("OnEnterPressed", function() S.AnimateClose(f) end)

  local copied = S.Text(f, 13, "good")
  copied:SetPoint("BOTTOMLEFT", PAD + 2, 18)
  copied:SetText(L("Copied!"))
  copied:SetAlpha(0)
  e:HookScript("OnKeyDown", function(_, key)
    if key == "C" and IsControlKeyDown() then
      copied:SetAlpha(1)
      glow:SetAlpha(1)
      S.FadeTo(glow, 0, 0.8)
      S.Tween(copied, { dur = 1.6, from = 1, to = 0, ease = "inOutCubic", set = function(v) copied:SetAlpha(v) end })
    end
  end)

  local close = S.Button(f, CLOSE or "Close", 110, 24, function() S.AnimateClose(f) end, true)
  close:SetPoint("BOTTOMRIGHT", -PAD, 12)
  f:HookScript("OnHide", function() e:ClearFocus() end)
  f:Hide()
end

function ns.ReportBug()
  if not bugWin then buildBug() end
  bugWin.edit:SetText(ns.DISCORD)
  bugWin:Show()
  C_Timer.After(0.05, function() bugWin.edit:SetFocus(); bugWin.edit:HighlightText() end)
end

function ns.BugButton(parent)
  local bug = S.Button(parent, L("Bug"), 44, 20, function() ns.ReportBug() end)
  bug:HookScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
    GameTooltip:AddLine(L("Report a bug"), 1, 1, 1)
    GameTooltip:AddLine(L("Copy the link of the Discord server"), 0.47, 0.9, 1)
    GameTooltip:Show()
  end)
  bug:HookScript("OnLeave", function() GameTooltip:Hide() end)
  return bug
end

-- Language -------------------------------------------------------------------
-- menu with Auto + every language (each written in its own alphabet); picking another
-- language asks to reload the interface in a small custom window
local reloadWin
local function confirmReload(value, key, message)
  if not reloadWin then
    local RW, RH = 400, 130
    local f = S.Window("EasyProfessionsForeverReload", UIParent, RW, RH, L("Language"))
    reloadWin = f
    f:SetFrameStrata("FULLSCREEN_DIALOG")
    f:SetToplevel(true)
    f:SetPoint("CENTER", 0, 80)
    S.Draggable(f, f.titleBar)
    tinsert(UISpecialFrames, "EasyProfessionsForeverReload")
    local msg = S.Text(f, 13, "text")
    msg:SetPoint("TOPLEFT", PAD + 2, -52)
    msg:SetPoint("TOPRIGHT", -PAD - 2, -52)
    msg:SetJustifyH("CENTER")
    f.msg = msg
    local ok = S.Button(f, L("Reload"), 130, 26, function()
      ns.db[f.key] = f.value
      ReloadUI()
    end, true)
    ok:SetPoint("BOTTOMRIGHT", f, "BOTTOM", -4, 14)
    local cancel = S.Button(f, L("Cancel"), 130, 26, function() S.AnimateClose(f) end)
    cancel:SetPoint("BOTTOMLEFT", f, "BOTTOM", 4, 14)
    f:Hide()
  end
  reloadWin.value, reloadWin.key = value, key or "lang"
  reloadWin.msg:SetText(message or L("The interface will be reloaded to apply the language."))
  reloadWin:Show()
end

function ns.LanguageSelector(parent)
  local options = { { "auto", L("Auto"), L("Automatic (game language)") } }
  for _, l in ipairs(ns.LANGS) do options[#options + 1] = { l[1], l[2], l[3], l[1] } end
  return S.Dropdown(parent, options, 52, 180, function() return ns.db.lang or "auto" end, function(value)
    if (ns.db.lang or "auto") ~= value then confirmReload(value) end
  end, L("Language"))
end

-- window theme: Forever (the addon's own skin) or Blizzard Forever (the game's frames)
function ns.ThemeSelector(parent)
  local options = {
    { "forever", "Forever", L("Forever (default)") },
    { "blizzard", "Blizzard", "Blizzard Forever" },
  }
  return S.Dropdown(parent, options, 84, 180, function() return ns.db.theme or "forever" end, function(value)
    if (ns.db.theme or "forever") ~= value then
      confirmReload(value, "theme", L("The interface will be reloaded to apply the theme."))
    end
  end, L("Theme"))
end
