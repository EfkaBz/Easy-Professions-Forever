-- Easy Professions (Forever): small tracking window (current step, materials, timeline)
local _, ns = ...
local L, S = ns.L, ns.Skin
local C, color = S.C, S.Color

local T = {}
ns.Tracker = T

local HEAD_H, BAR_GAP, ROW_H, PAD = 46, 6, 20, 8
local MIN_W, MIN_H, MAX_W, MAX_H = 240, 200, 520, 800

local function iconOf(id)
  return ns.GetItemIcon(id)
end

-- Small flat icon button (text glyph or texture), amber glow on hover
local function SmallButton(parent, label, tip, onClick, texture)
  local b = CreateFrame("Button", nil, parent)
  b:SetSize(20, 20)
  local glow = b:CreateTexture(nil, "BACKGROUND")
  glow:SetTexture(S.MEDIA .. "Glow")
  glow:SetBlendMode("ADD")
  glow:SetPoint("CENTER")
  glow:SetSize(30, 30)
  glow:SetVertexColor(1, 0.78, 0.25, 0.55)
  S.HoverFade(b, glow)
  if texture then
    b.tex = b:CreateTexture(nil, "ARTWORK")
    b.tex:SetSize(16, 16)
    b.tex:SetPoint("CENTER")
    b.tex:SetTexture(texture)
    b.tex:SetTexCoord(0.08, 0.92, 0.08, 0.92)
  else
    b.text = S.Text(b, 14, "muted")
    b.text:SetPoint("CENTER", 0, 1)
    b.text:SetJustifyH("CENTER")
    b.text:SetText(label)
    b:HookScript("OnEnter", function(self) self.text:SetTextColor(color(C.gold)) end)
    b:HookScript("OnLeave", function(self) self.text:SetTextColor(color(C.muted)) end)
  end
  b:SetScript("OnClick", onClick)
  if tip then
    b:HookScript("OnEnter", function(self)
      GameTooltip:SetOwner(self, "ANCHOR_TOP")
      GameTooltip:AddLine(type(tip) == "function" and tip() or tip, 1, 1, 1)
      GameTooltip:Show()
    end)
    b:HookScript("OnLeave", function() GameTooltip:Hide() end)
  end
  return b
end
T.SmallButton = SmallButton

-- chevron made of two rotated bars (the game font has no arrow glyph); dir = "left"/"right"
local function Chevron(parent, dir, onClick, tip)
  local b = SmallButton(parent, "", tip, onClick)
  b.text:Hide()
  local bars = {}
  for i = 1, 2 do
    local t = b:CreateTexture(nil, "OVERLAY")
    t:SetTexture("Interface\\Buttons\\WHITE8x8")
    t:SetSize(6, 1.6)
    t:SetVertexColor(color(C.muted))
    bars[i] = t
  end
  local s = dir == "left" and 1 or -1
  bars[1]:SetPoint("CENTER", -0.5 * s, 2); bars[1]:SetRotation(math.rad(45 * s))
  bars[2]:SetPoint("CENTER", -0.5 * s, -2); bars[2]:SetRotation(math.rad(-45 * s))
  b:HookScript("OnEnter", function() for _, t in ipairs(bars) do t:SetVertexColor(color(C.gold)) end end)
  b:HookScript("OnLeave", function() for _, t in ipairs(bars) do t:SetVertexColor(color(C.muted)) end end)
  b.bars = bars
  function b:SetEnabledLook(on)
    self:SetEnabled(on)
    self:SetAlpha(on and 1 or 0.3)
  end
  return b
end
T.Chevron = Chevron

-- Window -------------------------------------------------------------------------
function T:Create()
  local db = ns.db.tracker
  local f = CreateFrame("Frame", "EasyProfessionsForeverTracker", UIParent)
  f:SetSize(db.w or 290, db.h or 380)
  f:SetFrameStrata("MEDIUM")
  f:SetClampedToScreen(true)
  f:EnableMouse(true)
  f:SetMovable(true)
  f:SetResizable(true)
  if f.SetResizeBounds then f:SetResizeBounds(MIN_W, MIN_H, MAX_W, MAX_H)
  elseif f.SetMinResize then f:SetMinResize(MIN_W, MIN_H); f:SetMaxResize(MAX_W, MAX_H) end
  S.Shadow(f, 14, 0.4, { 0.15, 0.35, 1 })
  S.Rounded(f, 10)
  S.EdgeGlow(f, 40, 0.16)
  self.frame = f

  -- header: icon, name, skill, buttons
  local head = CreateFrame("Frame", nil, f)
  head:SetPoint("TOPLEFT", 1, -1)
  head:SetPoint("TOPRIGHT", -1, -1)
  head:SetHeight(HEAD_H)
  S.Draggable(f, head, function() T:SavePosition() end)
  head:SetScript("OnMouseUp", function(_, btn) if btn == "RightButton" then ns.Browser:Open() end end)
  self.head = head

  head.icon = S.Icon(head, 30)
  head.icon:SetPoint("LEFT", 10, -1)
  head.icon.tex:SetTexture(ns.ICON)
  head.name = S.Text(head, 13, "gold")
  head.name:SetPoint("TOPLEFT", head.icon, "TOPRIGHT", 8, -1)
  head.name:SetPoint("RIGHT", -74, 0)
  head.name:SetWordWrap(false)
  head.info = S.Text(head, 11, "muted")
  head.info:SetPoint("BOTTOMLEFT", head.icon, "BOTTOMRIGHT", 8, 1)
  head.info:SetPoint("RIGHT", -74, 0)
  head.info:SetWordWrap(false)

  head.close = S.CloseButton(head, function() T:Toggle(false) end)
  head.close:SetPoint("TOPRIGHT", -6, -6)
  head.fold = SmallButton(head, "-", function() return ns.db.tracker.collapsed and L("Déplier", "Expand") or L("Replier", "Collapse") end,
    function() T:SetCollapsed(not ns.db.tracker.collapsed) end)
  head.fold:SetPoint("RIGHT", head.close, "LEFT", -2, 0)
  head.book = SmallButton(head, nil, L("Tous les guides", "All guides"), function() ns.Browser:Toggle() end,
    "Interface\\Icons\\INV_Misc_Book_09")
  head.book:SetPoint("RIGHT", head.fold, "LEFT", -2, 0)

  -- skill progress
  local bar = S.ProgressBar(f, 7)
  bar:SetPoint("TOPLEFT", head, "BOTTOMLEFT", 10, 0)
  bar:SetPoint("TOPRIGHT", head, "BOTTOMRIGHT", -10, 0)
  self.bar = bar

  -- body (hidden when folded)
  local body = CreateFrame("Frame", nil, f)
  body:SetPoint("TOPLEFT", bar, "BOTTOMLEFT", -10 + PAD, -BAR_GAP - 2)
  body:SetPoint("BOTTOMRIGHT", -PAD, PAD + 6)
  if body.SetClipsChildren then pcall(body.SetClipsChildren, body, true) end
  self.body = body

  -- current step card
  local card = CreateFrame("Frame", nil, body)
  card:SetPoint("TOPLEFT")
  card:SetPoint("TOPRIGHT")
  card:SetHeight(80)
  S.Rounded(card, 6, C.btn1, C.btn2, C.trim)
  ns.EnableLinks(card)
  card:SetScript("OnMouseUp", function(_, btn)
    if btn == "RightButton" then ns.Browser:Open(ns.db.tracked, T.view) end
  end)
  self.card = card

  card.accent = card:CreateTexture(nil, "ARTWORK")
  card.accent:SetPoint("TOPLEFT", 1, -6)
  card.accent:SetPoint("BOTTOMLEFT", 1, 6)
  card.accent:SetWidth(2)
  card.accent:SetColorTexture(color(C.gold))

  card.pill = CreateFrame("Frame", nil, card)
  card.pill:SetPoint("TOPLEFT", 9, -7)
  card.pill:SetSize(60, 18)
  S.Rounded(card.pill, 5, C.pill1, C.pill2, C.ring)
  card.pill.text = S.Text(card.pill, 12, "gold")
  card.pill.text:SetPoint("CENTER", 0, 0)
  card.pill.text:SetJustifyH("CENTER")

  card.next = Chevron(card, "right", function() T:Browse(1) end, L("Étape suivante", "Next step"))
  card.next:SetPoint("TOPRIGHT", -4, -6)
  card.prev = Chevron(card, "left", function() T:Browse(-1) end, L("Étape précédente", "Previous step"))
  card.prev:SetPoint("RIGHT", card.next, "LEFT", 0, 0)
  card.now = SmallButton(card, "o", L("Revenir à mon niveau", "Back to my skill"), function() T:Browse(0) end)
  card.now:SetPoint("RIGHT", card.prev, "LEFT", 0, 0)

  card.section = S.Text(card, 11, "muted")
  card.section:SetPoint("LEFT", card.pill, "RIGHT", 7, 0)
  card.section:SetPoint("RIGHT", card.now, "LEFT", -4, 0)
  card.section:SetWordWrap(false)

  card.main = S.Text(card, 12, "text")
  card.main:SetPoint("TOPLEFT", card.pill, "BOTTOMLEFT", 0, -7)
  card.main:SetPoint("RIGHT", -10, 0)
  card.main:SetSpacing(3)

  -- variant (tab) picker of the step
  local var = CreateFrame("Frame", nil, card)
  var:SetHeight(20)
  var:SetPoint("LEFT", 6, 0)
  var:SetPoint("RIGHT", -6, 0)
  var.prev = Chevron(var, "left", function() T:CycleVariant(-1) end)
  var.prev:SetPoint("LEFT")
  var.next = Chevron(var, "right", function() T:CycleVariant(1) end)
  var.next:SetPoint("RIGHT")
  var.text = S.Text(var, 12, "gold")
  var.text:SetPoint("LEFT", var.prev, "RIGHT", 2, 0)
  var.text:SetPoint("RIGHT", var.next, "LEFT", -2, 0)
  var.text:SetJustifyH("CENTER")
  var.text:SetWordWrap(false)
  var.line = var:CreateTexture(nil, "BACKGROUND")
  var.line:SetAllPoints()
  S.Gradient(var.line, { 1, 0.8, 0.25, 0 }, { 1, 0.8, 0.25, 0.1 }, true)
  card.var = var

  card.notes = S.Text(card, 11, "dim")
  card.notes:SetPoint("RIGHT", -10, 0)
  card.notes:SetSpacing(2)

  card.pin = S.Button(card, L("Placer un repère", "Set a waypoint"), 130, 20, function()
    local m = T.mapBlock
    if m then ns.SetWaypoint(m) end
  end)

  -- timeline
  local list = CreateFrame("Frame", nil, body)
  list:SetPoint("TOPLEFT", card, "BOTTOMLEFT", 0, -6)
  list:SetPoint("BOTTOMRIGHT", -10, 0)
  local sf, content = S.Scroll(list)
  sf:SetAllPoints()
  self.scroll, self.content, self.rows = sf, content, {}
  list:SetScript("OnSizeChanged", function(_, w) content:SetWidth(w) end)
  self.list = list

  -- empty state
  local empty = CreateFrame("Frame", nil, body)
  empty:SetAllPoints()
  empty.text = S.Text(empty, 12, "muted")
  empty.text:SetPoint("TOP", 0, -14)
  empty.text:SetPoint("LEFT", 10, 0)
  empty.text:SetPoint("RIGHT", -10, 0)
  empty.text:SetJustifyH("CENTER")
  empty.button = S.Button(empty, L("Choisir un guide", "Choose a guide"), 150, 26, function() ns.Browser:Open() end, true)
  empty.button:SetPoint("TOP", empty.text, "BOTTOM", 0, -12)
  self.empty = empty

  -- resize grip: three amber dots in the corner
  local grip = CreateFrame("Button", nil, f)
  grip:SetSize(16, 16)
  grip:SetPoint("BOTTOMRIGHT", -3, 3)
  for i, p in ipairs({ { 11, 3 }, { 7, 3 }, { 11, 7 }, { 3, 3 }, { 7, 7 }, { 11, 11 } }) do
    local d = grip:CreateTexture(nil, "OVERLAY")
    d:SetTexture(S.MEDIA .. "Dot")
    d:SetSize(3, 3)
    d:SetPoint("BOTTOMLEFT", p[1], p[2])
    d:SetVertexColor(color(C.trim))
  end
  grip:SetScript("OnEnter", function(self) for _, d in ipairs({ self:GetRegions() }) do d:SetVertexColor(color(C.gold)) end end)
  grip:SetScript("OnLeave", function(self) for _, d in ipairs({ self:GetRegions() }) do d:SetVertexColor(color(C.trim)) end end)
  grip:SetScript("OnMouseDown", function()
    if ns.db.tracker.collapsed then return end
    T:AnchorTopLeft()
    f:StartSizing("BOTTOMRIGHT")
  end)
  grip:SetScript("OnMouseUp", function()
    f:StopMovingOrSizing()
    ns.db.tracker.w, ns.db.tracker.h = math.floor(f:GetWidth() + 0.5), math.floor(f:GetHeight() + 0.5)
    T:SavePosition()
    T:Refresh()
  end)
  self.grip = grip
  f:SetScript("OnSizeChanged", function() if T.ready then T:Layout() end end)

  self:RestorePosition()
  self.ready = true
  self:SetCollapsed(db.collapsed, true)
  f:SetShown(db.shown)
  f:HookScript("OnShow", function(self) S.AnimateOpen(self, 0, -10) end)
end

-- Position ------------------------------------------------------------------------
function T:AnchorTopLeft()
  local f = self.frame
  local l, t = f:GetLeft(), f:GetTop()
  if not l then return end
  f:ClearAllPoints()
  f:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", l, t)
  f.home = nil
end

function T:SavePosition()
  self:AnchorTopLeft()
  local f = self.frame
  ns.db.tracker.x, ns.db.tracker.y = f:GetLeft(), f:GetTop()
  f.home = { "TOPLEFT", UIParent, "BOTTOMLEFT", ns.db.tracker.x, ns.db.tracker.y }
end

function T:RestorePosition()
  local f, db = self.frame, ns.db.tracker
  f:ClearAllPoints()
  if db.x and db.y then f:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", db.x, db.y)
  else f:SetPoint("RIGHT", UIParent, "RIGHT", -80, 60) end
  f.home = nil
end

function T:ResetPosition()
  ns.db.tracker.x, ns.db.tracker.y, ns.db.tracker.w, ns.db.tracker.h = nil, nil, 290, 380
  if not self.frame then return end
  self.frame:SetSize(290, 380)
  self:RestorePosition()
  self:Refresh()
end

-- Show / fold ---------------------------------------------------------------------------
function T:Toggle(show)
  local f = self.frame
  if show == nil then show = not f:IsShown() end
  ns.db.tracker.shown = show
  if show then
    f:Show()
    self:Refresh()
  else
    S.AnimateClose(f, 0, -10)
  end
end

function T:SetCollapsed(collapsed, instant)
  ns.db.tracker.collapsed = collapsed
  local f = self.frame
  local folded = HEAD_H + 16
  local full = ns.db.tracker.h or 380
  self.head.fold.text:SetText(collapsed and "+" or "-")
  self.grip:SetShown(not collapsed)
  if instant then
    f:SetHeight(collapsed and folded or full)
    self.body:SetShown(not collapsed)
    self.body:SetAlpha(1)
    return
  end
  self:AnchorTopLeft()
  self.body:Show()
  local from = f:GetHeight()
  S.Tween(self.body, { dur = 0.3, from = 0, to = 1, ease = "outCubic", set = function(v)
    f:SetHeight(from + ((collapsed and folded or full) - from) * v)
    self.body:SetAlpha(collapsed and (1 - v) or v)
  end, done = function()
    self.body:SetShown(not collapsed)
    T:SavePosition()
  end })
end

-- Steps browsing ---------------------------------------------------------------------
function T:Browse(delta)
  local g = ns.guides[ns.db.tracked or ""]
  if not g then return end
  local steps = ns.Steps(g)
  if delta == 0 then self.view = nil
  else
    local cur = self.view or self.current or 1
    self.view = math.max(1, math.min(#steps, cur + delta))
    if self.view == self.current then self.view = nil end
  end
  self:Refresh()
end

-- first tabs block inside the shown step that is not a Horde/Alliance switch
local function variantTabs(step)
  if not step then return end
  for _, b in ipairs(step.blocks) do
    if b.t == "tabs" and not b.f then return b end
  end
  -- route steps: the tabs block they come from (alternatives of a range)
  return step.parentTabs
end

function T:CycleVariant(d)
  local g = ns.guides[ns.db.tracked or ""]
  local tabs = self.variant
  if not g or not tabs then return end
  local i = ns.TabIndex(g, tabs) + d
  if i < 1 then i = #tabs.p elseif i > #tabs.p then i = 1 end
  ns.SetTab(g, tabs, i)
end

-- Rendering -------------------------------------------------------------------------
local function matLine(mat, need)
  local id = mat[3]
  local have = id and ns.ItemCount(id) or nil
  local name = id and ns.ItemName(id, mat[2]) or mat[2]
  local ic = id and iconOf(id)
  local icon = ic and ("|T%s:13:13:0:0:64:64:5:59:5:59|t "):format(ic) or "    "
  if not have then return ("      %s|cffc2c8de%s|r  |cff8e9ac0x%d|r"):format(icon, name, need) end
  local col = have >= need and "ff7cdb6b" or (have > 0 and "ffffd27a" or "ffff7b6b")
  return ("      %s|cffe6e9f5%s|r  |c%s%d/%d|r"):format(icon, name, col, have, need)
end

-- section steps (gathering): the first line listing items ("Ores in these zones: ...")
local function itemsLine(step)
  if not step.isSection then return end
  for _, b in ipairs(step.blocks) do
    if b.t == "p" and b.x:find("{i:") and b.x:find("these zones") then return b end
  end
end

-- short label of a section: its first sub-title, or the start of its first sentence
local function sectionHint(step)
  for _, b in ipairs(step.blocks) do
    if b.t == "h" then return ns.Render(b.x, 11, true) end
    if b.t == "p" then
      local t = ns.Render(b.x, 11, true)
      return (t:match("^(.-)[%.,:]") or t):sub(1, 60)
    end
  end
end

local function noteTexts(blocks, out, g, depth, skip)
  for _, b in ipairs(blocks) do
    if b == skip then
      -- shown in the main text
    elseif b.t == "p" or b.t == "note" then
      local skip = false
      for line in b.x:gmatch("[^\n]+") do
        if line:match("^%d+x {s:") then skip = true end
      end
      if not skip then out[#out + 1] = ns.Render(b.x, 12) end
    elseif b.t == "list" then
      for _, it in ipairs(b.i) do
        if not it:match("^\t*%d+x {s:") then
          local depthTabs = it:match("^(\t*)")
          out[#out + 1] = ("  "):rep(#depthTabs) .. "|cffffc83d-|r " .. ns.Render((it:gsub("^\t+", "")), 12)
        end
      end
    elseif b.t == "h" and b.l >= 3 then
      out[#out + 1] = "|cffffc83d" .. ns.Render(b.x, 12, true) .. "|r"
    end
  end
  return out
end

-- (the step blocks are flattened: the chosen tab panes are inline)
local function firstMap(blocks)
  for _, b in ipairs(blocks) do
    if b.t == "map" then return b end
  end
end

function T:RenderCard(g, step, rank, isCurrent)
  local card = self.card
  card.pill.text:SetText(step.r)
  card.pill:SetWidth(card.pill.text:GetStringWidth() + 16)
  card.section:SetText((step.section and not step.isSection) and ns.Render(step.section, 11, true) or "")
  card.accent:SetShown(isCurrent)

  -- crafts with materials, or the section title
  local lines = {}
  if step.crafts then
    for i, c in ipairs(step.crafts) do
      if i > 3 then break end
      local left = isCurrent and ns.CraftsLeft(step, c, rank) or c.n
      local head = ("|T%s:16:16:0:0:64:64:5:59:5:59|t |cffffffff%dx|r |cff71d5ff%s|r"):format(ns.IconPath(c.ic), c.n,
        ns.SpellName(c.s, c.x))
      if isCurrent and left < c.n then head = head .. ("  |cff8e9ac0(%s %d)|r"):format(L("encore ~", "~"), left) end
      if i > 1 then head = "|cff8e9ac0" .. L("ou / et", "or / and") .. "|r " .. head end
      lines[#lines + 1] = head
      if i <= 2 then
        for _, m in ipairs(c.m) do
          lines[#lines + 1] = matLine(m, math.ceil(m[1] * left / math.max(1, c.n)))
        end
      end
    end
  elseif step.isSection then
    local title = ns.Render(step.section or "", 13, true)
    if title ~= step.r then lines[#lines + 1] = "|cffffffff" .. title .. "|r" end
    local items = itemsLine(step)
    if items then lines[#lines + 1] = ns.Render(items.x, 14) end
  end
  card.main:SetText(table.concat(lines, "\n"))

  -- variant picker
  local tabs = variantTabs(step)
  self.variant = tabs
  local var = card.var
  if tabs then
    local i = ns.TabIndex(g, tabs)
    var.text:SetText(("%s  |cff8e9ac0%d/%d|r"):format(ns.Render(tabs.n[i] or "", 12, true), i, #tabs.n))
    var:Show()
  else
    var:Hide()
  end

  -- notes (everything else of the step, short)
  local notes = noteTexts(step.blocks, {}, g, 0, itemsLine(step))
  card.notes:SetText(table.concat(notes, "\n"))

  self.mapBlock = firstMap(step.blocks)
end

function T:Layout()
  if not self.ready or not self.frame:IsShown() then return end
  local card, width = self.card, self.card:GetWidth()
  if width < 50 then return end
  local textW = width - 20
  card.main:SetWidth(textW)
  card.notes:SetWidth(textW)
  local y = 7 + 18 + 7
  local mainH = card.main:GetText() ~= "" and card.main:GetStringHeight() or 0
  y = y + mainH
  card.var:ClearAllPoints()
  if card.var:IsShown() then
    card.var:SetPoint("TOPLEFT", 6, -(y + 6))
    card.var:SetPoint("TOPRIGHT", -6, -(y + 6))
    y = y + 6 + 20
  end
  -- notes take what is left, but leave at least 3 rows of timeline
  local bodyH = self.body:GetHeight()
  local hasNotes = card.notes:GetText() and card.notes:GetText() ~= ""
  card.notes:ClearAllPoints()
  card.notes:SetPoint("TOPLEFT", 10, -(y + 6))
  card.notes:SetPoint("RIGHT", -10, 0)
  local maxNotes = math.max(0, bodyH - y - 6 - 6 * ROW_H - 40)
  local notesH = 0
  if hasNotes and maxNotes > 14 then
    card.notes:SetHeight(0)
    local full = card.notes:GetStringHeight()
    notesH = math.min(full, maxNotes)
    card.notes:SetHeight(notesH)
    card.notes:Show()
    y = y + 6 + notesH
  else
    card.notes:Hide()
  end
  card.pin:ClearAllPoints()
  if self.mapBlock then
    card.pin:SetPoint("TOPLEFT", 10, -(y + 6))
    card.pin:Show()
    y = y + 6 + 20
  else
    card.pin:Hide()
  end
  card:SetHeight(y + 9)
  self.content:SetWidth(self.list:GetWidth())
  for _, r in ipairs(self.rows) do r.label:SetWidth(math.max(20, self.list:GetWidth() - 70)) end
end

local function Row(parent, i)
  local r = CreateFrame("Button", nil, parent)
  r:SetHeight(ROW_H)
  r:SetPoint("TOPLEFT", 0, -(i - 1) * ROW_H)
  r:SetPoint("TOPRIGHT", 0, -(i - 1) * ROW_H)
  r:RegisterForClicks("LeftButtonUp", "RightButtonUp")
  S.RowHighlight(r)
  r.sel = r:CreateTexture(nil, "BACKGROUND")
  r.sel:SetAllPoints()
  S.Gradient(r.sel, { 1, 0.8, 0.25, 0.16 }, { 1, 0.8, 0.25, 0 }, true)
  r.dot = r:CreateTexture(nil, "ARTWORK")
  r.dot:SetTexture(S.MEDIA .. "Dot")
  r.dot:SetSize(7, 7)
  r.dot:SetPoint("LEFT", 6, 0)
  r.check = r:CreateTexture(nil, "ARTWORK")
  r.check:SetTexture("Interface\\RAIDFRAME\\ReadyCheck-Ready")
  r.check:SetSize(12, 12)
  r.check:SetPoint("CENTER", r.dot)
  r.range = S.Text(r, 11, "muted")
  r.range:SetPoint("LEFT", 18, 0)
  r.range:SetWidth(52)
  r.range:SetWordWrap(false)
  r.label = S.Text(r, 11, "text")
  r.label:SetPoint("LEFT", 70, 0)
  r.label:SetWordWrap(false)
  r:SetScript("OnClick", function(self, btn)
    if btn == "RightButton" then ns.Browser:Open(ns.db.tracked, self.index) return end
    T.view = (self.index ~= T.current) and self.index or nil
    T:Refresh()
  end)
  return r
end

local function stepLabel(step, g)
  if step.isSection then
    local title = ns.Render(step.section or "", 11, true)
    if title ~= step.r then return title end
    local tabs = variantTabs(step)
    if tabs then return "|cff8e9ac0" .. L("Zone :", "Zone:") .. "|r " .. ns.Render(tabs.n[ns.TabIndex(g, tabs)] or "", 11, true) end
    return sectionHint(step) or title
  end
  if step.crafts then
    local c = step.crafts[1]
    local t = ("|T%s:13:13:0:0:64:64:5:59:5:59|t %s"):format(ns.IconPath(c.ic), ns.SpellName(c.s, c.x))
    if #step.crafts > 1 then t = t .. " |cff8e9ac0+" .. (#step.crafts - 1) .. "|r" end
    return t
  end
  return ns.Render(step.section or "", 11, true)
end

function T:RenderList(steps, cur, view, rank)
  for i, s in ipairs(steps) do
    local r = self.rows[i] or Row(self.content, i)
    self.rows[i] = r
    r.index = i
    local done = rank and rank >= s.to
    r.range:SetText(s.r)
    r.label:SetText(stepLabel(s, ns.guides[ns.db.tracked]))
    r.check:SetShown(done)
    r.dot:SetShown(not done)
    if i == cur then
      r.dot:SetVertexColor(color(C.gold)); r.range:SetTextColor(color(C.gold)); r.label:SetTextColor(color(C.text))
    elseif done then
      r.range:SetTextColor(color(C.good)); r.label:SetTextColor(0.55, 0.5, 0.45)
    else
      r.dot:SetVertexColor(color(C.trim)); r.range:SetTextColor(color(C.muted)); r.label:SetTextColor(color(C.dim))
    end
    r.sel:SetShown(i == view)
    r:Show()
  end
  for i = #steps + 1, #self.rows do self.rows[i]:Hide() end
  self.content:SetHeight(math.max(1, #steps * ROW_H))
end

function T:Refresh()
  if not self.ready then return end
  local f, head = self.frame, self.head
  local g = ns.guides[ns.db.tracked or ""]
  if not f:IsShown() then return end
  if not g then
    head.icon.tex:SetTexture(ns.ICON)
    head.icon.tex:SetTexCoord(0, 1, 0, 1)
    head.name:SetText("Easy Professions")
    head.info:SetText(L("Aucun guide suivi", "No guide tracked"))
    self.bar:SetMinMaxValues(0, 1); self.bar:SetValue(0)
    self.card:Hide(); self.list:Hide()
    self.empty.text:SetText(L("Choisis un métier dans la grande fenêtre pour suivre sa montée ici, étape par étape.",
      "Pick a profession in the big window to follow its leveling here, step by step."))
    self.empty:Show()
    return
  end
  self.empty:Hide()
  head.icon.tex:SetTexture(g.icon)
  head.icon.tex:SetTexCoord(0.08, 0.92, 0.08, 0.92)
  head.name:SetText(ns.GuideName(g))
  local skill = ns.SkillOf(g)
  local rank = skill and skill.rank
  local steps = ns.Steps(g)
  if skill then
    head.info:SetText(("%s |cffffffff%d|r / %d%s"):format(L("Niveau", "Skill"), skill.rank, skill.max,
      skill.bonus > 0 and (" |cff7cdb6b(+" .. skill.bonus .. ")|r") or ""))
    self.bar:SetMinMaxValues(0, 300)
    self.bar:SetValue(skill.rank)
  else
    head.info:SetText(g.skill and L("|cffff7b6bMétier non appris|r", "|cffff7b6bNot learned|r") or L("Guide de référence", "Reference guide"))
    self.bar:SetMinMaxValues(0, 1); self.bar:SetValue(0)
  end
  if #steps == 0 then
    self.card:Hide(); self.list:Hide()
    self.empty.text:SetText(L("Ce guide n'a pas d'étapes à suivre. Ouvre-le dans la grande fenêtre.",
      "This guide has no steps to follow. Open it in the big window."))
    self.empty:Show()
    return
  end
  local cur, finished = ns.CurrentStep(g, rank)
  self.current = (not finished) and cur or nil
  if self.view and not steps[self.view] then self.view = nil end
  local shown = self.view or cur
  self.card:Show(); self.list:Show()
  self:RenderCard(g, steps[shown], rank, shown == self.current)
  if finished and not self.view then
    self.card.section:SetText("|cff7cdb6b" .. L("Terminé, bravo !", "All done, well done!") .. "|r")
  end
  self.card.prev:SetEnabledLook(shown > 1)
  self.card.next:SetEnabledLook(shown < #steps)
  self.card.now:SetShown(self.view ~= nil)
  self:RenderList(steps, self.current, self.view, rank)
  self:Layout()
  -- keep the shown step visible in the timeline
  local top = (shown - 1) * ROW_H
  local sfH = self.scroll:GetHeight()
  local scroll = self.scroll:GetVerticalScroll()
  if sfH > 0 and (top < scroll or top + ROW_H > scroll + sfH) and self.scroll.bar then
    local _, hi = self.scroll.bar:GetMinMaxValues()
    self.scroll.bar:SetValue(math.max(0, math.min(hi, top - sfH / 2)))
  end
end

ns.On("LOGIN", function()
  T:Create()
  T:Refresh()
end)
ns.On("SKILLS", function() T.view = nil; T:Refresh() end)
ns.On("BAGS", function() T:Refresh() end)
ns.On("ITEMINFO", function() T:Refresh() end)
ns.On("TABS", function() T:Refresh() end)
ns.On("TRACKED", function()
  T.view = nil
  if not T.frame:IsShown() then T:Toggle(true) else T:Refresh() end
end)
