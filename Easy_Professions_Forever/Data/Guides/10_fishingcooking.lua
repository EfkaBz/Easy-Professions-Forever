-- Generated from https://www.wow-professions.com/forever/fishing-and-cooking-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "fishingcooking",
  order = 10,
  cat = "second",
  icon = "Interface\\Icons\\INV_Misc_Fish_02",
  title = "Fishing and Cooking Leveling Guide 1-300",
  titleFR = "Pêche + Cuisine",
  url = "https://www.wow-professions.com/forever/fishing-and-cooking-leveling-guide",
  skill = "fishing",
  sections = true,
  blocks = {
    {
      t = "p",
      x = "This WoW Forever Fishing and Cooking leveling guide will show you the fastest way to level Fishing and Cooking together from 1 to 300.",
    },
    {
      t = "p",
      x = "Leveling Fishing takes a long time, so it's best to level these two together, because every fish you catch is also a Cooking recipe and your Cooking goes up for free while you fish. You will still need a lot of patience because you have to catch a lot of fish to get from start to finish. If you only want one of them, use my Fishing guide or my Cooking guide instead.",
    },
    {
      t = "note",
      x = "This is based on the Forever beta. Leveling takes a long time, so testing the higher levels on live will take a while. If you find something that's off, send me feedback.",
    },
    { t = "h", l = 2, x = "Level Fishing to 75", r = "1-75" },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          {
            t = "p",
            x = "If you can choose, {b}level Fishing in Mulgore{/b}, because everything is close together there. {n:0::Harn Longcast} in Bloodhoof Village sells both recipes and the pole, and the Fishing trainer stands at Stonebull Lake. Thunder Bluff, where you fish after 75, is right next to it.",
          },
          {
            t = "tabs",
            n = { "Mulgore", "Durotar", "Tirisfal Glades", "Zephras Isle" },
            p = {
              {
                { t = "p", x = "If you haven't learned Fishing yet, learn it from {n:0::Lau'Tiki} on the coast south of Sen'jin Village." },
                {
                  t = "list",
                  i = { "Buy {i:6326:inv_scroll_03:Recipe: Slitherskin Mackerel} from {n:0::Zansoa} in Sen'jin Village. Buy a {i:6256:inv_fishingpole_02:Fishing Pole} and a {i:6529:inv_misc_orb_03:Shiny Bauble} there too. (Buy any {i:6533:inv_misc_food_26:Aquadynamic Fish Attractor} you see and keep it for later.)", "Equip your fishing pole, attach a {i:6529:inv_misc_orb_03:Shiny Bauble}, and fish on the coast next to {n:0::Lau'Tiki}, south of Sen'jin Village, until your Fishing skill reaches 75. Almost everything you catch there is {i:6303:inv_misc_fish_24:Raw Slitherskin Mackerel}, about 70 of them.", "Learn Journeyman Fishing from {n:0::Lau'Tiki}, it requires level 10." },
                },
                {
                  t = "img",
                  f = "fishing-spot-forever-durotar-coast-sen-jin-village",
                  a = "The coast south of Sen'jin Village in Durotar, where to fish from 1 to 75",
                  w = 512,
                  h = 342,
                  u = 1,
                  v = 0.668,
                },
              },
              {
                { t = "p", x = "If you haven't learned Fishing yet, learn it from {n:0::Uthan Stillwater} at Stonebull Lake." },
                {
                  t = "list",
                  i = { "Buy {i:6325:inv_scroll_03:Recipe: Brilliant Smallfish} and {i:6328:inv_scroll_03:Recipe: Longjaw Mud Snapper} from {n:0::Harn Longcast} in Bloodhoof Village. Buy a {i:6256:inv_fishingpole_02:Fishing Pole} and a {i:6529:inv_misc_orb_03:Shiny Bauble} there too. (Buy any {i:6533:inv_misc_food_26:Aquadynamic Fish Attractor} you see and keep it for later.)", "Equip your fishing pole, attach a {i:6529:inv_misc_orb_03:Shiny Bauble}, and fish in Stonebull Lake until your Fishing skill reaches 75. You will catch about 45 {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish} and 30 {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper}.", "Learn Journeyman Fishing from {n:0::Uthan Stillwater}, it requires level 10." },
                },
                {
                  t = "img",
                  f = "fishing-spot-forever-mulgore-stonebull-lake",
                  a = "Stonebull Lake around Bloodhoof Village in Mulgore, where to fish from 1 to 75",
                  w = 512,
                  h = 342,
                  u = 1,
                  v = 0.668,
                },
              },
              {
                { t = "p", x = "If you haven't learned Fishing yet, learn it from {n:0::Clyde Kellen} at Brightwater Lake." },
                {
                  t = "list",
                  i = { "Buy {i:6325:inv_scroll_03:Recipe: Brilliant Smallfish} from {n:0::Martine Tramblay} at the Death's Watch Waystation, south-east of Brill. Buy a {i:6256:inv_fishingpole_02:Fishing Pole} and a {i:6529:inv_misc_orb_03:Shiny Bauble} there too. (Buy any {i:6533:inv_misc_food_26:Aquadynamic Fish Attractor} you see and keep it for later.)", "Equip your fishing pole, attach a {i:6529:inv_misc_orb_03:Shiny Bauble}, and fish in Brightwater Lake until your Fishing skill reaches 75. You will catch about 30 {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish} and 20 {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper}, plus some {i:6299:inv_misc_fish_28:Sickly Looking Fish} and junk.", "Learn Journeyman Fishing from {n:0::Clyde Kellen}, it requires level 10." },
                },
                {
                  t = "img",
                  f = "fishing-spot-forever-tirisfal-glades-brightwater-lake",
                  a = "Brightwater Lake east of Brill in Tirisfal Glades, where to fish from 1 to 75",
                  w = 512,
                  h = 342,
                  u = 1,
                  v = 0.668,
                },
              },
              {
                {
                  t = "p",
                  x = "If you haven't learned Fishing yet, learn it from {n:0::Fenn Fairweather} in Shen'dar Village or {n:0::Baelann Swiftcurrent} in Valanaar.",
                },
                {
                  t = "list",
                  i = { "Buy a {i:6256:inv_fishingpole_02:Fishing Pole} and a {i:6529:inv_misc_orb_03:Shiny Bauble} from {n:0::Belandiel Farflight} in Shen'dar Village or {n:0::Baelann Swiftcurrent} in Valanaar. (Buy any {i:6533:inv_misc_food_26:Aquadynamic Fish Attractor} you see and keep it for later.)", "Equip your fishing pole, attach a {i:6529:inv_misc_orb_03:Shiny Bauble}, and fish in any lake or river on Zephras Isle until your Fishing skill reaches 75, for example next to the Fishing trainers in Shen'dar Village and Valanaar. You will catch about 45 {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish} and 30 {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper}. Keep all the fish you catch.", "Learn Journeyman Fishing from {n:0::Fenn Fairweather} or {n:0::Baelann Swiftcurrent}, it requires level 10.", "When you get to Thunder Bluff, buy {i:6325:inv_scroll_03:Recipe: Brilliant Smallfish} from {n:0::Sewa Mistrunner} and {i:6328:inv_scroll_03:Recipe: Longjaw Mud Snapper} from {n:0::Naal Mistrunner}. They stand next to each other." },
                },
                {
                  t = "img",
                  f = "fishing-spot-forever-zephras-isle-shen-dar-village-valanaar",
                  a = "The water at Shen'dar Village and Valanaar on Zephras Isle, where to fish from 1 to 75",
                  w = 512,
                  h = 342,
                  u = 1,
                  v = 0.668,
                },
              },
            },
          },
        },
        {
          {
            t = "p",
            x = "If you can choose, {b}level Fishing in Elwynn Forest{/b}, because everything is close together there. {n:0::Tharynn Bouden} in Goldshire sells both recipes and the pole, and the Fishing trainer stands at Crystal Lake. Stormwind City, where you fish after 75, is right next to it.",
          },
          {
            t = "tabs",
            n = { "Elwynn Forest", "Dun Morogh", "Teldrassil", "Zephras Isle" },
            p = {
              {
                { t = "p", x = "If you haven't learned Fishing yet, learn it from {n:0::Lee Brown} at Crystal Lake." },
                {
                  t = "list",
                  i = { "Buy {i:6325:inv_scroll_03:Recipe: Brilliant Smallfish} and {i:6328:inv_scroll_03:Recipe: Longjaw Mud Snapper} from {n:0::Tharynn Bouden} in Goldshire. Buy a {i:6256:inv_fishingpole_02:Fishing Pole} and a {i:6529:inv_misc_orb_03:Shiny Bauble} there too. (Buy any {i:6533:inv_misc_food_26:Aquadynamic Fish Attractor} you see and keep it for later.)", "Equip your fishing pole, attach a {i:6529:inv_misc_orb_03:Shiny Bauble}, and fish in Crystal Lake, east of Goldshire, until your Fishing skill reaches 75. You will catch about 45 {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish} and 30 {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper}.", "Learn Journeyman Fishing from {n:0::Lee Brown}, it requires level 10." },
                },
                {
                  t = "img",
                  f = "fishing-spot-forever-elwynn-forest-crystal-lake",
                  a = "Crystal Lake east of Goldshire in Elwynn Forest, where to fish from 1 to 75",
                  w = 512,
                  h = 342,
                  u = 1,
                  v = 0.668,
                },
              },
              {
                { t = "p", x = "If you haven't learned Fishing yet, learn it from {n:0::Paxton Ganter} at Iceflow Lake." },
                {
                  t = "list",
                  i = { "Buy {i:6325:inv_scroll_03:Recipe: Brilliant Smallfish} from {n:0::Gretta Ganter} at Iceflow Lake. Buy a {i:6256:inv_fishingpole_02:Fishing Pole} and a {i:6529:inv_misc_orb_03:Shiny Bauble} there too. (Buy any {i:6533:inv_misc_food_26:Aquadynamic Fish Attractor} you see and keep it for later.)", "Equip your fishing pole, attach a {i:6529:inv_misc_orb_03:Shiny Bauble}, and fish in Iceflow Lake until your Fishing skill reaches 75. You will catch about 45 {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish} and 30 {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper}.", "Learn Journeyman Fishing from {n:0::Paxton Ganter}, it requires level 10." },
                },
                {
                  t = "img",
                  f = "fishing-spot-forever-dun-morogh-iceflow-lake",
                  a = "Iceflow Lake in Dun Morogh, where to fish from 1 to 75",
                  w = 512,
                  h = 342,
                  u = 1,
                  v = 0.668,
                },
              },
              {
                {
                  t = "list",
                  i = { "Learn Fishing from {n:0::Astaia} in Darnassus. There is no Fishing trainer in Dolanaar.", "Buy {i:6325:inv_scroll_03:Recipe: Brilliant Smallfish} and {i:6328:inv_scroll_03:Recipe: Longjaw Mud Snapper} from {n:0::Nyoma} in Dolanaar.", "Buy a {i:6256:inv_fishingpole_02:Fishing Pole} and a {i:6529:inv_misc_orb_03:Shiny Bauble} from {n:0::Narret Shadowgrove} in Dolanaar. (Buy any {i:6533:inv_misc_food_26:Aquadynamic Fish Attractor} you see and keep it for later.)", "Equip your fishing pole, attach a {i:6529:inv_misc_orb_03:Shiny Bauble}, and fish in Lake Al'Ameth, south of Dolanaar, until your Fishing skill reaches 75. You will catch about 45 {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish} and 30 {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper}.", "Learn Journeyman Fishing from {n:0::Astaia} in Darnassus, it requires level 10." },
                },
                {
                  t = "img",
                  f = "fishing-spot-forever-teldrassil-lake-al-ameth",
                  a = "Lake Al'Ameth south of Dolanaar in Teldrassil, where to fish from 1 to 75",
                  w = 512,
                  h = 342,
                  u = 1,
                  v = 0.668,
                },
              },
              {
                {
                  t = "p",
                  x = "If you haven't learned Fishing yet, learn it from {n:0::Fenn Fairweather} in Shen'dar Village or {n:0::Baelann Swiftcurrent} in Valanaar.",
                },
                {
                  t = "list",
                  i = { "Buy a {i:6256:inv_fishingpole_02:Fishing Pole} and a {i:6529:inv_misc_orb_03:Shiny Bauble} from {n:0::Belandiel Farflight} in Shen'dar Village or {n:0::Baelann Swiftcurrent} in Valanaar. (Buy any {i:6533:inv_misc_food_26:Aquadynamic Fish Attractor} you see and keep it for later.)", "Equip your fishing pole, attach a {i:6529:inv_misc_orb_03:Shiny Bauble}, and fish in any lake or river on Zephras Isle until your Fishing skill reaches 75, for example next to the Fishing trainers in Shen'dar Village and Valanaar. You will catch about 45 {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish} and 30 {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper}. Keep all the fish you catch.", "Learn Journeyman Fishing from {n:0::Fenn Fairweather} or {n:0::Baelann Swiftcurrent}, it requires level 10.", "When you get to Stormwind City, buy {i:6325:inv_scroll_03:Recipe: Brilliant Smallfish} and {i:6328:inv_scroll_03:Recipe: Longjaw Mud Snapper} from {n:0::Tharynn Bouden} in Goldshire, right outside the city." },
                },
                {
                  t = "img",
                  f = "fishing-spot-forever-zephras-isle-shen-dar-village-valanaar",
                  a = "The water at Shen'dar Village and Valanaar on Zephras Isle, where to fish from 1 to 75",
                  w = 512,
                  h = 342,
                  u = 1,
                  v = 0.668,
                },
              },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "h", l = 2, x = "Fishing (75-130) and Cooking (1-100)", r = "75-130" },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "h", l = 3, x = "Fishing" },
          {
            t = "p",
            x = "Fish in the capital city closest to you until your Fishing skill reaches 130. From 75 no fish gets away in any of them. You should catch about 20 {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish}, 60 {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper} and 30 {i:6308:inv_misc_fish_30:Raw Bristle Whisker Catfish}.",
          },
          {
            t = "list",
            i = { "{b}Thunder Bluff:{/b} the pond near the Auction House.", "{b}Undercity:{/b} the canals. About a third of what you catch here is junk, so you get fewer fish.", "{b}Orgrimmar:{/b} the pond in the Valley of Honor, where the Fishing trainer stands." },
          },
          { t = "h", l = 3, x = "Recipes to buy" },
          {
            t = "p",
            x = "Buy {i:6330:inv_scroll_03:Recipe: Bristle Whisker Catfish} from {n:0::Naal Mistrunner} in Thunder Bluff or {n:0::Ronald Burch} in Undercity, you need it in the next part.",
          },
          {
            t = "p",
            x = "If you don't have {i:6328:inv_scroll_03:Recipe: Longjaw Mud Snapper} yet, buy it from {n:0::Naal Mistrunner} in Thunder Bluff or {n:0::Lizbeth Cromwell} in Undercity.",
          },
          { t = "p", x = "Nobody sells them in Orgrimmar, so buy them on the Auction House or in Thunder Bluff." },
          { t = "h", l = 3, x = "Cooking" },
          {
            t = "step",
            r = "1-50",
            b = {
              {
                t = "p",
                x = "If you haven't learned Cooking yet, learn it from {n:0::Aska Mistrunner} in Thunder Bluff, {n:0::Eunice Burch} in Undercity or {n:0::Zamja} in Orgrimmar. Then learn {i:6325:inv_scroll_03:Recipe: Brilliant Smallfish} and cook all your {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish} into {s:7751:inv_misc_fish_07:Brilliant Smallfish}. If you caught {i:6303:inv_misc_fish_24:Raw Slitherskin Mackerel} in your starting zone, learn {i:6326:inv_scroll_03:Recipe: Slitherskin Mackerel} and cook them into {s:7752:inv_misc_fish_24:Slitherskin Mackerel} instead. This should take your Cooking skill to 50.",
              },
              { t = "p", x = "If you are a few points short of 50, catch and cook a few more." },
            },
          },
          {
            t = "step",
            r = "50-100",
            b = {
              {
                t = "p",
                x = "Learn Journeyman Cooking from the same trainer. Then learn {i:6328:inv_scroll_03:Recipe: Longjaw Mud Snapper} and cook all your {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper} into {s:7753:inv_misc_fish_32:Longjaw Mud Snapper}. Your Cooking skill should go above 100.",
              },
              { t = "p", x = "Don't worry if you don't reach 100 Cooking with Longjaw Mud Snapper, you will catch more Raw Longjaw Mud Snapper later." },
            },
          },
        },
        {
          { t = "h", l = 3, x = "Fishing" },
          {
            t = "p",
            x = "Fish in the canals of Stormwind City until your skill reaches 130. You should catch about 20 {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish}, 60 {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper}, and 30 {i:6308:inv_misc_fish_30:Raw Bristle Whisker Catfish}.",
          },
          { t = "h", l = 3, x = "Recipes to buy" },
          {
            t = "p",
            x = "Find {n:0::Catherine Leland} in Stormwind City and buy {i:6330:inv_scroll_03:Recipe: Bristle Whisker Catfish}. If you don't have {i:6328:inv_scroll_03:Recipe: Longjaw Mud Snapper} yet, buy it from {n:0::Tharynn Bouden} in Goldshire.",
          },
          {
            t = "p",
            x = "You should also find {n:0::Ben Trias} and buy 20 {i:8932:inv_misc_food_37:Alterac Swiss} from him. You will need these later for the Artisan Cooking quest.",
          },
          { t = "h", l = 3, x = "Cooking" },
          {
            t = "step",
            r = "1-50",
            b = {
              {
                t = "p",
                x = "Learn Cooking from {n:0::Stephen Ryback} if you haven't yet. Then learn {i:6325:inv_scroll_03:Recipe: Brilliant Smallfish} and cook all your {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish} into {s:7751:inv_misc_fish_07:Brilliant Smallfish}. This should take your Cooking skill to 50.",
              },
              { t = "p", x = "If you are a few points short of 50, catch and cook a few more." },
            },
          },
          {
            t = "step",
            r = "50-100",
            b = {
              {
                t = "p",
                x = "Learn Journeyman Cooking from {n:0::Stephen Ryback} in Stormwind City. Then learn {i:6328:inv_scroll_03:Recipe: Longjaw Mud Snapper} and cook all your {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper} into {s:7753:inv_misc_fish_32:Longjaw Mud Snapper}. Your Cooking skill should go above 100.",
              },
              { t = "p", x = "Don't worry if you don't reach 100 Cooking with Longjaw Mud Snapper, you will catch more Raw Longjaw Mud Snapper later." },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "h", l = 2, x = "Fishing (130-205) and Cooking (100-175)", r = "130-205" },
    { t = "p", x = "Expert Fishing needs {b}level 20{/b} and {b}Fishing 125{/b}, Expert Cooking needs {b}Cooking 125{/b}." },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "h", l = 3, x = "Booty Bay" },
          {
            t = "list",
            i = { "Go to Ratchet in The Barrens and take the boat to Booty Bay in Stranglethorn Vale.", "Find {n:0::Old Man Heming} in Booty Bay, buy {i:16083:inv_misc_book_08:Expert Fishing - The Bass and You} from him and read it.", "Find {n:0::Kelsey Yance} and buy these two recipes: {i:17062:inv_scroll_03:Recipe: Mithril Head Trout}, {i:13941:inv_scroll_03:Recipe: Filet of Redgill}." },
          },
          { t = "h", l = 3, x = "Stonetalon Mountains" },
          {
            t = "list",
            i = { "Go back to The Barrens, then fly from Ratchet to Sun Rock Retreat in Stonetalon Mountains and buy 7 {i:6530:inv_misc_monstertail_03:Nightcrawlers} from {n:0::Kulwia}. You need 2 until 150, keep the other 5 for later.", "Attach a {i:6530:inv_misc_monstertail_03:Nightcrawler} and fish in the open water until your Fishing skill reaches 205. You will catch about 95 {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper} and 145 {i:6308:inv_misc_fish_30:Raw Bristle Whisker Catfish}." },
          },
          { t = "h", l = 3, x = "Desolace" },
          {
            t = "list",
            i = { "Fly to Shadowprey Village in Desolace.", "Find {n:0::Wulan} and buy the {i:16072:inv_misc_book_08:Expert Cookbook}. He is on the top floor of the eastern-most building in the village.", "Buy 20 {i:8932:inv_misc_food_37:Alterac Swiss} from {n:0::Innkeeper Sikewa}. You will need them for the Artisan Cooking quest." },
          },
          { t = "h", l = 3, x = "Leveling Cooking to 175" },
          {
            t = "p",
            x = "Cook your {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper} into {s:7753:inv_misc_fish_32:Longjaw Mud Snapper} if your Cooking skill is still below 100.",
          },
          {
            t = "note",
            x = "{b}Read the {i:16072:inv_misc_book_08:Expert Cookbook} as soon as you reach 125{/b}, especially if you go AFK while cooking. Without it you stop getting skill points at 150 and keep cooking for nothing.",
          },
          {
            t = "p",
            x = "Learn {i:6330:inv_scroll_03:Recipe: Bristle Whisker Catfish} and cook all your {i:6308:inv_misc_fish_30:Raw Bristle Whisker Catfish} into {s:7755:inv_misc_fish_30:Bristle Whisker Catfish}. Your Cooking skill will hopefully get close to 175.",
          },
          {
            t = "p",
            x = "Don't worry if you don't reach 175 Cooking with Bristle Whisker Catfish, you will catch more Raw Bristle Whisker Catfish later.",
          },
        },
        {
          { t = "h", l = 3, x = "Booty Bay" },
          {
            t = "list",
            i = { "Go to Booty Bay in Stranglethorn Vale.", "Find {n:0::Old Man Heming} in Booty Bay, buy {i:16083:inv_misc_book_08:Expert Fishing - The Bass and You} from him and read it.", "Find {n:0::Kelsey Yance} and buy these two recipes: {i:17062:inv_scroll_03:Recipe: Mithril Head Trout}, {i:13941:inv_scroll_03:Recipe: Filet of Redgill}." },
          },
          { t = "h", l = 3, x = "Ashenvale" },
          {
            t = "list",
            i = { "Go to The Barrens, then fly from Ratchet to Astranaar in Ashenvale. Ride south-east to Mystral Lake and buy the {i:16072:inv_misc_book_08:Expert Cookbook} and 7 {i:6530:inv_misc_monstertail_03:Nightcrawlers} from {n:0::Shandrina}. You need 2 until 150, keep the other 5 for later.", "Attach a {i:6530:inv_misc_monstertail_03:Nightcrawler} and fish in the open water of Mystral Lake until your Fishing skill reaches 205. You will catch about 95 {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper} and 145 {i:6308:inv_misc_fish_30:Raw Bristle Whisker Catfish}." },
          },
          { t = "h", l = 3, x = "Leveling Cooking to 175" },
          {
            t = "p",
            x = "Cook your {i:6289:inv_misc_fish_32:Raw Longjaw Mud Snapper} into {s:7753:inv_misc_fish_32:Longjaw Mud Snapper} if your Cooking skill is still below 100.",
          },
          {
            t = "note",
            x = "{b}Read the {i:16072:inv_misc_book_08:Expert Cookbook} as soon as you reach 125{/b}, especially if you go AFK while cooking. Without it you stop getting skill points at 150 and keep cooking for nothing.",
          },
          {
            t = "p",
            x = "Learn {i:6330:inv_scroll_03:Recipe: Bristle Whisker Catfish} and cook all your {i:6308:inv_misc_fish_30:Raw Bristle Whisker Catfish} into {s:7755:inv_misc_fish_30:Bristle Whisker Catfish}. Your Cooking skill will hopefully get close to 175.",
          },
          {
            t = "p",
            x = "Don't worry if you don't reach 175 Cooking with Bristle Whisker Catfish, you will catch more Raw Bristle Whisker Catfish later.",
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "h", l = 2, x = "Artisan Fishing Quest" },
    {
      t = "list",
      i = { "If you have no {i:6530:inv_misc_monstertail_03:Nightcrawlers} left, buy 5 from {n:0::Kilxx} in The Barrens or {n:0:alliance:Helenia Olden} in Dustwallow Marsh.", "Go to Dustwallow Marsh and {b}fish anywhere in the swamp until your skill reaches 225{/b}. {b}Don't fish in the ocean.{/b} Keep a {i:6530:inv_misc_monstertail_03:Nightcrawler} on your pole until 225, otherwise a few fish get away.", "Find {n:0::Nat Pagle} and accept the quest {q:6607::Nat Pagle, Angler Extreme}. It requires {b}level 35{/b} and {b}Fishing 225{/b}, and you need it to learn Artisan Fishing." },
    },
    { t = "map", m = 1445, x = 58.5, y = 59.9, n = "Nat Pagle", z = "Tidefury Cove, Dustwallow Marsh" },
    { t = "p", x = "To complete the quest you have to catch 4 quest fish in four different zones:" },
    {
      t = "list",
      i = { "{i:16967:inv_misc_monsterhead_02:Feralas Ahi} - Feralas (attach the {i:6533:inv_misc_food_26:Aquadynamic Fish Attractor} you kept, or {i:6532:inv_misc_gem_variety_02:Bright Baubles} from {n:0::Sheendra Tallgrass} / {n:0::Vivianna} in Feralas, otherwise most of them get away)", "{i:16970:inv_misc_fish_21:Misty Reed Mahi Mahi} - Swamp of Sorrows", "{i:16968:inv_misc_fish_32:Sar'theris Striker} - Desolace", "{i:16969:inv_misc_fish_08:Savage Coast Blue Sailfin} - Stranglethorn Vale" },
    },
    { t = "h", l = 4, x = "Nat Pagle, Angler Extreme Quest Fishes" },
    { t = "img", f = "artisan-fishing-quest-m", a = "Where to catch the four Nat Pagle quest fish", w = 512, h = 335, u = 1, v = 0.6543 },
    { t = "h", l = 2, x = "Leveling Fishing to 255 and Cooking to 225", r = "205-255" },
    {
      t = "list",
      i = { "After you completed the quest, {b}keep fishing in the swamp in Dustwallow Marsh until your Fishing skill reaches 255.{/b} {b}Don't fish in the ocean{/b}, because there you catch Raw Rockscale Cod instead of the Raw Mithril Head Trout you cook next.", "Go back to Brackenwall Village (Horde) / Theramore Isle (Alliance) to cook your fish, or put down a campfire if you have one.", "Cook your {i:6308:inv_misc_fish_30:Raw Bristle Whisker Catfish} into {s:7755:inv_misc_fish_30:Bristle Whisker Catfish} if your Cooking skill is still below 175.", "Learn {i:17062:inv_scroll_03:Recipe: Mithril Head Trout} and cook your {i:8365:inv_misc_fish_02:Raw Mithril Head Trout} into {s:20916:inv_misc_fish_02:Mithril Headed Trout} until 225. Keep the rest, you cook them after the Artisan Cooking quest." },
    },
    { t = "h", l = 2, x = "Artisan Cooking Quest" },
    {
      t = "list",
      i = { "Fly to Gadgetzan in Tanaris and pick up the quest {q:6610::Clamlette Surprise} from {n:0::Dirge Quikcleave}. The reward is Artisan Cooking. The quest requires {b}level 35{/b} and {b}Cooking 225{/b}. You will need these to complete the quest:", "\t12x {i:12207:inv_egg_03:Giant Egg} - dropped by the {n:5428::Rocs}, {n:5429::Fire Rocs} and {n:5430::Searing Rocs} in Tanaris.", "\t10x {i:7974:inv_misc_food_51:Zesty Clam Meat} - from Big-mouth Clams, dropped by {n:14123::Steeljaw Snappers} and {n:5431::Surf Gliders} in Tanaris.", "\t20x {i:8932:inv_misc_food_37:Alterac Swiss} - you bought these earlier.", "Find {n:0::Gikkix} at Steamwheedle Port in Tanaris and buy {i:13945:inv_scroll_03:Recipe: Nightfin Soup}." },
    },
    { t = "h", l = 2, x = "Fishing to 300 in Feralas", r = "255-300" },
    {
      t = "list",
      i = { "Fly to Camp Mojache (Horde) / Feathermoon Stronghold (Alliance) in Feralas.", "Buy 12 {i:6530:inv_misc_monstertail_03:Nightcrawlers} from {n:0:horde:Sheendra Tallgrass} / {n:0:alliance:Vivianna}.", "Attach a {i:6530:inv_misc_monstertail_03:Nightcrawler} and fish in the marked lake until you reach Fishing 300, use a new one every 10 minutes. Any other lake or river in Feralas works too, {b}except Jademir Lake{/b}." },
    },
    { t = "img", f = "feralas-fishing-leveling-m", a = "Where to fish in Feralas from 255 to 300", w = 512, h = 335, u = 1, v = 0.6543 },
    { t = "h", l = 2, x = "Leveling Cooking to 300" },
    {
      t = "step",
      r = "225-250",
      b = {
        {
          t = "p",
          x = "Cook your remaining {i:8365:inv_misc_fish_02:Raw Mithril Head Trout} into {s:20916:inv_misc_fish_02:Mithril Headed Trout} until 250.",
        },
      },
    },
    {
      t = "step",
      r = "250-285",
      b = {
        {
          t = "p",
          x = "Learn {i:13941:inv_scroll_03:Recipe: Filet of Redgill} and cook your {i:13758:inv_misc_fish_06:Raw Redgill} into {s:18241:inv_misc_fish_06:Filet of Redgill} until 285.",
        },
      },
    },
    {
      t = "step",
      r = "285-300",
      b = {
        {
          t = "p",
          x = "Learn {i:13945:inv_scroll_03:Recipe: Nightfin Soup} and cook all your {i:13759:inv_misc_fish_23:Raw Nightfin Snapper} into {s:18243:inv_drink_17:Nightfin Soup}. You also need a {i:159:inv_drink_07:Refreshing Spring Water} for each soup, buy 20 from the innkeeper.",
        },
        {
          t = "p",
          x = "{i:13759:inv_misc_fish_23:Raw Nightfin Snapper} don't bite in the afternoon (12:00-18:00 game time). If you fished in the afternoon, you will probably not have enough, so cook the rest of your {i:13758:inv_misc_fish_06:Raw Redgill} into {s:18241:inv_misc_fish_06:Filet of Redgill} too, you might reach 300 with them.",
        },
        {
          t = "p",
          x = "If you still don't reach 300, fish a bit more outside the afternoon, or buy a few {i:13759:inv_misc_fish_23:Raw Nightfin Snapper} on the Auction House.",
        },
      },
    },
  },
})
