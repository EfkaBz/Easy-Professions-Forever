-- Generated from https://www.wow-professions.com/forever/blacksmithing-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "blacksmithing",
  order = 2,
  cat = "craft",
  icon = "Interface\\Icons\\Trade_BlackSmithing",
  title = "Blacksmithing Leveling Guide 1-300",
  titleFR = "Forge",
  url = "https://www.wow-professions.com/forever/blacksmithing-leveling-guide",
  skill = "blacksmithing",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever Blacksmithing leveling guide will show you the fastest and cheapest way to level your Blacksmithing skill from 1 to 300. You will also find every trainer location and where to train Blacksmithing past 75, 150 and 225.",
    },
    {
      t = "p",
      x = "Below you will find the full shopping list, the Blacksmithing trainers by starting zone and capital city, and the cheapest recipes for every skill range from Apprentice to Artisan. Blacksmithing uses a lot of ore, so I recommend leveling it together with Mining, you will need a lot of gold if you want to buy everything from the Auction House.",
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
        { n = 90, id = 2835, ic = "inv_stone_06", x = "Rough Stone" },
        { n = 180, id = 2840, ic = "inv_ingot_02", x = "Copper Bar" },
        { n = 5, id = 2842, ic = "inv_ingot_01", x = "Silver Bar" },
        { n = 72, id = 2836, ic = "inv_stone_09", x = "Coarse Stone" },
        { n = 290, id = 2841, ic = "inv_ingot_bronze", x = "Bronze Bar" },
        { n = 60, id = 2838, ic = "inv_stone_12", x = "Heavy Stone" },
        { n = 58, id = 2319, ic = "inv_misc_leatherscrap_05", x = "Medium Leather" },
        { n = 96, id = 2880, ic = "inv_misc_ammo_gunpowder_02", x = "Weak Flux" },
        { n = 10, id = 3466, ic = "inv_misc_ammo_gunpowder_01", x = "Strong Flux" },
      },
    },
    { t = "h", l = 3, x = "150-225" },
    {
      t = "shop",
      r = {
        { n = 180, id = 3575, ic = "inv_ingot_iron", x = "Iron Bar" },
        { n = 30, id = 2605, ic = "inv_potion_12", x = "Green Dye" },
        { n = 32, id = 7912, ic = "inv_stone_10", x = "Solid Stone" },
        { n = 100, id = 3859, ic = "inv_ingot_steel", x = "Steel Bar" },
        { n = 60, id = 2838, ic = "inv_stone_12", x = "Heavy Stone" },
        { n = 436, id = 3860, ic = "inv_ingot_06", x = "Mithril Bar" },
        { n = 24, id = 4234, ic = "inv_misc_leatherscrap_07", x = "Heavy Leather" },
        { n = 12, id = 3864, ic = "inv_misc_gem_opal_02", x = "Citrine" },
      },
    },
    { t = "h", l = 3, x = "225-300" },
    { t = "p", x = "The Thorium Bars include the 140 you need for the four quests." },
    {
      t = "shop",
      r = {
        { n = 5, id = 12365, ic = "inv_misc_stonetablet_07", x = "Dense Stone" },
        { n = 224, id = 3860, ic = "inv_ingot_06", x = "Mithril Bar" },
        { n = 64, id = 4304, ic = "inv_misc_leatherscrap_08", x = "Thick Leather" },
        { n = 1910, id = 12359, ic = "inv_ingot_07", x = "Thorium Bar" },
        { n = 30, id = 8170, ic = "inv_misc_leatherscrap_02", x = "Rugged Leather" },
        { n = 67, id = 7910, ic = "inv_misc_gem_ruby_02", x = "Star Ruby" },
        { n = 25, id = 7909, ic = "inv_misc_gem_crystal_02", x = "Aquamarine" },
      },
    },
    { t = "h", l = 2, x = "Blacksmithing Trainer Locations" },
    { t = "p", x = "Apprentice Blacksmithing has no level requirement in Forever, so you can learn it on a fresh character." },
    {
      t = "p",
      x = "Every capital city has a trainer except Darnassus. You can also ask a guard, then it will be marked with a red flag on your map.",
    },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "h", l = 4, x = "Capital Cities" },
          { t = "list", i = { "Orgrimmar: {n:0:horde:Ug'thok}", "Undercity: {n:0:horde:Basil Frye}", "Thunder Bluff: {n:0:horde:Thrag Stonehoof}" } },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Orc, Troll", "Durotar", "{n:0:horde:Dwukk} at the forge in Razor Hill" },
              { "Tauren", "Mulgore", "There is no Blacksmithing trainer in Mulgore, go to {n:0:horde:Thrag Stonehoof} on the lower rise in Thunder Bluff" },
              { "Undead", "Tirisfal Glades", "{n:0:horde:Angus Hammerhand} at Bandarion Keep. Nobody near him sells a {i:5956:inv_hammer_20:Blacksmith Hammer}, {b}buy one before you go{/b} from {n:0:horde:Walter Mason} in Deathknell or {n:0:horde:Abigail Shiel} in Brill." },
              { "Skyborne", "Zephras Isle", "{n:0::Daeann Steelwind} in Valanaar, {n:0::Aedi Thriceforged} in Shen'dar Village" },
            },
          },
        },
        {
          { t = "h", l = 4, x = "Capital Cities" },
          { t = "list", i = { "Stormwind City: {n:0:alliance:Dane Lindgren}", "Ironforge: {n:0:alliance:Groum Stonebeard}" } },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Human", "Elwynn Forest", "{n:0:alliance:Smith Argus} in Goldshire, across from the inn" },
              { "Dwarf, Gnome", "Dun Morogh", "{n:0:alliance:Tognus Flintfire} in Kharanos, across from the Thunderbrew Distillery" },
              { "Night Elf", "Teldrassil", "There is no Blacksmithing trainer in Teldrassil or Darnassus, the closest one is {n:0:alliance:Delfrum Flintbeard} in Auberdine, Darkshore" },
              { "Skyborne", "Zephras Isle", "{n:0::Daeann Steelwind} in Valanaar, {n:0::Aedi Thriceforged} in Shen'dar Village" },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "p", x = "You can find every Blacksmithing trainer for Horde and Alliance on my WoW Forever Blacksmithing Trainers page." },
    { t = "h", l = 2, x = "Apprentice Blacksmithing (1-75)", r = "1-75" },
    {
      t = "p",
      x = "Buy a {i:5956:inv_hammer_20:Blacksmith Hammer} when you learn Blacksmithing, most recipes need it, so you can craft gear for yourself while you level. It costs a few copper, open your faction below to see who sells it closest to your trainer.",
    },
    { t = "p", x = "Horde vendors" },
    {
      t = "table",
      h = 1,
      r = {
        { "Zone", "Vendor" },
        { "Orgrimmar", "{n:0:horde:Sumi}, right next to the trainer" },
        { "Undercity", "{n:0:horde:Samuel Van Brunt}, right next to the trainer" },
        { "Thunder Bluff", "{n:0:horde:Taur Stonehoof}, right next to the trainer" },
        { "Durotar", "{n:0:horde:Flakk} in Razor Hill" },
        { "Tirisfal Glades", "{n:0:horde:Walter Mason} in Deathknell {n:0:horde:Abigail Shiel} in Brill" },
        { "Zephras Isle", "{n:0::Halavuul Cragwind}, the Mining trainer in Valanaar {n:0::Aedi Thriceforged} in Shen'dar Village" },
      },
    },
    { t = "p", x = "Alliance vendors" },
    {
      t = "table",
      h = 1,
      r = {
        { "Zone", "Vendor" },
        { "Stormwind City", "{n:0:alliance:Kaita Deepforge}, right next to the trainer" },
        { "Ironforge", "{n:0:alliance:Thurgrum Deepforge}, right next to the trainer" },
        { "Elwynn Forest", "{n:0:alliance:Tharynn Bouden} in Goldshire" },
        { "Dun Morogh", "{n:0:alliance:Thrawn Boltar}, right next to the trainer" },
        { "Darkshore", "{n:0:alliance:Elisa Steelhand} in Auberdine, right next to the trainer" },
        { "Zephras Isle", "{n:0::Halavuul Cragwind}, the Mining trainer in Valanaar {n:0::Aedi Thriceforged} in Shen'dar Village" },
      },
    },
    {
      t = "step",
      r = "1-25",
      b = {
        { t = "p", x = "30x {s:2660:inv_stone_sharpeningstone_01:Rough Sharpening Stone} - 30 Rough Stone" },
      },
      c = {
        {
          n = 30,
          s = 2660,
          ic = "inv_stone_sharpeningstone_01",
          x = "Rough Sharpening Stone",
          m = {
            { 30, "Rough Stone", 2835 },
          },
        },
      },
    },
    {
      t = "step",
      r = "25-50",
      b = {
        { t = "p", x = "30x {s:3320:inv_stone_grindingstone_01:Rough Grinding Stone} - 60 Rough Stone" },
        { t = "p", x = "Keep 10 of them, you need them for the Silver Rods at 75." },
      },
      c = {
        {
          n = 30,
          s = 3320,
          ic = "inv_stone_grindingstone_01",
          x = "Rough Grinding Stone",
          m = {
            { 60, "Rough Stone", 2835 },
          },
        },
      },
    },
    {
      t = "step",
      r = "50-75",
      b = {
        { t = "p", x = "36x {s:3326:inv_stone_grindingstone_02:Coarse Grinding Stone} - 72 Coarse Stone" },
        { t = "p", x = "Make all 36, you will need them for the bracers at 95 and 112." },
        { t = "p", x = "If you are not at 75 after these, make a few more." },
      },
      c = {
        {
          n = 36,
          s = 3326,
          ic = "inv_stone_grindingstone_02",
          x = "Coarse Grinding Stone",
          m = {
            { 72, "Coarse Stone", 2836 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Journeyman Blacksmithing (75-150)", r = "75-150" },
    {
      t = "p",
      x = "To train past 75, visit one of these trainers and learn Journeyman Blacksmithing. You need {b}Blacksmithing 50{/b} and {b}level 10{/b}:",
    },
    { t = "p", x = "{b}Horde trainers:{/b}" },
    {
      t = "list",
      i = { "Orgrimmar: {n:0:horde:Snarl}", "Undercity: {n:0:horde:James Van Brunt}", "Thunder Bluff: {n:0:horde:Karn Stonehoof}", "Tirisfal Glades: {n:0:horde:Angus Hammerhand} at Bandarion Keep", "Zephras Isle: {n:0::Daeann Steelwind} in Valanaar" },
    },
    { t = "p", x = "{b}Alliance trainers:{/b}" },
    {
      t = "list",
      i = { "Stormwind City: {n:0:alliance:Therum Deepforge}", "Ironforge: {n:0:alliance:Rotgath Stonebeard}", "Zephras Isle: {n:0::Daeann Steelwind} in Valanaar" },
    },
    {
      t = "step",
      r = "75-80",
      b = {
        { t = "p", x = "5x {s:7818:inv_staff_01:Silver Rod} - 5 Silver Bar, 10 Rough Grinding Stone" },
        { t = "p", x = "You need the {i:5956:inv_hammer_20:Blacksmith Hammer} from here on." },
        {
          t = "p",
          x = "Make 5x {s:2666:inv_belt_03:Runed Copper Belt} instead (10 Copper Bar each) if one Silver Bar costs more than 10 Copper Bars.",
        },
      },
      c = {
        {
          n = 5,
          s = 7818,
          ic = "inv_staff_01",
          x = "Silver Rod",
          m = {
            { 5, "Silver Bar", 2842 },
            { 10, "Rough Grinding Stone", 3470 },
          },
        },
      },
    },
    {
      t = "step",
      r = "80-95",
      b = {
        { t = "p", x = "18x {s:2666:inv_belt_03:Runed Copper Belt} - 180 Copper Bar" },
      },
      c = {
        {
          n = 18,
          s = 2666,
          ic = "inv_belt_03",
          x = "Runed Copper Belt",
          m = {
            { 180, "Copper Bar", 2840 },
          },
        },
      },
    },
    {
      t = "step",
      r = "95-100",
      b = {
        { t = "p", x = "5x {s:2672:inv_bracer_07:Patterned Bronze Bracers} - 25 Bronze Bar, 10 Coarse Grinding Stone" },
        { t = "p", x = "Use 10 of the Coarse Grinding Stones you made at 50 and keep the other 26 for 112." },
      },
      c = {
        {
          n = 5,
          s = 2672,
          ic = "inv_bracer_07",
          x = "Patterned Bronze Bracers",
          m = {
            { 25, "Bronze Bar", 2841 },
            { 10, "Coarse Grinding Stone", 3478 },
          },
        },
      },
    },
    {
      t = "step",
      r = "100-112",
      b = {
        { t = "p", x = "20x {s:3337:inv_stone_grindingstone_03:Heavy Grinding Stone} - 60 Heavy Stone" },
        { t = "p", x = "Keep them, you need all 20 for the Golden Scale Bracers at 180." },
      },
      c = {
        {
          n = 20,
          s = 3337,
          ic = "inv_stone_grindingstone_03",
          x = "Heavy Grinding Stone",
          m = {
            { 60, "Heavy Stone", 2838 },
          },
        },
      },
    },
    {
      t = "step",
      r = "112-125",
      b = {
        { t = "p", x = "13x {s:2672:inv_bracer_07:Patterned Bronze Bracers} - 65 Bronze Bar, 26 Coarse Grinding Stone" },
      },
      c = {
        {
          n = 13,
          s = 2672,
          ic = "inv_bracer_07",
          x = "Patterned Bronze Bracers",
          m = {
            { 65, "Bronze Bar", 2841 },
            { 26, "Coarse Grinding Stone", 3478 },
          },
        },
      },
    },
    {
      t = "step",
      r = "125-140",
      b = {
        { t = "p", x = "24x {s:2742:inv_sword_04:Bronze Shortsword} - 120 Bronze Bar, 96 Weak Flux, 48 Medium Leather" },
        {
          t = "p",
          x = "I recommend these over the Patterned Bronze Bracers because they sell for more than twice as much to a vendor, so they end up cheaper.",
        },
        {
          t = "p",
          x = "{i:2880:inv_misc_ammo_gunpowder_02:Weak Flux} and the {i:3466:inv_misc_ammo_gunpowder_01:Strong Flux} for the Bronze Warhammers (140-150) are sold by the Blacksmithing Supply vendor right next to the Blacksmithing trainer in every capital city.",
        },
        { t = "h", l = 4, x = "Alternative recipe" },
        { t = "p", x = "If you disenchant your greens:" },
        { t = "p", x = "24x {s:2672:inv_bracer_07:Patterned Bronze Bracers} - 120 Bronze Bar, 48 Coarse Grinding Stone." },
      },
      c = {
        {
          n = 24,
          s = 2742,
          ic = "inv_sword_04",
          x = "Bronze Shortsword",
          m = {
            { 120, "Bronze Bar", 2841 },
            { 96, "Weak Flux", 2880 },
            { 48, "Medium Leather", 2319 },
          },
        },
      },
      a = {
        {
          n = 24,
          s = 2672,
          ic = "inv_bracer_07",
          x = "Patterned Bronze Bracers",
          m = {
            { 120, "Bronze Bar", 2841 },
            { 48, "Coarse Grinding Stone", 3478 },
          },
        },
      },
    },
    {
      t = "step",
      r = "140-150",
      b = {
        { t = "p", x = "10x {s:9985:inv_hammer_18:Bronze Warhammer} - 80 Bronze Bar, 10 Strong Flux, 10 Medium Leather" },
      },
      c = {
        {
          n = 10,
          s = 9985,
          ic = "inv_hammer_18",
          x = "Bronze Warhammer",
          m = {
            { 80, "Bronze Bar", 2841 },
            { 10, "Strong Flux", 3466 },
            { 10, "Medium Leather", 2319 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Expert Blacksmithing (150-215)", r = "150-215" },
    {
      t = "p",
      x = "To train past 150, visit {n:0:horde:Saru Steelfury} in Orgrimmar (Horde) or {n:0:alliance:Bengus Deepforge} in Ironforge (Alliance) and learn Expert Blacksmithing. You need {b}Blacksmithing 125{/b} and {b}level 20{/b}, and it costs 50 silver.",
    },
    {
      t = "step",
      r = "150-175",
      b = {
        { t = "p", x = "30x {s:3501:inv_bracer_06:Green Iron Bracers} - 180 Iron Bar, 30 Green Dye" },
        { t = "p", x = "Green Dye is sold by {n:0:horde:Tamar} in Orgrimmar and {n:0:alliance:Bombus Finespindle} in Ironforge." },
      },
      c = {
        {
          n = 30,
          s = 3501,
          ic = "inv_bracer_06",
          x = "Green Iron Bracers",
          m = {
            { 180, "Iron Bar", 3575 },
            { 30, "Green Dye", 2605 },
          },
        },
      },
    },
    {
      t = "step",
      r = "175-180",
      b = {
        { t = "p", x = "8x {s:9920:inv_stone_grindingstone_04:Solid Grinding Stone} - 32 Solid Stone" },
        { t = "p", x = "Keep them, you need 6 for the Heavy Mithril Axes at 210." },
      },
      c = {
        {
          n = 8,
          s = 9920,
          ic = "inv_stone_grindingstone_04",
          x = "Solid Grinding Stone",
          m = {
            { 32, "Solid Stone", 7912 },
          },
        },
      },
    },
    {
      t = "step",
      r = "180-195",
      b = {
        { t = "p", x = "20x {s:7223:inv_bracer_10:Golden Scale Bracers} - 100 Steel Bar, 40 Heavy Grinding Stone" },
        { t = "p", x = "Use the 20 Heavy Grinding Stones you made at 100 and make 20 more (60 {i:2838:inv_stone_12:Heavy Stone})." },
        {
          t = "p",
          x = "If you have Mining 165, you can smelt the {i:3859:inv_ingot_steel:Steel Bars} yourself from {i:3575:inv_ingot_iron:Iron Bar} and {i:3857:inv_ore_tin_01:Coal}. Coal is sold by the Blacksmithing Supply vendor next to the Blacksmithing trainer in every capital city.",
        },
        { t = "p", x = "Alliance players should keep 6 of these. You might need them if you choose Armorsmithing." },
      },
      c = {
        {
          n = 20,
          s = 7223,
          ic = "inv_bracer_10",
          x = "Golden Scale Bracers",
          m = {
            { 100, "Steel Bar", 3859 },
            { 40, "Heavy Grinding Stone", 3486 },
          },
        },
      },
    },
    {
      t = "step",
      r = "195-210",
      b = {
        { t = "p", x = "17x {s:9931:inv_pants_04:Mithril Plate Pants} - 204 Mithril Bar" },
        {
          t = "p",
          x = "I recommend these over the Heavy Mithril Gauntlets because they sell for more than three times as much to a vendor, so they end up cheaper.",
        },
      },
      c = {
        {
          n = 17,
          s = 9931,
          ic = "inv_pants_04",
          x = "Mithril Plate Pants",
          m = {
            { 204, "Mithril Bar", 3860 },
          },
        },
      },
    },
    {
      t = "step",
      r = "210-215",
      b = {
        { t = "p", x = "6x {s:9993:inv_axe_14:Heavy Mithril Axe} - 72 Mithril Bar, 12 Citrine, 6 Solid Grinding Stone, 24 Heavy Leather" },
        { t = "p", x = "Keep 2 of these. You might need them if you choose Weaponsmithing." },
      },
      c = {
        {
          n = 6,
          s = 9993,
          ic = "inv_axe_14",
          x = "Heavy Mithril Axe",
          m = {
            { 72, "Mithril Bar", 3860 },
            { 12, "Citrine", 3864 },
            { 6, "Solid Grinding Stone", 7966 },
            { 24, "Heavy Leather", 4234 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Blacksmithing Specializations" },
    {
      t = "p",
      x = "At {b}Blacksmithing 200{/b} and {b}level 40{/b}, you can specialize in Armorsmithing or Weaponsmithing to craft powerful armor or weapons. Choosing one is optional, you don't need it to level Blacksmithing, and you can choose later too.",
    },
    { t = "p", x = "For information on how to become an Armorsmith or a Weaponsmith, please see my separate guides:" },
    { t = "h", l = 2, x = "Artisan Blacksmithing (215-300)", r = "215-300" },
    {
      t = "p",
      x = "To train past 225, visit {n:0::Brikk Keencraft} in Booty Bay, Stranglethorn Vale and learn Artisan Blacksmithing. You need {b}Blacksmithing 200{/b} and {b}level 35{/b}, and both factions learn it there.",
    },
    {
      t = "p",
      x = "{i:7989:inv_scroll_06:Plans: Mithril Spurs} is a world drop. If you already have it, you can use the {b}Mithril Spurs{/b} tab instead.",
    },
    {
      t = "tabs",
      n = { "Heavy Mithril", "Mithril Spurs" },
      p = {
        {
          {
            t = "step",
            r = "215-225",
            b = {
              { t = "p", x = "10x {s:9959:inv_chest_plate10:Heavy Mithril Breastplate} - 160 Mithril Bar" },
              { t = "p", x = "Keep 2 of these. You might need them if you choose Armorsmithing." },
            },
            c = {
              {
                n = 10,
                s = 9959,
                ic = "inv_chest_plate10",
                x = "Heavy Mithril Breastplate",
                m = {
                  { 160, "Mithril Bar", 3860 },
                },
              },
            },
          },
          {
            t = "step",
            r = "225-230",
            b = {
              { t = "p", x = "5x {s:16641:inv_stone_sharpeningstone_05:Dense Sharpening Stone} - 5 Dense Stone" },
            },
            c = {
              {
                n = 5,
                s = 16641,
                ic = "inv_stone_sharpeningstone_05",
                x = "Dense Sharpening Stone",
                m = {
                  { 5, "Dense Stone", 12365 },
                },
              },
            },
          },
          {
            t = "step",
            r = "230-240",
            b = {
              { t = "p", x = "16x {s:9968:inv_boots_plate_01:Heavy Mithril Boots} - 224 Mithril Bar, 64 Thick Leather" },
              { t = "p", x = "Keep 2 of these. You might need them if you choose Armorsmithing." },
            },
            c = {
              {
                n = 16,
                s = 9968,
                ic = "inv_boots_plate_01",
                x = "Heavy Mithril Boots",
                m = {
                  { 224, "Mithril Bar", 3860 },
                  { 64, "Thick Leather", 4304 },
                },
              },
            },
          },
          {
            t = "step",
            r = "240-245",
            b = {
              { t = "p", x = "5x {s:16647:inv_belt_01:Imperial Plate Belt} - 110 Thorium Bar, 30 Rugged Leather, 5 Aquamarine" },
              {
                t = "p",
                x = "You can get the recipe from the {q:7653::Imperial Plate Belt} quest (Requires {b}level 50{/b}) in Tanaris from {n:14567::Derotain Mudsipper}. You will need 20 Thorium Bar to complete it. Do his {q:7652::A Blue Light Bargain} quest first, it unlocks the Imperial Plate quests.",
              },
              {
                t = "p",
                x = "{b}The next three recipes are also from the same NPC{/b}, so make sure to bring at least 140 Thorium Bar with you to get all 4 recipes.",
              },
              { t = "p", x = "If you have the plans for one of these world drops, you can make it from 240 instead:" },
              {
                t = "list",
                i = { "240-255: 27x {s:10005:inv_sword_30:Dazzling Mithril Rapier} - 378 Mithril Bar, 27 Aquamarine, 54 Lesser Moonstone, 54 Moss Agate, 27 Solid Grinding Stone, 54 Mageweave Cloth", "240-255: 20x {s:10009:inv_hammer_17:Runed Mithril Hammer} - 360 Mithril Bar, 40 Core of Earth, 20 Solid Grinding Stone, 80 Thick Leather", "240-255: 17x {s:16644:inv_bracer_13:Thorium Bracers} - 204 Thorium Bar, 68 Blue Power Crystal" },
              },
            },
            c = {
              {
                n = 5,
                s = 16647,
                ic = "inv_belt_01",
                x = "Imperial Plate Belt",
                m = {
                  { 110, "Thorium Bar", 12359 },
                  { 30, "Rugged Leather", 8170 },
                  { 5, "Aquamarine", 7909 },
                },
              },
            },
          },
        },
        {
          {
            t = "step",
            r = "215-225",
            b = {
              { t = "p", x = "10x {s:9964:ability_rogue_sprint:Mithril Spurs} - 40 Mithril Bar, 30 Solid Grinding Stone (120 Solid Stone)" },
            },
            c = {
              {
                n = 10,
                s = 9964,
                ic = "ability_rogue_sprint",
                x = "Mithril Spurs",
                m = {
                  { 40, "Mithril Bar", 3860 },
                  { 30, "Solid Grinding Stone", 7966 },
                },
              },
            },
          },
          {
            t = "step",
            r = "225-230",
            b = {
              { t = "p", x = "5x {s:16641:inv_stone_sharpeningstone_05:Dense Sharpening Stone} - 5 Dense Stone" },
            },
            c = {
              {
                n = 5,
                s = 16641,
                ic = "inv_stone_sharpeningstone_05",
                x = "Dense Sharpening Stone",
                m = {
                  { 5, "Dense Stone", 12365 },
                },
              },
            },
          },
          {
            t = "step",
            r = "230-245",
            b = {
              { t = "p", x = "33x {s:9964:ability_rogue_sprint:Mithril Spurs} - 132 Mithril Bar, 99 Solid Grinding Stone (396 Solid Stone)" },
              {
                t = "p",
                x = "{b}The next three recipes all come from one NPC in Tanaris{/b}, so make sure to bring at least 120 Thorium Bar with you to get all 3 recipes.",
              },
            },
            c = {
              {
                n = 33,
                s = 9964,
                ic = "ability_rogue_sprint",
                x = "Mithril Spurs",
                m = {
                  { 132, "Mithril Bar", 3860 },
                  { 99, "Solid Grinding Stone", 7966 },
                },
              },
            },
          },
        },
      },
    },
    {
      t = "step",
      r = "245-270",
      b = {
        { t = "p", x = "27x {s:16649:inv_bracer_19:Imperial Plate Bracers} - 540 Thorium Bar, 27 Star Ruby" },
        {
          t = "p",
          x = "You get the recipe from the {q:7655::Imperial Plate Bracer} quest (Requires {b}level 50{/b}) in Tanaris from {n:14567::Derotain Mudsipper}. You will need 20 Thorium Bar to complete it.",
        },
      },
      c = {
        {
          n = 27,
          s = 16649,
          ic = "inv_bracer_19",
          x = "Imperial Plate Bracers",
          m = {
            { 540, "Thorium Bar", 12359 },
            { 27, "Star Ruby", 7910 },
          },
        },
      },
    },
    {
      t = "step",
      r = "270-290",
      b = {
        { t = "p", x = "20x {s:16657:inv_boots_plate_01:Imperial Plate Boots} - 680 Thorium Bar, 20 Star Ruby, 20 Aquamarine" },
        { t = "p", x = "You get the recipe from the {q:7654::Imperial Plate Boots} quest, it needs 40 Thorium Bar." },
        {
          t = "p",
          x = "{b}Note:{/b} It wasn't possible to level this far on the beta, so this part only relies on the data I found in the game files. There might be more recipes we haven't discovered yet, but if there is nothing else, these are the only recipes you can use to level until 300.",
        },
      },
      c = {
        {
          n = 20,
          s = 16657,
          ic = "inv_boots_plate_01",
          x = "Imperial Plate Boots",
          m = {
            { 680, "Thorium Bar", 12359 },
            { 20, "Star Ruby", 7910 },
            { 20, "Aquamarine", 7909 },
          },
        },
      },
    },
    {
      t = "step",
      r = "290-300",
      b = {
        { t = "p", x = "10x {s:16730:inv_pants_04:Imperial Plate Leggings} - 440 Thorium Bar, 20 Star Ruby" },
        { t = "p", x = "You get the recipe from the {q:7658::Imperial Plate Leggings} quest, it needs 60 Thorium Bar." },
      },
      c = {
        {
          n = 10,
          s = 16730,
          ic = "inv_pants_04",
          x = "Imperial Plate Leggings",
          m = {
            { 440, "Thorium Bar", 12359 },
            { 20, "Star Ruby", 7910 },
          },
        },
      },
    },
  },
})
