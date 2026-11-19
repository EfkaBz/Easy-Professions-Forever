-- Generated from https://www.wow-professions.com/forever/enchanting-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "enchanting",
  order = 3,
  cat = "craft",
  icon = "Interface\\Icons\\Trade_Engraving",
  title = "Enchanting Leveling Guide 1-300",
  titleFR = "Enchantement",
  url = "https://www.wow-professions.com/forever/enchanting-leveling-guide",
  skill = "enchanting",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever Enchanting leveling guide will show you the fastest and cheapest way to level your Enchanting skill from 1 to 300. You will also find every trainer location and where to train Enchanting past 75, 150 and 225.",
    },
    {
      t = "p",
      x = "Enchanting goes well with Tailoring because you don't need a gathering profession for either of them, and you can disenchant the items you made with Tailoring. Below you will find the shopping list, the Enchanting trainers by starting zone and capital city, and the cheapest enchants for every skill range. Forever added a few new low level recipes, so the first 70 points are cheaper than in Classic.",
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
    { t = "h", l = 3, x = "1-150" },
    {
      t = "shop",
      r = {
        { n = 293, id = 10938, ic = "inv_enchant_essencemagicsmall", x = "Lesser Magic Essence" },
      },
    },
    { t = "h", l = 3, x = "150-225" },
    {
      t = "shop",
      r = {
        { n = 39, id = 11083, ic = "inv_enchant_dustsoul", x = "Soul Dust" },
      },
    },
    { t = "h", l = 3, x = "225-300" },
    {
      t = "shop",
      r = {
        { n = 37, id = 11137, ic = "inv_enchant_dustvision", x = "Vision Dust" },
        { n = 260, id = 11176, ic = "inv_enchant_dustdream", x = "Dream Dust" },
        { n = 20, id = 8831, ic = "inv_misc_herb_17", x = "Purple Lotus" },
        { n = 20, id = 8925, ic = "inv_potion_86", x = "Crystal Vial" },
        { n = 1, id = 16206, ic = "inv_staff_19", x = "Arcanite Rod" },
        { n = 1, id = 13926, ic = "inv_misc_gem_pearl_04", x = "Golden Pearl" },
        { n = 10, id = 16204, ic = "inv_enchant_dustillusion", x = "Illusion Dust" },
        { n = 4, id = 16203, ic = "inv_enchant_essenceeternallarge", x = "Greater Eternal Essence" },
        { n = 4, id = 14343, ic = "inv_enchant_shardbrilliantsmall", x = "Small Brilliant Shard" },
        { n = 2, id = 14344, ic = "inv_enchant_shardbrilliantlarge", x = "Large Brilliant Shard" },
      },
    },
    { t = "h", l = 2, x = "Enchanting Trainer Locations" },
    { t = "p", x = "Apprentice Enchanting has no level requirement in Forever, so you can learn it on a fresh character." },
    { t = "p", x = "Every capital city has a trainer. You can also ask a guard, then it will be marked with a red flag on your map." },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "h", l = 4, x = "Capital Cities" },
          { t = "list", i = { "Orgrimmar: {n:0:horde:Jhag}", "Undercity: {n:0:horde:Malcomb Wynn}", "Thunder Bluff: {n:0:horde:Mot Dawnstrider}" } },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Orc, Troll", "Durotar", "{n:0:horde:Pa'zula} in Sen'jin Village" },
              { "Tauren", "Mulgore", "There is no Enchanting trainer in Mulgore, go to {n:0:horde:Mot Dawnstrider} on the middle rise in Thunder Bluff" },
              { "Undead", "Tirisfal Glades", "{n:0:horde:Vance Undergloom} upstairs in the inn in Brill" },
              { "Skyborne", "Zephras Isle", "{n:0::Eaysaa Brightgust} in Valanaar, {n:0::Nasalanna Windsinger} in Shen'dar Village" },
            },
          },
        },
        {
          { t = "h", l = 4, x = "Capital Cities" },
          {
            t = "list",
            i = { "Stormwind City: {n:0:alliance:Betty Quin}", "Ironforge: {n:0:alliance:Thonys Pillarstone}", "Darnassus: {n:0:alliance:Lalina Summermoon}" },
          },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Human", "Elwynn Forest", "There is no Enchanting trainer in Elwynn Forest, go to {n:0:alliance:Betty Quin} in the Mage Quarter in Stormwind City" },
              { "Dwarf, Gnome", "Dun Morogh", "There is no Enchanting trainer in Dun Morogh, go to {n:0:alliance:Thonys Pillarstone} at the Great Forge in Ironforge" },
              { "Night Elf", "Teldrassil", "{n:0:alliance:Alanna Raveneye} at the Oracle Glade, in the north-west of Teldrassil" },
              { "Skyborne", "Zephras Isle", "{n:0::Eaysaa Brightgust} in Valanaar, {n:0::Nasalanna Windsinger} in Shen'dar Village" },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "p", x = "You can find every Enchanting trainer for Horde and Alliance on my WoW Forever Enchanting Trainers page." },
    { t = "h", l = 2, x = "Enchanting Macro for Faster Leveling" },
    { t = "note", x = "I highly recommend using this macro to speed up the leveling process." },
    {
      t = "p",
      x = "This macro presses the Create button for you and confirms the prompt that asks if you want to replace the enchant already on the item, without any extra clicks.",
    },
    { t = "h", l = 3, x = "Macro" },
    {
      t = "p",
      x = "If you have never made a macro, type /m in the chat and press Enter, click New, give it a name and paste these two lines into it.",
    },
    { t = "p", x = "/run ProfessionsFrame.CraftingPage.CreateButton:Click() /run StaticPopup1Button1:Click()" },
    { t = "h", l = 3, x = "How to Use" },
    {
      t = "list",
      i = { "Place the macro on your action bar", "Open your Enchanting profession window", "Select the enchant you want to craft (make sure it's the right one)", "Put the item you want to enchant into the optional target slot", "Press the macro repeatedly" },
    },
    { t = "h", l = 2, x = "Disenchanting" },
    {
      t = "p",
      x = "You get {s:13262:inv_enchant_disenchant:Disenchant} together with Apprentice Enchanting. In WoW Forever {b}Disenchant is not in your spellbook{/b}, it's in the Enchanting box of the Professions window.",
    },
    {
      t = "p",
      x = "If you are looking for the disenchanting table, it's in my disenchanting guide, and if you can't find the Disenchant button, the guide shows it with pictures:",
    },
    { t = "h", l = 2, x = "Apprentice Enchanting (1-70)", r = "1-70" },
    {
      t = "step",
      r = "1-2",
      b = {
        { t = "p", x = "1x {s:7421:inv_staff_goldfeathered_01:Runed Copper Rod} - 1 Copper Rod, 1 Mote of Magic" },
        {
          t = "p",
          x = "The {i:6217:inv_misc_flute_01:Copper Rod} and the {i:247786:inv_elemental_mote_mana:Mote of Magic} are sold by the Enchanting Supply vendor near your trainer, don't buy them from the Auction House.",
        },
        {
          t = "p",
          x = "{b}If you are leveling in a starting zone with a low level character{/b}, you can buy the Copper Rod from a trade vendor there, but the Mote of Magic is only sold by Enchanting vendors. In the starting zones only the trainers on {b}Zephras Isle{/b} and in {b}Tirisfal Glades{/b} (Brill) sell it, everyone else has to visit the trainer in the capital city, the vendor stands right next to them.",
        },
      },
      c = {
        {
          n = 1,
          s = 7421,
          ic = "inv_staff_goldfeathered_01",
          x = "Runed Copper Rod",
          m = {
            { 1, "Copper Rod", 6217 },
            { 1, "Mote of Magic", 247786 },
          },
        },
      },
    },
    {
      t = "step",
      r = "2-20",
      b = {
        { t = "p", x = "18x {s:7418:spell_holy_greaterheal:Enchant Bracer - Inferior Stamina} - 18 Mote of Magic" },
      },
      c = {
        {
          n = 18,
          s = 7418,
          ic = "spell_holy_greaterheal",
          x = "Enchant Bracer - Inferior Stamina",
          m = {
            { 18, "Mote of Magic", 247786 },
          },
        },
      },
    },
    {
      t = "step",
      r = "20-70",
      b = {
        { t = "p", x = "Make one of these:" },
        {
          t = "list",
          i = { "50x {s:7420:spell_holy_greaterheal:Enchant Chest - Inferior Stamina} - 50 Strange Dust", "50x {s:7428:spell_holy_greaterheal:Enchant Bracer - Minor Deflect} - 50 Lesser Magic Essence" },
        },
        {
          t = "p",
          x = "A {i:10939:inv_enchant_essencemagiclarge:Greater Magic Essence} turns into 3 Lesser Magic Essence when you right-click it in your bags, so you can buy those too.",
        },
      },
      c = {
        {
          n = 50,
          s = 7420,
          ic = "spell_holy_greaterheal",
          x = "Enchant Chest - Inferior Stamina",
          m = {
            { 50, "Strange Dust", 10940 },
          },
        },
        {
          n = 50,
          s = 7428,
          ic = "spell_holy_greaterheal",
          x = "Enchant Bracer - Minor Deflect",
          m = {
            { 50, "Lesser Magic Essence", 10938 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Journeyman Enchanting (70-150)", r = "70-150" },
    {
      t = "p",
      x = "To train past 75, visit one of these trainers and learn Journeyman Enchanting. You need {b}Enchanting 50{/b} and {b}level 10{/b}:",
    },
    { t = "p", x = "{b}Horde trainers:{/b}" },
    {
      t = "list",
      i = { "Orgrimmar: {n:0:horde:Godan}", "Undercity: {n:0:horde:Lavinia Crowe}", "Thunder Bluff: {n:0:horde:Teg Dawnstrider}" },
    },
    { t = "p", x = "{b}Alliance trainers:{/b}" },
    {
      t = "list",
      i = { "Stormwind City: {n:0:alliance:Lucan Cordell}", "Ironforge: {n:0:alliance:Gimble Thistlefuzz}", "Darnassus: {n:0:alliance:Taladan}" },
    },
    {
      t = "p",
      x = "If you bought Strange Dust pick the {b}Strange Dust{/b} tab, if you bought Lesser Magic Essence pick the {b}Lesser Magic Essence{/b} tab.",
    },
    {
      t = "tabs",
      n = { "Strange Dust", "Lesser Magic Essence" },
      p = {
        {
          {
            t = "step",
            r = "70-109",
            b = {
              { t = "p", x = "49x {s:7426:spell_holy_greaterheal:Enchant Chest - Minor Absorption} - 49 Lesser Magic Essence" },
            },
            c = {
              {
                n = 49,
                s = 7426,
                ic = "spell_holy_greaterheal",
                x = "Enchant Chest - Minor Absorption",
                m = {
                  { 49, "Lesser Magic Essence", 10938 },
                },
              },
            },
          },
          {
            t = "step",
            r = "109-110",
            b = {
              { t = "p", x = "1x {s:7795:inv_staff_01:Runed Silver Rod} - 1 Silver Rod, 3 Strange Dust, 4 Lesser Magic Essence, 1 Shadowgem" },
              {
                t = "p",
                x = "{i:6338:inv_staff_01:Silver Rod} and every other rod in this guide (Golden, Truesilver, Arcanite) is made by Blacksmiths, you can buy them from the Auction House.",
              },
            },
            c = {
              {
                n = 1,
                s = 7795,
                ic = "inv_staff_01",
                x = "Runed Silver Rod",
                m = {
                  { 1, "Silver Rod", 6338 },
                  { 3, "Strange Dust", 10940 },
                  { 4, "Lesser Magic Essence", 10938 },
                  { 1, "Shadowgem", 1210 },
                },
              },
            },
          },
          {
            t = "step",
            r = "110-125",
            b = {
              { t = "p", x = "23x {s:14807:inv_staff_07:Greater Magic Wand} - 23 Simple Wood, 46 Lesser Magic Essence" },
            },
            c = {
              {
                n = 23,
                s = 14807,
                ic = "inv_staff_07",
                x = "Greater Magic Wand",
                m = {
                  { 23, "Simple Wood", 4470 },
                  { 46, "Lesser Magic Essence", 10938 },
                },
              },
            },
          },
          {
            t = "step",
            r = "125-150",
            b = {
              { t = "p", x = "37x {s:7793:spell_holy_greaterheal:Enchant 2H Weapon - Lesser Intellect} - 148 Lesser Magic Essence" },
              { t = "p", x = "{i:6349:inv_misc_note_01:Formula: Enchant 2H Weapon - Lesser Intellect} is sold by these vendors:" },
              {
                t = "list",
                i = { "{n:0:horde:Kithas} in Orgrimmar", "{n:0:horde:Nata Dawnstrider} in Thunder Bluff", "{n:0:horde:Leo Sarn} in Silverpine Forest", "{n:0:alliance:Tilli Thistlefuzz} in Ironforge" },
              },
              {
                t = "p",
                x = "Buy {i:20752:inv_misc_note_01:Formula: Minor Mana Oil} and {i:20753:inv_misc_note_01:Formula: Lesser Wizard Oil} from them too, you will need them at 150 and 200.",
              },
              { t = "h", l = 4, x = "Alternative recipe" },
              { t = "p", x = "If you don't want to get the formula, make this:" },
              { t = "p", x = "25x {s:7863:spell_holy_greaterheal:Enchant Boots - Minor Stamina} - 100 Strange Dust" },
            },
            c = {
              {
                n = 37,
                s = 7793,
                ic = "spell_holy_greaterheal",
                x = "Enchant 2H Weapon - Lesser Intellect",
                m = {
                  { 148, "Lesser Magic Essence", 10938 },
                },
              },
            },
            a = {
              {
                n = 25,
                s = 7863,
                ic = "spell_holy_greaterheal",
                x = "Enchant Boots - Minor Stamina",
                m = {
                  { 100, "Strange Dust", 10940 },
                },
              },
            },
          },
        },
        {
          {
            t = "step",
            r = "70-85",
            b = {
              { t = "p", x = "23x {s:7420:spell_holy_greaterheal:Enchant Chest - Inferior Stamina} - 23 Strange Dust" },
            },
            c = {
              {
                n = 23,
                s = 7420,
                ic = "spell_holy_greaterheal",
                x = "Enchant Chest - Inferior Stamina",
                m = {
                  { 23, "Strange Dust", 10940 },
                },
              },
            },
          },
          {
            t = "step",
            r = "85-100",
            b = {
              { t = "p", x = "15x {s:7457:spell_holy_greaterheal:Enchant Bracer - Minor Stamina} - 30 Strange Dust" },
            },
            c = {
              {
                n = 15,
                s = 7457,
                ic = "spell_holy_greaterheal",
                x = "Enchant Bracer - Minor Stamina",
                m = {
                  { 30, "Strange Dust", 10940 },
                },
              },
            },
          },
          {
            t = "step",
            r = "100-109",
            b = {
              { t = "p", x = "9x {s:7771:spell_holy_greaterheal:Enchant Cloak - Minor Protection} - 18 Strange Dust" },
            },
            c = {
              {
                n = 9,
                s = 7771,
                ic = "spell_holy_greaterheal",
                x = "Enchant Cloak - Minor Protection",
                m = {
                  { 18, "Strange Dust", 10940 },
                },
              },
            },
          },
          {
            t = "step",
            r = "109-110",
            b = {
              { t = "p", x = "1x {s:7795:inv_staff_01:Runed Silver Rod} - 1 Silver Rod, 3 Strange Dust, 4 Lesser Magic Essence, 1 Shadowgem" },
              {
                t = "p",
                x = "{i:6338:inv_staff_01:Silver Rod} and every other rod in this guide (Golden, Truesilver, Arcanite) is made by Blacksmiths, you can buy them from the Auction House.",
              },
            },
            c = {
              {
                n = 1,
                s = 7795,
                ic = "inv_staff_01",
                x = "Runed Silver Rod",
                m = {
                  { 1, "Silver Rod", 6338 },
                  { 3, "Strange Dust", 10940 },
                  { 4, "Lesser Magic Essence", 10938 },
                  { 1, "Shadowgem", 1210 },
                },
              },
            },
          },
          {
            t = "step",
            r = "110-130",
            b = {
              { t = "p", x = "32x {s:7771:spell_holy_greaterheal:Enchant Cloak - Minor Protection} - 64 Strange Dust" },
            },
            c = {
              {
                n = 32,
                s = 7771,
                ic = "spell_holy_greaterheal",
                x = "Enchant Cloak - Minor Protection",
                m = {
                  { 64, "Strange Dust", 10940 },
                },
              },
            },
          },
          {
            t = "step",
            r = "130-150",
            b = {
              { t = "p", x = "20x {s:7863:spell_holy_greaterheal:Enchant Boots - Minor Stamina} - 80 Strange Dust" },
              { t = "h", l = 4, x = "Alternative recipe" },
              { t = "p", x = "If 20 Soul Dust cost less than 80 Strange Dust, make this:" },
              { t = "p", x = "20x {s:13501:spell_holy_greaterheal:Enchant Bracer - Lesser Stamina} - 20 Soul Dust." },
            },
            c = {
              {
                n = 20,
                s = 7863,
                ic = "spell_holy_greaterheal",
                x = "Enchant Boots - Minor Stamina",
                m = {
                  { 80, "Strange Dust", 10940 },
                },
              },
            },
            a = {
              {
                n = 20,
                s = 13501,
                ic = "spell_holy_greaterheal",
                x = "Enchant Bracer - Lesser Stamina",
                m = {
                  { 20, "Soul Dust", 11083 },
                },
              },
            },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Expert Enchanting (150-225)", r = "150-225" },
    {
      t = "p",
      x = "To train past 150, visit one of these trainers and learn Expert Enchanting. You need {b}Enchanting 125{/b} and {b}level 20{/b}, and it costs 50 silver.",
    },
    {
      t = "p",
      x = "There is only one Expert Enchanting trainer for each faction. {n:0:horde:Hgarth} in Stonetalon Mountains at Sun Rock Retreat is the Horde trainer, he is up on the hill above the village. {n:0:alliance:Kitta Firewind} in Elwynn Forest is the Alliance trainer, she is at the top of the Tower of Azora.",
    },
    {
      t = "step",
      r = "150-151",
      b = {
        { t = "p", x = "1x {s:13628:inv_staff_10:Runed Golden Rod} - 1 Golden Rod, 1 Iridescent Pearl, 1 Greater Astral Essence, 1 Soul Dust" },
      },
      c = {
        {
          n = 1,
          s = 13628,
          ic = "inv_staff_10",
          x = "Runed Golden Rod",
          m = {
            { 1, "Golden Rod", 11128 },
            { 1, "Iridescent Pearl", 5500 },
            { 1, "Greater Astral Essence", 11082 },
            { 1, "Soul Dust", 11083 },
          },
        },
      },
    },
    {
      t = "step",
      r = "151-165",
      b = {
        { t = "p", x = "16x {s:25125:inv_potion_98:Minor Mana Oil} - 16 Soul Dust, 32 Maple Seed, 16 Leaded Vial" },
        { t = "p", x = "{i:20752:inv_misc_note_01:Formula: Minor Mana Oil} is sold by these vendors:" },
        {
          t = "list",
          i = { "{n:0:horde:Kithas} in Orgrimmar", "{n:0:horde:Nata Dawnstrider} in Thunder Bluff", "{n:0:horde:Thaddeus Webb} in Undercity", "{n:0:alliance:Vaean} in Darnassus", "{n:0:alliance:Tilli Thistlefuzz} in Ironforge", "{n:0:alliance:Jessara Cordell} in Stormwind City" },
        },
        { t = "p", x = "Buy {i:20753:inv_misc_note_01:Formula: Lesser Wizard Oil} from them too, you will need it at 200." },
        {
          t = "p",
          x = "{i:17034:inv_misc_food_02:Maple Seed} is sold by Reagent vendors and {i:3372:inv_potion_85:Leaded Vial} by Alchemy Supply vendors.",
        },
      },
      c = {
        {
          n = 16,
          s = 25125,
          ic = "inv_potion_98",
          x = "Minor Mana Oil",
          m = {
            { 16, "Soul Dust", 11083 },
            { 32, "Maple Seed", 17034 },
            { 16, "Leaded Vial", 3372 },
          },
        },
      },
    },
    {
      t = "step",
      r = "165-200",
      b = {
        { t = "p", x = "47x {s:13637:spell_holy_greaterheal:Enchant Boots - Lesser Agility} - 47 Soul Dust" },
        { t = "h", l = 4, x = "Alternative recipe" },
        { t = "p", x = "If 2 Vision Dust cost less than 3 Soul Dust, stop the boots at 185 and make this until 200:" },
        { t = "p", x = "15x {s:13661:spell_holy_greaterheal:Enchant Bracer - Strength} - 15 Vision Dust." },
      },
      c = {
        {
          n = 47,
          s = 13637,
          ic = "spell_holy_greaterheal",
          x = "Enchant Boots - Lesser Agility",
          m = {
            { 47, "Soul Dust", 11083 },
          },
        },
      },
      a = {
        {
          n = 15,
          s = 13661,
          ic = "spell_holy_greaterheal",
          x = "Enchant Bracer - Strength",
          m = {
            { 15, "Vision Dust", 11137 },
          },
        },
      },
    },
    {
      t = "step",
      r = "200-201",
      b = {
        {
          t = "p",
          x = "1x {s:13702:inv_staff_11:Runed Truesilver Rod} - 1 Truesilver Rod, 1 Black Pearl, 1 Greater Mystic Essence, 1 Vision Dust",
        },
      },
      c = {
        {
          n = 1,
          s = 13702,
          ic = "inv_staff_11",
          x = "Runed Truesilver Rod",
          m = {
            { 1, "Truesilver Rod", 11144 },
            { 1, "Black Pearl", 7971 },
            { 1, "Greater Mystic Essence", 11135 },
            { 1, "Vision Dust", 11137 },
          },
        },
      },
    },
    {
      t = "step",
      r = "201-220",
      b = {
        { t = "p", x = "25x {s:25126:inv_potion_103:Lesser Wizard Oil} - 25 Vision Dust, 50 Stranglethorn Seed, 25 Leaded Vial" },
        {
          t = "p",
          x = "If you didn't buy {i:20753:inv_misc_note_01:Formula: Lesser Wizard Oil} yet, the vendors are listed at the 151-165 step above.",
        },
        {
          t = "p",
          x = "{i:17035:inv_misc_food_02:Stranglethorn Seed} is sold by Reagent vendors and {i:3372:inv_potion_85:Leaded Vial} by Alchemy Supply vendors.",
        },
      },
      c = {
        {
          n = 25,
          s = 25126,
          ic = "inv_potion_103",
          x = "Lesser Wizard Oil",
          m = {
            { 25, "Vision Dust", 11137 },
            { 50, "Stranglethorn Seed", 17035 },
            { 25, "Leaded Vial", 3372 },
          },
        },
      },
    },
    {
      t = "step",
      r = "220-225",
      b = {
        { t = "p", x = "5x {s:13746:spell_holy_greaterheal:Enchant Cloak - Greater Defense} - 5 Vision Dust" },
      },
      c = {
        {
          n = 5,
          s = 13746,
          ic = "spell_holy_greaterheal",
          x = "Enchant Cloak - Greater Defense",
          m = {
            { 5, "Vision Dust", 11137 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Artisan Enchanting (225-300)", r = "225-300" },
    {
      t = "p",
      x = "The Expert Enchanting trainers only teach you up to 225. To train Enchanting past 225 you need {b}level 35{/b} and {b}Enchanting 200{/b}, then learn Artisan Enchanting from Annora in Uldaman (I explain below how to find her). {b}She is the only trainer who teaches Artisan Enchanting.{/b}",
    },
    {
      t = "p",
      x = "There are a few recipes only Annora teaches, {b}so bring enough gold to learn every recipe and enough materials to reach Enchanting 250{/b}, otherwise you have to go back to Uldaman for the higher recipes. Around 50 {i:11137:inv_enchant_dustvision:Vision Dust} gets you to 250.",
    },
    { t = "h", l = 3, x = "How to enter Uldaman" },
    {
      t = "p",
      x = "Uldaman is in the Badlands and it has two entrances, use the back entrance. You can't solo it at level 35, so go with a party or ask a level 60 to help.",
    },
    { t = "img", f = "uldaman-backdoor-t", a = "", w = 512, h = 335, u = 1, v = 0.6543 },
    { t = "h", l = 3, x = "How to find Annora" },
    { t = "p", x = "Annora only spawns once you {b}kill every mob in the area she is in!{/b}" },
    { t = "img", f = "artisan-enchanter-trainer-t", a = "", w = 512, h = 335, u = 1, v = 0.6543 },
    {
      t = "p",
      x = "{b}Don't forget to learn everything from Annora before you leave Uldaman!{/b} The recipes from 230 up are taught nowhere else.",
    },
    {
      t = "table",
      h = 1,
      r = {
        { "Recipe", "Skill", "Cost" },
        { "{b}Artisan Enchanting{/b}", "200", "{m:5:g:}" },
        { "{s:13917:spell_holy_greaterheal:Enchant Chest - Superior Intellect}", "230", "{m:54:s:}" },
        { "{s:13905:spell_holy_greaterheal:Enchant Shield - Greater Spirit}", "230", "{m:54:s:}" },
        { "{s:13935:spell_holy_greaterheal:Enchant Boots - Agility}", "235", "{m:58:s:}" },
        { "{s:13937:spell_holy_greaterheal:Enchant 2H Weapon - Greater Impact}", "240", "{m:62:s:}" },
        { "{s:13939:spell_holy_greaterheal:Enchant Bracer - Greater Strength}", "240", "{m:62:s:}" },
        { "{s:13941:spell_holy_greaterheal:Enchant Chest - Stats}", "245", "{m:62:s:}" },
        { "{s:13943:spell_holy_greaterheal:Enchant Weapon - Greater Striking}", "245", "{m:62:s:}" },
        { "{s:13948:spell_holy_greaterheal:Enchant Gloves - Minor Haste}", "250", "{m:65:s:}" },
        { "{s:17181:inv_misc_rune_05:Enchanted Leather}", "250", "{m:1:g:}" },
        { "{s:17180:inv_ingot_eternium:Enchanted Thorium}", "250", "{m:1:g:}" },
      },
    },
    {
      t = "step",
      r = "225-250",
      b = {
        { t = "p", x = "37x {s:13815:spell_holy_greaterheal:Enchant Gloves - Agility} - 37 Vision Dust" },
      },
      c = {
        {
          n = 37,
          s = 13815,
          ic = "spell_holy_greaterheal",
          x = "Enchant Gloves - Agility",
          m = {
            { 37, "Vision Dust", 11137 },
          },
        },
      },
    },
    {
      t = "step",
      r = "250-265",
      b = {
        { t = "p", x = "20x {s:25127:inv_potion_99:Lesser Mana Oil} - 20 Dream Dust, 20 Purple Lotus, 20 Crystal Vial" },
        {
          t = "p",
          x = "{i:20754:inv_misc_note_01:Formula: Lesser Mana Oil} is sold by {n:0::Kania} in Silithus, she is upstairs in the inn. {i:8925:inv_potion_86:Crystal Vial} is sold by {n:0::Mishta} in Silithus or any Alchemy Supply vendor.",
        },
        {
          t = "p",
          x = "If you don't have Purple Lotus, make {s:13939:spell_holy_greaterheal:Enchant Bracer - Greater Strength} instead (1 Dream Dust, 2 Lesser Nether Essence each), Annora teaches it.",
        },
      },
      c = {
        {
          n = 20,
          s = 25127,
          ic = "inv_potion_99",
          x = "Lesser Mana Oil",
          m = {
            { 20, "Dream Dust", 11176 },
            { 20, "Purple Lotus", 8831 },
            { 20, "Crystal Vial", 8925 },
          },
        },
      },
    },
    {
      t = "step",
      r = "265-299",
      b = {
        { t = "p", x = "40x {s:20017:spell_holy_greaterheal:Enchant Shield - Greater Stamina} - 240 Dream Dust" },
        {
          t = "p",
          x = "{i:16217:inv_misc_note_01:Formula: Enchant Shield - Greater Stamina} is sold by {n:0:horde:Daniel Bartlett} in Undercity and {n:0:alliance:Mythrin'dir} in Darnassus. It's bind on pickup, so don't buy it on an alt.",
        },
        { t = "p", x = "From 290 you can make the Runed Arcanite Rod, see the next step." },
      },
      c = {
        {
          n = 40,
          s = 20017,
          ic = "spell_holy_greaterheal",
          x = "Enchant Shield - Greater Stamina",
          m = {
            { 240, "Dream Dust", 11176 },
          },
        },
      },
    },
    {
      t = "step",
      r = "299-300",
      b = {
        {
          t = "p",
          x = "1x {s:20051:inv_wand_09:Runed Arcanite Rod} - 1 Arcanite Rod, 1 Golden Pearl, 10 Illusion Dust, 4 Greater Eternal Essence, 4 Small Brilliant Shard, 2 Large Brilliant Shard",
        },
        { t = "p", x = "{i:16243:inv_misc_note_01:Formula: Runed Arcanite Rod} is sold by {n:0::Lorelae Wintersong} in Moonglade at Nighthaven." },
        {
          t = "p",
          x = "{b}You need this rod for some recipes from 290 and for most recipes at 300{/b}, Crusader for example. You can make it from 290, but if you don't need it yet, you can make it later and make one more Shield for the last point instead.",
        },
      },
      c = {
        {
          n = 1,
          s = 20051,
          ic = "inv_wand_09",
          x = "Runed Arcanite Rod",
          m = {
            { 1, "Arcanite Rod", 16206 },
            { 1, "Golden Pearl", 13926 },
            { 10, "Illusion Dust", 16204 },
            { 4, "Greater Eternal Essence", 16203 },
            { 4, "Small Brilliant Shard", 14343 },
            { 2, "Large Brilliant Shard", 14344 },
          },
        },
      },
    },
  },
})
