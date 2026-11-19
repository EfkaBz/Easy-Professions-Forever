-- Generated from https://www.wow-professions.com/forever/alchemy-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "alchemy",
  order = 1,
  cat = "craft",
  icon = "Interface\\Icons\\Trade_Alchemy",
  title = "Alchemy Leveling Guide 1-300",
  titleFR = "Alchimie",
  url = "https://www.wow-professions.com/forever/alchemy-leveling-guide",
  skill = "alchemy",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever Alchemy leveling guide will show you the fastest and cheapest way to level your Alchemy skill from 1 to 300. You will also find every trainer location and where to train Alchemy past 75, 150 and 225.",
    },
    {
      t = "p",
      x = "Below you will find the full shopping list, the Alchemy trainers by starting zone and capital city, and the cheapest recipes for every skill range from Apprentice to Artisan. Alchemy is best combined with Herbalism, with these two you can save a lot of gold because you don't have to buy the herbs from the Auction House.",
    },
    {
      t = "note",
      x = "This is based on the Forever beta. Leveling takes a long time, so testing the higher levels on live will take a while. If you find something that's off, send me feedback.",
    },
    { t = "h", l = 2, x = "Shopping List" },
    {
      t = "p",
      x = "These numbers are estimates. Once a recipe turns yellow you won't get a skill point from every craft, so you might need a few more or a few less.",
    },
    { t = "h", l = 3, x = "1-150" },
    {
      t = "shop",
      r = {
        { n = 83, id = 2447, ic = "inv_misc_flower_02", x = "Peacebloom" },
        { n = 54, id = 765, ic = "inv_misc_herb_10", x = "Silverleaf" },
        { n = 50, id = 785, ic = "inv_jewelry_talisman_03", x = "Mageroyal" },
        { n = 56, id = 2449, ic = "inv_misc_herb_07", x = "Earthroot" },
        { n = 60, id = 2450, ic = "inv_misc_root_01", x = "Briarthorn" },
        { n = 10, id = 3820, ic = "inv_misc_herb_11", x = "Stranglekelp" },
        { n = 40, id = 6359, ic = "inv_misc_monsterhead_01", x = "Firefin Snapper" },
      },
    },
    { t = "h", l = 3, x = "150-225" },
    {
      t = "shop",
      r = {
        { n = 72, id = 3820, ic = "inv_misc_herb_11", x = "Stranglekelp" },
        { n = 51, id = 3356, ic = "inv_misc_herb_03", x = "Kingsblood" },
        { n = 36, id = 3357, ic = "inv_misc_root_02", x = "Liferoot" },
      },
    },
    { t = "h", l = 3, x = "225-300" },
    {
      t = "shop",
      r = {
        { n = 26, id = 3357, ic = "inv_misc_root_02", x = "Liferoot" },
        { n = 26, id = 3820, ic = "inv_misc_herb_11", x = "Stranglekelp" },
        { n = 25, id = 3358, ic = "inv_misc_herb_08", x = "Khadgar's Whisker" },
        { n = 47, id = 8838, ic = "inv_misc_herb_18", x = "Sungrass" },
        { n = 25, id = 8839, ic = "inv_misc_herb_14", x = "Blindweed" },
        { n = 47, id = 13422, ic = "inv_misc_fish_11", x = "Stonescale Eel" },
      },
    },
    { t = "h", l = 2, x = "Alchemy Trainer Locations" },
    { t = "p", x = "Apprentice Alchemy has no level requirement in Forever, so you can learn it on a fresh character." },
    { t = "p", x = "Every capital city has a trainer. You can also ask a guard, then it will be marked with a red flag on your map." },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "h", l = 4, x = "Capital Cities" },
          { t = "list", i = { "Orgrimmar: {n:0:horde:Whuut}", "Undercity: {n:0:horde:Doctor Martin Felben}", "Thunder Bluff: {n:0:horde:Kray}" } },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Orc, Troll", "Durotar", "{n:0:horde:Miao'zan} in Sen'jin Village" },
              { "Tauren", "Mulgore", "There is no Alchemy trainer in Mulgore, go to {n:0:horde:Kray} on the middle rise in Thunder Bluff" },
              { "Undead", "Tirisfal Glades", "{n:0:horde:Carolai Anise} in the small house at the north-west end of Brill" },
              { "Skyborne", "Zephras Isle", "{n:0::Iaadaria Bitterwind} or {n:0::Valiena Swiftgale} in Valanaar, {n:0::Nyassa Swiftdraught} in Shen'dar Village" },
            },
          },
        },
        {
          { t = "h", l = 4, x = "Capital Cities" },
          {
            t = "list",
            i = { "Stormwind City: {n:0:alliance:Tel'Athir}", "Ironforge: {n:0:alliance:Vosur Brakthel}", "Darnassus: {n:0:alliance:Milla Fairancora}" },
          },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Human", "Elwynn Forest", "{n:0:alliance:Alchemist Mallory} in a cottage in the hills between Stormwind and Northshire" },
              { "Dwarf, Gnome", "Dun Morogh", "There is no Alchemy trainer in Dun Morogh, go to {n:0:alliance:Vosur Brakthel} in Tinker Town in Ironforge" },
              { "Night Elf", "Teldrassil", "{n:0:alliance:Cyndra Kindwhisper} in a small house east of the inn in Dolanaar" },
              { "Skyborne", "Zephras Isle", "{n:0::Iaadaria Bitterwind} or {n:0::Valiena Swiftgale} in Valanaar, {n:0::Nyassa Swiftdraught} in Shen'dar Village" },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "p", x = "You can find every Alchemy trainer for Horde and Alliance on my WoW Forever Alchemy Trainers page." },
    { t = "h", l = 2, x = "Apprentice Alchemy (1-55)", r = "1-55" },
    {
      t = "step",
      r = "1-10",
      b = {
        { t = "p", x = "9x {s:1245250:inv_potion_77:Elixir of Minor Force} - 9 Silverleaf, 9 Empty Vial" },
        {
          t = "p",
          x = "The vials are sold by Alchemy Supply and Trade Supply vendors, most trainers have one nearby. In Undercity the closest one is {n:0:horde:Algernon}, in Dolanaar it's {n:0:alliance:Narret Shadowgrove}.",
        },
      },
      c = {
        {
          n = 9,
          s = 1245250,
          ic = "inv_potion_77",
          x = "Elixir of Minor Force",
          m = {
            { 9, "Silverleaf", 765 },
            { 9, "Empty Vial", 3371 },
          },
        },
      },
    },
    {
      t = "step",
      r = "10-55",
      b = {
        { t = "p", x = "45x {s:7183:inv_potion_63:Elixir of Minor Defense} - 45 Silverleaf, 45 Peacebloom, 45 Empty Vial" },
      },
      c = {
        {
          n = 45,
          s = 7183,
          ic = "inv_potion_63",
          x = "Elixir of Minor Defense",
          m = {
            { 45, "Silverleaf", 765 },
            { 45, "Peacebloom", 2447 },
            { 45, "Empty Vial", 3371 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Journeyman Alchemy (55-150)", r = "55-150" },
    {
      t = "p",
      x = "To train past 75, visit one of these trainers and learn Journeyman Alchemy. You need {b}Alchemy 50{/b} and {b}level 10{/b}:",
    },
    { t = "p", x = "{b}Horde trainers:{/b}" },
    {
      t = "list",
      i = { "Orgrimmar: {n:0:horde:Yelmak}", "Undercity: {n:0:horde:Doctor Marsh}", "Thunder Bluff: {n:0:horde:Bena Winterhoof}" },
    },
    { t = "p", x = "{b}Alliance trainers:{/b}" },
    {
      t = "list",
      i = { "Stormwind City: {n:0:alliance:Lilyssia Nightbreeze}", "Ironforge: {n:0:alliance:Tally Berryfizz}", "Darnassus: {n:0:alliance:Sylvanna Forestmoon}" },
    },
    {
      t = "step",
      r = "55-65",
      b = {
        { t = "p", x = "10x {s:2331:inv_potion_70:Minor Mana Potion} - 10 Mageroyal, 10 Peacebloom, 10 Empty Vial" },
      },
      c = {
        {
          n = 10,
          s = 2331,
          ic = "inv_potion_70",
          x = "Minor Mana Potion",
          m = {
            { 10, "Mageroyal", 785 },
            { 10, "Peacebloom", 2447 },
            { 10, "Empty Vial", 3371 },
          },
        },
      },
    },
    {
      t = "step",
      r = "65-90",
      b = {
        { t = "p", x = "28x {s:2334:inv_potion_42:Elixir of Minor Fortitude} - 56 Earthroot, 28 Peacebloom, 28 Empty Vial" },
      },
      c = {
        {
          n = 28,
          s = 2334,
          ic = "inv_potion_42",
          x = "Elixir of Minor Fortitude",
          m = {
            { 56, "Earthroot", 2449 },
            { 28, "Peacebloom", 2447 },
            { 28, "Empty Vial", 3371 },
          },
        },
      },
    },
    {
      t = "step",
      r = "90-120",
      b = {
        { t = "p", x = "30x {s:3171:inv_potion_06:Elixir of Wisdom} - 30 Mageroyal, 60 Briarthorn, 30 Empty Vial" },
        { t = "p", x = "Keep the elixirs if you also level Tailoring, you will need them for the Gloves of Meditation." },
      },
      c = {
        {
          n = 30,
          s = 3171,
          ic = "inv_potion_06",
          x = "Elixir of Wisdom",
          m = {
            { 30, "Mageroyal", 785 },
            { 60, "Briarthorn", 2450 },
            { 30, "Empty Vial", 3371 },
          },
        },
      },
    },
    {
      t = "step",
      r = "120-130",
      b = {
        { t = "p", x = "10x {s:3173:inv_potion_71:Lesser Mana Potion} - 10 Mageroyal, 10 Stranglekelp, 10 Empty Vial" },
      },
      c = {
        {
          n = 10,
          s = 3173,
          ic = "inv_potion_71",
          x = "Lesser Mana Potion",
          m = {
            { 10, "Mageroyal", 785 },
            { 10, "Stranglekelp", 3820 },
            { 10, "Empty Vial", 3371 },
          },
        },
      },
    },
    {
      t = "step",
      r = "130-150",
      b = {
        { t = "p", x = "20x {s:7837:inv_potion_38:Fire Oil} - 40 Firefin Snapper, 20 Empty Vial" },
        { t = "p", x = "You get 2 oils from every craft. Keep 30 of them, you will need them for the Elixir of Fire Power in the next part." },
      },
      c = {
        {
          n = 20,
          s = 7837,
          ic = "inv_potion_38",
          x = "Fire Oil",
          m = {
            { 40, "Firefin Snapper", 6359 },
            { 20, "Empty Vial", 3371 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Expert Alchemy (150-225)", r = "150-225" },
    {
      t = "p",
      x = "To train past 150, visit {n:0:horde:Doctor Herbert Halsey} in Undercity (Horde) or {n:0:alliance:Ainethil} in Darnassus (Alliance) and learn Expert Alchemy. You need {b}Alchemy 125{/b} and {b}level 20{/b}, and it costs 50 silver.",
    },
    {
      t = "step",
      r = "150-165",
      b = {
        { t = "p", x = "15x {s:7845:inv_potion_55:Elixir of Fire Power} - 30 Fire Oil, 15 Kingsblood, 15 Leaded Vial" },
        { t = "p", x = "These are the Fire Oils you kept." },
      },
      c = {
        {
          n = 15,
          s = 7845,
          ic = "inv_potion_55",
          x = "Elixir of Fire Power",
          m = {
            { 30, "Fire Oil", 6371 },
            { 15, "Kingsblood", 3356 },
            { 15, "Leaded Vial", 3372 },
          },
        },
      },
    },
    {
      t = "step",
      r = "165-195",
      b = {
        { t = "p", x = "36x {s:3452:inv_potion_72:Mana Potion} - 36 Stranglekelp, 36 Kingsblood, 36 Leaded Vial" },
      },
      c = {
        {
          n = 36,
          s = 3452,
          ic = "inv_potion_72",
          x = "Mana Potion",
          m = {
            { 36, "Stranglekelp", 3820 },
            { 36, "Kingsblood", 3356 },
            { 36, "Leaded Vial", 3372 },
          },
        },
      },
    },
    {
      t = "step",
      r = "195-225",
      b = {
        { t = "p", x = "36x {s:7259:inv_potion_06:Nature Protection Potion} - 36 Liferoot, 36 Stranglekelp, 36 Leaded Vial" },
        {
          t = "p",
          x = "{i:6057:inv_scroll_03:Recipe: Nature Protection Potion} is sold by these vendors, it's bind on pickup, so buy it with the character that levels Alchemy:",
        },
        {
          t = "list",
          i = { "{n:0:horde:Bronk} in Feralas", "{n:0:alliance:Logannas} in Feralas", "{n:0::Glyx Brewright} in Stranglethorn Vale", "{n:0::Alchemist Pestlezugg} in Tanaris" },
        },
      },
      c = {
        {
          n = 36,
          s = 7259,
          ic = "inv_potion_06",
          x = "Nature Protection Potion",
          m = {
            { 36, "Liferoot", 3357 },
            { 36, "Stranglekelp", 3820 },
            { 36, "Leaded Vial", 3372 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Artisan Alchemy (225-300)", r = "225-300" },
    {
      t = "p",
      x = "To train past 225, visit {n:0:horde:Rogvar} in Stonard, Swamp of Sorrows (Horde) or {n:0:alliance:Kylanna Windwhisper} in Feathermoon Stronghold, Feralas (Alliance) and learn Artisan Alchemy. You need {b}Alchemy 200{/b} and {b}level 35{/b}.",
    },
    {
      t = "step",
      r = "225-235",
      b = {
        { t = "p", x = "26x {s:7259:inv_potion_06:Nature Protection Potion} - 26 Liferoot, 26 Stranglekelp, 26 Leaded Vial" },
      },
      c = {
        {
          n = 26,
          s = 7259,
          ic = "inv_potion_06",
          x = "Nature Protection Potion",
          m = {
            { 26, "Liferoot", 3357 },
            { 26, "Stranglekelp", 3820 },
            { 26, "Leaded Vial", 3372 },
          },
        },
      },
    },
    {
      t = "step",
      r = "235-250",
      b = {
        { t = "p", x = "15x {s:11465:inv_potion_10:Elixir of Greater Intellect} - 15 Blindweed, 15 Khadgar's Whisker, 15 Crystal Vial" },
      },
      c = {
        {
          n = 15,
          s = 11465,
          ic = "inv_potion_10",
          x = "Elixir of Greater Intellect",
          m = {
            { 15, "Blindweed", 8839 },
            { 15, "Khadgar's Whisker", 3358 },
            { 15, "Crystal Vial", 8925 },
          },
        },
      },
    },
    {
      t = "step",
      r = "250-260",
      b = {
        { t = "p", x = "47x {s:17551:inv_potion_68:Stonescale Oil} - 47 Stonescale Eel, 47 Leaded Vial" },
        { t = "p", x = "{b}Keep all of them{/b}, one craft makes 2 and the elixirs at 265 need all 94." },
        { t = "h", l = 4, x = "Alternative recipe" },
        {
          t = "p",
          x = "If {i:13422:inv_misc_fish_11:Stonescale Eel} is expensive, skip this and keep making the Elixir of Greater Intellect until 265 (about 21), then make the Superior Mana Potions under 265-300.",
        },
      },
      c = {
        {
          n = 47,
          s = 17551,
          ic = "inv_potion_68",
          x = "Stonescale Oil",
          m = {
            { 47, "Stonescale Eel", 13422 },
            { 47, "Leaded Vial", 3372 },
          },
        },
      },
    },
    {
      t = "step",
      r = "260-265",
      b = {
        { t = "p", x = "10x {s:11465:inv_potion_10:Elixir of Greater Intellect} - 10 Blindweed, 10 Khadgar's Whisker, 10 Crystal Vial" },
      },
      c = {
        {
          n = 10,
          s = 11465,
          ic = "inv_potion_10",
          x = "Elixir of Greater Intellect",
          m = {
            { 10, "Blindweed", 8839 },
            { 10, "Khadgar's Whisker", 3358 },
            { 10, "Crystal Vial", 8925 },
          },
        },
      },
    },
    {
      t = "step",
      r = "265-300",
      b = {
        { t = "p", x = "47x {s:17554:inv_potion_66:Elixir of Greater Defense} - 94 Stonescale Oil, 47 Sungrass, 47 Crystal Vial" },
        {
          t = "p",
          x = "{i:13478:inv_scroll_03:Recipe: Elixir of Superior Defense} is sold by {n:0:horde:Kor'geld} in Orgrimmar and {n:0:alliance:Soolie Berryfizz} in Ironforge.",
        },
        { t = "h", l = 4, x = "Alternative recipe" },
        { t = "p", x = "If you skipped the Stonescale Oil, make this:" },
        { t = "p", x = "55x {s:17553:inv_potion_74:Superior Mana Potion} - 110 Sungrass, 110 Blindweed, 55 Crystal Vial." },
        {
          t = "p",
          x = "{i:13477:inv_scroll_03:Recipe: Superior Mana Potion} is sold by {n:0:horde:Algernon} in Undercity and {n:0:alliance:Ulthir} in Darnassus.",
        },
      },
      c = {
        {
          n = 47,
          s = 17554,
          ic = "inv_potion_66",
          x = "Elixir of Greater Defense",
          m = {
            { 94, "Stonescale Oil", 13423 },
            { 47, "Sungrass", 8838 },
            { 47, "Crystal Vial", 8925 },
          },
        },
      },
      a = {
        {
          n = 55,
          s = 17553,
          ic = "inv_potion_74",
          x = "Superior Mana Potion",
          m = {
            { 110, "Sungrass", 8838 },
            { 110, "Blindweed", 8839 },
            { 55, "Crystal Vial", 8925 },
          },
        },
      },
    },
  },
})
