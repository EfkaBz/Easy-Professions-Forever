-- Generated from https://www.wow-professions.com/forever/cooking-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "cooking",
  order = 11,
  cat = "second",
  icon = "Interface\\Icons\\INV_Misc_Food_15",
  title = "Cooking Leveling Guide 1-300",
  titleFR = "Cuisine",
  url = "https://www.wow-professions.com/forever/cooking-leveling-guide",
  skill = "cooking",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever Cooking leveling guide will show you the fastest way to level your Cooking skill from 1 to 300 as cheaply as possible. You will also find every trainer location, how the campfire works in Forever and where to train Cooking past 150 and 225.",
    },
    {
      t = "p",
      x = "Cooking doesn't take up one of your two profession slots, so every character can learn it. Most of the recipes below only need the meat or fish that drops while you level, so the guide lists a few recipes for every skill range and you can make the one you have the ingredients for. If you also want to level Fishing but haven't leveled it yet, use my Fishing and Cooking leveling guide instead:",
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
        { n = 55, id = 6303, ic = "inv_misc_fish_24", x = "Raw Slitherskin Mackerel" },
        { n = 55, id = 6361, ic = "inv_misc_fish_25", x = "Raw Rainbow Fin Albacore" },
        { n = 30, id = 3685, ic = "inv_egg_03", x = "Raptor Egg" },
        { n = 55, id = 8365, ic = "inv_misc_fish_02", x = "Raw Mithril Head Trout" },
      },
    },
    { t = "h", l = 3, x = "225-300" },
    { t = "p", x = "The Giant Eggs and the Zesty Clam Meat are for the Artisan Cooking quest." },
    {
      t = "shop",
      r = {
        { n = 140, id = 13758, ic = "inv_misc_fish_06", x = "Raw Redgill" },
      },
    },
    { t = "h", l = 2, x = "Cooking Trainer Locations" },
    {
      t = "p",
      x = "Apprentice Cooking has no level requirement, so you can learn it on a fresh character. Every trainer also teaches Journeyman Cooking, so you don't have to find a different trainer at 50.",
    },
    { t = "p", x = "Every capital city has a trainer. You can also ask a guard, then it will be marked with a red flag on your map." },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "h", l = 4, x = "Capital Cities" },
          { t = "list", i = { "Orgrimmar: {n:0:horde:Zamja}", "Undercity: {n:0:horde:Eunice Burch}", "Thunder Bluff: {n:0:horde:Aska Mistrunner}" } },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Every starting zone has a Cooking trainer, most of them are inside the inn." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Orc, Troll", "Durotar", "{n:0:horde:Cook Torka} in Razor Hill" },
              { "Tauren", "Mulgore", "{n:0:horde:Pyall Silentstride} inside the big tent in Bloodhoof Village" },
              { "Undead", "Tirisfal Glades", "{n:0:horde:William Pickman} inside the inn in Brill" },
              { "Skyborne", "Zephras Isle", "{n:0::Nyalah Brightfire} in Valanaar, {n:0::Zerril Softbreeze} in Shen'dar Village" },
            },
          },
        },
        {
          { t = "h", l = 4, x = "Capital Cities" },
          {
            t = "list",
            i = { "Stormwind City: {n:0:alliance:Stephen Ryback}", "Ironforge: {n:0:alliance:Daryl Riknussun}", "Darnassus: {n:0:alliance:Alegorn}" },
          },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Every starting zone has a Cooking trainer, most of them are inside the inn." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Human", "Elwynn Forest", "{n:0:alliance:Tomas} in the kitchen of the inn in Goldshire" },
              { "Dwarf, Gnome", "Dun Morogh", "{n:0:alliance:Gremlock Pilsnor} in the Thunderbrew Distillery in Kharanos" },
              { "Night Elf", "Teldrassil", "{n:0:alliance:Zarrin} in Dolanaar" },
              { "Skyborne", "Zephras Isle", "{n:0::Nyalah Brightfire} in Valanaar, {n:0::Zerril Softbreeze} in Shen'dar Village" },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "p", x = "You can find every Cooking trainer for Horde and Alliance on my WoW Forever Cooking Trainers page." },
    { t = "h", l = 2, x = "Campfire" },
    {
      t = "p",
      x = "You need a campfire to cook. There is often one burning next to the Cooking trainer, so look around before you make your own.",
    },
    {
      t = "p",
      x = "In Forever the campfire is an item. You learn the {s:1229737:inv_camelot_camping_welcomingcampfire:Basic Campfire Kit} together with Cooking and place the fire from your bags, so you can make a stack of kits in advance. Other players can add their own camp items to your fire, you can read about the whole camping system in my WoW Forever Camping Guide.",
    },
    {
      t = "p",
      x = "To craft the kits you need {i:4470:inv_tradeskillitem_01:Simple Wood} and a {i:4471:inv_stone_11:Flint and Tinder}. The Flint and Tinder is only for crafting the kits, you don't need it to place the fire. Open your faction below to see who sells them near your trainer:",
    },
    { t = "p", x = "Horde vendors" },
    {
      t = "table",
      h = 1,
      r = {
        { "Zone", "Vendor" },
        { "Orgrimmar", "{n:0:horde:Xen'to}, next to the trainer" },
        { "Undercity", "{n:0:horde:Ronald Burch}, next to the trainer" },
        { "Thunder Bluff", "{n:0:horde:Naal Mistrunner}, next to the trainer" },
        { "Durotar", "{n:0:horde:Jark} in the Razor Hill barracks" },
        { "Mulgore", "{n:0:horde:Moorat Longstride} in Bloodhoof Village" },
        { "Tirisfal Glades", "{n:0:horde:Mrs. Winters} in Brill" },
        { "Zephras Isle", "{n:0::Antelariaa Cloudgaze} in Valanaar {n:0::Zerril Softbreeze}, the Cooking trainer in Shen'dar Village" },
      },
    },
    { t = "p", x = "Alliance vendors" },
    {
      t = "table",
      h = 1,
      r = {
        { "Zone", "Vendor" },
        { "Stormwind City", "{n:0:alliance:Erika Tate}, next to the trainer" },
        { "Ironforge", "{n:0:alliance:Emrul Riknussun}, next to the trainer" },
        { "Darnassus", "{n:0:alliance:Fyldan}, next to the trainer" },
        { "Elwynn Forest", "{n:0:alliance:Brog Hamfist} in Goldshire" },
        { "Dun Morogh", "{n:0:alliance:Kreg Bilmn} in the Thunderbrew Distillery" },
        { "Teldrassil", "{n:0:alliance:Nyoma} in Dolanaar" },
        { "Zephras Isle", "{n:0::Antelariaa Cloudgaze} in Valanaar {n:0::Zerril Softbreeze}, the Cooking trainer in Shen'dar Village" },
      },
    },
    { t = "h", l = 2, x = "Apprentice Cooking (1-50)", r = "1-50" },
    { t = "p", x = "{b}These are sold by Cooking Supply vendors near your trainer, don't buy them from the Auction House:{/b}" },
    {
      t = "list",
      i = { "{i:2678:inv_misc_food_wheat_02:Mild Spices}", "{i:2692:inv_misc_food_legion_dalapenopepper:Hot Spices}", "{i:3713:inv_misc_food_vendor_rice:Soothing Spices}" },
    },
    { t = "p", x = "Make around 55 from one of these recipes. The two fish are usually the cheapest." },
    {
      t = "table",
      h = 1,
      r = {
        { "Food", "Ingredients", "Recipe Source" },
        { "55x {s:7751:inv_misc_fish_07:Brilliant Smallfish}", "55x {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish}", "Mulgore: {n:0:horde:Harn Longcast} Thunder Bluff: {n:0:horde:Sewa Mistrunner} Tirisfal Glades: {n:0:horde:Martine Tramblay} Undercity: {n:0:horde:Lizbeth Cromwell} Dun Morogh: {n:0:alliance:Gretta Ganter} Elwynn Forest: {n:0:alliance:Tharynn Bouden} Loch Modan: {n:0:alliance:Khara Deepwater} Stormwind City: {n:0:alliance:Catherine Leland} Teldrassil: {n:0:alliance:Nyoma}" },
        { "55x {s:7752:inv_misc_fish_24:Slitherskin Mackerel}", "55x {i:6303:inv_misc_fish_24:Raw Slitherskin Mackerel}", "Durotar: {n:0:horde:Zansoa} Tirisfal Glades: {n:0:horde:Martine Tramblay} Ironforge: {n:0:alliance:Tansy Puddlefizz} Teldrassil: {n:0:alliance:Nessa Shadowsong} Westfall: {n:0:alliance:Kriggon Talsone}" },
        { "55x {s:2538:inv_misc_food_18:Charred Wolf Meat}", "55x {i:2672:inv_misc_food_14:Stringy Wolf Meat}", "Trainer" },
        { "55x {s:2540:inv_misc_food_18:Roasted Boar Meat}", "55x {i:769:inv_misc_food_14:Chunk of Boar Meat}", "Trainer" },
      },
    },
    { t = "h", l = 4, x = "Alternative recipes" },
    {
      t = "list",
      i = { "(Horde only) Make {s:15935:inv_misc_food_46:Crispy Bat Wing} if you have some {i:12223:inv_misc_pelt_bear_ruin_05:Meaty Bat Wing}. The recipe is sold by {n:0:horde:Abigail Shiel} in Tirisfal Glades.", "(Horde only) Make {s:6413:inv_misc_food_10:Scorpid Surprise} if you have some {i:5466:spell_nature_nullifypoison:Scorpid Stinger}. The recipe is sold by {n:0:horde:Grimtak} in Durotar.", "(Alliance only) Make {s:6412:inv_misc_food_68:Kaldorei Spider Kabob} if you have some {i:5465:inv_misc_monsterspidercarapace_01:Small Spider Leg}. The recipe is a reward from {q:4161::Recipe of the Kaldorei}. You can get the quest from {n:0:alliance:Zarrin} in Teldrassil." },
    },
    { t = "h", l = 2, x = "Journeyman Cooking (50-150)", r = "50-150" },
    { t = "p", x = "{b}Visit your trainer again and learn Journeyman Cooking{/b}, it requires Cooking 50." },
    {
      t = "note",
      x = "{b}Make sure to learn Journeyman Cooking before you start the next part{/b}, especially if you go AFK while cooking. Without it you stop getting skill points at 75 and keep cooking for nothing.",
    },
    {
      t = "step",
      r = "50-100",
      b = {
        {
          t = "p",
          x = "Make around 55 from any of the recipes below. The two fish are usually the cheapest. {s:8607:inv_misc_food_13:Smoked Bear Meat} turns yellow sooner than the rest, so make more of it, or cook it first if you have more than one type of meat.",
        },
        {
          t = "table",
          h = 1,
          r = {
            { "Food", "Ingredients", "Recipe Source" },
            { "55x {s:7753:inv_misc_fish_32:Longjaw Mud Snapper}", "55x {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper}", "Mulgore: {n:0:horde:Harn Longcast} Silverpine Forest: {n:0:horde:Killian Sanatha} Thunder Bluff: {n:0:horde:Naal Mistrunner} Undercity: {n:0:horde:Lizbeth Cromwell} Elwynn Forest: {n:0:alliance:Tharynn Bouden} Ironforge: {n:0:alliance:Tansy Puddlefizz} Loch Modan: {n:0:alliance:Khara Deepwater} Teldrassil: {n:0:alliance:Nyoma}" },
            { "55x {s:7827:inv_misc_fish_27:Rainbow Fin Albacore}", "55x {i:6361:inv_misc_fish_25:Raw Rainbow Fin Albacore}", "Durotar: {n:0:horde:Zansoa} Orgrimmar: {n:0:horde:Shankys} Silverpine Forest: {n:0:horde:Killian Sanatha} Undercity: {n:0:horde:Ronald Burch} Darkshore: {n:0:alliance:Heldan Galesong} Stormwind City: {n:0:alliance:Catherine Leland} Teldrassil: {n:0:alliance:Nessa Shadowsong} Westfall: {n:0:alliance:Kriggon Talsone} Wetlands: {n:0:alliance:Stuart Fleming} The Barrens: {n:0::Kilxx}" },
            { "65-75x {s:8607:inv_misc_food_13:Smoked Bear Meat}", "65-75x {i:3173:inv_misc_food_71:Bear Meat}", "Silverpine Forest: {n:0:horde:Andrew Hilbert} Loch Modan: {n:0:alliance:Drac Roughcut}" },
            { "55x {s:6416:inv_misc_bowl_01:Strider Stew}", "55x {i:5469:inv_misc_food_16:Strider Meat} 55x {i:4536:inv_misc_food_19:Shiny Red Apple} (Vendor)", "The Barrens: {n:0:horde:Tari'qa} (Horde only) Reward from {q:2178::Easy Strider Living} (Alliance only)" },
          },
        },
      },
    },
    {
      t = "step",
      r = "100-130",
      b = {
        { t = "p", x = "Make around 30-35 from one of these two." },
        {
          t = "table",
          h = 1,
          r = {
            { "Food", "Ingredients", "Recipe Source" },
            { "30x {s:7755:inv_misc_fish_30:Bristle Whisker Catfish}", "30x {i:6308:inv_misc_fish_30:Raw Bristle Whisker Catfish} (buy around 55, you will need 25 more at 130-150)", "Hillsbrad Foothills: {n:0:horde:Derak Nightfall} Thunder Bluff: {n:0:horde:Naal Mistrunner} Thunder Bluff: {n:0:horde:Sewa Mistrunner} Undercity: {n:0:horde:Ronald Burch} Hillsbrad Foothills: {n:0:alliance:Lindea Rabonne} Stormwind City: {n:0:alliance:Catherine Leland} The Barrens: {n:0::Kilxx}" },
            { "35x {s:2545:inv_misc_birdbeck_02:Cooked Crab Claw}", "35x {i:2675:inv_misc_birdbeck_02:Crawler Claw}, 35x {i:2678:inv_misc_food_wheat_02:Mild Spices}", "Stormwind City: {n:0:alliance:Kendor Kabonka} (Alliance only)" },
          },
        },
      },
    },
    {
      t = "step",
      r = "130-150",
      b = {
        { t = "p", x = "Make around 20-25 from any of the recipes below." },
        {
          t = "table",
          h = 1,
          r = {
            { "Food", "Ingredients", "Recipe Source" },
            { "25x {s:7755:inv_misc_fish_30:Bristle Whisker Catfish}", "25x {i:6308:inv_misc_fish_30:Raw Bristle Whisker Catfish}", "See above" },
            { "20x {s:3376:inv_egg_04:Curiously Tasty Omelet}", "20x {i:3685:inv_egg_03:Raptor Egg}, 20x {i:2692:inv_misc_food_legion_dalapenopepper:Hot Spices}", "Stormwind City: {n:0:alliance:Kendor Kabonka} (Alliance) Arathi Highlands: {n:0:horde:Keena} (Horde)" },
            { "25x {s:6500:inv_misc_shell_01:Goblin Deviled Clams}", "25x {i:5504:inv_misc_food_51:Tangy Clam Meat}, 25x {i:2692:inv_misc_food_legion_dalapenopepper:Hot Spices}", "Trainer" },
            { "25x {s:3398:inv_misc_food_18:Hot Lion Chops}", "25x {i:3731:inv_misc_food_71:Lion Meat}, 25x {i:2692:inv_misc_food_legion_dalapenopepper:Hot Spices}", "The Barrens: {n:0:horde:Zargh} (Horde only)" },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Expert Cooking (150-225)", r = "150-225" },
    {
      t = "p",
      x = "To learn Expert Cooking you need to reach Cooking 125, then buy the {i:16072:inv_misc_book_08:Expert Cookbook} from {n:0:horde:Wulan} (Horde) in Desolace at Shadowprey Village or from {n:0:alliance:Shandrina} (Alliance) in Ashenvale at Mystral Lake.",
    },
    {
      t = "step",
      r = "150-175",
      b = {
        { t = "p", x = "Make around 25-30 from one of these three." },
        {
          t = "table",
          h = 1,
          r = {
            { "Food", "Ingredients", "Recipe Source" },
            { "30x {s:6500:inv_misc_shell_01:Goblin Deviled Clams}", "30x {i:5504:inv_misc_food_51:Tangy Clam Meat}, 30x {i:2692:inv_misc_food_legion_dalapenopepper:Hot Spices}", "Trainer" },
            { "30x {s:3376:inv_egg_04:Curiously Tasty Omelet}", "30x {i:3685:inv_egg_03:Raptor Egg}, 30x {i:2692:inv_misc_food_legion_dalapenopepper:Hot Spices}", "Stormwind City: {n:0:alliance:Kendor Kabonka} (Alliance) Arathi Highlands: {n:0:horde:Keena} (Horde)" },
            { "25x {s:3398:inv_misc_food_18:Hot Lion Chops}", "25x {i:3731:inv_misc_food_71:Lion Meat}, 25x {i:2692:inv_misc_food_legion_dalapenopepper:Hot Spices}", "The Barrens: {n:0:horde:Zargh} (Horde only)" },
          },
        },
        { t = "h", l = 4, x = "Alternative recipe" },
        {
          t = "p",
          x = "You can also keep making {s:7755:inv_misc_fish_30:Bristle Whisker Catfish}, but it's green from 160, so you need around 90 of them for these 25 points.",
        },
      },
    },
    {
      t = "step",
      r = "175-225",
      b = {
        { t = "p", x = "Make around 55 from one of these. The Roast Raptor is usually the cheapest." },
        {
          t = "table",
          h = 1,
          r = {
            { "Food", "Ingredients", "Recipe Source" },
            { "55x {s:15855:inv_misc_food_50:Roast Raptor}", "55x {i:12184:inv_misc_food_69:Raptor Flesh}, 55x {i:2692:inv_misc_food_legion_dalapenopepper:Hot Spices}", "Arathi Highlands: {n:0:alliance:Hammon Karwn} Arathi Highlands: {n:0:horde:Keena} Dustwallow Marsh: {n:0:horde:Ogg'marr}" },
            { "55x {s:20916:inv_misc_fish_02:Mithril Headed Trout}", "55x {i:8365:inv_misc_fish_02:Raw Mithril Head Trout}", "Ashenvale: {n:0:horde:Wik'Tar} Orgrimmar: {n:0:horde:Shankys} Stranglethorn Vale: {n:0::Kelsey Yance} Undercity: {n:0:horde:Lizbeth Cromwell} Ironforge: {n:0:alliance:Tansy Puddlefizz} Wetlands: {n:0:alliance:Stuart Fleming} Desolace: {n:0:horde:Wulan} Darkshore: {n:0:alliance:Heldan Galesong} Hillsbrad Foothills: {n:0:alliance:Lindea Rabonne}" },
            { "55x {s:3400:inv_misc_bowl_01:Soothing Turtle Bisque}", "55x {i:3712:inv_misc_food_70:Turtle Meat}, 55x {i:3713:inv_misc_food_vendor_rice:Soothing Spices}", "Reward from a quest in Hillsbrad Foothills NPC: {n:0:horde:Christoph Jeffcoat}, quest: {q:7321::Soothing Turtle Bisque} NPC: {n:0:alliance:Chef Jessen}, quest: {q:555::Soothing Turtle Bisque}" },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Artisan Cooking (225-300)", r = "225-300" },
    {
      t = "p",
      x = "Artisan Cooking is the reward of the {q:6610::Clamlette Surprise} quest. You need {b}level 35{/b} and {b}Cooking 225{/b} for it.",
    },
    {
      t = "list",
      i = { "Pick up the quest that sends you to Gadgetzan: Horde players take {q:6611::To Gadgetzan You Go!} from {n:0:horde:Zamja} in Orgrimmar, Alliance players take {q:6612::I Know A Guy...} from {n:0:alliance:Daryl Riknussun} in Ironforge.", "Collect 12x {i:12207:inv_egg_03:Giant Egg}, 10x {i:7974:inv_misc_food_51:Zesty Clam Meat} and 20x {i:8932:inv_misc_food_37:Alterac Swiss}. {b}Don't go to Gadgetzan before you have all of them{/b}, otherwise you make the trip twice.", "Find {n:0::Dirge Quikcleave} in Gadgetzan, take Clamlette Surprise from him and hand in the three items. He teaches you Artisan Cooking on the spot. While you are in Tanaris, go to Steamwheedle Port and {b}buy {i:13939:inv_scroll_03:Recipe: Spotted Yellowtail} from {n:0::Gikkix}{/b}, you need it in the next step." },
    },
    {
      t = "step",
      r = "225-300",
      b = {
        { t = "p", x = "Make around 140 from one of these two, buy the fish that is cheaper." },
        {
          t = "table",
          h = 1,
          r = {
            { "Food", "Ingredients", "Recipe Source" },
            { "140x {s:18238:inv_misc_fish_01:Spotted Yellowtail}", "140x {i:4603:inv_misc_fish_01:Raw Spotted Yellowtail}", "Tanaris: {n:0::Gikkix}" },
            { "140x {s:18241:inv_misc_fish_06:Filet of Redgill}", "140x {i:13758:inv_misc_fish_06:Raw Redgill}", "Stranglethorn Vale: {n:0::Kelsey Yance}" },
          },
        },
      },
    },
  },
})
