-- Easy Professions (Forever): big window, every guide of wow-professions.com/forever
local _, ns = ...
local L, S = ns.L, ns.Skin
local color = S.Color
-- palette: the skin's, or the ink colors of the page (Blizzard Forever theme)
local WHITE = { 1, 1, 1, 1 }
local C = setmetatable({}, { __index = function(_, k)
  if S.BLIZZ and S.PAGE[k] then return S.PAGE[k] end
  if k == "hover" then return S.C.hover or WHITE end
  return S.C[k]
end })
local function Text(parent, size, col, ...)
  local fs = S.Text(parent, size, col, ...)
  fs:SetTextColor(color(C[col or "text"]))
  return S.PageText(fs)
end

local B = {}
ns.Browser = B

local W, H, NAV_W, HEAD_H = 960, 640, 236, 96
local MIN_W, MIN_H, MAX_W, MAX_H = 800, 460, 1800, 1200
local NAV_ROW = 28

-- Waypoints: TomTom, or the game's own map pin -------------------------------------------
function ns.SetWaypoint(m)
  local x, y = m.x / 100, m.y / 100
  local title = m.n ~= "" and m.n or m.z
  if TomTom and TomTom.AddWaypoint then
    pcall(TomTom.AddWaypoint, TomTom, m.m, x, y, { title = title, from = "Easy Professions" })
  elseif C_Map and C_Map.SetUserWaypoint and UiMapPoint then
    local ok = pcall(function()
      C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(m.m, x, y))
      if C_SuperTrack and C_SuperTrack.SetSuperTrackedUserWaypoint then C_SuperTrack.SetSuperTrackedUserWaypoint(true) end
    end)
    if not ok then return end
  end
  print(("|cffffc83dEasy Professions|r: %s %s (%.1f, %.1f)"):format(L("repère placé :", "waypoint set:"), title, m.x, m.y))
end

-- Pools: regions drawn on the scroll content, reused at every render --------------------------
local pool = {}
local function acquire(kind, make)
  local p = pool[kind]
  if not p then p = { used = 0, list = {} }; pool[kind] = p end
  p.used = p.used + 1
  local o = p.list[p.used]
  if not o then o = make(); p.list[p.used] = o end
  o:Show()
  return o
end
local function releaseAll()
  for _, p in pairs(pool) do
    for i = 1, #p.list do p.list[i]:Hide() end
    p.used = 0
  end
end

-- Window ----------------------------------------------------------------------------
function B:Create()
  local f = S.Window("EasyProfessionsForeverBrowser", UIParent, W, H,
    "Easy Professions |cff8e9ac0Forever|r")
  local bw, bh = ns.db.browser.w, ns.db.browser.h
  if bw and bh then
    f:SetSize(math.max(MIN_W, math.min(MAX_W, bw)), math.max(MIN_H, math.min(MAX_H, bh)))
  end
  f:SetResizable(true)
  if f.SetResizeBounds then f:SetResizeBounds(MIN_W, MIN_H, MAX_W, MAX_H)
  elseif f.SetMinResize then f:SetMinResize(MIN_W, MIN_H); f:SetMaxResize(MAX_W, MAX_H) end
  f:SetFrameStrata("HIGH")
  f:SetToplevel(true)
  f:Hide()
  tinsert(UISpecialFrames, "EasyProfessionsForeverBrowser")
  S.Draggable(f, f.titleBar, function(self)
    local p, _, rp, x, y = self:GetPoint(1)
    ns.db.browser.pos = { p, rp, x, y }
  end)
  f.close:SetScript("OnClick", function() B:Toggle(false) end)
  self.frame = f
  self:ResetPosition(true)

  local blizz = S.BLIZZ
  -- top of the content: under the title bar, or under the portrait (Blizzard Forever theme)
  local TOP = blizz and -62 or -46
  local bug, lang, theme
  if blizz then
    -- Blizzard Forever: the portrait shows the icon; tools on the parchment, right of the portrait
    local tools = CreateFrame("Frame", nil, f)
    tools:SetPoint("TOPLEFT", 64, -24)
    tools:SetPoint("TOPRIGHT", -8, -24)
    tools:SetHeight(34)
    bug = ns.BugButton(tools)
    bug:SetPoint("RIGHT", -4, 0)
    lang = ns.LanguageSelector(tools)
    lang:SetPoint("RIGHT", bug, "LEFT", 8, -2)
    theme = ns.ThemeSelector(tools)
    theme:SetPoint("RIGHT", lang, "LEFT", 22, 0)
    f.version = Text(tools, 11, "muted")
    f.version:SetPoint("RIGHT", theme, "LEFT", 6, 2)
    S.Ink(f.version)
  else
    -- addon icon in the title bar, slightly over the window edge
    local logo = f.titleBar:CreateTexture(nil, "OVERLAY")
    logo:SetTexture(ns.ICON)
    logo:SetSize(46, 46)
    logo:SetPoint("LEFT", 2, 4)
    f.title:ClearAllPoints()
    f.title:SetPoint("LEFT", logo, "RIGHT", 6, -3)

    -- Bug (Discord), language and theme menus, left of the close button
    bug = ns.BugButton(f.titleBar)
    bug:SetPoint("RIGHT", f.close, "LEFT", -6, 0)
    bug:SetFrameLevel(f.titleBar:GetFrameLevel() + 5) -- above the title bar, which takes the mouse for dragging
    lang = ns.LanguageSelector(f.titleBar)
    lang:SetPoint("RIGHT", bug, "LEFT", -6, 0)
    lang:SetFrameLevel(f.titleBar:GetFrameLevel() + 5)
    theme = ns.ThemeSelector(f.titleBar)
    theme:SetPoint("RIGHT", lang, "LEFT", -6, 0)
    theme:SetFrameLevel(f.titleBar:GetFrameLevel() + 5)
    f.version = Text(f.titleBar, 11, "muted")
    f.version:SetPoint("RIGHT", theme, "LEFT", -10, 0)
  end
  f.version:SetText(L("Données : wow-professions.com/forever", "Data: wow-professions.com/forever") .. "   v" .. ns.VERSION)

  -- left: guide list
  local nav = CreateFrame("Frame", nil, f)
  nav:SetPoint("TOPLEFT", 10, TOP)
  nav:SetPoint("BOTTOMLEFT", 10, 12)
  nav:SetWidth(NAV_W - 14)
  if not blizz then S.Rounded(nav, 8, C.well, { 0.03, 0.02, 0.015, 1 }, C.rule) end
  self.nav = nav
  local sf, content = S.Scroll(nav)
  sf:SetPoint("TOPLEFT", 6, -8)
  sf:SetPoint("BOTTOMRIGHT", -12, 8)
  content:SetWidth(NAV_W - 32)
  self.navContent = content
  self:BuildNav()

  -- right: guide header + content
  local right = CreateFrame("Frame", nil, f)
  if blizz then
    -- straight on the page, a thin ink line between the list and the guide
    right:SetPoint("TOPLEFT", NAV_W + 14, TOP)
    right:SetPoint("BOTTOMRIGHT", -18, 16)
    local sep = f:CreateTexture(nil, "BORDER")
    sep:SetPoint("TOPLEFT", right, "TOPLEFT", -10, 0)
    sep:SetPoint("BOTTOMLEFT", right, "BOTTOMLEFT", -10, 0)
    sep:SetWidth(1)
    sep:SetColorTexture(color(C.trim))
  else
    right:SetPoint("TOPLEFT", NAV_W + 6, TOP)
    right:SetPoint("BOTTOMRIGHT", -12, 12)
  end
  self.right = right

  local head = CreateFrame("Frame", nil, right)
  head:SetPoint("TOPLEFT")
  head:SetPoint("TOPRIGHT")
  head:SetHeight(HEAD_H)
  self.head = head
  head.icon = S.Icon(head, 44)
  head.icon:SetPoint("TOPLEFT", 4, -4)
  head.title = Text(head, 18, "gold")
  head.title:SetPoint("TOPLEFT", head.icon, "TOPRIGHT", 12, -2)
  head.sub = Text(head, 11, "muted")
  head.sub:SetPoint("TOPLEFT", head.title, "BOTTOMLEFT", 0, -5)
  head.sub:SetPoint("RIGHT", -300, 0)
  head.sub:SetWordWrap(false)

  head.track = S.Button(head, "", 150, 26, function() B:ToggleTrack() end, true)
  head.track:SetPoint("TOPRIGHT", -4, -4)
  head.mine = S.Button(head, L("Aller à mon étape", "Go to my step"), 140, 26, function() B:ScrollToStep() end)
  head.mine:SetPoint("RIGHT", head.track, "LEFT", -8, 0)

  head.bar = S.ProgressBar(head, 10)
  head.bar:SetPoint("BOTTOMLEFT", 4, 14)
  head.bar:SetPoint("RIGHT", -230, 0)
  head.barText = Text(head, 11, "dim")
  head.barText:SetPoint("BOTTOMLEFT", head.bar, "TOPLEFT", 0, 4)


  local rule = S.Rule(head, C.ring, 0.6)
  rule:SetPoint("BOTTOMLEFT", 0, 0)
  rule:SetPoint("BOTTOMRIGHT", 0, 0)

  local sf2, body = S.Scroll(right)
  sf2:SetPoint("TOPLEFT", head, "BOTTOMLEFT", 0, -8)
  sf2:SetPoint("BOTTOMRIGHT", -10, 0)
  self.scroll, self.body = sf2, body
  ns.EnableLinks(body)
  sf2:SetScript("OnSizeChanged", function(_, w) body:SetWidth(w) end)

  -- resize grip in the bottom-right corner (same dots as the tracker); the guide is
  -- laid out again for the new width a moment after the size stops changing
  local grip = CreateFrame("Button", nil, f)
  grip:SetSize(16, 16)
  grip:SetPoint("BOTTOMRIGHT", -4, 4)
  grip:SetFrameLevel(f:GetFrameLevel() + 20)
  for _, p in ipairs({ { 11, 3 }, { 7, 3 }, { 11, 7 }, { 3, 3 }, { 7, 7 }, { 11, 11 } }) do
    local d = grip:CreateTexture(nil, "OVERLAY")
    d:SetTexture(S.MEDIA .. "Dot")
    d:SetSize(3, 3)
    d:SetPoint("BOTTOMLEFT", p[1], p[2])
    d:SetVertexColor(color(C.trim))
  end
  grip:SetScript("OnEnter", function(self) for _, d in ipairs({ self:GetRegions() }) do d:SetVertexColor(color(C.gold)) end end)
  grip:SetScript("OnLeave", function(self) for _, d in ipairs({ self:GetRegions() }) do d:SetVertexColor(color(C.trim)) end end)
  grip:SetScript("OnMouseDown", function()
    -- keep the top-left corner in place while the bottom-right one follows the mouse
    local l, t = f:GetLeft(), f:GetTop()
    f:ClearAllPoints()
    f:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", l, t)
    f:StartSizing("BOTTOMRIGHT")
  end)
  grip:SetScript("OnMouseUp", function()
    f:StopMovingOrSizing()
    ns.db.browser.w, ns.db.browser.h = math.floor(f:GetWidth() + 0.5), math.floor(f:GetHeight() + 0.5)
    local p, _, rp, x, y = f:GetPoint(1)
    ns.db.browser.pos = { p, rp, x, y }
    B:Relayout()
  end)
  self.grip = grip
  f:HookScript("OnSizeChanged", function()
    if B.relayoutPending then return end
    B.relayoutPending = true
    C_Timer.After(0.15, function() B.relayoutPending = nil; B:Relayout() end)
  end)
end

-- guide laid out again for a new window width, at the same scroll position
function B:Relayout()
  local f = self.frame
  if not f or not f:IsShown() or not self.selected then return end
  local g = ns.guides[self.selected]
  if not g then return end
  local w = math.floor(f:GetWidth() + 0.5)
  if self.laidOutWidth == w and self.laidOutHeight == math.floor(f:GetHeight() + 0.5) then return end
  self.laidOutWidth, self.laidOutHeight = w, math.floor(f:GetHeight() + 0.5)
  self:RenderHead(g)
  local keep = self.scroll:GetVerticalScroll()
  self:Render(g)
  C_Timer.After(0, function() self.scroll.bar:SetValue(keep) end)
end

function B:ResetPosition(keep)
  local f = self.frame
  if not f then return end
  local pos = keep and ns.db.browser.pos
  if not keep then ns.db.browser.pos = nil end
  f:ClearAllPoints()
  if pos then f:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4]) else f:SetPoint("CENTER", 0, 20) end
  f.home = nil
end

function B:Toggle(show)
  if not self.frame then self:Create() end
  local f = self.frame
  if show == nil then show = not f:IsShown() end
  if show then
    if not f:IsShown() then f:Show() end
    self:Select(self.selected or ns.db.browser.guide or ns.db.tracked or ns.guideList[1].key)
  else
    S.AnimateClose(f, 0, -12)
  end
end

-- open on a guide (and a step of it)
function B:Open(key, stepIndex)
  self:Toggle(true)
  if key then self:Select(key) end
  if stepIndex then self:ScrollToStep(stepIndex) end
end

-- Navigation list -----------------------------------------------------------------------
function B:BuildNav()
  local content, y = self.navContent, 0
  self.navRows = {}
  for _, cat in ipairs(ns.CATEGORIES) do
    local any = false
    for _, g in ipairs(ns.guideList) do if g.cat == cat.key then any = true end end
    if any then
      local h = S.Section(content, L(cat.en))
      h:SetPoint("TOPLEFT", 4, -y - 4)
      h:SetPoint("TOPRIGHT", -2, -y - 4)
      y = y + 30
      for _, g in ipairs(ns.guideList) do
        if g.cat == cat.key then
          local r = CreateFrame("Button", nil, content)
          r:SetHeight(NAV_ROW)
          r:SetPoint("TOPLEFT", 0, -y)
          r:SetPoint("TOPRIGHT", 0, -y)
          S.RowHighlight(r)
          r.sel = r:CreateTexture(nil, "BACKGROUND")
          r.sel:SetAllPoints()
          S.Gradient(r.sel, { 1, 0.8, 0.25, 0.22 }, { 1, 0.8, 0.25, 0.02 }, true)
          r.selBar = r:CreateTexture(nil, "ARTWORK")
          r.selBar:SetPoint("TOPLEFT"); r.selBar:SetPoint("BOTTOMLEFT"); r.selBar:SetWidth(2)
          r.selBar:SetColorTexture(color(C.gold))
          r.icon = S.Icon(r, 20)
          r.icon:SetPoint("LEFT", 8, 0)
          r.icon.tex:SetTexture(g.icon)
          r.name = Text(r, 12, "text")
          r.name:SetPoint("LEFT", r.icon, "RIGHT", 8, 0)
          r.name:SetWordWrap(false)
          r.skill = Text(r, 11, "muted")
          r.skill:SetPoint("RIGHT", -6, 0)
          r.skill:SetJustifyH("RIGHT")
          r.track = r:CreateTexture(nil, "OVERLAY")
          r.track:SetTexture(S.MEDIA .. "Dot")
          r.track:SetSize(6, 6)
          r.track:SetPoint("CENTER", r.icon, "TOPRIGHT", -1, -1)
          r.track:SetVertexColor(color(C.good))
          r.guide = g
          r:SetScript("OnClick", function() B:Select(g.key) end)
          r:HookScript("OnEnter", function(self)
            self.name:SetTextColor(color(C.hover))
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:AddLine(ns.GuideName(g), 1, 0.78, 0.24)
            GameTooltip:AddLine(g.title, 0.9, 0.9, 0.9)
            if ns.db.tracked == g.key then GameTooltip:AddLine(L("Guide suivi", "Tracked guide"), 0.49, 0.86, 0.42) end
            GameTooltip:Show()
          end)
          r:HookScript("OnLeave", function(self)
            GameTooltip:Hide()
            B:PaintNav()
          end)
          table.insert(self.navRows, r)
          y = y + NAV_ROW
        end
      end
      y = y + 6
    end
  end
  content:SetHeight(y)
end

function B:PaintNav()
  if not self.navRows then return end
  for _, r in ipairs(self.navRows) do
    local g = r.guide
    local on = g.key == self.selected
    r.sel:SetShown(on)
    r.selBar:SetShown(on)
    r.name:SetText(ns.GuideName(g))
    r.name:SetTextColor(color(on and C.gold or C.text))
    local s = ns.SkillOf(g)
    r.skill:SetText(s and (s.rank .. "|cff8c6a24/" .. s.max .. "|r") or "")
    r.name:SetPoint("RIGHT", r.skill, "LEFT", -4, 0)
    r.track:SetShown(ns.db.tracked == g.key)
  end
end

-- Guide -------------------------------------------------------------------------------
function B:Select(key)
  local g = ns.guides[key]
  if not g then return end
  local same = self.selected == key
  self.selected = key
  ns.db.browser.guide = key
  self:PaintNav()
  self:RenderHead(g)
  local keep = same and self.scroll:GetVerticalScroll() or 0
  self:Render(g)
  if same then
    C_Timer.After(0, function() self.scroll.bar:SetValue(keep) end)
  else
    self.scroll.bar:SetValue(0)
    S.StopTween(self.body)
    self.body:SetAlpha(0)
    S.FadeTo(self.body, 1, 0.25)
  end
end

function B:RenderHead(g)
  local head = self.head
  head.icon.tex:SetTexture(g.icon)
  head.title:SetText(ns.GuideName(g))
  head.sub:SetText(g.title .. "  |cff8c6a24-|r  " .. g.url:gsub("https://www%.", ""))
  local tracked = ns.db.tracked == g.key
  local steps = ns.Steps(g)
  head.track:SetShown(#steps > 0)
  head.track:SetText(tracked and L("Suivi en cours", "Tracking") or L("Suivre ce guide", "Track this guide"))
  local s = ns.SkillOf(g)
  head.mine:SetShown(#steps > 0)
  if s then
    head.barText:SetText(("%s : |cffffffff%d|r / %d"):format(ns.GuideName(g), s.rank, s.max))
    head.bar:SetMinMaxValues(0, 300)
    head.bar:SetValue(s.rank)
    head.bar:Show()
  elseif g.skill then
    head.barText:SetText(L("|cffff7b6bTu n'as pas encore appris ce métier.|r", "|cffff7b6bYou have not learned this profession yet.|r"))
    head.bar:SetMinMaxValues(0, 300); head.bar:SetValue(0)
    head.bar:Show()
  else
    head.barText:SetText(L("Guide de référence", "Reference guide"))
    head.bar:Hide()
  end
end

function B:ToggleTrack()
  local g = ns.guides[self.selected or ""]
  if not g then return end
  if ns.db.tracked == g.key then ns.Track(nil) else ns.Track(g.key) end
end

-- Content renderer ------------------------------------------------------------------------
local PAD_X = 6

local function newText(body)
  local fs = body:CreateFontString(nil, "OVERLAY")
  fs:SetJustifyH("LEFT")
  fs:SetJustifyV("TOP")
  fs:SetShadowColor(0, 0, 0, 0.9)
  fs:SetShadowOffset(1, -1)
  return S.PageText(fs)
end

local function newTex(body, layer, sub)
  return body:CreateTexture(nil, layer or "BACKGROUND", nil, sub or 0)
end

function B:Text(x, y, w, text, size, col, spacing)
  local fs = acquire("text", function() return newText(self.body) end)
  fs:SetFontObject(S.Font(size or 12))
  fs:SetJustifyH("LEFT")
  fs:SetTextColor(color(C[col or "text"]))
  fs:SetSpacing(spacing or 2)
  fs:ClearAllPoints()
  fs:SetPoint("TOPLEFT", x, -y)
  fs:SetWidth(w)
  fs:SetHeight(0)
  fs:SetWordWrap(true)
  fs:SetText(text)
  return fs, fs:GetStringHeight()
end

function B:Rect(x, y, w, h, c, layer, sub)
  local t = acquire("rect" .. (layer or "BACKGROUND") .. (sub or 0), function() return newTex(self.body, layer, sub) end)
  t:ClearAllPoints()
  t:SetPoint("TOPLEFT", x, -y)
  t:SetSize(math.max(1, w), math.max(1, h))
  t:SetTexture("Interface\\Buttons\\WHITE8x8")
  t:SetVertexColor(1, 1, 1, 1)
  t:SetColorTexture(c[1], c[2], c[3], c[4] or 1)
  return t
end

function B:Grad(x, y, w, h, c1, c2, horizontal, layer, sub)
  local t = acquire("grad" .. (layer or "BACKGROUND") .. (sub or 0), function() return newTex(self.body, layer, sub) end)
  t:ClearAllPoints()
  t:SetPoint("TOPLEFT", x, -y)
  t:SetSize(math.max(1, w), math.max(1, h))
  S.Gradient(t, c1, c2, horizontal)
  return t
end

-- outlined panel: background + 1px frame
function B:Panel(x, y, w, h, bg, border, sub)
  self:Rect(x, y, w, h, bg, "BACKGROUND", sub or 1)
  local b = border
  self:Rect(x, y, w, 1, b, "BORDER", 1)
  self:Rect(x, y + h - 1, w, 1, b, "BORDER", 1)
  self:Rect(x, y, 1, h, b, "BORDER", 1)
  self:Rect(x + w - 1, y, 1, h, b, "BORDER", 1)
end

function B:TabButton(x, y, text, active, onClick)
  local b = acquire("tab", function()
    local btn = CreateFrame("Button", nil, self.body)
    btn:SetHeight(22)
    btn.bg = btn:CreateTexture(nil, "BACKGROUND")
    btn.bg:SetAllPoints()
    btn.edge = {}
    for i = 1, 4 do btn.edge[i] = btn:CreateTexture(nil, "BORDER") end
    btn.edge[1]:SetPoint("TOPLEFT"); btn.edge[1]:SetPoint("TOPRIGHT"); btn.edge[1]:SetHeight(1)
    btn.edge[2]:SetPoint("BOTTOMLEFT"); btn.edge[2]:SetPoint("BOTTOMRIGHT"); btn.edge[2]:SetHeight(1)
    btn.edge[3]:SetPoint("TOPLEFT"); btn.edge[3]:SetPoint("BOTTOMLEFT"); btn.edge[3]:SetWidth(1)
    btn.edge[4]:SetPoint("TOPRIGHT"); btn.edge[4]:SetPoint("BOTTOMRIGHT"); btn.edge[4]:SetWidth(1)
    local glow = btn:CreateTexture(nil, "ARTWORK")
    glow:SetPoint("TOPLEFT", 1, -1); glow:SetPoint("BOTTOMRIGHT", -1, 1)
    S.Gradient(glow, { 1, 0.8, 0.25, 0 }, { 1, 0.8, 0.25, 0.22 })
    glow:SetBlendMode("ADD")
    S.HoverFade(btn, glow)
    btn.text = Text(btn, 12, "text")
    btn.text:SetPoint("CENTER")
    btn.text:SetJustifyH("CENTER")
    btn:HookScript("OnEnter", function(s) s.text:SetTextColor(color(C.hover)) end)
    btn:HookScript("OnLeave", function(s) s.text:SetTextColor(color(s.active and C.gold or C.dim)) end)
    return btn
  end)
  b.active = active
  b.text:SetText(text)
  b.text:SetTextColor(color(active and C.gold or C.dim))
  b:SetWidth(b.text:GetStringWidth() + 22)
  S.Gradient(b.bg, active and C.pill1 or C.btn1, active and C.pill2 or C.btn2)
  for _, e in ipairs(b.edge) do e:SetColorTexture(color(active and C.ring or C.trim)) end
  b:ClearAllPoints()
  b:SetPoint("TOPLEFT", x, -y)
  b:SetScript("OnClick", onClick)
  return b
end

function B:MapButton(x, y, w, m)
  local b = acquire("map", function()
    local btn = S.Button(self.body, "", 200, 24)
    btn.text:ClearAllPoints()
    btn.text:SetPoint("LEFT", 10, 0)
    btn.text:SetJustifyH("LEFT")
    btn:HookScript("OnEnter", function(s)
      GameTooltip:SetOwner(s, "ANCHOR_TOP")
      GameTooltip:AddLine(L("Clic : placer un repère sur la carte", "Click: set a waypoint on the map") .. (TomTom and " (TomTom)" or ""), 1, 1, 1)
      GameTooltip:Show()
    end)
    btn:HookScript("OnLeave", function() GameTooltip:Hide() end)
    return btn
  end)
  local label = ("|TInterface\\Minimap\\POIIcons:14:14:0:0:256:256:0:16:0:16|t  %s  |cff8e9ac0%s (%.1f, %.1f)|r"):format(
    m.n ~= "" and m.n or L("Repère", "Waypoint"), m.z, m.x, m.y)
  b.text:SetText(label)
  b:SetWidth(math.min(w, b.text:GetStringWidth() + 24))
  b.fitWidth = 2000
  b:ClearAllPoints()
  b:SetPoint("TOPLEFT", x, -y)
  b:SetScript("OnClick", function() ns.SetWaypoint(m) end)
  return b
end

function B:Image(x, y, w, img)
  local t = acquire("img", function() return newTex(self.body, "ARTWORK", 1) end)
  local scale = math.min(1, w / img.w)
  local iw, ih = img.w * scale, img.h * scale
  t:ClearAllPoints()
  t:SetPoint("TOPLEFT", x, -y)
  t:SetSize(iw, ih)
  t:SetVertexColor(1, 1, 1, 1)
  t:SetTexture("Interface\\AddOns\\Easy_Professions_Forever\\adds\\Maps\\" .. img.f)
  t:SetTexCoord(0, img.u or 1, 0, img.v or 1)
  -- frame
  self:Rect(x - 1, y - 1, iw + 2, ih + 2, C.trim, "BACKGROUND", 2)
  return iw, ih
end

-- blocks -> drawn content; returns the new y
function B:Blocks(g, blocks, x, y, w, ctx)
  for _, b in ipairs(blocks) do
    y = self:Block(g, b, x, y, w, ctx)
  end
  return y
end

local BULLET = "|cffffc83d-|r "

function B:Block(g, b, x, y, w, ctx)
  local t = b.t
  if t == "h" then
    if b.l == 2 then
      y = y + 14
      local _, h = self:Text(x, y, w, ns.Render(b.x, 16), 16, "gold")
      ctx.sections[#ctx.sections + 1] = { y = y - 8, x = ns.Render(b.x, 12, true) }
      y = y + h + 5
      self:Grad(x, y, w, 1, { C.ring[1], C.ring[2], C.ring[3], 0.8 }, { C.ring[1], C.ring[2], C.ring[3], 0 }, true, "BORDER")
      return y + 9
    end
    y = y + 6
    local _, h = self:Text(x, y, w, ns.Render(b.x, b.l == 3 and 14 or 13), b.l == 3 and 14 or 13, b.l == 3 and "gold" or "dim")
    return y + h + 6
  elseif t == "p" or t == "cap" then
    local _, h = self:Text(x, y, w, ns.Render(b.x, 14), t == "cap" and 11 or 12, t == "cap" and "muted" or "text")
    return y + h + 7
  elseif t == "note" then
    local _, h = self:Text(x + 14, y + 8, w - 24, ns.Render(b.x, 14), 12, "dim")
    self:Grad(x, y, w, h + 16, { 1, 0.8, 0.25, 0.12 }, { 1, 0.8, 0.25, 0.02 }, true, "BACKGROUND", 1)
    self:Rect(x, y, 2, h + 16, C.gold, "BORDER", 2)
    return y + h + 16 + 8
  elseif t == "list" then
    for _, it in ipairs(b.i) do
      local depth = #(it:match("^(\t*)"))
      local text = it:gsub("^\t+", "")
      local _, h = self:Text(x + 6 + depth * 16, y, w - 6 - depth * 16, BULLET .. ns.Render(text, 14), 12, "text")
      y = y + h + 4
    end
    return y + 4
  elseif t == "table" then
    return self:Table(b, x, y, w)
  elseif t == "shop" then
    for _, r in ipairs(b.r) do
      local have = ns.ItemCount(r.id)
      local col = have >= r.n and "ff7cdb6b" or (have > 0 and "ffffd27a" or "ff8e9ac0")
      self:Text(x + 6, y, w - 120, ("|cffffffff%dx|r %s"):format(r.n, ns.Render(("{i:%d:%s:%s}"):format(r.id, r.ic, r.x), 15)), 12, "text")
      local fs = self:Text(x + w - 110, y, 104, ("|c%s%d / %d|r"):format(col, have, r.n), 12, "text")
      fs:SetJustifyH("RIGHT")
      self:Grad(x, y + 18, w, 1, { 1, 1, 1, 0.05 }, { 1, 1, 1, 0 }, true, "BORDER")
      y = y + 22
    end
    local _, h = self:Text(x + 6, y + 2, w - 12, L("|cff8e9ac0Les nombres à droite : ce que tu as déjà (sacs + banque) / ce qu'il faut.|r",
      "|cff8e9ac0Right: what you already have (bags + bank) / what you need.|r"), 11, "muted")
    return y + h + 10
  elseif t == "img" then
    if not b.w then return y end
    local _, ih = self:Image(x + 1, y + 2, math.min(w - 2, 512), b)
    y = y + ih + 6
    if b.a and b.a ~= "" then
      local _, h = self:Text(x, y, w, b.a, 11, "muted")
      y = y + h + 4
    end
    return y + 8
  elseif t == "map" then
    self:MapButton(x, y, w, b)
    return y + 32
  elseif t == "tabs" then
    local cur = ns.TabIndex(g, b)
    local bx, by = x, y
    for i, name in ipairs(b.n) do
      local label = ns.Render(name, 12, true)
      local btn = self:TabButton(bx, by, label, i == cur, function()
        ns.SetTab(g, b, i)
      end)
      local bw = btn:GetWidth()
      if bx + bw > x + w and bx > x then
        bx, by = x, by + 26
        btn:ClearAllPoints()
        btn:SetPoint("TOPLEFT", bx, -by)
      end
      bx = bx + bw + 4
    end
    y = by + 22 + 2
    self:Grad(x, y, w, 1, { C.ring[1], C.ring[2], C.ring[3], 0.6 }, { C.ring[1], C.ring[2], C.ring[3], 0 }, true, "BORDER")
    y = y + 10
    y = self:Blocks(g, b.p[cur] or {}, x + 4, y, w - 4, ctx)
    return y + 4
  elseif t == "step" then
    return self:Step(g, b, x, y, w, ctx)
  end
  return y
end

function B:Table(b, x, y, w)
  local cols = #b.r[1]
  if cols == 0 then return y end
  -- column widths: weighted by the longest text of each column
  local weights, total = {}, 0
  for c = 1, cols do
    local m = 4
    for _, r in ipairs(b.r) do m = math.max(m, math.min(40, #ns.Render(r[c] or "", 12, true))) end
    weights[c] = m
    total = total + m
  end
  local widths, cx = {}, {}
  local acc = x
  for c = 1, cols do
    widths[c] = math.floor((w - 4) * weights[c] / total)
    cx[c] = acc
    acc = acc + widths[c]
  end
  for ri, r in ipairs(b.r) do
    local isHead = b.h == 1 and ri == 1
    local rowH = 0
    local texts = {}
    for c = 1, cols do
      local fs, h = self:Text(cx[c] + 6, y + 5, widths[c] - 10, ns.Render(r[c] or "", 13), isHead and 12 or 12, isHead and "gold" or "text")
      texts[c] = fs
      rowH = math.max(rowH, h)
    end
    rowH = rowH + 10
    if isHead then
      self:Rect(x, y, w, rowH, { C.pill2[1], C.pill2[2], C.pill2[3], 0.7 }, "BACKGROUND", 1)
    elseif ri % 2 == 0 then
      self:Rect(x, y, w, rowH, { 1, 1, 1, 0.03 }, "BACKGROUND", 1)
    end
    self:Rect(x, y + rowH - 1, w, 1, { C.trim[1], C.trim[2], C.trim[3], 0.4 }, "BORDER", 1)
    y = y + rowH
  end
  return y + 10
end

function B:Step(g, b, x, y, w, ctx)
  local s = ns.SkillOf(g)
  local from, to = b.r:match("(%d+)%s*%-%s*(%d+)")
  from, to = tonumber(from), tonumber(to)
  local rank = s and s.rank
  local done = rank and to and rank >= to
  local current = rank and from and to and rank < to and (not ctx.currentFound)
  if current then ctx.currentFound = true end
  local top = y
  -- range badge
  local badge = ("%s%s"):format(done and "|TInterface\\RAIDFRAME\\ReadyCheck-Ready:14:14|t " or "", b.r)
  local fs = self:Text(x + 12, y + 8, 200, badge, 14, done and "good" or "gold")
  if current then
    local tag = self:Text(x + 20 + fs:GetStringWidth(), y + 10, 300, L("|cffffc83d- ton niveau actuel|r", "|cffffc83d- your current skill|r"), 11, "text")
  end
  y = y + 8 + 20
  y = self:Blocks(g, b.b, x + 12, y, w - 24, ctx)
  local h = y - top + 4
  -- card behind it
  self:Grad(x, top, w, h, { C.btn1[1], C.btn1[2], C.btn1[3], 0.9 }, { C.btn2[1], C.btn2[2], C.btn2[3], 0.9 }, false, "BACKGROUND", 0)
  self:Rect(x, top, 2, h, current and C.gold or (done and C.good or C.trim), "BORDER", 2)
  self:Rect(x, top + h - 1, w, 1, { C.trim[1], C.trim[2], C.trim[3], 0.5 }, "BORDER", 1)
  -- step index in the tracked list, for scrolling to it
  ctx.steps[b] = top
  return y + 8
end

function B:Render(g)
  releaseAll()
  local w = math.max(200, self.scroll:GetWidth() - PAD_X * 2)
  local ctx = { sections = {}, steps = {} }
  local y = self:Blocks(g, g.blocks, PAD_X, 4, w, ctx)
  y = y + 10
  local _, h = self:Text(PAD_X, y, w, L("|cff8e9ac0Guide de wow-professions.com/forever, affiché en jeu par Easy Professions. Les noms d'objets et de recettes sont ceux de ton jeu.|r",
    "|cff8e9ac0Guide from wow-professions.com/forever, shown in game by Easy Professions. Item and recipe names come from your game.|r"), 11, "muted")
  self.body:SetHeight(y + h + 20)
  self.ctx = ctx
  -- sections menu
  local opts = {}
  for i, sec in ipairs(ctx.sections) do opts[i] = { i, sec.x, sec.x } end
  if #opts == 0 then opts[1] = { 0, L("Sections", "Sections"), "-" } end
  self:SetSections(g, opts)
end

-- the dropdown is built with its options: one per guide (and per set of sections)
function B:SetSections(g, opts)
  local head = self.head
  local sig = g.key
  for _, o in ipairs(opts) do sig = sig .. "|" .. o[2] end
  self.dropdowns = self.dropdowns or {}
  local dd = self.dropdowns[sig]
  if head.sections and head.sections ~= dd then head.sections:Hide() end
  if not dd then
    dd = S.Dropdown(head, opts, 210, 260, function() return B.sectionValue end, function(v) B:ScrollToSection(v) end)
    dd:SetPoint("BOTTOMRIGHT", -4, 8)
    self.dropdowns[sig] = dd
  end
  if head.sections ~= dd then
    self.sectionValue = 0
    dd:SetText(L("Aller à la section...", "Go to section..."))
  end
  dd:Show()
  head.sections = dd
end

local function scrollTo(self, y)
  local bar = self.scroll.bar
  local _, hi = bar:GetMinMaxValues()
  local to = math.max(0, math.min(hi, y))
  S.Tween(bar, { dur = 0.35, from = bar:GetValue(), to = to, ease = "outCubic", set = function(v) bar:SetValue(v) end })
end

function B:ScrollToSection(i)
  local sec = self.ctx and self.ctx.sections[i]
  if not sec then return end
  self.sectionValue = i
  scrollTo(self, sec.y)
end

-- scroll to a step of the tracker list (default: the current one)
function B:ScrollToStep(index)
  local g = ns.guides[self.selected or ""]
  if not g or not self.ctx then return end
  local steps = ns.Steps(g)
  if not index then
    local s = ns.SkillOf(g)
    index = ns.CurrentStep(g, s and s.rank or 0)
  end
  local step = index and steps[index]
  if not step then return end
  local y = step.block and self.ctx.steps[step.block]
  if not y and step.head then
    for _, sec in ipairs(self.ctx.sections) do
      if sec.x == ns.Render(step.head.x, 12, true) then y = sec.y end
    end
  end
  if y then scrollTo(self, y - 10) end
end

-- refresh on changes ------------------------------------------------------------------
local function refresh()
  if not B.frame or not B.frame:IsShown() then return end
  local g = ns.guides[B.selected or ""]
  if not g then return end
  B:PaintNav()
  B:RenderHead(g)
  local keep = B.scroll:GetVerticalScroll()
  B:Render(g)
  C_Timer.After(0, function() B.scroll.bar:SetValue(keep) end)
end
ns.On("SKILLS", refresh)
ns.On("TABS", refresh)
ns.On("TRACKED", refresh)
ns.On("ITEMINFO", refresh)
ns.On("BAGS", function()
  -- only the shopping lists use the bags: cheap enough to redraw
  refresh()
end)
