-- Generated from https://www.wow-professions.com/forever/mining-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "mining",
  order = 7,
  cat = "gather",
  icon = "Interface\\Icons\\Trade_Mining",
  title = "Mining Leveling Guide 1-300 with Best Routes",
  titleFR = "Minage",
  url = "https://www.wow-professions.com/forever/mining-leveling-guide",
  skill = "mining",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever Mining leveling guide will show you the fastest way to level Mining from 1 to 300. You will also find every trainer location and where to train Mining past 75, 150 and 225.",
    },
    {
      t = "p",
      x = "Below you will find the Mining trainers by starting zone and capital city, and the best zones to mine in for every skill range. Mining serves two professions, Blacksmithing and Engineering, so it's really good combined with these two. Check out my Forever Blacksmithing leveling guide or my Forever Engineering leveling guide if you want to level one of them.",
    },
    { t = "p", x = "WoW Forever added a couple of new ores, bars and recipes. You can check them out here:" },
    {
      t = "note",
      x = "This is based on the Forever beta. Leveling takes a long time, so testing the higher levels on live will take a while. If you find something that's off, send me feedback.",
    },
    { t = "h", l = 2, x = "Mining Trainer Locations" },
    {
      t = "p",
      x = "Every capital city except Darnassus has a Mining trainer. You can also ask a guard, then it will be marked with a red flag on your map.",
    },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "p", x = "{b}Capital cities:{/b}" },
          { t = "list", i = { "Orgrimmar: {n:0:horde:Makaru}", "Undercity: {n:0:horde:Brom Killian}", "Thunder Bluff: {n:0:horde:Brek Stonehoof}" } },
          { t = "p", x = "{b}Starting zones:{/b}" },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Orc, Troll", "Durotar", "{n:0:horde:Norzsh} in the Valley of Trials (only up to 75) {n:0:horde:Krunn} in Razor Hill" },
              { "Tauren", "Mulgore", "{n:0:horde:Vartha Rockmane} in Camp Narache (only up to 75) {n:0:horde:Brek Stonehoof} in Thunder Bluff" },
              { "Undead", "Tirisfal Glades", "{n:0:horde:Walter Mason} in Deathknell (only up to 75) {n:0:horde:Brom Killian} in Undercity" },
              { "Skyborne", "Zephras Isle", "There is no trainer in Thendal Village, where you start, but you don't need one. {q:93552::Harvesting Windstones} is one of the first quests you get in Thendal Village. Pick {i:247840:inv_10_specialization_professionbook_mining_orig:Mining for Dummies} as your reward, it teaches you Mining. The trainers on the island are {n:0::Halavuul Cragwind} in Valanaar and {n:0::Messana Crestwind} in Shen'dar Village." },
            },
          },
        },
        {
          { t = "p", x = "{b}Capital cities:{/b}" },
          {
            t = "list",
            i = { "Stormwind City: {n:0:alliance:Gelman Stonehand}", "Ironforge: {n:0:alliance:Geofram Bouldertoe}", "Darnassus: no trainer, the closest one is {n:0:alliance:Kurdram Stonehammer} in Auberdine, Darkshore" },
          },
          { t = "p", x = "{b}Starting zones:{/b}" },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Human", "Elwynn Forest", "{n:0:alliance:Kelsey Fargo} (only up to 75) {n:0:alliance:Gelman Stonehand} in Stormwind City" },
              { "Dwarf, Gnome", "Dun Morogh", "{n:0:alliance:Sally Swiftwrench} (only up to 75) {n:0:alliance:Yarr Hammerstone} at Steelgrill's Depot {n:0:alliance:Dank Drizzlecut} at Gol'Bolar Quarry" },
              { "Night Elf", "Teldrassil", "{n:0:alliance:Fanorran Stilloak} at Aldrassil in Shadowglen (only up to 75) {n:0:alliance:Kurdram Stonehammer} in Auberdine, Darkshore" },
              { "Skyborne", "Zephras Isle", "There is no trainer in Thendal Village, where you start, but you don't need one. {q:93552::Harvesting Windstones} is one of the first quests you get in Thendal Village. Pick {i:247840:inv_10_specialization_professionbook_mining_orig:Mining for Dummies} as your reward, it teaches you Mining. The trainers on the island are {n:0::Halavuul Cragwind} in Valanaar and {n:0::Messana Crestwind} in Shen'dar Village." },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "p", x = "You can find every Mining trainer for Horde and Alliance on my WoW Forever Mining Trainers page." },
    { t = "h", l = 2, x = "Track Ore on Your Minimap" },
    { t = "p", x = "You can only track one thing at a time, so {b}you can't track minerals and herbs together{/b}." },
    { t = "p", x = "You learn {s:2580:spell_nature_earthquake:Find Minerals} together with Mining, but it's not turned on by default:" },
    {
      t = "list",
      i = { "Open the Professions window with the hammer and pick button, the 2nd button in the menu at the bottom of your screen.", "Click Find Minerals in the Mining box. {b}I recommend dragging it to your action bar, close to the buffs you use after you die.{/b} This way you make a habit out of it and you are less likely to forget it.", "The Find Minerals buff shows up next to your minimap. {b}Your tracking turns off every time you die, so don't forget to turn it back on!{/b}" },
    },
    {
      t = "img",
      f = "wow-forever-find-minerals-button-professions-window",
      a = "The Find Minerals button in the WoW Forever Professions window",
      w = 512,
      h = 137,
      u = 1,
      v = 0.5352,
    },
    { t = "h", l = 2, x = "Mining Skill Bonuses" },
    {
      t = "p",
      x = "You don't need these, but they help when you are stuck between two ores. With +5 you can mine Iron Deposits from 120 instead of 125, so you can skip the last few slow points of Tin.",
    },
    {
      t = "table",
      h = 1,
      r = {
        { "Item", "Mining", "How to get it" },
        { "{s:13612:spell_holy_greaterheal:Enchant Gloves - Mining}", "+2", "An enchanter" },
        { "{s:13841:spell_holy_greaterheal:Enchant Gloves - Advanced Mining}", "+5", "An enchanter" },
        { "{i:10542:inv_helmet_25:Goblin Mining Helmet}", "+5", "Made by Engineers, you need Engineering 205 to wear it" },
        { "{i:275028:inv_helmet_59:Twilight Mine Light}", "+4", "Reward of A Miner Problem, an Alliance quest in the Riverglades" },
        { "{i:5444:inv_misc_cape_11:Miner's Cape}", "+2", "Drops from Miner Johnson in The Deadmines" },
      },
    },
    { t = "h", l = 2, x = "Smelting to 105" },
    {
      t = "p",
      x = "You can skip the first 105 skill points by buying ores on the Auction House and smelting them. If you prefer leveling Mining the normal way, scroll down to the mining routes. But I would recommend smelting if you have the gold, as it saves a lot of time. Sometimes the bars even sell for more than the ores or they are very close in price, so it's not like you are losing much by doing this.",
    },
    {
      t = "p",
      x = "Buy around 140 {i:2770:inv_ore_copper_01:Copper Ore} and 70 {i:2771:inv_ore_tin_01:Tin Ore}. Smelting is mostly yellow and green, so you might need a few more if you are unlucky.",
    },
    {
      t = "table",
      h = 1,
      r = {
        { "Skill", "Notes" },
        { "1-65", "120-140x {s:2657:inv_ingot_02:Smelt Copper} until you reach 65. Keep 70 Copper Bars, you will need them for Bronze." },
        { "65-75", "Learn Journeyman Mining, Smelt Tin and Smelt Bronze from your trainer. Make 70x {s:3304:inv_ingot_05:Smelt Tin}. It turns grey at 75, but you need all 70 Tin Bars for Bronze anyway." },
        { "75-105", "Make 70x {s:2659:inv_ingot_bronze:Smelt Bronze} from the Copper Bars and Tin Bars you made. You will end up somewhere between 100 and 110, so you might need a few more." },
        { "105-120", "Learn Smelt Silver from your trainer. Check the price of Silver Ore and Silver Bar first, because this part can get expensive. If you don't mind the cost, make 35-45x {s:2658:inv_ingot_01:Smelt Silver} until you reach 120. The last 5 points to 125 could take around 50 more Silver Ore, so I recommend mining from 120. (or keep smelting if you have the gold) Iron Deposits need Mining 125, but with +5 from the Mining Skill Bonuses above you can mine them from 120, so you can skip Tin and go straight to Iron." },
      },
    },
    { t = "h", l = 2, x = "1-65", r = "1-65" },
    {
      t = "p",
      x = "{b}Don't forget to buy{/b} a {i:2901:inv_pick_02:Mining Pick} from the Mining Supplier near your trainer or from the trainer!",
    },
    { t = "p", x = "You can buy one from these vendors:" },
    { t = "p", x = "Horde vendors" },
    {
      t = "table",
      h = 1,
      r = {
        { "Zone", "Vendor" },
        { "Durotar", "{n:0:horde:Norzsh} in the Valley of Trials, {n:0:horde:Flakk} in Razor Hill" },
        { "Mulgore", "{n:0:horde:Vartha Rockmane} in Camp Narache, {n:0:horde:Wunna Darkmane} in Bloodhoof Village" },
        { "Tirisfal Glades", "{n:0:horde:Walter Mason} in Deathknell, {n:0:horde:Abigail Shiel} in Brill" },
        { "Zephras Isle", "{n:0::Uualia Suncrest} in Thendal Village, {n:0::Belandiel Farflight} in Shen'dar Village" },
        { "Orgrimmar", "{n:0:horde:Gorina} in the Valley of Honor" },
        { "Undercity", "{n:0:horde:Elizabeth Van Talen} in the Rogues' Quarter" },
        { "Thunder Bluff", "{n:0:horde:Kurm Stonehoof}" },
      },
    },
    { t = "p", x = "Alliance vendors" },
    {
      t = "table",
      h = 1,
      r = {
        { "Zone", "Vendor" },
        { "Elwynn Forest", "{n:0:alliance:Brother Danil} in Northshire Valley, {n:0:alliance:Tharynn Bouden} in Goldshire" },
        { "Dun Morogh", "{n:0:alliance:Thrawn Boltar} in Kharanos" },
        { "Teldrassil", "{n:0:alliance:Fanorran Stilloak} at Aldrassil in Shadowglen, {n:0:alliance:Narret Shadowgrove} in Dolanaar" },
        { "Zephras Isle", "{n:0::Uualia Suncrest} in Thendal Village, {n:0::Belandiel Farflight} in Shen'dar Village" },
        { "Stormwind City", "{n:0:alliance:Brooke Stonebraid} in the Dwarven District" },
        { "Ironforge", "{n:0:alliance:Thurgrum Deepforge} in The Great Forge" },
        { "Darnassus", "{n:0:alliance:Mythrin'dir}" },
      },
    },
    {
      t = "p",
      x = "Like I said above, for most high level players I think it's best to skip this part and smelt your way up to at least 105. But if you prefer mining and you can choose your zone, I think {b}Durotar{/b} is the best for Horde and {b}Elwynn Forest{/b} for Alliance.",
    },
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
                { t = "p", x = "One or two laps around the zone will get you enough Copper Ore to reach 65 with smelting." },
                { t = "p", x = "After you do one lap, {b}stop at Razor Hill and smelt your Copper Ore{/b} into Copper Bars." },
                { t = "img", f = "mining-leveling-forever-durotar", a = "Mining route in Durotar", w = 512, h = 341, u = 1, v = 0.666 },
              },
              {
                {
                  t = "p",
                  x = "The cave marked with the red circle has 5 Copper Veins inside, {b}the respawn rate is so fast that you can basically stay inside the cave and level there{/b}. The cave layout is also very good because there is a drop down at the end, so you can quickly return to the start and continue mining. If the respawn rate is not enough for you or there is competition, just run outside, mine a couple of Copper Veins and go back to the cave.",
                },
                {
                  t = "p",
                  x = "You can also just do a full lap in Mulgore, the route is very easy to follow, it's basically a loop around the edge of the zone. But I found the cave to be better without a mount.",
                },
                {
                  t = "p",
                  x = "{b}You can smelt your ore at the Bael'dun Digsite{/b}, the dwarf camp just north of the cave has a forge and an anvil. (marked on the map) The dwarves there are hostile.",
                },
                {
                  t = "img",
                  f = "mining-leveling-forever-mulgore-forge",
                  a = "Mining route in Mulgore with the forge and anvil at the Bael'dun Digsite",
                  w = 512,
                  h = 341,
                  u = 1,
                  v = 0.666,
                },
              },
              {
                {
                  t = "p",
                  x = "Both routes are good. The route on the east side of the zone will probably have fewer people, because there are fewer quest hubs there.",
                },
                { t = "p", x = "{b}Stop at Brill after one lap{/b} to smelt your Copper Ore." },
                { t = "img", f = "mining-leveling-forever-tirisfal-glades", a = "Mining route in Tirisfal Glades", w = 512, h = 341, u = 1, v = 0.666 },
              },
              {
                {
                  t = "p",
                  x = "{q:93552::Harvesting Windstones} is one of the first quests you get in Thendal Village. Pick {i:247840:inv_10_specialization_professionbook_mining_orig:Mining for Dummies} as your reward, it teaches you Mining.",
                },
                {
                  t = "p",
                  x = "The respawn rate is very fast around this area, sometimes the veins spawned right on top of me. You can do a larger route, but without a mount and with the fast respawn rate I found it wasn't needed.",
                },
                { t = "p", x = "{b}Stop at Shen'dar Village after one lap{/b} to smelt your Copper Ore." },
                { t = "img", f = "mining-leveling-forever-zephras-isle", a = "Mining route on Zephras Isle", w = 512, h = 341, u = 1, v = 0.666 },
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
                {
                  t = "p",
                  x = "Just move back and forth along the marked route, and clear the cave if you are high enough level. The respawn rate is quite fast inside the cave, so you might not even have to leave it, it depends on your level. You can also just skip the cave, the respawn rate seems to be fast enough on the route, but then do the small detour to the north too.",
                },
                { t = "p", x = "{b}Stop at Goldshire after one lap{/b} to smelt your Copper Ore." },
                { t = "img", f = "mining-leveling-forever-elwynn-forest", a = "Mining route in Elwynn Forest", w = 512, h = 341, u = 1, v = 0.666 },
              },
              {
                {
                  t = "p",
                  x = "Not much to say about this one, just do loops around this area. You don't have to go inside the cave, it's optional and the respawn rate outside is quite fast.",
                },
                { t = "p", x = "{b}Stop at Kharanos after one lap{/b} to smelt your Copper Ore." },
                { t = "img", f = "mining-leveling-forever-dun-morogh", a = "Mining route in Dun Morogh", w = 512, h = 341, u = 1, v = 0.666 },
              },
              {
                {
                  t = "p",
                  x = "These two caves have an insanely fast respawn rate. I don't know if it stays like this, but right now you can just stay inside the caves and level there.",
                },
                { t = "p", x = "There is no forge in Teldrassil, {b}the closest one is at the Warrior's Terrace in Darnassus{/b}." },
                { t = "img", f = "mining-leveling-forever-teldrassil", a = "Mining route in Teldrassil", w = 512, h = 341, u = 1, v = 0.666 },
              },
              {
                {
                  t = "p",
                  x = "{q:93552::Harvesting Windstones} is one of the first quests you get in Thendal Village. Pick {i:247840:inv_10_specialization_professionbook_mining_orig:Mining for Dummies} as your reward, it teaches you Mining.",
                },
                {
                  t = "p",
                  x = "The respawn rate is very fast around this area, sometimes the veins spawned right on top of me. You can do a larger route, but without a mount and with the fast respawn rate I found it wasn't needed.",
                },
                { t = "p", x = "{b}Stop at Shen'dar Village after one lap{/b} to smelt your Copper Ore." },
                { t = "img", f = "mining-leveling-forever-zephras-isle", a = "Mining route on Zephras Isle", w = 512, h = 341, u = 1, v = 0.666 },
              },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "h", l = 2, x = "65-125", r = "65-125" },
    {
      t = "p",
      x = "Visit your trainer and learn Journeyman Mining, it requires Mining 50. The new Junior Mining Trainers in the starting areas won't teach you Journeyman Mining.",
    },
    {
      t = "p",
      x = "If you have any Copper Ore or Tin Ore at this point, smelt them and make Bronze Bars before you head out, because Bronze stops giving skill points around 105.",
    },
    {
      t = "p",
      x = "For Alliance, the {b}Wetlands{/b} is the best one by far if you can manage the cave. For Horde it's the {b}Silverpine Forest{/b} cave or {b}Hillsbrad Foothills{/b}. The rest are pretty even, hard to judge.",
    },
    {
      t = "p",
      x = "Ores in these zones: {i:2771:inv_ore_tin_01:Tin Ore}, {i:2770:inv_ore_copper_01:Copper Ore}, {i:2775:inv_stone_16:Silver Ore}",
    },
    { t = "p", x = "Tin Veins need Mining 65 and Silver Veins 75." },
    {
      t = "tabs",
      n = { "Wetlands", "Silverpine Forest", "Westfall", "Hillsbrad Foothills", "The Barrens", "Ashenvale", "Stonetalon Mountains" },
      p = {
        {
          {
            t = "p",
            x = "This cave in the Wetlands is the best place for Alliance players to level Mining. The cave is full of Tin Veins and Incendicite Mineral Veins with a very fast respawn time.",
          },
          {
            t = "p",
            x = "The mobs are around level 20 and {b}in Forever they respawn much faster, so you need to outlevel them by quite a few levels{/b}, or they will keep respawning right on top of you.",
          },
          { t = "img", f = "mining-leveling-forever-wetlands", a = "Mining route in the Wetlands", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          {
            t = "p",
            x = "This cave has 3 vein spawn points with a very fast respawn time, just mine the veins and wait for the respawn. (around 2 minutes)",
          },
          {
            t = "p",
            x = "The mobs are around level 21-22 and {b}in Forever they respawn much faster, so you need to outlevel them by quite a few levels{/b}, or they will keep respawning right on top of you.",
          },
          { t = "img", f = "mining-leveling-forever-silverpine-forest", a = "Mining route in Silverpine Forest", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          {
            t = "p",
            x = "This cave has several Tin Veins that respawn very fast. There are also veins outside, so if you clear it too fast you can just run outside and mine a few there too.",
          },
          {
            t = "p",
            x = "The mobs are around level 13-15 and {b}in Forever they respawn much faster, so you need to outlevel them by quite a few levels{/b}, or they will keep respawning right on top of you.",
          },
          { t = "img", f = "mining-leveling-forever-westfall", a = "Mining route in Westfall", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          {
            t = "p",
            x = "This is the best if you prefer mining the normal way, but you might have more competition from other players because this is a popular area. The route goes around a Horde town, so I'm not sure how it works for Alliance. I think you can probably avoid the guards, but I only tested this one with a Horde character.",
          },
          {
            t = "img",
            f = "mining-leveling-forever-hillsbrad-foothills",
            a = "Mining route in Hillsbrad Foothills",
            w = 512,
            h = 341,
            u = 1,
            v = 0.666,
          },
        },
        {
          {
            t = "p",
            x = "The mobs are around level 22-26 here, so it's best to farm here if you are above those levels. But the respawn rate is fast.",
          },
          { t = "img", f = "mining-leveling-forever-the-barrens", a = "Mining route in The Barrens", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          {
            t = "p",
            x = "A very straightforward route that is easy to follow. This is the best if you prefer mining the normal way, but you might have more competition from other players because this is a popular area.",
          },
          { t = "img", f = "mining-leveling-forever-ashenvale", a = "Mining route in Ashenvale", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          {
            t = "p",
            x = "This route might not work if more than one player is leveling Mining there, because when I tested it there were very few people around. But this place usually has fewer people, so I think it's a good alternative if you don't want to level in caves. The only downside is that sometimes an Iron Deposit spawns instead of a Tin Vein, and you can't mine it yet.",
          },
          {
            t = "img",
            f = "mining-leveling-forever-stonetalon-mountains",
            a = "Mining route in Stonetalon Mountains",
            w = 512,
            h = 341,
            u = 1,
            v = 0.666,
          },
        },
      },
    },
    { t = "h", l = 2, x = "125-175", r = "125-175" },
    {
      t = "note",
      x = "From this point the guide follows the standard Classic Mining routes. The beta cap was 30, so I couldn't properly test Arathi and Desolace. I'll revise this section once I level my character higher on live, but the main change is the ore respawn rate, so most routes should work and you can probably take shorter routes in most zones.",
    },
    { t = "p", x = "{b}Visit your trainer and learn Expert Mining{/b}, it requires Mining 125." },
    { t = "h", l = 3, x = "Smelting Iron and Gold (optional)" },
    {
      t = "p",
      x = "If you want to save some time and have the gold, buy around 20 {i:2772:inv_ore_iron_01:Iron Ore} and make {s:3307:inv_ingot_iron:Smelt Iron} until 135 before you head out mining. After 135 it rarely gives a point, so don't count on reaching 140.",
    },
    {
      t = "p",
      x = "At 155 you can learn {s:3308:inv_ingot_03:Smelt Gold} from your trainer. It gives a point every time until 170, so around 22 Gold Ore takes you from 155 to 175 and you can start on Mithril right away. I recommend checking the price of Gold Ore and Gold Bar first.",
    },
    {
      t = "p",
      x = "If you have a {b}lower level character{/b} around level 30, stick to the {b}Thousand Needles{/b} route, that's the safest. If you have a {b}higher level character or a mount{/b} already, I recommend {b}Arathi Highlands{/b}.",
    },
    {
      t = "p",
      x = "Ores in these zones: {i:2772:inv_ore_iron_01:Iron Ore}, {i:2771:inv_ore_tin_01:Tin Ore}, {i:2776:inv_ore_gold_01:Gold Ore}",
    },
    { t = "p", x = "Iron Deposits need Mining 125 and Gold Veins 155." },
    {
      t = "tabs",
      n = { "Arathi Highlands", "Thousand Needles", "Desolace" },
      p = {
        {
          {
            t = "p",
            x = "There are 4 caves marked with red circles on the map. Make sure to go all the way to the end of each cave because you won't see all the mining veins from the entrance.",
          },
          {
            t = "p",
            x = "Low level players should skip all 4 caves, and low level Alliance players should take a detour and go south of Hammerfall!",
          },
          { t = "img", f = "mining-leveling-forever-arathi-highlands", a = "Mining route in Arathi Highlands", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          { t = "img", f = "mining-leveling-forever-thousand-needles", a = "Mining route in Thousand Needles", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          { t = "img", f = "mining-leveling-forever-desolace", a = "Mining route in Desolace", w = 512, h = 341, u = 1, v = 0.666 },
        },
      },
    },
    { t = "h", l = 2, x = "175-245", r = "175-245" },
    { t = "p", x = "To train past 225, visit your trainer and learn Artisan Mining, it requires Mining 200." },
    { t = "p", x = "Ores in these zones: {i:3858:inv_ore_mithril_02:Mithril Ore}, {i:7911:inv_ore_truesilver_01:Truesilver Ore}" },
    { t = "p", x = "Mithril Deposits need Mining 175 and Truesilver Deposits 230." },
    {
      t = "tabs",
      n = { "The Hinterlands", "Tanaris" },
      p = {
        {
          {
            t = "p",
            x = "The red route should be skipped by lower level players because the area is filled with level 62 elites. Lower level players might also want to consider skipping the cave marked with a red circle on the map. (depends on your gear/class)",
          },
          { t = "img", f = "mining-leveling-forever-the-hinterlands", a = "Mining route in The Hinterlands", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          { t = "p", x = "Players below level 60 should skip the 4 caves marked with red circles." },
          { t = "img", f = "mining-leveling-forever-tanaris", a = "Mining route in Tanaris", w = 512, h = 341, u = 1, v = 0.666 },
        },
      },
    },
    { t = "h", l = 2, x = "245-275", r = "245-275" },
    {
      t = "p",
      x = "Ores in these zones: {i:3858:inv_ore_mithril_02:Mithril Ore}, {i:7911:inv_ore_truesilver_01:Truesilver Ore}, {i:10620:inv_ore_thorium_02:Thorium Ore}",
    },
    { t = "p", x = "Small Thorium Veins need Mining 245." },
    {
      t = "tabs",
      n = { "Un'Goro Crater", "Blasted Lands", "Felwood" },
      p = {
        {
          { t = "p", x = "You will find 2-3 veins in the two caves marked with red circles on the map." },
          { t = "p", x = "Lower level players should probably skip the cave to the south. It really depends on your level, gear and class." },
          { t = "img", f = "mining-leveling-forever-ungoro-crater", a = "Mining route in Un'Goro Crater", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          {
            t = "p",
            x = "Both caves marked with red circles have a lot of mobs inside, so I only recommend this zone to level 60 players with good gear, or to Druids and Rogues with stealth.",
          },
          {
            t = "p",
            x = "It's really hard to navigate inside the Garrison Armory mine, so I included a small map. {b}Alliance{/b} players can't mine inside the Garrison Armory!",
          },
          { t = "img", f = "mining-leveling-forever-blasted-lands", a = "Mining route in the Blasted Lands", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          {
            t = "p",
            x = "There are usually 2 veins inside the cave marked with a red circle. It's worth going in because the cave is small and there aren't many mobs inside, and if you are high level, you can pass some of them without aggro.",
          },
          {
            t = "p",
            x = "I recommend skipping the other two caves at Jaedenar, especially Shadow Hold. (if you have stealth, they might be worth going into)",
          },
          { t = "img", f = "mining-leveling-forever-felwood", a = "Mining route in Felwood", w = 512, h = 341, u = 1, v = 0.666 },
        },
      },
    },
    { t = "h", l = 2, x = "275-300", r = "275-300" },
    { t = "p", x = "Ores in these zones: {i:10620:inv_ore_thorium_02:Thorium Ore}, {i:3858:inv_ore_mithril_02:Mithril Ore}" },
    { t = "p", x = "At 275 you can mine Rich Thorium Veins too." },
    {
      t = "tabs",
      n = { "Un'Goro Crater", "Eastern Plaguelands", "Winterspring", "Burning Steppes" },
      p = {
        {
          { t = "p", x = "Almost the same as the previous Un'Goro route, but now it includes Rich Thorium Veins." },
          {
            t = "img",
            f = "mining-leveling-forever-ungoro-crater-rich-thorium",
            a = "Mining route with Rich Thorium Veins in Un'Goro Crater",
            w = 512,
            h = 341,
            u = 1,
            v = 0.666,
          },
        },
        {
          {
            t = "p",
            x = "The red line is full of level 57-58 elites, so if your gear is bad, you should probably skip that part unless you have stealth. With some practice you can usually get through and only pull a few of them.",
          },
          {
            t = "img",
            f = "mining-leveling-forever-eastern-plaguelands",
            a = "Mining route in the Eastern Plaguelands",
            w = 512,
            h = 341,
            u = 1,
            v = 0.666,
          },
        },
        {
          {
            t = "list",
            i = { "The mobs in this cave are not that hard, so most classes can clear it. (depends on your gear)", "Most classes can get into at least the first part of the cave without pulling aggro. You can try going deeper depending on your gear.", "A lot of elites patrol this gorge, but you can usually pass most of them without pulling aggro. Sometimes you have to kill 1 or 2.", "I don't recommend this area for most players because it's hard to farm here without dying. It really depends on your class and how good you are at avoiding mobs." },
          },
          { t = "img", f = "mining-leveling-forever-winterspring", a = "Mining route in Winterspring", w = 512, h = 341, u = 1, v = 0.666 },
        },
        {
          {
            t = "p",
            x = "The two caves marked with red circles are full of level 50 mobs, so lower level players might want to skip them. (depends on your gear and level)",
          },
          { t = "img", f = "mining-leveling-forever-burning-steppes", a = "Mining route in the Burning Steppes", w = 512, h = 341, u = 1, v = 0.666 },
        },
      },
    },
  },
})
