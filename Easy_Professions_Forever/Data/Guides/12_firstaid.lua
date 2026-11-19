-- Generated from https://www.wow-professions.com/forever/first-aid-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "firstaid",
  order = 12,
  cat = "second",
  icon = "Interface\\Icons\\Spell_Holy_SealOfSacrifice",
  title = "First Aid Leveling Guide 1-300",
  titleFR = "Secourisme",
  url = "https://www.wow-professions.com/forever/first-aid-leveling-guide",
  skill = "firstaid",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever First Aid leveling guide will show you the fastest way to level your First Aid skill from 1 to 300. You will also find every trainer location and where to train First Aid past 150 and 225.",
    },
    {
      t = "p",
      x = "First Aid does not take up one of your two profession slots, so every character can learn it. Bandages heal you between fights, and in Forever First Aid also makes the healing potions that used to be Alchemy recipes, so it's worth leveling on every character. Below you will find the shopping list, the First Aid trainers by starting zone and capital city, and the cheapest recipes for every skill range.",
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
    { t = "p", x = "An alternative replaces the whole row, so buy the one that is cheaper." },
    { t = "h", l = 3, x = "1-225" },
    { t = "p", x = "You need level 35 to go past 225, so I split the list in two. Buy this part first." },
    {
      t = "shop",
      r = {
        { n = 86, id = 2447, ic = "inv_misc_flower_02", x = "Peacebloom" },
        { n = 54, id = 3174, ic = "inv_misc_slime_01", x = "Spider Ichor" },
      },
    },
    { t = "h", l = 3, x = "225-300" },
    {
      t = "shop",
      r = {
        { n = 89, id = 4338, ic = "inv_fabric_mageweave_01", x = "Mageweave Cloth" },
        { n = 20, id = 14047, ic = "inv_fabric_purplefire_01", x = "Runecloth" },
        { n = 30, id = 13464, ic = "inv_misc_herb_sansamroot", x = "Golden Sansam" },
      },
    },
    { t = "h", l = 2, x = "First Aid Trainer Locations" },
    {
      t = "p",
      x = "Apprentice First Aid has no level requirement, so you can learn it on a fresh character. Every trainer also teaches Journeyman First Aid, so you don't have to find a different trainer at 50.",
    },
    { t = "p", x = "Every capital city has a trainer. You can also ask a guard, then it will be marked with a red flag on your map." },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "h", l = 4, x = "Capital Cities" },
          { t = "list", i = { "Orgrimmar: {n:0:horde:Arnok}", "Undercity: {n:0:horde:Mary Edras}", "Thunder Bluff: {n:0:horde:Pand Stonebinder}" } },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Every starting zone has a First Aid trainer, most of them are inside the inn." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Orc, Troll", "Durotar", "{n:0:horde:Rawrk} in the barracks in Razor Hill" },
              { "Tauren", "Mulgore", "{n:0:horde:Vira Younghoof} inside the inn in Bloodhoof Village" },
              { "Undead", "Tirisfal Glades", "{n:0:horde:Nurse Neela} inside the inn in Brill" },
              { "Skyborne", "Zephras Isle", "{n:0::Melasa Fairmend} in Valanaar, {n:0::Naleeia Tattermend} in Shen'dar Village" },
            },
          },
        },
        {
          { t = "h", l = 4, x = "Capital Cities" },
          {
            t = "list",
            i = { "Stormwind City: {n:0:alliance:Shaina Fuller}", "Ironforge: {n:0:alliance:Nissa Firestone}", "Darnassus: {n:0:alliance:Dannelor}" },
          },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Every starting zone has a First Aid trainer, most of them are inside the inn." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Human", "Elwynn Forest", "{n:0:alliance:Michelle Belle} upstairs in the inn in Goldshire" },
              { "Dwarf, Gnome", "Dun Morogh", "{n:0:alliance:Thamner Pol} in the Thunderbrew Distillery in Kharanos" },
              { "Night Elf", "Teldrassil", "{n:0:alliance:Byancie} in Dolanaar, in the building north of the inn" },
              { "Skyborne", "Zephras Isle", "{n:0::Melasa Fairmend} in Valanaar, {n:0::Naleeia Tattermend} in Shen'dar Village" },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "p", x = "You can find every First Aid trainer for Horde and Alliance on my WoW Forever First Aid Trainers page." },
    { t = "h", l = 2, x = "Apprentice First Aid (1-75)", r = "1-75" },
    {
      t = "p",
      x = "If you have Linen Cloth or bought some, pick the {b}Bandages{/b} tab. If you bought herbs, pick the {b}Healing Potions{/b} tab.",
    },
    {
      t = "tabs",
      n = { "Bandages", "Healing Potions" },
      p = {
        {
          {
            t = "step",
            r = "1-75",
            b = {
              { t = "p", x = "86x {s:1244431:inv_potion_49:Minor Healing Potion} - 86 Peacebloom, 86 Mild Spices, 86 Empty Vial" },
              {
                t = "p",
                x = "{i:2678:inv_misc_food_wheat_02:Mild Spices} are sold by Cooking supply vendors, {i:3371:inv_potion_84:Empty Vial} by Alchemy supply vendors. Open your faction below to see who sells them near your trainer:",
              },
              { t = "p", x = "Horde vendors" },
              {
                t = "table",
                h = 1,
                r = {
                  { "Zone", "Vendor" },
                  { "Orgrimmar", "spices: {n:0:horde:Xen'to} vials: {n:0:horde:Kor'geld}" },
                  { "Undercity", "{n:0:horde:Felicia Doan} in the Trade Quarter" },
                  { "Thunder Bluff", "spices: {n:0:horde:Naal Mistrunner} vials: {n:0:horde:Mani Winterhoof}" },
                  { "Durotar", "{n:0:horde:Flakk} in Razor Hill" },
                  { "Mulgore", "{n:0:horde:Wunna Darkmane} in Bloodhoof Village" },
                  { "Tirisfal Glades", "{n:0:horde:Abigail Shiel} in Brill" },
                  { "Zephras Isle", "{n:0::Iallion Featherfall} in Valanaar {n:0::Belandiel Farflight} in Shen'dar Village" },
                },
              },
              { t = "p", x = "Alliance vendors" },
              {
                t = "table",
                h = 1,
                r = {
                  { "Zone", "Vendor" },
                  { "Stormwind City", "{n:0:alliance:Edna Mullby} in the Trade District" },
                  { "Ironforge", "spices: {n:0:alliance:Emrul Riknussun} vials: {n:0:alliance:Gwina Stonebranch}, right next to the trainer" },
                  { "Darnassus", "{n:0:alliance:Mythrin'dir}" },
                  { "Elwynn Forest", "{n:0:alliance:Tharynn Bouden} in Goldshire" },
                  { "Dun Morogh", "{n:0:alliance:Golorn Frostbeard} in Kharanos" },
                  { "Teldrassil", "{n:0:alliance:Narret Shadowgrove} in Dolanaar" },
                  { "Zephras Isle", "{n:0::Iallion Featherfall} in Valanaar {n:0::Belandiel Farflight} in Shen'dar Village" },
                },
              },
            },
            c = {
              {
                n = 86,
                s = 1244431,
                ic = "inv_potion_49",
                x = "Minor Healing Potion",
                m = {
                  { 86, "Peacebloom", 2447 },
                  { 86, "Mild Spices", 2678 },
                  { 86, "Empty Vial", 3371 },
                },
              },
            },
          },
        },
        {
          {
            t = "step",
            r = "1-40",
            b = {
              { t = "p", x = "50x {s:3275:inv_misc_bandage_15:Linen Bandage} - 50 Linen Cloth" },
            },
            c = {
              {
                n = 50,
                s = 3275,
                ic = "inv_misc_bandage_15",
                x = "Linen Bandage",
                m = {
                  { 50, "Linen Cloth", 2589 },
                },
              },
            },
          },
          {
            t = "step",
            r = "40-75",
            b = {
              { t = "p", x = "49x {s:3276:inv_misc_bandage_18:Heavy Linen Bandage} - 98 Linen Cloth" },
            },
            c = {
              {
                n = 49,
                s = 3276,
                ic = "inv_misc_bandage_18",
                x = "Heavy Linen Bandage",
                m = {
                  { 98, "Linen Cloth", 2589 },
                },
              },
            },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Journeyman First Aid (75-150)", r = "75-150" },
    { t = "p", x = "To train past 75, visit your trainer and learn Journeyman First Aid, it requires First Aid 50." },
    {
      t = "step",
      r = "75-80",
      b = {
        { t = "p", x = "16x {s:3276:inv_misc_bandage_18:Heavy Linen Bandage} - 32 Linen Cloth" },
      },
      c = {
        {
          n = 16,
          s = 3276,
          ic = "inv_misc_bandage_18",
          x = "Heavy Linen Bandage",
          m = {
            { 32, "Linen Cloth", 2589 },
          },
        },
      },
    },
    {
      t = "step",
      r = "80-90",
      b = {
        { t = "p", x = "12x {s:3277:inv_misc_bandage_14:Wool Bandage} - 12 Wool Cloth" },
      },
      c = {
        {
          n = 12,
          s = 3277,
          ic = "inv_misc_bandage_14",
          x = "Wool Bandage",
          m = {
            { 12, "Wool Cloth", 2592 },
          },
        },
      },
    },
    {
      t = "p",
      x = "If you have Wool Cloth, pick the {b}Bandages{/b} tab. If you have to buy everything, the {b}Healing Potions{/b} tab is cheaper.",
    },
    {
      t = "tabs",
      n = { "Bandages", "Healing Potions" },
      p = {
        {
          {
            t = "step",
            r = "90-115",
            b = {
              { t = "p", x = "43x {s:3277:inv_misc_bandage_14:Wool Bandage} - 43 Wool Cloth" },
            },
            c = {
              {
                n = 43,
                s = 3277,
                ic = "inv_misc_bandage_14",
                x = "Wool Bandage",
                m = {
                  { 43, "Wool Cloth", 2592 },
                },
              },
            },
          },
          {
            t = "step",
            r = "115-150",
            b = {
              { t = "p", x = "54x {s:3278:inv_misc_bandage_17:Heavy Wool Bandage} - 108 Wool Cloth" },
            },
            c = {
              {
                n = 54,
                s = 3278,
                ic = "inv_misc_bandage_17",
                x = "Heavy Wool Bandage",
                m = {
                  { 108, "Wool Cloth", 2592 },
                },
              },
            },
          },
        },
        {
          {
            t = "p",
            x = "For this tab you need 54 {i:2678:inv_misc_food_wheat_02:Mild Spices}, 31 {i:2692:inv_misc_food_legion_dalapenopepper:Hot Spices}, 31 {i:3372:inv_potion_85:Leaded Vial} and 54 {i:2723:inv_drink_10:Bottle of Dalaran Noir}. Spices are sold by Cooking supply vendors, vials by Alchemy supply vendors and the bottles by barkeeps. The starting zone vendors don't sell Hot Spices or Leaded Vials, so buy them in a capital city. Open your faction below to see who sells them:",
          },
          { t = "p", x = "Horde vendors" },
          {
            t = "table",
            h = 1,
            r = {
              { "Item", "Vendor" },
              { "{i:2678:inv_misc_food_wheat_02:Mild Spices} and {i:2692:inv_misc_food_legion_dalapenopepper:Hot Spices}", "Orgrimmar: {n:0:horde:Xen'to} Undercity: {n:0:horde:Felicia Doan} Thunder Bluff: {n:0:horde:Naal Mistrunner}" },
              { "{i:3372:inv_potion_85:Leaded Vial}", "Orgrimmar: {n:0:horde:Kor'geld} Undercity: {n:0:horde:Felicia Doan} Thunder Bluff: {n:0:horde:Mani Winterhoof}" },
              { "{i:2723:inv_drink_10:Bottle of Dalaran Noir}", "Orgrimmar: {n:5611::Barkeep Morag} Booty Bay: {n:2832::Nixxrax Fillamug}" },
            },
          },
          { t = "p", x = "Alliance vendors" },
          {
            t = "table",
            h = 1,
            r = {
              { "Item", "Vendor" },
              { "{i:2678:inv_misc_food_wheat_02:Mild Spices} and {i:2692:inv_misc_food_legion_dalapenopepper:Hot Spices}", "Stormwind City: {n:0:alliance:Edna Mullby} Ironforge: {n:0:alliance:Emrul Riknussun} Darnassus: {n:0:alliance:Mythrin'dir}" },
              { "{i:3372:inv_potion_85:Leaded Vial}", "Stormwind City: {n:0:alliance:Edna Mullby} Ironforge: {n:0:alliance:Gwina Stonebranch} Darnassus: {n:0:alliance:Mythrin'dir}" },
              { "{i:2723:inv_drink_10:Bottle of Dalaran Noir}", "Stormwind City: {n:277::Roberto Pupellyverbos} and {n:1328::Elly Langston} Ironforge: {n:5570::Bruuk Barleybeard} Booty Bay: {n:2832::Nixxrax Fillamug}" },
            },
          },
          {
            t = "step",
            r = "90-125",
            b = {
              {
                t = "p",
                x = "54x {s:1259342:inv_10_alchemy2_quenchingfluid_color2:Simple Poultice} - 54 Spider Ichor, 54 Mild Spices, 54 Bottle of Dalaran Noir",
              },
            },
            c = {
              {
                n = 54,
                s = 1259342,
                ic = "inv_10_alchemy2_quenchingfluid_color2",
                x = "Simple Poultice",
                m = {
                  { 54, "Spider Ichor", 3174 },
                  { 54, "Mild Spices", 2678 },
                  { 54, "Bottle of Dalaran Noir", 2723 },
                },
              },
            },
          },
          {
            t = "step",
            r = "125-150",
            b = {
              { t = "p", x = "31x {s:1244433:inv_potion_51:Healing Potion} - 31 Bruiseweed, 31 Hot Spices, 31 Leaded Vial" },
            },
            c = {
              {
                n = 31,
                s = 1244433,
                ic = "inv_potion_51",
                x = "Healing Potion",
                m = {
                  { 31, "Bruiseweed", 2453 },
                  { 31, "Hot Spices", 2692 },
                  { 31, "Leaded Vial", 3372 },
                },
              },
            },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Expert First Aid (150-225)", r = "150-225" },
    {
      t = "p",
      x = "{b}Learn {s:7928:inv_misc_bandage_01:Silk Bandage} from your trainer before you leave{/b}, it's the last recipe the trainers teach.",
    },
    { t = "h", l = 3, x = "How to learn Expert First Aid" },
    {
      t = "p",
      x = "To train past 150, buy the {i:16084:inv_misc_book_08:Expert First Aid - Under Wraps} book from {n:0:alliance:Deneb Walker} (Alliance) in Arathi Highlands or {n:0:horde:Balai Lok'Wein} (Horde) in Dustwallow Marsh. The book has {b}no level requirement{/b}, you only need First Aid 125.",
    },
    {
      t = "p",
      x = "They also sell the next two manuals, so {b}buy all three{/b} while you are there, or get them from the Auction House if you are low level:",
    },
    {
      t = "list",
      i = { "{i:16084:inv_misc_book_08:Expert First Aid - Under Wraps}", "{i:16112:inv_misc_book_03:Manual: Heavy Silk Bandage}", "{i:16113:inv_misc_book_03:Manual: Mageweave Bandage}" },
    },
    {
      t = "step",
      r = "150-180",
      b = {
        { t = "p", x = "47x {s:7928:inv_misc_bandage_01:Silk Bandage} - 47 Silk Cloth" },
      },
      c = {
        {
          n = 47,
          s = 7928,
          ic = "inv_misc_bandage_01",
          x = "Silk Bandage",
          m = {
            { 47, "Silk Cloth", 4306 },
          },
        },
      },
    },
    {
      t = "step",
      r = "180-210",
      b = {
        { t = "p", x = "47x {s:7929:inv_misc_bandage_02:Heavy Silk Bandage} - 94 Silk Cloth" },
        { t = "p", x = "Use the Manual: Heavy Silk Bandage first to learn the recipe." },
      },
      c = {
        {
          n = 47,
          s = 7929,
          ic = "inv_misc_bandage_02",
          x = "Heavy Silk Bandage",
          m = {
            { 94, "Silk Cloth", 4306 },
          },
        },
      },
    },
    {
      t = "step",
      r = "210-225",
      b = {
        { t = "p", x = "19x {s:10840:inv_misc_bandage_19:Mageweave Bandage} - 19 Mageweave Cloth" },
        { t = "p", x = "Use the Manual: Mageweave Bandage first to learn the recipe." },
      },
      c = {
        {
          n = 19,
          s = 10840,
          ic = "inv_misc_bandage_19",
          x = "Mageweave Bandage",
          m = {
            { 19, "Mageweave Cloth", 4338 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Artisan First Aid (225-300)", r = "225-300" },
    {
      t = "p",
      x = "You can train First Aid past 225 by completing the Triage quest. It requires {b}First Aid 225{/b} and {b}level 35{/b}, even though the quest itself is level 45.",
    },
    {
      t = "p",
      x = "{b}Bring everything you need in order to skill up to 275{/b}, as you will learn the next two bandages from the same doctor, so bring around 90 Mageweave Cloth and 20 Runecloth with you.",
    },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "p", x = "The {q:6622::Triage} quest is given by {n:0:horde:Doctor Gregory Victor} in Arathi Highlands at Hammerfall." },
          { t = "map", m = 1417, x = 73.4, y = 36.8, n = "Doctor Gregory Victor", z = "Hammerfall, Arathi Highlands" },
        },
        {
          { t = "p", x = "The {q:6624::Triage} quest is given by {n:0:alliance:Doctor Gustaf VanHowzen} in Dustwallow Marsh at Theramore." },
          { t = "map", m = 1445, x = 67.8, y = 49, n = "Doctor Gustaf VanHowzen", z = "Foothold Citadel, Dustwallow Marsh" },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "p", x = "You get a stack of triage bandages and have to save 15 patients, heal the critically injured ones first." },
    { t = "h", l = 3, x = "How to complete the Triage quest" },
    {
      t = "list",
      i = { "Make sure you have about 10 minutes of spare time to do this with no interruptions.", "Press CTRL + V to show the health bars over the patients, or turn on \"Show NPC names\" in the interface options.", "Zoom the camera out to third person, so you see as much of the room as you can.", "Put the Triage Bandages the doctor gave you on your action bar and use those, not your own bandages.", "Stand in the middle of the room.", "When you see another patient, left-click on them to pre-select them, and as soon as your current heal has finished click the bandages in your action bar and the pre-selected one will begin to heal. Saves valuable seconds this way.", "When you have saved 15 patients, {b}turn in the quest immediately{/b}. I failed it on my druid because I waited, six patients died in the meantime and the quest went from completed to failed." },
    },
    {
      t = "step",
      r = "225-240",
      b = {
        { t = "p", x = "29x {s:10840:inv_misc_bandage_19:Mageweave Bandage} - 29 Mageweave Cloth" },
      },
      c = {
        {
          n = 29,
          s = 10840,
          ic = "inv_misc_bandage_19",
          x = "Mageweave Bandage",
          m = {
            { 29, "Mageweave Cloth", 4338 },
          },
        },
      },
    },
    {
      t = "step",
      r = "240-260",
      b = {
        { t = "p", x = "30x {s:10841:inv_misc_bandage_20:Heavy Mageweave Bandage} - 60 Mageweave Cloth" },
        { t = "p", x = "The doctor teaches it at 240." },
      },
      c = {
        {
          n = 30,
          s = 10841,
          ic = "inv_misc_bandage_20",
          x = "Heavy Mageweave Bandage",
          m = {
            { 60, "Mageweave Cloth", 4338 },
          },
        },
      },
    },
    {
      t = "step",
      r = "260-275",
      b = {
        { t = "p", x = "20x {s:18629:inv_misc_bandage_11:Runecloth Bandage} - 20 Runecloth" },
        { t = "p", x = "The doctor teaches it at 260." },
      },
      c = {
        {
          n = 20,
          s = 18629,
          ic = "inv_misc_bandage_11",
          x = "Runecloth Bandage",
          m = {
            { 20, "Runecloth", 14047 },
          },
        },
      },
    },
    {
      t = "step",
      r = "275-300",
      b = {
        { t = "p", x = "30x {s:1244436:inv_potion_54:Major Healing Potion} - 30 Golden Sansam, 90 Soothing Spices, 30 Crystal Vial" },
        {
          t = "p",
          x = "The recipe is {i:255729:inv_misc_book_03:Manual: Major Healing Potion}. Check the Auction House first, and buy it there if it costs less than 8g.",
        },
        { t = "p", x = "If it costs more, you can buy it from {n:0::Pexmit} in Mount Hyjal for 8g, but he can be tricky to find." },
        {
          t = "p",
          x = "Horde players can also get it from Ortak Lomgok in Elderwild, Mount Hyjal, as the reward for {q:96622::A Rest Without Pain}. You have to complete his {q:96616::Herbs for the Bruised and Weary} quest first.",
        },
      },
      c = {
        {
          n = 30,
          s = 1244436,
          ic = "inv_potion_54",
          x = "Major Healing Potion",
          m = {
            { 30, "Golden Sansam", 13464 },
            { 90, "Soothing Spices", 3713 },
            { 30, "Crystal Vial", 8925 },
          },
        },
      },
    },
  },
})
