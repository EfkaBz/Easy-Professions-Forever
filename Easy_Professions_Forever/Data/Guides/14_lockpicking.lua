-- Generated from https://www.wow-professions.com/forever/lockpicking-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "lockpicking",
  order = 14,
  cat = "second",
  icon = "Interface\\Icons\\Spell_Nature_MoonKey",
  title = "Lockpicking Leveling Guide 1-300",
  titleFR = "Crochetage",
  url = "https://www.wow-professions.com/forever/lockpicking-leveling-guide",
  skill = "lockpicking",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever Lockpicking leveling guide will show you the fastest way to level Lockpicking from 1 to 300, with the best place to pick locks for each skill range.",
    },
    { t = "h", l = 2, x = "Max Lockpicking Skill by Level" },
    {
      t = "p",
      x = "{b}Your Lockpicking skill can't go higher than 5 times your level{/b}, so you have to level your character to level Lockpicking. This is the level you need for each part of the guide:",
    },
    {
      t = "table",
      h = 1,
      r = {
        { "Your level", "Max Lockpicking skill" },
        { "20", "100" },
        { "30", "150" },
        { "45", "225" },
        { "60", "300" },
      },
    },
    { t = "h", l = 2, x = "1-100", r = "1-100" },
    {
      t = "note",
      x = "I originally made this guide with my rogue in Classic. In WoW Forever I'm leveling a hunter, so a friend of mine checks the spots on his rogue, and he confirmed the Horde 1-100 part. Readers told me where they leveled from 150 to 300. I'm assuming the rest is the same as in Classic, but I will confirm it later. If something looks off, send me feedback.",
    },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          {
            t = "p",
            x = "Go to the ship near Ratchet in The Barrens. The Buccaneer's Strongboxes there respawn after a few seconds, so even two rogues can skill up there at the same time. {b}They are inside the ship{/b}, at the spot marked on the map below.",
          },
          {
            t = "p",
            x = "There is another chest at the bottom of the ship called The Jewel of the Southsea. Don't open it if you are low level, because it spawns a mob that will kill you.",
          },
          { t = "img", f = "barrens-lockpicking-leveling-m", a = "", w = 512, h = 335, u = 1, v = 0.6543 },
        },
        {
          {
            t = "p",
            x = "There are a bunch of Practice Lockboxes in Redridge Mountains, north of Lake Everstill. They respawn really fast, so you can get to 100 there easily.",
          },
          { t = "img", f = "redridge-lockpicking-leveling-m", a = "", w = 512, h = 335, u = 1, v = 0.6543 },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "h", l = 2, x = "100-150", r = "100-150" },
    { t = "p", x = "Go to Zoram Strand in Ashenvale and look for Waterlogged Footlockers along the shore, on land." },
    { t = "img", f = "ashenvale-lockpicking-leveling-m", a = "", w = 512, h = 335, u = 1, v = 0.6543 },
    { t = "h", l = 2, x = "150-225", r = "150-225" },
    {
      t = "p",
      x = "Go to Angor Fortress in Badlands. There are two kinds of footlockers there, the Battered Footlockers upstairs need 150, and the Dented Footlockers downstairs need {b}175{/b}.",
    },
    { t = "p", x = "The footlockers downstairs give a skill point every time until 215, so you can stay here until 225." },
    { t = "p", x = "Don't bother pickpocketing the mobs there, because their boxes are too low level to give any skill." },
    { t = "img", f = "badlands-lockpicking-leveling-m", a = "", w = 512, h = 335, u = 1, v = 0.6543 },
    { t = "h", l = 2, x = "225-300", r = "225-300" },
    {
      t = "p",
      x = "Go to The Slag Pit, the cave in the middle of Searing Gorge, and pick the footlockers there. The ones on the upper part give skill points all the way to 300. They stay yellow until 290 and turn green after that, so the last 10 points take longer.",
    },
    {
      t = "note",
      x = "{b}There are two kinds of Dented Footlockers in the Slag Pit{/b}, with the same name. The ones on the lower part need 200 and the ones on the upper part need 225. Pick both until the lower ones stop giving skill points, then stay on the upper part.",
    },
    { t = "p", x = "Don't bother pickpocketing the mobs there, because their boxes are too low level to give much skill." },
    { t = "img", f = "searing-gorge-lockpicking-leveling-m", a = "", w = 512, h = 335, u = 1, v = 0.6543 },
  },
})
