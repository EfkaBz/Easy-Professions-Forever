-- Easy Professions (Forever): localization, chosen in the title bar ("auto" = client language).
-- English strings are the keys; Locales\*.lua fill ns.LOCALES[lang].
local _, ns = ...

-- game locale, button text, native name (menu order)
ns.LANGS = {
  { "enUS", "EN", "English" },
  { "frFR", "FR", "Français" },
  { "deDE", "DE", "Deutsch" },
  { "esES", "ES", "Español" },
  { "itIT", "IT", "Italiano" },
  { "ptBR", "PT", "Português" },
  { "ruRU", "RU", "Русский" },
  { "koKR", "KO", "한국어" },
  { "zhCN", "ZH", "简体中文" },
  { "zhTW", "TW", "繁體中文" },
}

ns.LOCALES = {}
for _, l in ipairs(ns.LANGS) do ns.LOCALES[l[1]] = {} end

-- client locales without their own strings use the closest language
local CLIENT = { enGB = "enUS", esMX = "esES", ptPT = "ptBR" }

function ns.ClientLang()
  local locale = GetLocale()
  locale = CLIENT[locale] or locale
  return ns.LOCALES[locale] and locale or "enUS"
end

-- active language, set at ADDON_LOADED from the saved choice
ns.LANG = ns.ClientLang()

function ns.ApplyLanguage(lang)
  ns.LANG = ns.LOCALES[lang] and lang or ns.ClientLang()
end

-- L("english") or L("français", "english"): the French text is written in the code,
-- the other languages come from ns.LOCALES; a missing translation falls back to English
function ns.L(a, b)
  if b == nil then return ns.LOCALES[ns.LANG][a] or a end
  if ns.LANG == "frFR" then return a end
  return ns.LOCALES[ns.LANG][b] or b
end

-- guide texts (from the site, in English): Data\Tr\<lang>.lua fill ns.TR[lang][english]
ns.TR = {}
function ns.AddTranslation(lang, t)
  local cur = ns.TR[lang] or {}
  for k, v in pairs(t) do cur[k] = v end
  ns.TR[lang] = cur
end
function ns.T(text)
  local t = ns.TR[ns.LANG]
  if not t or not text then return text end
  local tr = t[text]
  if tr then return tr end
  -- list items keep their indentation tabs, the table has the text without them
  local tabs, rest = text:match("^(\t+)(.*)$")
  if tabs and t[rest] then return tabs .. t[rest] end
  return text
end

-- game font of a language: a forced language may need another alphabet than the client's
local FONTS = {
  ruRU = "Fonts\\FRIZQT___CYR.TTF",
  koKR = "Fonts\\2002.TTF",
  zhCN = "Fonts\\ARKai_T.ttf",
  zhTW = "Fonts\\bLEI00D.ttf",
}

function ns.FontPath(lang)
  lang = lang or ns.LANG
  if lang == ns.ClientLang() then return STANDARD_TEXT_FONT end
  return FONTS[lang] or "Fonts\\FRIZQT__.TTF"
end
