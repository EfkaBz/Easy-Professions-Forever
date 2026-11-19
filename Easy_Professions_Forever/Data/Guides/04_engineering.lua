-- Generated from https://www.wow-professions.com/forever/engineering-leveling-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "engineering",
  order = 4,
  cat = "craft",
  icon = "Interface\\Icons\\Trade_Engineering",
  title = "Engineering Leveling Guide 1-300",
  titleFR = "Ingénierie",
  url = "https://www.wow-professions.com/forever/engineering-leveling-guide",
  skill = "engineering",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever Engineering leveling guide will show you the fastest and cheapest way to level your Engineering skill from 1 to 300. You will also find every trainer location and where to train Engineering past 75, 150 and 225.",
    },
    {
      t = "p",
      x = "Engineering is best combined with Mining, because almost everything you make needs stone and bars, and you can mine both. If you don't have Mining, you have to buy everything from the Auction House. Below you will find the shopping list, the Engineering trainers by starting zone and capital city, and the cheapest recipes for every skill range.",
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
        { n = 30, id = 2318, ic = "inv_misc_leatherscrap_03", x = "Light Leather" },
      },
    },
    { t = "h", l = 3, x = "150-225" },
    {
      t = "shop",
      r = {
        { n = 30, id = 2841, ic = "inv_ingot_bronze", x = "Bronze Bar" },
        { n = 45, id = 2592, ic = "inv_fabric_wool_01", x = "Wool Cloth" },
        { n = 15, id = 2319, ic = "inv_misc_leatherscrap_05", x = "Medium Leather" },
        { n = 4, id = 3859, ic = "inv_ingot_steel", x = "Steel Bar" },
        { n = 120, id = 7912, ic = "inv_stone_10", x = "Solid Stone" },
        { n = 74, id = 3860, ic = "inv_ingot_06", x = "Mithril Bar" },
        { n = 20, id = 4338, ic = "inv_fabric_mageweave_01", x = "Mageweave Cloth" },
      },
    },
    { t = "h", l = 3, x = "225-300" },
    {
      t = "shop",
      r = {
        { n = 84, id = 3860, ic = "inv_ingot_06", x = "Mithril Bar" },
        { n = 88, id = 12365, ic = "inv_misc_stonetablet_07", x = "Dense Stone" },
        { n = 225, id = 12359, ic = "inv_ingot_07", x = "Thorium Bar" },
        { n = 35, id = 14047, ic = "inv_fabric_purplefire_01", x = "Runecloth" },
      },
    },
    { t = "h", l = 2, x = "Engineering Trainer Locations" },
    { t = "p", x = "Apprentice Engineering has no level requirement in Forever, so you can learn it on a fresh character." },
    {
      t = "p",
      x = "There is no Engineering trainer in Thunder Bluff and Darnassus, the other four capitals have one. You can also ask a guard, then it will be marked with a red flag on your map.",
    },
    {
      t = "tabs",
      n = { "Horde", "Alliance" },
      p = {
        {
          { t = "h", l = 4, x = "Capital Cities" },
          { t = "list", i = { "Orgrimmar: {n:0:horde:Thund}", "Undercity: {n:0:horde:Graham Van Talen}" } },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Orc, Troll", "Durotar", "{n:0:horde:Mukdrak} in Razor Hill, near the forge next to the road to Orgrimmar" },
              { "Tauren", "Mulgore", "{n:0::Twizwick Sprocketgrind} on the plateau above the Venture Co. Mine, hard to reach at low level. There is no anvil near him and nobody there sells the Blacksmith Hammer, so it's probably best to go to {n:0:horde:Thund} in Orgrimmar instead." },
              { "Undead", "Tirisfal Glades", "There is no Engineering trainer in Tirisfal Glades, go to {n:0:horde:Graham Van Talen} in the Rogues' Quarter in Undercity" },
              { "Skyborne", "Zephras Isle", "{n:0::Strange Hermit} in Shadowgale Forest" },
            },
          },
        },
        {
          { t = "h", l = 4, x = "Capital Cities" },
          { t = "list", i = { "Stormwind City: {n:0:alliance:Sprite Jumpsprocket}", "Ironforge: {n:0:alliance:Jemma Quikswitch}" } },
          { t = "h", l = 4, x = "Starting Zones" },
          { t = "p", x = "Not every zone has a trainer, the table shows the closest one for each race." },
          {
            t = "table",
            h = 1,
            r = {
              { "Race", "Zone", "Closest trainer" },
              { "Human", "Elwynn Forest", "There is no Engineering trainer in Elwynn Forest, go to {n:0:alliance:Sprite Jumpsprocket} in the Dwarven District in Stormwind City" },
              { "Dwarf, Gnome", "Dun Morogh", "{n:0:alliance:Bronk Guzzlegear} at Steelgrill's Depot" },
              { "Night Elf", "Teldrassil", "There is no Engineering trainer in Teldrassil or Darnassus, the closest one is {n:0:alliance:Jenna Lemkenilli} in Auberdine in Darkshore" },
              { "Skyborne", "Zephras Isle", "{n:0::Strange Hermit} in Shadowgale Forest" },
            },
          },
        },
      },
      f = { "horde", "alliance" },
    },
    { t = "p", x = "You can find every Engineering trainer for Horde and Alliance on my WoW Forever Engineering Trainers page." },
    { t = "h", l = 2, x = "Apprentice Engineering (1-50)", r = "1-50" },
    {
      t = "p",
      x = "Buy a {i:5956:inv_hammer_20:Blacksmith Hammer}, most recipes need it. {b}Most trainers{/b} have a Blacksmithing or Engineering Supply vendor nearby that sells it, {b}except{/b} the trainers in Dun Morogh and on Zephras Isle. In Dun Morogh buy it in Kharanos from {n:0:alliance:Thrawn Boltar}, on Zephras Isle in Shen'dar Village from {n:0::Aedi Thriceforged}.",
    },
    {
      t = "p",
      x = "The {b}Gnome{/b} racial changed in Forever. Instead of +15 Engineering skill, Engineering Specialization now makes your devices fail or backfire 20% less often, so Gnomes level Engineering exactly like everyone else.",
    },
    {
      t = "step",
      r = "1-30",
      b = {
        { t = "p", x = "66x {s:3918:inv_misc_dust_01:Rough Blasting Powder} - 66 Rough Stone" },
        { t = "p", x = "Keep all of them, you need 66 for the bombs at 51." },
      },
      c = {
        {
          n = 66,
          s = 3918,
          ic = "inv_misc_dust_01",
          x = "Rough Blasting Powder",
          m = {
            { 66, "Rough Stone", 2835 },
          },
        },
      },
    },
    {
      t = "step",
      r = "30-50",
      b = {
        { t = "p", x = "33x {s:3922:inv_misc_gear_06:Handful of Copper Bolts} - 33 Copper Bar" },
        { t = "p", x = "Keep these too, you will need all 33 for the bombs." },
      },
      c = {
        {
          n = 33,
          s = 3922,
          ic = "inv_misc_gear_06",
          x = "Handful of Copper Bolts",
          m = {
            { 33, "Copper Bar", 2840 },
          },
        },
      },
    },
    {
      t = "step",
      r = "50-51",
      b = {
        { t = "p", x = "1x {s:7430:inv_misc_wrench_01:Arclight Spanner} - 6 Copper Bar" },
        { t = "p", x = "You will use this to craft Engineering recipes, so keep it." },
      },
      c = {
        {
          n = 1,
          s = 7430,
          ic = "inv_misc_wrench_01",
          x = "Arclight Spanner",
          m = {
            { 6, "Copper Bar", 2840 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Journeyman Engineering (50-150)", r = "50-150" },
    {
      t = "p",
      x = "To train past 75, visit one of these trainers and learn Journeyman Engineering. You need {b}Engineering 50{/b} and {b}level 10{/b}:",
    },
    { t = "p", x = "{b}Horde trainers:{/b}" },
    { t = "list", i = { "Orgrimmar: {n:0:horde:Nogg}", "Undercity: {n:0:horde:Franklin Lloyd}" } },
    { t = "p", x = "{b}Alliance trainers:{/b}" },
    {
      t = "list",
      i = { "Stormwind City: {n:0:alliance:Lilliam Sparkspindle}", "Ironforge: {n:0:alliance:Trixie Quikswitch}", "Duskwood: {n:0:alliance:Finbus Geargrind}" },
    },
    {
      t = "step",
      r = "51-75",
      b = {
        {
          t = "p",
          x = "33x {s:3923:inv_misc_bomb_09:Rough Copper Bomb} - 33 Copper Bar, 33 Handful of Copper Bolts, 66 Rough Blasting Powder, 33 Linen Cloth",
        },
        {
          t = "p",
          x = "{b}It's possible that you reach further than 75 with these{/b}, so it's best not to afk craft them unless you already learned Journeyman Engineering. Either make sure you learn it first, or just don't afk craft them. (Depends on luck, sometimes you don't even reach 75.)",
        },
      },
      c = {
        {
          n = 33,
          s = 3923,
          ic = "inv_misc_bomb_09",
          x = "Rough Copper Bomb",
          m = {
            { 33, "Copper Bar", 2840 },
            { 33, "Handful of Copper Bolts", 4359 },
            { 66, "Rough Blasting Powder", 4357 },
            { 33, "Linen Cloth", 2589 },
          },
        },
      },
    },
    {
      t = "step",
      r = "75-90",
      b = {
        { t = "p", x = "60x {s:3929:inv_misc_dust_02:Coarse Blasting Powder} - 60 Coarse Stone" },
        { t = "p", x = "Keep them, you will need all 60 for the dynamite at 90." },
      },
      c = {
        {
          n = 60,
          s = 3929,
          ic = "inv_misc_dust_02",
          x = "Coarse Blasting Powder",
          m = {
            { 60, "Coarse Stone", 2836 },
          },
        },
      },
    },
    {
      t = "step",
      r = "90-100",
      b = {
        { t = "p", x = "20x {s:3931:inv_misc_bomb_06:Coarse Dynamite} - 60 Coarse Blasting Powder, 20 Linen Cloth" },
      },
      c = {
        {
          n = 20,
          s = 3931,
          ic = "inv_misc_bomb_06",
          x = "Coarse Dynamite",
          m = {
            { 60, "Coarse Blasting Powder", 4364 },
            { 20, "Linen Cloth", 2589 },
          },
        },
      },
    },
    {
      t = "step",
      r = "100-105",
      b = {
        { t = "p", x = "5x {s:3973:inv_ingot_04:Silver Contact} - 5 Silver Bar" },
        { t = "p", x = "If Silver Bar is expensive, make this instead:" },
        { t = "p", x = "5x {s:3934:inv_helmet_47:Flying Tiger Goggles} - 30 Light Leather, 10 Tigerseye." },
      },
      c = {
        {
          n = 5,
          s = 3973,
          ic = "inv_ingot_04",
          x = "Silver Contact",
          m = {
            { 5, "Silver Bar", 2842 },
          },
        },
        {
          n = 5,
          s = 3934,
          ic = "inv_helmet_47",
          x = "Flying Tiger Goggles",
          m = {
            { 30, "Light Leather", 2318 },
            { 10, "Tigerseye", 818 },
          },
        },
      },
    },
    {
      t = "step",
      r = "105-125",
      b = {
        { t = "p", x = "25x {s:3938:inv_gizmo_pipe_01:Bronze Tube} - 50 Bronze Bar, 25 Weak Flux" },
        { t = "p", x = "Keep 10 of them, you will need them at 125." },
        { t = "p", x = "{i:2880:inv_misc_ammo_gunpowder_02:Weak Flux} is sold by Engineering Supply vendors near your trainer." },
        { t = "p", x = "If you end up a few points short of 125, don't make more tubes, just start the scopes." },
      },
      c = {
        {
          n = 25,
          s = 3938,
          ic = "inv_gizmo_pipe_01",
          x = "Bronze Tube",
          m = {
            { 50, "Bronze Bar", 2841 },
            { 25, "Weak Flux", 2880 },
          },
        },
      },
    },
    {
      t = "step",
      r = "125-135",
      b = {
        { t = "p", x = "10x {s:3978:inv_misc_spyglass_02:Standard Scope} - 10 Bronze Tube, 10 Moss Agate" },
        {
          t = "p",
          x = "Start making {s:3945:inv_misc_dust_06:Heavy Blasting Powder} instead if you don't have any Moss Agate, or it's really expensive.",
        },
      },
      c = {
        {
          n = 10,
          s = 3978,
          ic = "inv_misc_spyglass_02",
          x = "Standard Scope",
          m = {
            { 10, "Bronze Tube", 4371 },
            { 10, "Moss Agate", 1206 },
          },
        },
      },
    },
    {
      t = "step",
      r = "135-150",
      b = {
        { t = "p", x = "Make both of these:" },
        {
          t = "list",
          i = { "30x {s:3945:inv_misc_dust_06:Heavy Blasting Powder} - 30 Heavy Stone", "15x {s:3942:inv_gizmo_02:Whirring Bronze Gizmo} - 30 Bronze Bar, 15 Wool Cloth" },
        },
        {
          t = "p",
          x = "{b}Make sure to make them in the same order.{/b} You need both for the sheep at 160, so make them now and you should reach 150 with them.",
        },
      },
      c = {
        {
          n = 30,
          s = 3945,
          ic = "inv_misc_dust_06",
          x = "Heavy Blasting Powder",
          m = {
            { 30, "Heavy Stone", 2838 },
          },
        },
        {
          n = 15,
          s = 3942,
          ic = "inv_gizmo_02",
          x = "Whirring Bronze Gizmo",
          m = {
            { 30, "Bronze Bar", 2841 },
            { 15, "Wool Cloth", 2592 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Expert Engineering (150-200)", r = "150-200" },
    {
      t = "p",
      x = "To train past 150, visit {n:0:horde:Roxxik} in Orgrimmar (Horde) or {n:0:alliance:Springspindle Fizzlegear} in Ironforge (Alliance) and learn Expert Engineering. You need {b}Engineering 125{/b} and {b}level 20{/b}, and it costs 50 silver.",
    },
    {
      t = "step",
      r = "150-160",
      b = {
        { t = "p", x = "15x {s:3953:inv_gizmo_bronzeframework_01:Bronze Framework} - 30 Bronze Bar, 15 Medium Leather, 15 Wool Cloth" },
        { t = "p", x = "Keep these too, you will need all 15 for the sheep." },
        { t = "p", x = "The 15 will probably take you past 160, that's fine." },
      },
      c = {
        {
          n = 15,
          s = 3953,
          ic = "inv_gizmo_bronzeframework_01",
          x = "Bronze Framework",
          m = {
            { 30, "Bronze Bar", 2841 },
            { 15, "Medium Leather", 2319 },
            { 15, "Wool Cloth", 2592 },
          },
        },
      },
    },
    {
      t = "step",
      r = "160-175",
      b = {
        {
          t = "p",
          x = "15x {s:3955:spell_nature_polymorph:Explosive Sheep} - 30 Heavy Blasting Powder, 15 Whirring Bronze Gizmo, 15 Bronze Framework, 30 Wool Cloth",
        },
        { t = "p", x = "Keep 5 of them, you might need them if you choose Goblin Engineering at 200." },
      },
      c = {
        {
          n = 15,
          s = 3955,
          ic = "spell_nature_polymorph",
          x = "Explosive Sheep",
          m = {
            { 30, "Heavy Blasting Powder", 4377 },
            { 15, "Whirring Bronze Gizmo", 4375 },
            { 15, "Bronze Framework", 4382 },
            { 30, "Wool Cloth", 2592 },
          },
        },
      },
    },
    {
      t = "step",
      r = "175-194",
      b = {
        { t = "p", x = "60x {s:12585:inv_misc_powder_black:Solid Blasting Powder} - 120 Solid Stone" },
        { t = "p", x = "Save these, you will need them later." },
      },
      c = {
        {
          n = 60,
          s = 12585,
          ic = "inv_misc_powder_black",
          x = "Solid Blasting Powder",
          m = {
            { 120, "Solid Stone", 7912 },
          },
        },
      },
    },
    {
      t = "step",
      r = "194-195",
      b = {
        { t = "p", x = "1x {s:12590:inv_misc_screwdriver_02:Gyromatic Micro-Adjustor} - 4 Steel Bar" },
        { t = "p", x = "Keep this, you will need it to craft some of the Engineering recipes." },
        {
          t = "p",
          x = "If you were unlucky with the skill points and didn't reach 195, craft a few {s:3962:inv_misc_bomb_08:Iron Grenade} or any other recipe that gives skill points.",
        },
      },
      c = {
        {
          n = 1,
          s = 12590,
          ic = "inv_misc_screwdriver_02",
          x = "Gyromatic Micro-Adjustor",
          m = {
            { 4, "Steel Bar", 3859 },
          },
        },
      },
    },
    {
      t = "step",
      r = "195-200",
      b = {
        { t = "p", x = "6x {s:12589:inv_musket_01:Mithril Tube} - 18 Mithril Bar" },
        { t = "p", x = "Keep all 6, you might need them if you choose Gnomish Engineering at 200." },
      },
      c = {
        {
          n = 6,
          s = 12589,
          ic = "inv_musket_01",
          x = "Mithril Tube",
          m = {
            { 18, "Mithril Bar", 3860 },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Engineering Specializations" },
    {
      t = "p",
      x = "At {b}Engineering 200{/b} and {b}level 30{/b}, you can specialize in Gnomish or Goblin Engineering. Some items require a specific specialization to use, while other items are crafted by one specialization but are usable by any engineer. Fortunately, most recipes that are crafted by one specialization can be used by both.",
    },
    { t = "p", x = "For information on how to choose a specialization, please see my separate guide:" },
    { t = "h", l = 2, x = "Artisan Engineering (200-300)", r = "200-300" },
    {
      t = "p",
      x = "To train Engineering past 225 you need {b}Engineering 200{/b} and {b}level 35{/b}, then learn Artisan Engineering from {n:0::Buzzek Bracketswing} in Tanaris at Gadgetzan, he is right outside the inn near the mailbox. He also teaches the recipes above 200, so go there as soon as you reach 200.",
    },
    {
      t = "step",
      r = "200-215",
      b = {
        { t = "p", x = "20x {s:12591:inv_battery_01:Unstable Trigger} - 20 Mithril Bar, 20 Mageweave Cloth, 20 Solid Blasting Powder" },
        { t = "p", x = "Keep them, you will need all 20 for the bombs at 238." },
      },
      c = {
        {
          n = 20,
          s = 12591,
          ic = "inv_battery_01",
          x = "Unstable Trigger",
          m = {
            { 20, "Mithril Bar", 3860 },
            { 20, "Mageweave Cloth", 4338 },
            { 20, "Solid Blasting Powder", 10505 },
          },
        },
      },
    },
    {
      t = "step",
      r = "215-238",
      b = {
        { t = "p", x = "40x {s:12599:inv_gizmo_mithrilcasing_01:Mithril Casing} - 120 Mithril Bar" },
        { t = "p", x = "Keep these too, you will need 40 for the bombs." },
      },
      c = {
        {
          n = 40,
          s = 12599,
          ic = "inv_gizmo_mithrilcasing_01",
          x = "Mithril Casing",
          m = {
            { 120, "Mithril Bar", 3860 },
          },
        },
      },
    },
    {
      t = "step",
      r = "238-250",
      b = {
        { t = "p", x = "20x {s:12619:inv_misc_bomb_07:Hi-Explosive Bomb} - 40 Mithril Casing, 20 Unstable Trigger, 40 Solid Blasting Powder" },
      },
      c = {
        {
          n = 20,
          s = 12619,
          ic = "inv_misc_bomb_07",
          x = "Hi-Explosive Bomb",
          m = {
            { 40, "Mithril Casing", 10561 },
            { 20, "Unstable Trigger", 10560 },
            { 40, "Solid Blasting Powder", 10505 },
          },
        },
      },
    },
    {
      t = "step",
      r = "250-260",
      b = {
        { t = "p", x = "44x {s:19788:inv_misc_ammo_gunpowder_01:Dense Blasting Powder} - 88 Dense Stone" },
      },
      c = {
        {
          n = 44,
          s = 19788,
          ic = "inv_misc_ammo_gunpowder_01",
          x = "Dense Blasting Powder",
          m = {
            { 88, "Dense Stone", 12365 },
          },
        },
      },
    },
    {
      t = "step",
      r = "260-285",
      b = {
        { t = "p", x = "35x {s:19791:inv_gizmo_04:Thorium Widget} - 105 Thorium Bar, 35 Runecloth" },
        {
          t = "p",
          x = "{i:16042:inv_scroll_03:Schematic: Thorium Widget} is sold by {n:0:horde:Sovik} in Orgrimmar and {n:0:alliance:Gearcutter Cogspinner} in Ironforge.",
        },
      },
      c = {
        {
          n = 35,
          s = 19791,
          ic = "inv_gizmo_04",
          x = "Thorium Widget",
          m = {
            { 105, "Thorium Bar", 12359 },
            { 35, "Runecloth", 14047 },
          },
        },
      },
    },
    {
      t = "step",
      r = "285-300",
      b = {
        { t = "p", x = "20x {s:19795:inv_gizmo_pipe_04:Thorium Tube} - 120 Thorium Bar" },
        {
          t = "p",
          x = "{i:16047:inv_scroll_03:Schematic: Thorium Tube} is sold by {n:0::Xizzer Fizzbolt} in Winterspring at Everlook, in the first building on the right after the gate. It's bind on pickup in Forever, so buy it with the character that levels Engineering.",
        },
      },
      c = {
        {
          n = 20,
          s = 19795,
          ic = "inv_gizmo_pipe_04",
          x = "Thorium Tube",
          m = {
            { 120, "Thorium Bar", 12359 },
          },
        },
      },
    },
  },
})
