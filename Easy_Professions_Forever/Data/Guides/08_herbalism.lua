-- Generated from https://www.wow-professions.com/forever/herbalism-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "herbalism",
  order = 8,
  cat = "gather",
  icon = "Interface\\Icons\\Trade_Herbalism",
  title = "Herbalism Leveling Guide 1-300",
  titleFR = "Herboristerie",
  url = "https://www.wow-professions.com/forever/herbalism-leveling-guide",
  skill = "herbalism",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever Herbalism leveling guide will show you the fastest way to level Herbalism from 1 to 300. You will also find a route map for every zone, every trainer location and where to train Herbalism past 75, 150 and 225.",
    },
    {
      t = "p",
      x = "Below you will find the Herbalism trainers by starting zone and capital city, and the best zones to pick herbs in for every skill range. Herbalism goes well with Alchemy because you can use the herbs you pick to make potions and elixirs, so check out my Forever Alchemy leveling guide if you want to level Alchemy. But keep in mind, this guide is made to level Herbalism as fast as possible, so sometimes the herbs you pick are not the best ones for Alchemy.",
    },
    { t = "p", x = "WoW Forever added a couple of new herbs, seeds and recipes. You can check them out here:" },
    {
      t = "note",
      x = "This is based on the Forever beta. Leveling takes a long time, so testing the higher levels on live will take a while. If you find something that's off, send me feedback.",
    },
    { t = "h", l = 2, x = "Herbalism Trainer Locations" },
    {
      t = "p",
      x = "Every capital city has a Herbalism trainer. You can also ask a guard where the herbalist is, then it will be marked with a red flag on your map.",
    },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "p", x = "{b}Capital cities:{/b}" },
          {
            t = "list",
            i = { "Orgrimmar: {n:0:horde:Jandi}", "Undercity: {n:0:horde:Martha Alliestar}", "Thunder Bluff: {n:0:horde:Komin Winterhoof}" },
          },
          { t = "p", x = "{b}Starting zones:{/b}" },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Orc, Troll", "Durotar", "{n:0:horde:Zor'la} in the Valley of Trials (only up to 75) {n:0:horde:Mishiki} in Sen'jin Village" },
              { "Tauren", "Mulgore", "{n:0:horde:Garan Sunstrider} in Camp Narache (only up to 75) {n:0:horde:Komin Winterhoof} in Thunder Bluff" },
              { "Undead", "Tirisfal Glades", "{n:0:horde:Florence Nightshade} in Deathknell (only up to 75) {n:0:horde:Faruza} in Brill" },
              { "Skyborne", "Zephras Isle", "There is no trainer in Thendal Village, where you start, but you don't need one. {q:93552::Harvesting Windstones} is one of the first quests you get in Thendal Village. Pick {i:247841:inv_10_specialization_professionbook_herbalism_color1:Wild Harvest} as your reward, it teaches you Herbalism. The trainers on the island are {n:0::Syriel Nightrain} in Valanaar and {n:0::Halassa Fernbreeze} in Shen'dar Village." },
            },
          },
        },
        {
          { t = "p", x = "{b}Capital cities:{/b}" },
          {
            t = "list",
            i = { "Stormwind City: {n:0:alliance:Tannysa}", "Ironforge: {n:0:alliance:Reyna Stonebranch}", "Darnassus: {n:0:alliance:Firodren Mooncaller}" },
          },
          { t = "p", x = "{b}Starting zones:{/b}" },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Human", "Elwynn Forest", "{n:0:alliance:Nancy Songflower} (only up to 75) {n:0:alliance:Herbalist Pomeroy}" },
              { "Dwarf, Gnome", "Dun Morogh", "{n:0:alliance:Emrys Flintbeard} (only up to 75) {n:0:alliance:Reyna Stonebranch} in Ironforge" },
              { "Night Elf", "Teldrassil", "{n:0:alliance:Eleyna Duskbreeze} at Aldrassil in Shadowglen (only up to 75) {n:0:alliance:Malorne Bladeleaf} in Dolanaar" },
              { "Skyborne", "Zephras Isle", "There is no trainer in Thendal Village, where you start, but you don't need one. {q:93552::Harvesting Windstones} is one of the first quests you get in Thendal Village. Pick {i:247841:inv_10_specialization_professionbook_herbalism_color1:Wild Harvest} as your reward, it teaches you Herbalism. The trainers on the island are {n:0::Syriel Nightrain} in Valanaar and {n:0::Halassa Fernbreeze} in Shen'dar Village." },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "p", x = "You can find every Herbalism trainer for Horde and Alliance on my WoW Forever Herbalism Trainers page." },
    { t = "h", l = 2, x = "Track Herbs on Your Minimap" },
    { t = "p", x = "You can only track one thing at a time, so {b}you can't track herbs and minerals together{/b}." },
    { t = "p", x = "You learn {s:2383:inv_misc_flower_02:Find Herbs} together with Herbalism, but it's not turned on by default:" },
    {
      t = "list",
      i = { "Open the Professions window with the hammer and pick button, the 2nd button in the menu at the bottom of your screen.", "Click Find Herbs in the Herbalism box. {b}I recommend dragging it to your action bar, close to the buffs you use after you die.{/b} This way you make a habit out of it and you are less likely to forget it.", "The Find Herbs buff shows up next to your minimap. {b}Your tracking turns off every time you die, so don't forget to turn it back on!{/b}" },
    },
    { t = "h", l = 2, x = "Herbalism Skill Bonuses" },
    {
      t = "p",
      x = "You don't need these, but they help when you are stuck between two herbs. With +5 you can pick Kingsblood from 120 instead of 125, so you can move on earlier.",
    },
    {
      t = "table",
      h = 1,
      r = {
        { "Item", "Herbalism", "How to get it" },
        { "{s:13617:spell_holy_greaterheal:Enchant Gloves - Herbalism}", "+2", "An enchanter" },
        { "{s:13868:spell_holy_greaterheal:Enchant Gloves - Advanced Herbalism}", "+5", "An enchanter" },
        { "{i:7349:inv_gauntlets_18:Herbalist's Gloves}", "+5", "A world drop, check the Auction House" },
        { "{i:10841:inv_drink_15:Goldthorn Tea}", "+15", "Henry Stern in Razorfen Downs teaches the recipe, it {b}requires Cooking 175{/b}. Take the left path at the start of the instance and go all the way to the end, to the stables, knock down the walls and talk to him." },
      },
    },
    {
      t = "p",
      x = "can be very handy when you find a herb you can't pick yet and you are only a few points short. It will probably be pretty expensive early on because of the Goldthorn prices, but it's worth keeping a few with you while you level Herbalism.",
    },
    { t = "h", l = 2, x = "1-70", r = "1-70" },
    {
      t = "p",
      x = "Every starting zone is full of herbs, so it doesn't really matter which one you choose. The respawn rate is so fast that without a mount you often can't even finish a full lap, you just run around in circles and pick the herbs as you see them.",
    },
    {
      t = "p",
      x = "Herbs in these zones: {i:2447:inv_misc_flower_02:Peacebloom}, {i:765:inv_misc_herb_10:Silverleaf}, {i:2449:inv_misc_herb_07:Earthroot}",
    },
    { t = "p", x = "Earthroot requires Herbalism 15." },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          {
            t = "tabs",
            n = { "Durotar", "Mulgore", "Tirisfal Glades", "Zephras Isle" },
            p = {
              {
                { t = "img", f = "herbalism-leveling-forever-durotar", a = "Herbalism route in Durotar", w = 512, h = 341, u = 1, v = 0.666 },
              },
              {
                { t = "img", f = "herbalism-leveling-forever-mulgore", a = "Herbalism route in Mulgore", w = 512, h = 341, u = 1, v = 0.666 },
              },
              {
                {
                  t = "img",
                  f = "herbalism-leveling-forever-tirisfal-glades",
                  a = "Herbalism route in Tirisfal Glades",
                  w = 512,
                  h = 341,
                  u = 1,
                  v = 0.666,
                },
              },
              {
                {
                  t = "p",
                  x = "{q:93552::Harvesting Windstones} is one of the first quests you get in Thendal Village. Pick {i:247841:inv_10_specialization_professionbook_herbalism_color1:Wild Harvest} as your reward, it teaches you Herbalism.",
                },
                { t = "img", f = "herbalism-leveling-forever-zephras-isle", a = "Herbalism route on Zephras Isle", w = 512, h = 341, u = 1, v = 0.666 },
              },
            },
          },
        },
        {
          {
            t = "tabs",
            n = { "Elwynn Forest", "Dun Morogh", "Teldrassil", "Zephras Isle" },
            p = {
              {
                { t = "img", f = "herbalism-leveling-forever-elwynn-forest", a = "Herbalism route in Elwynn Forest", w = 512, h = 341, u = 1, v = 0.666 },
              },
              {
                { t = "img", f = "herbalism-leveling-forever-dun-morogh", a = "Herbalism route in Dun Morogh", w = 512, h = 341, u = 1, v = 0.666 },
              },
              {
                { t = "img", f = "herbalism-leveling-forever-teldrassil", a = "Herbalism route in Teldrassil", w = 512, h = 341, u = 1, v = 0.666 },
              },
              {
                {
                  t = "p",
                  x = "{q:93552::Harvesting Windstones} is one of the first quests you get in Thendal Village. Pick {i:247841:inv_10_specialization_professionbook_herbalism_color1:Wild Harvest} as your reward, it teaches you Herbalism.",
                },
                { t = "img", f = "herbalism-leveling-forever-zephras-isle", a = "Herbalism route on Zephras Isle", w = 512, h = 341, u = 1, v = 0.666 },
              },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "h", l = 2, x = "70-115", r = "70-115" },
    {
      t = "p",
      x = "Visit your trainer and learn Journeyman Herbalism, it requires Herbalism 50. The new Junior Herbalism Trainers in the starting areas won't teach you Journeyman Herbalism.",
    },
    {
      t = "p",
      x = "Herbs in these zones: {i:785:inv_jewelry_talisman_03:Mageroyal}, {i:2450:inv_misc_root_01:Briarthorn}, {i:3820:inv_misc_herb_11:Stranglekelp}",
    },
    { t = "p", x = "Stranglekelp requires Herbalism 85, so you can't pick it right away." },
    {
      t = "tabs",
      n = { "Silverpine Forest", "Loch Modan", "Darkshore" },
      p = {
        {
          {
            t = "p",
            x = "The respawn rate in the lower part of Silverpine Forest is fast enough that you can basically run in small circles in the marked area. I tested this without a mount, so with a mount it might be different, but then running up and down the main road to the loop should work fine as well.",
          },
          {
            t = "img",
            f = "herbalism-leveling-forever-silverpine-forest",
            a = "Herbalism route in Silverpine Forest",
            w = 512,
            h = 341,
            u = 1,
            v = 0.666,
          },
        },
        {
          { t = "p", x = "A very easy route to follow, but there might be a bit fewer herbs than in Darkshore." },
          { t = "img", f = "herbalism-leveling-forever-loch-modan", a = "Herbalism route in Loch Modan", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          {
            t = "p",
            x = "Darkshore has herbs everywhere. I used this loop, but you can also expand it to the upper part of the map. The respawn rate is fast, so you can do smaller circles in different areas. I just found this route pretty easy and chill to follow.",
          },
          { t = "img", f = "herbalism-leveling-forever-darkshore", a = "Herbalism route in Darkshore", w = 512, h = 341, u = 1, v = 0.666 },
        },
      },
    },
    { t = "h", l = 2, x = "115-170", r = "115-170" },
    { t = "p", x = "To train past 150, visit your trainer and learn Expert Herbalism, it requires Herbalism 125." },
    {
      t = "p",
      x = "Herbs in these zones: {i:2453:inv_misc_herb_01:Bruiseweed}, {i:3355:inv_misc_flower_01:Wild Steelbloom}, {i:3820:inv_misc_herb_11:Stranglekelp}, {i:3356:inv_misc_herb_03:Kingsblood}, {i:3357:inv_misc_root_02:Liferoot}",
    },
    { t = "p", x = "Kingsblood requires Herbalism 125 and Liferoot 150, so you can't pick them right away." },
    {
      t = "tabs",
      n = { "Hillsbrad Foothills", "Stonetalon Mountains" },
      p = {
        {
          {
            t = "p",
            x = "Running this loop in Hillsbrad Foothills gives the herbs enough time to respawn, but I tested it without a mount, so with a mount it might be different.",
          },
          {
            t = "img",
            f = "herbalism-leveling-forever-hillsbrad-foothills",
            a = "Herbalism route in Hillsbrad Foothills",
            w = 512,
            h = 341,
            u = 1,
            v = 0.666,
          },
        },
        {
          { t = "p", x = "All three areas are good here:" },
          {
            t = "list",
            i = { "The mobs here are only around level 14-15, so this is the lowest level area where you can safely farm these herbs.", "A good alternative if someone is already farming the first area. The mobs are higher level here, around 25.", "This area is usually pretty crowded and full of mobs. {b}I only recommend it if you are over 125 already{/b}, because there is more Kingsblood here." },
          },
          {
            t = "img",
            f = "herbalism-leveling-forever-stonetalon-mountains",
            a = "Herbalism route in Stonetalon Mountains",
            w = 512,
            h = 341,
            u = 1,
            v = 0.666,
          },
        },
      },
    },
    { t = "h", l = 2, x = "170-205", r = "170-205" },
    {
      t = "note",
      x = "From this point the guide follows the standard Classic Herbalism routes. The beta cap was 30, so I couldn't test the higher level routes. I'll revise this section once I level my character higher on live, but the main change is the herb respawn rate, so most routes should work.",
    },
    {
      t = "p",
      x = "Herbs in these zones: {i:3356:inv_misc_herb_03:Kingsblood}, {i:3357:inv_misc_root_02:Liferoot}, {i:3818:inv_misc_herb_12:Fadeleaf}, {i:3821:inv_misc_herb_15:Goldthorn}, {i:3358:inv_misc_herb_08:Khadgar's Whisker}",
    },
    { t = "p", x = "Khadgar's Whisker requires Herbalism 185, so you can't pick it right away." },
    {
      t = "tabs",
      n = { "Stranglethorn Vale", "Arathi Highlands" },
      p = {
        {
          {
            t = "img",
            f = "herbalism-leveling-forever-stranglethorn-vale",
            a = "Herbalism route in Stranglethorn Vale",
            w = 512,
            h = 335,
            u = 1,
            v = 0.6543,
          },
        },
        {
          {
            t = "img",
            f = "herbalism-leveling-forever-arathi-highlands",
            a = "Herbalism route in Arathi Highlands",
            w = 512,
            h = 335,
            u = 1,
            v = 0.6543,
          },
        },
      },
    },
    { t = "h", l = 2, x = "205-230", r = "205-230" },
    {
      t = "p",
      x = "{b}Learn Artisan Herbalism before you leave for these zones{/b}, it requires Herbalism 200. There is no trainer in Tanaris or Searing Gorge, so if you skip it, you have to fly back at 225.",
    },
    { t = "p", x = "Herbs in these zones: {i:8831:inv_misc_herb_17:Purple Lotus}, {i:4625:inv_misc_herb_19:Firebloom}" },
    {
      t = "tabs",
      n = { "Tanaris", "Searing Gorge" },
      p = {
        {
          { t = "img", f = "herbalism-leveling-forever-tanaris", a = "Herbalism route in Tanaris", w = 512, h = 335, u = 1, v = 0.6543 },
        },
        {
          { t = "img", f = "herbalism-leveling-forever-searing-gorge", a = "Herbalism route in Searing Gorge", w = 512, h = 335, u = 1, v = 0.6543 },
        },
      },
    },
    { t = "h", l = 2, x = "230-270", r = "230-270" },
    {
      t = "p",
      x = "Herbs in The Hinterlands: {i:8838:inv_misc_herb_18:Sungrass}, {i:8831:inv_misc_herb_17:Purple Lotus}, {i:8845:inv_mushroom_08:Ghost Mushroom}, {i:13464:inv_misc_herb_sansamroot:Golden Sansam}",
    },
    {
      t = "p",
      x = "I marked a cave with a red X, there are a lot of Ghost Mushrooms in the cave, but you can only pick them with Herbalism 245.",
    },
    {
      t = "img",
      f = "herbalism-leveling-forever-the-hinterlands",
      a = "Herbalism route in The Hinterlands",
      w = 512,
      h = 335,
      u = 1,
      v = 0.6543,
    },
    { t = "h", l = 2, x = "270-300", r = "270-300" },
    {
      t = "p",
      x = "Herbs in Felwood: {i:8838:inv_misc_herb_18:Sungrass}, {i:8846:inv_misc_herb_16:Gromsblood}, {i:13464:inv_misc_herb_sansamroot:Golden Sansam}, {i:13463:inv_misc_herb_dreamfoil:Dreamfoil}, {i:13465:inv_misc_herb_mountainsilversage:Mountain Silversage}, {i:13466:inv_misc_herb_plaguebloom:Plaguebloom}",
    },
    { t = "img", f = "herbalism-leveling-forever-felwood", a = "Herbalism route in Felwood", w = 512, h = 335, u = 1, v = 0.6543 },
  },
})
