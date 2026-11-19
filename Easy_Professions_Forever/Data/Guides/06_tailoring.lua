-- Generated from https://www.wow-professions.com/forever/tailoring-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "tailoring",
  order = 6,
  cat = "craft",
  icon = "Interface\\Icons\\Trade_Tailoring",
  title = "Tailoring Leveling Guide 1-300",
  titleFR = "Couture",
  url = "https://www.wow-professions.com/forever/tailoring-leveling-guide",
  skill = "tailoring",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever Tailoring leveling guide will show you the fastest and cheapest way to level your Tailoring skill from 1 to 300. You will also find every trainer location and where to train Tailoring past 75, 150 and 225.",
    },
    {
      t = "p",
      x = "Below you will find the full shopping list, the Tailoring trainers by starting zone and capital city, and the cheapest recipes for every skill range from Apprentice to Artisan. Tailoring uses cloth as its main material, but cloth drops from humanoids, so you don't need a gathering profession and you can combine Tailoring with anything. Enchanting is a popular choice because you can disenchant the things you make while leveling and use the dust to level Enchanting.",
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
    {
      t = "p",
      x = "{b}NOTE:{/b} {b}Most trainers{/b} have a Tailoring Supply vendor nearby that sells the threads and dyes, {b}except{/b} the trainer in Tirisfal Glades. For that one, buy the Coarse Thread in Brill from {n:0:horde:Abigail Shiel}.",
    },
    { t = "p", x = "An alternative replaces the whole row, so buy the one that is cheaper." },
    { t = "h", l = 3, x = "1-150" },
    {
      t = "shop",
      r = {
        { n = 60, id = 2589, ic = "inv_fabric_linen_01", x = "Linen Cloth" },
        { n = 29, id = 3383, ic = "inv_potion_06", x = "Elixir of Wisdom" },
      },
    },
    { t = "h", l = 3, x = "150-225" },
    {
      t = "table",
      h = 1,
      r = {
        { "Material", "Alternative (if cheaper)" },
        { "492-520x {i:4306:inv_fabric_silk_01:Silk Cloth}", "" },
        { "538-670x {i:4338:inv_fabric_mageweave_01:Mageweave Cloth}", "108-134x {i:4339:inv_fabric_mageweave_03:Bolt of Mageweave}" },
        { "104-115x {i:14047:inv_fabric_purplefire_01:Runecloth}", "" },
      },
    },
    { t = "h", l = 3, x = "225-280" },
    {
      t = "p",
      x = "This list is not final yet, but the skill ranges come from the game data, so it should be pretty close. The 280-300 part is not included here yet.",
    },
    {
      t = "shop",
      r = {
        { n = 44, id = 8170, ic = "inv_misc_leatherscrap_02", x = "Rugged Leather" },
        { n = 39, id = 14227, ic = "spell_nature_web", x = "Ironweb Spider Silk" },
      },
    },
    { t = "h", l = 2, x = "Tailoring Trainer Locations" },
    { t = "p", x = "Apprentice Tailoring has no level requirement in Forever, so you can learn it on a fresh character." },
    { t = "p", x = "Every capital city has a trainer. You can also ask a guard, then it will be marked with a red flag on your map." },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "h", l = 4, x = "Capital Cities" },
          { t = "list", i = { "Orgrimmar: {n:0:horde:Snang}", "Undercity: {n:0:horde:Victor Ward}", "Thunder Bluff: {n:0:horde:Vhan}" } },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Orc, Troll", "Durotar", "There is no Tailoring trainer in Durotar, go to {n:0:horde:Snang} in the Drag in Orgrimmar" },
              { "Tauren", "Mulgore", "There is no Tailoring trainer in Mulgore, go to {n:0:horde:Vhan} on the middle rise in Thunder Bluff" },
              { "Undead", "Tirisfal Glades", "{n:0:horde:Bowen Brisboise} in the small house at Cold Hearth Manor, southwest of Brill" },
              { "Skyborne", "Zephras Isle", "{n:0::Othesia Evengale} in Valanaar, {n:0::Taleen Shimmerthread} in Shen'dar Village" },
            },
          },
        },
        {
          { t = "h", l = 4, x = "Capital Cities" },
          {
            t = "list",
            i = { "Stormwind City: {n:0:alliance:Lawrence Schneider}", "Ironforge: {n:0:alliance:Uthrar Threx}", "Darnassus: {n:0:alliance:Trianna}" },
          },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Human", "Elwynn Forest", "{n:0:alliance:Eldrin} in a house at the Eastvale Logging Camp" },
              { "Dwarf, Gnome", "Dun Morogh", "There is no Tailoring trainer in Dun Morogh, go to {n:0:alliance:Uthrar Threx} at the Great Forge in Ironforge" },
              { "Night Elf", "Teldrassil", "There is no Tailoring trainer in Teldrassil, go to {n:0:alliance:Trianna} at the Craftsmen's Terrace in Darnassus" },
              { "Skyborne", "Zephras Isle", "{n:0::Othesia Evengale} in Valanaar, {n:0::Taleen Shimmerthread} in Shen'dar Village" },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "p", x = "You can find every Tailoring trainer for Horde and Alliance on my WoW Forever Tailoring Trainers page." },
    { t = "h", l = 2, x = "Apprentice Tailoring (1-55)", r = "1-55" },
    {
      t = "step",
      r = "1-30",
      b = {
        { t = "p", x = "30x {s:2963:inv_fabric_linen_02:Bolt of Linen Cloth} - 60 Linen Cloth" },
        { t = "p", x = "Keep the bolts, you need all of them for the belts." },
      },
      c = {
        {
          n = 30,
          s = 2963,
          ic = "inv_fabric_linen_02",
          x = "Bolt of Linen Cloth",
          m = {
            { 60, "Linen Cloth", 2589 },
          },
        },
      },
    },
    {
      t = "step",
      r = "30-55",
      b = {
        { t = "p", x = "28x {s:8776:inv_belt_05:Linen Belt} - 28 Bolt of Linen Cloth, 28 Coarse Thread" },
      },
      c = {
        {
          n = 28,
          s = 8776,
          ic = "inv_belt_05",
          x = "Linen Belt",
          m = {
            { 28, "Bolt of Linen Cloth", 2996 },
            { 28, "Coarse Thread", 2320 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Journeyman Tailoring (55-140)", r = "55-140" },
    {
      t = "p",
      x = "To train past 75, visit one of these trainers and learn Journeyman Tailoring. You need {b}Tailoring 50{/b} and {b}level 10{/b}:",
    },
    { t = "p", x = "{b}Horde trainers:{/b}" },
    { t = "list", i = { "Orgrimmar: {n:0:horde:Magar}", "Undercity: {n:0:horde:Rhiannon Davis}", "Thunder Bluff: {n:0:horde:Tepa}" } },
    { t = "p", x = "{b}Alliance trainers:{/b}" },
    {
      t = "list",
      i = { "Stormwind City: {n:0:alliance:Sellandus}", "Ironforge: {n:0:alliance:Jormund Stonebrow}", "Darnassus: {n:0:alliance:Me'lynn}" },
    },
    {
      t = "step",
      r = "55-80",
      b = {
        {
          t = "p",
          x = "{b}Learn Journeyman Tailoring before you make these.{/b} You can reach past 75 with them, but you won't get any skill points above 75 until you learn it, so don't go AFK while crafting before you have it.",
        },
        { t = "p", x = "45x {s:2964:inv_fabric_wool_03:Bolt of Woolen Cloth} - 135 Wool Cloth" },
        {
          t = "p",
          x = "Keep the bolts, you will need them later. In total you will need 153 {i:2997:inv_fabric_wool_03:Bolt of Woolen Cloth} (459 {i:2592:inv_fabric_wool_01:Wool Cloth}) until 140, so you can also make all of them now.",
        },
      },
      c = {
        {
          n = 45,
          s = 2964,
          ic = "inv_fabric_wool_03",
          x = "Bolt of Woolen Cloth",
          m = {
            { 135, "Wool Cloth", 2592 },
          },
        },
      },
    },
    {
      t = "step",
      r = "80-95",
      b = {
        { t = "p", x = "22x {s:2402:inv_misc_cape_10:Woolen Cape} - 22 Bolt of Woolen Cloth, 22 Fine Thread" },
        { t = "p", x = "If the bolts already took you past 80, just make capes until 95." },
      },
      c = {
        {
          n = 22,
          s = 2402,
          ic = "inv_misc_cape_10",
          x = "Woolen Cape",
          m = {
            { 22, "Bolt of Woolen Cloth", 2997 },
            { 22, "Fine Thread", 2321 },
          },
        },
      },
    },
    {
      t = "step",
      r = "95-100",
      b = {
        { t = "p", x = "5x {s:3848:inv_shoulder_06:Double-stitched Woolen Shoulders} - 15 Bolt of Woolen Cloth, 10 Fine Thread" },
      },
      c = {
        {
          n = 5,
          s = 3848,
          ic = "inv_shoulder_06",
          x = "Double-stitched Woolen Shoulders",
          m = {
            { 15, "Bolt of Woolen Cloth", 2997 },
            { 10, "Fine Thread", 2321 },
          },
        },
      },
    },
    {
      t = "step",
      r = "100-120",
      b = {
        { t = "p", x = "54x {s:3839:inv_fabric_silk_03:Bolt of Silk Cloth} - 216 Silk Cloth" },
        {
          t = "p",
          x = "Keep the bolts, you will need them later. In total you will need 184 {i:4305:inv_fabric_silk_03:Bolt of Silk Cloth} (736 {i:4306:inv_fabric_silk_01:Silk Cloth}) until 190, so you can also make all of them now.",
        },
      },
      c = {
        {
          n = 54,
          s = 3839,
          ic = "inv_fabric_silk_03",
          x = "Bolt of Silk Cloth",
          m = {
            { 216, "Silk Cloth", 4306 },
          },
        },
      },
    },
    {
      t = "step",
      r = "120-140",
      b = {
        { t = "p", x = "29x {s:3852:inv_gauntlets_05:Gloves of Meditation} - 116 Bolt of Woolen Cloth, 87 Fine Thread, 29 Elixir of Wisdom" },
        { t = "p", x = "You can buy {i:3383:inv_potion_06:Elixir of Wisdom} from the Auction House or ask an Alchemist." },
      },
      c = {
        {
          n = 29,
          s = 3852,
          ic = "inv_gauntlets_05",
          x = "Gloves of Meditation",
          m = {
            { 116, "Bolt of Woolen Cloth", 2997 },
            { 87, "Fine Thread", 2321 },
            { 29, "Elixir of Wisdom", 3383 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Expert Tailoring (140-200)", r = "140-200" },
    {
      t = "p",
      x = "To train past 150, visit {n:0:horde:Josef Gregorian} in Undercity (Horde) or {n:0:alliance:Georgio Bolero} in Stormwind City (Alliance) and learn Expert Tailoring. You need {b}Tailoring 125{/b} and {b}level 20{/b}, and it costs 50 silver.",
    },
    {
      t = "step",
      r = "140-150",
      b = {
        { t = "p", x = "23x {s:3865:inv_fabric_mageweave_03:Bolt of Mageweave} - 115 Mageweave Cloth" },
        {
          t = "p",
          x = "Keep the bolts, you will need them later. In total you will need 157 {i:4339:inv_fabric_mageweave_03:Bolt of Mageweave} (785 {i:4338:inv_fabric_mageweave_01:Mageweave Cloth}) until 225, so you can also make all of them now.",
        },
      },
      c = {
        {
          n = 23,
          s = 3865,
          ic = "inv_fabric_mageweave_03",
          x = "Bolt of Mageweave",
          m = {
            { 115, "Mageweave Cloth", 4338 },
          },
        },
      },
    },
    {
      t = "step",
      r = "150-170",
      b = {
        { t = "p", x = "20x {s:8791:inv_shirt_04:Crimson Silk Vest} - 80 Bolt of Silk Cloth, 40 Red Dye, 40 Fine Thread" },
      },
      c = {
        {
          n = 20,
          s = 8791,
          ic = "inv_shirt_04",
          x = "Crimson Silk Vest",
          m = {
            { 80, "Bolt of Silk Cloth", 4305 },
            { 40, "Red Dye", 2604 },
            { 40, "Fine Thread", 2321 },
          },
        },
      },
    },
    {
      t = "step",
      r = "170-190",
      b = {
        { t = "p", x = "26x {s:8799:inv_pants_06:Crimson Silk Pantaloons} - 104 Bolt of Silk Cloth, 52 Red Dye, 52 Silken Thread" },
      },
      c = {
        {
          n = 26,
          s = 8799,
          ic = "inv_pants_06",
          x = "Crimson Silk Pantaloons",
          m = {
            { 104, "Bolt of Silk Cloth", 4305 },
            { 52, "Red Dye", 2604 },
            { 52, "Silken Thread", 4291 },
          },
        },
      },
    },
    {
      t = "step",
      r = "190-200",
      b = {
        { t = "p", x = "19x {s:12049:inv_pants_09:Black Mageweave Leggings} - 38 Bolt of Mageweave, 57 Silken Thread" },
      },
      c = {
        {
          n = 19,
          s = 12049,
          ic = "inv_pants_09",
          x = "Black Mageweave Leggings",
          m = {
            { 38, "Bolt of Mageweave", 4339 },
            { 57, "Silken Thread", 4291 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Artisan Tailoring (200-300)", r = "200-300" },
    {
      t = "p",
      x = "To train past 225, visit {n:0:horde:Daryl Stack} in Tarren Mill, Hillsbrad Foothills (Horde) or {n:0:alliance:Timothy Worthington} in Theramore Isle, Dustwallow Marsh (Alliance) and learn Artisan Tailoring. You need {b}Tailoring 200{/b} and {b}level 35{/b}.",
    },
    {
      t = "step",
      r = "200-205",
      b = {
        { t = "p", x = "5x {s:12074:inv_shoulder_25:Black Mageweave Shoulders} - 15 Bolt of Mageweave, 10 Heavy Silken Thread" },
        {
          t = "p",
          x = "{b}The Expert trainers in Undercity and Stormwind don't teach this recipe{/b}, you can only learn it from the two trainers above.",
        },
      },
      c = {
        {
          n = 5,
          s = 12074,
          ic = "inv_shoulder_25",
          x = "Black Mageweave Shoulders",
          m = {
            { 15, "Bolt of Mageweave", 4339 },
            { 10, "Heavy Silken Thread", 8343 },
          },
        },
      },
    },
    {
      t = "step",
      r = "205-215",
      b = {
        { t = "p", x = "23x {s:18401:inv_fabric_purplefire_02:Bolt of Runecloth} - 115 Runecloth" },
        {
          t = "p",
          x = "Keep the bolts, you will need them later. In total you will need 311 {i:14048:inv_fabric_purplefire_02:Bolt of Runecloth} (1555 {i:14047:inv_fabric_purplefire_01:Runecloth}) until 280, so you can also make all of them now.",
        },
      },
      c = {
        {
          n = 23,
          s = 18401,
          ic = "inv_fabric_purplefire_02",
          x = "Bolt of Runecloth",
          m = {
            { 115, "Runecloth", 14047 },
          },
        },
      },
    },
    {
      t = "step",
      r = "215-225",
      b = {
        { t = "p", x = "26x {s:12065:inv_misc_bag_10_black:Mageweave Bag} - 104 Bolt of Mageweave, 52 Silken Thread" },
        {
          t = "p",
          x = "I recommend the bags right now simply because they are more useful. You can use them yourself, sell some, give them to friends or use them in your bank.",
        },
        { t = "h", l = 4, x = "Alternative recipe" },
        { t = "p", x = "If you don't need the bags and don't want to sell them, make these instead." },
        { t = "p", x = "10x {s:18402:inv_belt_15:Runecloth Belt} - 30 Bolt of Runecloth, 10 Rune Thread." },
      },
      c = {
        {
          n = 26,
          s = 12065,
          ic = "inv_misc_bag_10_black",
          x = "Mageweave Bag",
          m = {
            { 104, "Bolt of Mageweave", 4339 },
            { 52, "Silken Thread", 4291 },
          },
        },
      },
      a = {
        {
          n = 10,
          s = 18402,
          ic = "inv_belt_15",
          x = "Runecloth Belt",
          m = {
            { 30, "Bolt of Runecloth", 14048 },
            { 10, "Rune Thread", 14341 },
          },
        },
      },
    },
    {
      t = "step",
      r = "225-240",
      b = {
        { t = "p", x = "24x {s:18402:inv_belt_15:Runecloth Belt} - 72 Bolt of Runecloth, 24 Rune Thread" },
      },
      c = {
        {
          n = 24,
          s = 18402,
          ic = "inv_belt_15",
          x = "Runecloth Belt",
          m = {
            { 72, "Bolt of Runecloth", 14048 },
            { 24, "Rune Thread", 14341 },
          },
        },
      },
    },
    {
      t = "step",
      r = "240-250",
      b = {
        { t = "p", x = "11x {s:18417:inv_gauntlets_25:Runecloth Gloves} - 44 Bolt of Runecloth, 44 Rugged Leather, 11 Rune Thread" },
        { t = "p", x = "The pattern is sold by {n:0::Qia} in Winterspring." },
      },
      c = {
        {
          n = 11,
          s = 18417,
          ic = "inv_gauntlets_25",
          x = "Runecloth Gloves",
          m = {
            { 44, "Bolt of Runecloth", 14048 },
            { 44, "Rugged Leather", 8170 },
            { 11, "Rune Thread", 14341 },
          },
        },
      },
    },
    {
      t = "step",
      r = "250-280",
      b = {
        { t = "p", x = "39x {s:1257487:inv_bracer_13:Runecloth Cuffs} - 195 Bolt of Runecloth, 39 Ironweb Spider Silk, 39 Rune Thread" },
        {
          t = "p",
          x = "The pattern is sold by {n:0::Pexmit} in Mount Hyjal. It's bind on pickup, so buy it with the character that levels Tailoring.",
        },
        {
          t = "p",
          x = "Horde players can also get it as the reward for {q:95769::Threading a Solution}, a quest from {n:265788::Kal'tinzan} in Elderwild, Mount Hyjal. It needs level 54 and 6 Bolt of Runecloth. It's probably a Tailoring quest, but I don't know yet what skill it needs.",
        },
      },
      c = {
        {
          n = 39,
          s = 1257487,
          ic = "inv_bracer_13",
          x = "Runecloth Cuffs",
          m = {
            { 195, "Bolt of Runecloth", 14048 },
            { 39, "Ironweb Spider Silk", 14227 },
            { 39, "Rune Thread", 14341 },
          },
        },
      },
    },
    {
      t = "step",
      r = "280-300",
      b = {
        {
          t = "p",
          x = "Make the {s:18449:inv_shoulder_21:Runecloth Shoulders} if you can get the pattern. These are all the recipes I found so far that still give points after 280. I left out the ones that aren't worth it for leveling, and there might be new ones that nobody has found yet.",
        },
        {
          t = "table",
          h = 1,
          r = {
            { "Range", "Recipe", "Materials", "Pattern" },
            { "280-300", "58x {s:18449:inv_shoulder_21:Runecloth Shoulders}", "406x {i:14048:inv_fabric_purplefire_02:Bolt of Runecloth}, 116x {i:14227:spell_nature_web:Ironweb Spider Silk}, 232x {i:8170:inv_misc_leatherscrap_02:Rugged Leather}", "World drop, on the Auction House" },
            { "280-300", "58x {s:18450:inv_helmet_63:Wizardweave Turban}", "348x {i:14048:inv_fabric_purplefire_02:Bolt of Runecloth}, 232x {i:11176:inv_enchant_dustdream:Dream Dust}, 58x {i:7910:inv_misc_gem_ruby_02:Star Ruby}", "Rare, grab it if you see it on the Auction House" },
          },
        },
        {
          t = "p",
          x = "You can get a few more points with these, but they stop giving skill points before 300, so you can't reach 300 with them:",
        },
        {
          t = "table",
          h = 1,
          r = {
            { "Range", "Recipe", "Materials", "Pattern" },
            { "280-290", "42x {s:18444:inv_misc_bandana_03:Runecloth Headband}", "168x {i:14048:inv_fabric_purplefire_02:Bolt of Runecloth}, 84x {i:14227:spell_nature_web:Ironweb Spider Silk}", "World drop, on the Auction House" },
            { "280-290", "42x {s:1257487:inv_bracer_13:Runecloth Cuffs}", "210x {i:14048:inv_fabric_purplefire_02:Bolt of Runecloth}, 42x {i:14227:spell_nature_web:Ironweb Spider Silk}", "{n:0::Pexmit} in Mount Hyjal" },
          },
        },
        { t = "h", l = 4, x = "Recipes that need a Loom" },
        {
          t = "p",
          x = "{b}These recipes need a Loom, and you can only make a Loom at Tailoring 300.{/b} They could be used for leveling, but for now you would need a camp where another tailor already placed a Loom. I'm not sure if this is an oversight by Blizzard, so they might change it.",
        },
        { t = "p", x = "These are the Cenarion Circle patterns from {n:0::Mishta} in Silithus:" },
        {
          t = "table",
          h = 1,
          r = {
            { "Range", "Recipe", "Materials", "Requires" },
            { "285-290", "5x {s:1297123:inv_gauntlets_17:Swarmtender's Gloves} or {s:1297120:inv_gauntlets_18:Venomspew Gloves}", "20x {i:14048:inv_fabric_purplefire_02:Bolt of Runecloth}, 5x {i:14343:inv_enchant_shardbrilliantsmall:Small Brilliant Shard}, 15x {i:7080:spell_nature_acid_01:Essence of Water} or {i:7082:spell_nature_earthbind:Essence of Air}", "Cenarion Circle Friendly" },
            { "290-295", "5x {s:1297124:inv_belt_03:Swarmtender's Cord} or {s:1297121:inv_belt_25:Venomspew Cord}", "30x {i:14048:inv_fabric_purplefire_02:Bolt of Runecloth}, 5x {i:14343:inv_enchant_shardbrilliantsmall:Small Brilliant Shard}, 15x {i:7080:spell_nature_acid_01:Essence of Water} or {i:7082:spell_nature_earthbind:Essence of Air}", "Cenarion Circle Honored" },
            { "295-300", "18x {s:1297125:inv_boots_cloth_01:Swarmtender's Footpads} or {s:1297122:inv_boots_cloth_04:Venomspew Footpads}", "90x {i:14048:inv_fabric_purplefire_02:Bolt of Runecloth}, 18x {i:14343:inv_enchant_shardbrilliantsmall:Small Brilliant Shard}, 54x {i:7080:spell_nature_acid_01:Essence of Water} or {i:7082:spell_nature_earthbind:Essence of Air}", "Cenarion Circle Honored" },
          },
        },
      },
    },
  },
})
