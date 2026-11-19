-- Generated from https://www.wow-professions.com/forever/leatherworking-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "leatherworking",
  order = 5,
  cat = "craft",
  icon = "Interface\\Icons\\INV_Misc_ArmorKit_17",
  title = "Leatherworking Leveling Guide 1-300",
  titleFR = "Travail du cuir",
  url = "https://www.wow-professions.com/forever/leatherworking-leveling-guide",
  skill = "leatherworking",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever Leatherworking leveling guide will show you the fastest and cheapest way to level your Leatherworking skill from 1 to 300. You will also find every trainer location and where to train Leatherworking past 75, 150 and 225.",
    },
    {
      t = "p",
      x = "Below you will find the full shopping list, the Leatherworking trainers by starting zone and capital city, and the cheapest recipes for every skill range from Apprentice to Artisan. Leatherworking is best combined with Skinning because leather is most of the cost, but you can also buy everything in the guide from the Auction House.",
    },
    {
      t = "note",
      x = "This is based on the Forever beta. Leveling takes a long time, so testing the higher levels on live will take a while. If you find something that's off, send me feedback.",
    },
    { t = "h", l = 2, x = "Shopping List" },
    {
      t = "p",
      x = "When a recipe is yellow or green, a craft doesn't always give you a skill point, so nobody can tell exactly how many materials you will need. That's why the counts that depend a lot on luck are a range. {b}With the bigger number 9 out of 10 players have enough, with the smaller one it's 50/50.{/b} If you buy the smaller number, be ready to buy more later.",
    },
    { t = "h", l = 3, x = "1-150" },
    {
      t = "shop",
      r = {
        { n = 27, id = 783, ic = "inv_misc_pelt_wolf_ruin_02", x = "Light Hide" },
        { n = 10, id = 4232, ic = "inv_misc_pelt_boar_ruin_02", x = "Medium Hide" },
        { n = 30, id = 4235, ic = "inv_misc_pelt_wolf_ruin_03", x = "Heavy Hide" },
      },
    },
    { t = "h", l = 3, x = "150-225" },
    {
      t = "shop",
      r = {
        { n = 153, id = 4234, ic = "inv_misc_leatherscrap_07", x = "Heavy Leather" },
      },
    },
    { t = "h", l = 3, x = "225-300" },
    {
      t = "table",
      h = 1,
      r = {
        { "Material" },
        { "208-224x {i:4304:inv_misc_leatherscrap_08:Thick Leather}" },
        { "916-1030x {i:8170:inv_misc_leatherscrap_02:Rugged Leather}" },
        { "464-530x {i:14047:inv_fabric_purplefire_01:Runecloth}" },
      },
    },
    { t = "h", l = 2, x = "Leatherworking Trainer Locations" },
    { t = "p", x = "Apprentice Leatherworking has no level requirement in Forever, so you can learn it on a fresh character." },
    { t = "p", x = "Every capital city has a trainer. You can also ask a guard, then it will be marked with a red flag on your map." },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "h", l = 4, x = "Capital Cities" },
          { t = "list", i = { "Orgrimmar: {n:0:horde:Kamari}", "Undercity: {n:0:horde:Dan Golthas}", "Thunder Bluff: {n:0:horde:Mak}" } },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Orc, Troll", "Durotar", "There is no Leatherworking trainer in Durotar, go to {n:0:horde:Kamari} in the Drag in Orgrimmar" },
              { "Tauren", "Mulgore", "{n:0:horde:Chaw Stronghide} in Bloodhoof Village" },
              { "Undead", "Tirisfal Glades", "{n:0:horde:Shelene Rhobart} at the road junction southeast of Brill" },
              { "Skyborne", "Zephras Isle", "{n:0::Emerii Tallgust} in Valanaar, {n:0::Indari Sunseam} in Shen'dar Village" },
            },
          },
        },
        {
          { t = "h", l = 4, x = "Capital Cities" },
          {
            t = "list",
            i = { "Stormwind City: {n:0:alliance:Randal Worth}", "Ironforge: {n:0:alliance:Gretta Finespindle}", "Darnassus: {n:0:alliance:Darianna}" },
          },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Human", "Elwynn Forest", "{n:0:alliance:Adele Fielder} in the small house by Crystal Lake, northeast of Goldshire" },
              { "Dwarf, Gnome", "Dun Morogh", "There is no Leatherworking trainer in Dun Morogh, go to {n:0:alliance:Gretta Finespindle} at the Great Forge in Ironforge" },
              { "Night Elf", "Teldrassil", "{n:0:alliance:Nadyia Maneweaver} in the small house near the road to Darnassus" },
              { "Skyborne", "Zephras Isle", "{n:0::Emerii Tallgust} in Valanaar, {n:0::Indari Sunseam} in Shen'dar Village" },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "p", x = "You can find every Leatherworking trainer for Horde and Alliance on my WoW Forever Leatherworking Trainers page." },
    { t = "h", l = 2, x = "Apprentice Leatherworking (1-55)", r = "1-55" },
    {
      t = "step",
      r = "1-30",
      b = {
        { t = "p", x = "35x {s:2881:inv_misc_leatherscrap_03:Light Leather} - 105 Ruined Leather Scraps" },
      },
      c = {
        {
          n = 35,
          s = 2881,
          ic = "inv_misc_leatherscrap_03",
          x = "Light Leather",
          m = {
            { 105, "Ruined Leather Scraps", 2934 },
          },
        },
      },
    },
    {
      t = "step",
      r = "30-55",
      b = {
        { t = "p", x = "27x {s:3816:inv_misc_pelt_wolf_01:Cured Light Hide} - 27 Light Hide, 27 Salt" },
        {
          t = "p",
          x = "{b}NOTE:{/b} {b}Most trainers{/b} have a Leatherworking Supply vendor nearby that sells the threads, dyes, and salt, {b}except{/b} the trainers in Elwynn Forest and Tirisfal Glades. For those, buy the Salt and Coarse Thread in Goldshire from {n:0:alliance:Tharynn Bouden} or in Brill from {n:0:horde:Abigail Shiel}.",
        },
        { t = "p", x = "Keep 24 of the hides, you will need them for the Light Leather Pants at 100." },
        { t = "h", l = 4, x = "Alternative recipes" },
        {
          t = "p",
          x = "If you farm your own leather and don't have 27 Light Hides, make Light Armor Kits until 45, then Embossed Leather Gloves until 55:",
        },
        { t = "p", x = "24x {s:2152:inv_misc_armorkit_17:Light Armor Kit} - 24 Light Leather" },
        { t = "p", x = "10x {s:3756:inv_gauntlets_05:Embossed Leather Gloves} - 30 Light Leather, 20 Coarse Thread" },
        { t = "p", x = "You still need 24 Cured Light Hide for the Light Leather Pants at 100, so keep the Light Hides you skin until then." },
      },
      c = {
        {
          n = 27,
          s = 3816,
          ic = "inv_misc_pelt_wolf_01",
          x = "Cured Light Hide",
          m = {
            { 27, "Light Hide", 783 },
            { 27, "Salt", 4289 },
          },
        },
      },
      a = {
        {
          n = 24,
          s = 2152,
          ic = "inv_misc_armorkit_17",
          x = "Light Armor Kit",
          m = {
            { 24, "Light Leather", 2318 },
          },
        },
        {
          n = 10,
          s = 3756,
          ic = "inv_gauntlets_05",
          x = "Embossed Leather Gloves",
          m = {
            { 30, "Light Leather", 2318 },
            { 20, "Coarse Thread", 2320 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Journeyman Leatherworking (55-130)", r = "55-130" },
    {
      t = "p",
      x = "To train past 75, visit one of these trainers and learn Journeyman Leatherworking. You need {b}Leatherworking 50{/b} and {b}level 10{/b}:",
    },
    { t = "p", x = "{b}Horde trainers:{/b}" },
    { t = "list", i = { "Orgrimmar: {n:0:horde:Karolek}", "Undercity: {n:0:horde:Arthur Moore}", "Thunder Bluff: {n:0:horde:Tarn}" } },
    { t = "p", x = "{b}Alliance trainers:{/b}" },
    {
      t = "list",
      i = { "Stormwind City: {n:0:alliance:Simon Tanner}", "Ironforge: {n:0:alliance:Fimble Finespindle}", "Darnassus: {n:0:alliance:Faldron}" },
    },
    {
      t = "step",
      r = "55-75",
      b = {
        { t = "p", x = "21x {s:3756:inv_gauntlets_05:Embossed Leather Gloves} - 63 Light Leather, 42 Coarse Thread" },
      },
      c = {
        {
          n = 21,
          s = 3756,
          ic = "inv_gauntlets_05",
          x = "Embossed Leather Gloves",
          m = {
            { 63, "Light Leather", 2318 },
            { 42, "Coarse Thread", 2320 },
          },
        },
      },
    },
    {
      t = "step",
      r = "75-80",
      b = {
        { t = "p", x = "8x {s:20648:inv_misc_leatherscrap_05:Medium Leather} - 32 Light Leather" },
      },
      c = {
        {
          n = 8,
          s = 20648,
          ic = "inv_misc_leatherscrap_05",
          x = "Medium Leather",
          m = {
            { 32, "Light Leather", 2318 },
          },
        },
      },
    },
    {
      t = "step",
      r = "80-90",
      b = {
        { t = "p", x = "10x {s:3817:inv_misc_pelt_bear_02:Cured Medium Hide} - 10 Medium Hide, 10 Salt" },
        { t = "p", x = "Keep the Cured Medium Hides, you will need them for the Dark Leather Belts at 115." },
      },
      c = {
        {
          n = 10,
          s = 3817,
          ic = "inv_misc_pelt_bear_02",
          x = "Cured Medium Hide",
          m = {
            { 10, "Medium Hide", 4232 },
            { 10, "Salt", 4289 },
          },
        },
      },
    },
    {
      t = "step",
      r = "90-100",
      b = {
        { t = "p", x = "19x {s:3763:inv_belt_04:Fine Leather Belt} - 114 Light Leather, 38 Coarse Thread" },
        { t = "p", x = "Keep 10 of the belts for the Dark Leather Belts at 115." },
      },
      c = {
        {
          n = 19,
          s = 3763,
          ic = "inv_belt_04",
          x = "Fine Leather Belt",
          m = {
            { 114, "Light Leather", 2318 },
            { 38, "Coarse Thread", 2320 },
          },
        },
      },
    },
    {
      t = "step",
      r = "100-115",
      b = {
        { t = "p", x = "24x {s:9068:inv_pants_02:Light Leather Pants} - 240 Light Leather, 24 Cured Light Hide, 24 Fine Thread" },
      },
      c = {
        {
          n = 24,
          s = 9068,
          ic = "inv_pants_02",
          x = "Light Leather Pants",
          m = {
            { 240, "Light Leather", 2318 },
            { 24, "Cured Light Hide", 4231 },
            { 24, "Fine Thread", 2321 },
          },
        },
      },
    },
    {
      t = "step",
      r = "115-125",
      b = {
        { t = "p", x = "10x {s:3766:inv_belt_03:Dark Leather Belt} - 10 Fine Leather Belt, 10 Cured Medium Hide, 20 Fine Thread, 10 Gray Dye" },
      },
      c = {
        {
          n = 10,
          s = 3766,
          ic = "inv_belt_03",
          x = "Dark Leather Belt",
          m = {
            { 10, "Fine Leather Belt", 4246 },
            { 10, "Cured Medium Hide", 4233 },
            { 20, "Fine Thread", 2321 },
            { 10, "Gray Dye", 4340 },
          },
        },
      },
    },
    {
      t = "step",
      r = "125-130",
      b = {
        { t = "p", x = "7x {s:20649:inv_misc_leatherscrap_07:Heavy Leather} - 35 Medium Leather" },
      },
      c = {
        {
          n = 7,
          s = 20649,
          ic = "inv_misc_leatherscrap_07",
          x = "Heavy Leather",
          m = {
            { 35, "Medium Leather", 2319 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Expert Leatherworking (130-205)", r = "130-205" },
    {
      t = "p",
      x = "To train past 150, visit {n:0:horde:Una} in Thunder Bluff (Horde) or {n:0:alliance:Telonis} in Darnassus (Alliance) and learn Expert Leatherworking. You need {b}Leatherworking 125{/b} and {b}level 20{/b}, and it costs 50 silver.",
    },
    {
      t = "step",
      r = "130-143",
      b = {
        { t = "p", x = "30x {s:3818:inv_misc_pelt_wolf_02:Cured Heavy Hide} - 30 Heavy Hide, 90 Salt" },
        { t = "p", x = "Keep the Cured Heavy Hides, you will need 10 for the Barbaric Shoulders at 155 and 20 for the Guardian Gloves at 165." },
      },
      c = {
        {
          n = 30,
          s = 3818,
          ic = "inv_misc_pelt_wolf_02",
          x = "Cured Heavy Hide",
          m = {
            { 30, "Heavy Hide", 4235 },
            { 90, "Salt", 4289 },
          },
        },
      },
    },
    {
      t = "step",
      r = "143-155",
      b = {
        { t = "p", x = "17x {s:3764:inv_gauntlets_05:Hillman's Leather Gloves} - 238 Medium Leather, 68 Fine Thread" },
      },
      c = {
        {
          n = 17,
          s = 3764,
          ic = "inv_gauntlets_05",
          x = "Hillman's Leather Gloves",
          m = {
            { 238, "Medium Leather", 2319 },
            { 68, "Fine Thread", 2321 },
          },
        },
      },
    },
    {
      t = "step",
      r = "155-165",
      b = {
        { t = "p", x = "10x {s:7151:inv_shoulder_08:Barbaric Shoulders} - 80 Heavy Leather, 10 Cured Heavy Hide, 20 Fine Thread" },
      },
      c = {
        {
          n = 10,
          s = 7151,
          ic = "inv_shoulder_08",
          x = "Barbaric Shoulders",
          m = {
            { 80, "Heavy Leather", 4234 },
            { 10, "Cured Heavy Hide", 4236 },
            { 20, "Fine Thread", 2321 },
          },
        },
      },
    },
    {
      t = "step",
      r = "165-185",
      b = {
        { t = "p", x = "20x {s:7156:inv_gauntlets_05:Guardian Gloves} - 80 Heavy Leather, 20 Cured Heavy Hide, 20 Silken Thread" },
      },
      c = {
        {
          n = 20,
          s = 7156,
          ic = "inv_gauntlets_05",
          x = "Guardian Gloves",
          m = {
            { 80, "Heavy Leather", 4234 },
            { 20, "Cured Heavy Hide", 4236 },
            { 20, "Silken Thread", 4291 },
          },
        },
      },
    },
    {
      t = "step",
      r = "185-205",
      b = {
        { t = "p", x = "22x {s:10507:inv_belt_24:Nightscape Headband} - 110 Thick Leather, 44 Silken Thread" },
      },
      c = {
        {
          n = 22,
          s = 10507,
          ic = "inv_belt_24",
          x = "Nightscape Headband",
          m = {
            { 110, "Thick Leather", 4304 },
            { 44, "Silken Thread", 4291 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Leatherworking Specializations" },
    {
      t = "p",
      x = "Once you reach {b}Leatherworking 225{/b} and {b}level 40{/b}, you can choose one of the three Leatherworking specializations: Dragonscale, Elemental, or Tribal. Each specialization gives access to a specific set of patterns.",
    },
    {
      t = "list",
      i = { "Dragonscale - Mail-type gear", "Elemental - elemental resistance and Leather-type agility gear", "Tribal - Leather-type intellect & agility gear and the Devilsaur Armor set" },
    },
    { t = "p", x = "For information on how to become a Dragonscale, Elemental, or Tribal Leatherworker, please see my separate guides:" },
    { t = "h", l = 2, x = "Artisan Leatherworking (205-300)", r = "205-300" },
    {
      t = "p",
      x = "To train past 225, visit {n:0:horde:Hahrana Ironhide} in Camp Mojache, Feralas (Horde) or {n:0:alliance:Drakk Stonehand} in Aerie Peak, The Hinterlands (Alliance) and learn Artisan Leatherworking. You need {b}Leatherworking 200{/b} and {b}level 35{/b}.",
    },
    {
      t = "step",
      r = "205-235",
      b = {
        { t = "p", x = "36x {s:10548:inv_pants_11:Nightscape Pants} - 504 Thick Leather, 144 Silken Thread" },
        {
          t = "p",
          x = "{b}The Expert trainers in Thunder Bluff and Darnassus don't teach this recipe{/b}, you can only learn it from the two trainers above.",
        },
        { t = "p", x = "I recommend these over the Nightscape Boots because they sell for more to a vendor, so they end up cheaper." },
      },
      c = {
        {
          n = 36,
          s = 10548,
          ic = "inv_pants_11",
          x = "Nightscape Pants",
          m = {
            { 504, "Thick Leather", 4304 },
            { 144, "Silken Thread", 4291 },
          },
        },
      },
    },
    {
      t = "step",
      r = "235-265",
      b = {
        { t = "p", x = "36x {s:19049:inv_gauntlets_31:Wicked Leather Gauntlets} - 288 Rugged Leather, 36 Black Dye, 36 Rune Thread" },
        {
          t = "p",
          x = "The pattern is sold by {n:0:horde:Werg Thickblade} in Tirisfal Glades (Horde) and {n:0:alliance:Leonard Porter} in Western Plaguelands (Alliance).",
        },
        { t = "h", l = 4, x = "Alternative recipe" },
        {
          t = "p",
          x = "Blue Suede Shoes use the same leather but sell for more to a vendor, so they save you about 13 gold on this step. If the pattern costs less than that on the Auction House, make these instead:",
        },
        { t = "p", x = "36x {s:1255048:inv_boots_leather_12:Blue Suede Shoes} - 288 Rugged Leather, 36 Blue Dye, 36 Rune Thread." },
      },
      c = {
        {
          n = 36,
          s = 19049,
          ic = "inv_gauntlets_31",
          x = "Wicked Leather Gauntlets",
          m = {
            { 288, "Rugged Leather", 8170 },
            { 36, "Black Dye", 2325 },
            { 36, "Rune Thread", 14341 },
          },
        },
      },
      a = {
        {
          n = 36,
          s = 1255048,
          ic = "inv_boots_leather_12",
          x = "Blue Suede Shoes",
          m = {
            { 288, "Rugged Leather", 8170 },
            { 36, "Blue Dye", 6260 },
            { 36, "Rune Thread", 14341 },
          },
        },
      },
    },
    {
      t = "step",
      r = "265-300",
      b = {
        { t = "p", x = "53x {s:19082:inv_misc_bandage_11:Runic Leather Headband} - 742 Rugged Leather, 530 Runecloth, 53 Rune Thread" },
        { t = "p", x = "The pattern is sold by {n:0::Jase Farlane} at Light's Hope Chapel in Eastern Plaguelands." },
        { t = "h", l = 4, x = "Alternative recipe" },
        { t = "p", x = "If you have the pattern, make these from 275 instead:" },
        { t = "p", x = "27x {s:1255019:inv_bracer_22a:Blue Suede Bracers} - 270 Rugged Leather, 27 Blue Dye, 27 Rune Thread." },
        { t = "h", l = 4, x = "Blue Suede Hat" },
        {
          t = "p",
          x = "{b}Someone with Leatherworking 300 has to place the Sewing Machine for you.{/b} You can't place a Sewing Machine yourself before 300, even if you buy one. I'm not sure if this is an oversight by Blizzard, so they might change it.",
        },
        { t = "p", x = "If you can use one and have the pattern, you can make these from 280:" },
        { t = "p", x = "20x {s:1255017:inv_helm_armor_buckledhat_b_01_blue:Blue Suede Hat} - 320 Rugged Leather, 80 Blue Dye, 20 Rune Thread." },
      },
      c = {
        {
          n = 53,
          s = 19082,
          ic = "inv_misc_bandage_11",
          x = "Runic Leather Headband",
          m = {
            { 742, "Rugged Leather", 8170 },
            { 530, "Runecloth", 14047 },
            { 53, "Rune Thread", 14341 },
          },
        },
      },
      a = {
        {
          n = 27,
          s = 1255019,
          ic = "inv_bracer_22a",
          x = "Blue Suede Bracers",
          m = {
            { 270, "Rugged Leather", 8170 },
            { 27, "Blue Dye", 6260 },
            { 27, "Rune Thread", 14341 },
          },
        },
        {
          n = 20,
          s = 1255017,
          ic = "inv_helm_armor_buckledhat_b_01_blue",
          x = "Blue Suede Hat",
          m = {
            { 320, "Rugged Leather", 8170 },
            { 80, "Blue Dye", 6260 },
            { 20, "Rune Thread", 14341 },
          },
        },
      },
    },
  },
})
