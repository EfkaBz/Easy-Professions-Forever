-- Easy Professions (Forever): minimap button (the game's round gold look)
local _, ns = ...
local L = ns.L

local M = {}
ns.Minimap = M

local function place(b)
  local a = math.rad(ns.db.minimap.angle or 205)
  local x, y = math.cos(a), math.sin(a)
  local w, h = Minimap:GetWidth() / 2 + 10, Minimap:GetHeight() / 2 + 10
  if GetMinimapShape and GetMinimapShape() == "SQUARE" then
    x = math.max(-w, math.min(x * (math.sqrt(2 * w ^ 2) - 10), w))
    y = math.max(-h, math.min(y * (math.sqrt(2 * h ^ 2) - 10), h))
  else
    x, y = x * w, y * h
  end
  b:ClearAllPoints()
  b:SetPoint("CENTER", Minimap, "CENTER", x, y)
end

function M:Create()
  local b = CreateFrame("Button", "EasyProfessionsForeverMinimapButton", Minimap)
  b:SetSize(31, 31)
  b:SetFrameStrata("MEDIUM")
  b:SetFrameLevel(8)
  b:RegisterForClicks("LeftButtonUp", "RightButtonUp")
  b:RegisterForDrag("LeftButton")
  b:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

  local icon = b:CreateTexture(nil, "BACKGROUND")
  icon:SetSize(20, 20)
  icon:SetPoint("TOPLEFT", 7, -5)
  icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing")
  local border = b:CreateTexture(nil, "OVERLAY")
  border:SetSize(53, 53)
  border:SetPoint("TOPLEFT")
  border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")

  b:SetScript("OnClick", function(_, btn)
    if btn == "RightButton" then ns.Tracker:Toggle() else ns.Browser:Toggle() end
  end)
  b:SetScript("OnDragStart", function(s)
    s:SetScript("OnUpdate", function()
      local mx, my = Minimap:GetCenter()
      local cx, cy = GetCursorPosition()
      local scale = Minimap:GetEffectiveScale()
      ns.db.minimap.angle = math.deg(math.atan2(cy / scale - my, cx / scale - mx))
      place(s)
    end)
  end)
  b:SetScript("OnDragStop", function(s) s:SetScript("OnUpdate", nil) end)
  b:SetScript("OnEnter", function(s)
    GameTooltip:SetOwner(s, "ANCHOR_LEFT")
    GameTooltip:AddLine("Easy Professions |cff8e9ac0Forever|r")
    local g = ns.guides[ns.db.tracked or ""]
    local sk = ns.SkillOf(g)
    if g then
      GameTooltip:AddLine(ns.GuideName(g) .. (sk and ("  |cffffffff" .. sk.rank .. "/" .. sk.max .. "|r") or ""), 1, 0.78, 0.24)
    end
    GameTooltip:AddLine(L("Clic gauche : tous les guides", "Left-click: all guides"), 1, 1, 1)
    GameTooltip:AddLine(L("Clic droit : fenêtre de suivi", "Right-click: tracking window"), 1, 1, 1)
    GameTooltip:AddLine(L("Glisser : déplacer", "Drag: move"), 0.6, 0.6, 0.6)
    GameTooltip:Show()
  end)
  b:SetScript("OnLeave", function() GameTooltip:Hide() end)
  self.button = b
  place(b)
  Minimap:HookScript("OnSizeChanged", function() place(b) end)
  C_Timer.After(2, function() place(b) end)
  self:Apply()
end

function M:Apply()
  if self.button then self.button:SetShown(ns.db.minimap.shown) end
end

ns.On("LOGIN", function() M:Create() end)
