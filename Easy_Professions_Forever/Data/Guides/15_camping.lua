-- Generated from https://www.wow-professions.com/forever/camping-guide (wow-professions.com), do not edit by hand
local _, ns = ...
ns.AddGuide({
  key = "camping",
  order = 15,
  cat = "other",
  icon = "Interface\\Icons\\Spell_Fire_Fire",
  title = "Camping Guide: Profession Bonuses and Buffs in WoW Forever",
  titleFR = "Camping",
  url = "https://www.wow-professions.com/forever/camping-guide",
  blocks = {
    {
      t = "p",
      x = "This WoW Forever camping guide will show you how camping works, how to make a campfire and every camp item and buff of every profession.",
    },
    {
      t = "img",
      f = "wow-forever-camping-campfire",
      a = "Three night elves sitting at a campfire in Dolanaar, Teldrassil, in WoW Forever",
      w = 512,
      h = 204,
      u = 1,
      v = 0.7969,
    },
    { t = "h", l = 2, x = "How Camping Works" },
    {
      t = "p",
      x = "Someone puts down a campfire, and everyone around it can place a camp item of their own profession. {b}Sit (/sit) next to the fire for a minute{/b}, you will see a buff start counting down. Then you get Camp Benefits, one buff with everything the camp items give, for an hour.",
    },
    {
      t = "p",
      x = "{b}Each player can place one camp item{/b}, and it puts all your camp items on a 1 hour cooldown. A campfire holds 3, 5 or 10 camp items, depending on how big it is (see How to Make a Campfire below). The buffs are weaker class buffs and don't stack with them.",
    },
    {
      t = "p",
      x = "The intro quests in the starting zones, The Great Outdoors and Camping 101, are optional, the buffs work without them. The quest givers' fires always give the Camp Tent's rested experience.",
    },
    { t = "h", l = 2, x = "How to Make a Campfire" },
    {
      t = "p",
      x = "Learn Cooking from any Cooking trainer, the Basic Campfire Kit comes with it at skill 1. {i:4470:inv_tradeskillitem_01:Simple Wood} is sold by the trade and general goods vendors in most towns. Open your Professions window (the hammer and pick button in the menu bar), craft the kit from 1 Simple Wood under Cooking, then use it from your bags to place the campfire.",
    },
    {
      t = "p",
      x = "{b}Tip:{/b} you don't have to carry Flint and Tinder and wood around any more, craft a stack of Basic Campfire Kits at home and carry only those, they take one bag slot. You can also hand them to others.",
    },
    { t = "p", x = "The bigger campfires hold more camp items, but they need a Blueprint." },
    {
      t = "p",
      x = "The Expert Campfire Kit needs more Cooking to use than to learn (220 against 200). It's usually the other way around, so maybe it's a bug.",
    },
    {
      t = "table",
      h = 1,
      r = {
        { "Campfire", "Learn at", "Use at", "Camp items", "Made from", "Recipe" },
        { "{i:279981:inv_camelot_camping_welcomingcampfire:Basic Campfire Kit}", "1", "1", "3", "1 {i:4470:inv_tradeskillitem_01:Simple Wood}", "Comes with Cooking" },
        { "{i:279961:inv_camelot_camping_welcomingcampfire:Journeyman Campfire Kit}", "90", "90", "5", "1 {i:11291:inv_tradeskillitem_03:Star Wood}", "{i:273087:inv_garrison_blueprints3:Blueprint: Journeyman Campfire} Dropped by: {n:3673::Lord Serpentis} in Wailing Caverns" },
        { "{i:279974:inv_camelot_camping_welcomingcampfire:Expert Campfire Kit}", "200", "220", "10", "1 {i:272941:inv_tradeskillitem_03:Thick Logs}", "{i:273101:inv_garrison_blueprints3:Blueprint: Expert Campfire} I don't know yet where it drops" },
      },
    },
    { t = "h", l = 2, x = "Camp Items" },
    {
      t = "p",
      x = "Every profession has three camp items, at skill 20, 140 and 300 (Cooking has two), and each one replaces the one before. The tier 1 item comes from your profession trainer, {b}tier 2 and 3 need a Blueprint{/b}, a recipe item. The tier 2 and 3 blueprints drop from bosses, most of them in dungeons, the tabs show which one. Only the Herbalism one at 300 is not known yet.",
    },
    {
      t = "p",
      x = "{b}Every item also gives the buff of the tier 1 item of its profession{/b}, so you never have to choose between a buff and a crafting station. A Master Forge still gives the Strength buff of the Sharpening Wheel. Whether a tier 3 item also gives what the tier 2 item gives (an anvil from a Master Forge) is not confirmed yet. The tabs only list what each tier adds.",
    },
    {
      t = "tabs",
      n = { "Alchemy", "Blacksmithing", "Enchanting", "Engineering", "Leatherworking", "Tailoring", "Herbalism", "Mining", "Skinning", "Cooking", "First Aid", "Fishing" },
      p = {
        {
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "20", "{s:1230564:spell_arcane_manatap:Mana Well}", "Mana regeneration buff, doesn't stack with Blessing of Wisdom", "1 {i:2447:inv_misc_flower_02:Peacebloom} 1 {i:3371:inv_potion_84:Empty Vial}", "Trainer or the Camping 101 quest" },
              { "140", "{s:1263005:inv_alchemy_90_cauldron:Fermenter}", "A Fermenter, needed for a few Alchemy recipes", "1 {i:3372:inv_potion_85:Leaded Vial} 1 {i:3356:inv_misc_herb_03:Kingsblood} 1 {i:2452:inv_misc_herb_04:Swiftthistle}", "{i:273085:inv_garrison_blueprints3:Blueprint: Fermenter} Dropped by: {n:250657::Rath'mael} in the Ruins of Lordaeron" },
              { "300", "{s:1263078:10prof_portabletable_alchemy01:Alchemy Laboratory}", "An Alchemy Lab, needed for some Alchemy recipes", "1 {i:273125:inv_misc_bone_10:Lich's Index Finger} 1 {i:8925:inv_potion_86:Crystal Vial} 2 {i:13463:inv_misc_herb_dreamfoil:Dreamfoil}", "{i:273112:inv_garrison_blueprints3:Blueprint: Alchemy Laboratory} Dropped by: {n:10508::Ras Frostwhisper} in Scholomance" },
            },
          },
        },
        {
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "20", "{s:1230171:inv_stone_grindingstone_01:Sharpening Wheel}", "Strength buff, doesn't stack with Strength of Earth Totem", "1 {i:2835:inv_stone_06:Rough Stone} 1 {i:2840:inv_ingot_02:Copper Bar}", "Trainer or the Camping 101 quest" },
              { "140", "{s:1263041:inv_blacksmith_anvil:Anvil}", "An anvil", "5 {i:2841:inv_ingot_bronze:Bronze Bar} 2 {i:3478:inv_stone_grindingstone_02:Coarse Grinding Stone} 2 {i:2319:inv_misc_leatherscrap_05:Medium Leather}", "{i:273086:inv_garrison_blueprints3:Blueprint: Anvil} Dropped by: {n:1763::Gilnid} in The Deadmines" },
              { "300", "{s:1263073:inv_mace_1h_blacksmithing_b_01_black:Master Forge}", "A Master Forge, needed for many Blacksmithing recipes", "1 {i:273127:inv_ore_blackrock_ore:Golem Heart} 5 {i:12359:inv_ingot_07:Thorium Bar} 2 {i:8170:inv_misc_leatherscrap_02:Rugged Leather}", "{i:273113:inv_garrison_blueprints3:Blueprint: Master Forge} Dropped by: {n:8983::Golem Lord Argelmach} in Blackrock Depths" },
            },
          },
        },
        {
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "20", "{s:1230643:inv_10_enchanting2_magicswirl_bronze:Enchanted Lute}", "Armor, all stats and resistances buff, doesn't stack with Mark of the Wild", "1 {i:4470:inv_tradeskillitem_01:Simple Wood} 1 {i:10940:inv_enchant_duststrange:Strange Dust}", "Trainer or the Camping 101 quest" },
              { "140", "{s:1263056:inv_eng_bottledelements:Arcane Salvager}", "Better disenchanting", "2 {i:11137:inv_enchant_dustvision:Vision Dust} 1 {i:11174:inv_enchant_essencenethersmall:Lesser Nether Essence}", "{i:273103:inv_garrison_blueprints3:Blueprint: Arcane Salvager} Dropped by: {n:246020::Shade of the Archmage} in the City of Dalaran" },
              { "300", "{s:1263082:inv_enchanting_modifiedcraftingreagent_indigo:Arcane Forge}", "An Arcane Forge, needed for some Enchanting recipes", "1 {i:273128:inv_enchant_essencecosmicgreater:Maker's Spark} 2 {i:14344:inv_enchant_shardbrilliantlarge:Large Brilliant Shard} 4 {i:16203:inv_enchant_essenceeternallarge:Greater Eternal Essence}", "{i:273116:inv_garrison_blueprints3:Blueprint: Arcane Forge} Dropped by: {n:261809::Nanaya} in Kalimdor" },
            },
          },
        },
        {
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "20", "{s:1230656:inv_misc_enggizmos_13:Reagent Bot}", "Summons the {n:242498::Reagent Bot}, a vendor with class reagents and profession supplies for everyone at the camp", "1 {i:4359:inv_misc_gear_06:Handful of Copper Bolts} 1 {i:4361:inv_gizmo_pipe_02:Copper Tube}", "Trainer or the Camping 101 quest" },
              { "140", "{s:1263034:inv_robotpet:Repair Bot}", "Repairs for everyone at the camp", "2 {i:4375:inv_gizmo_02:Whirring Bronze Gizmo} 1 {i:4371:inv_gizmo_pipe_01:Bronze Tube} 1 {i:4234:inv_misc_leatherscrap_07:Heavy Leather}", "{i:273092:inv_garrison_blueprints3:Blueprint: Repair Bot} Dropped by: {n:643::Sneed} in The Deadmines" },
              { "300", "{s:1263083:inv_10_specialization_professionbook_engineering_color1:Anarchist's Workbench}", "An Anarchist's Workbench, needed for some Engineering recipes", "1 {i:273129:inv_misc_bomb_04:Essence of Anarchy} 2 {i:15994:inv_gizmo_04:Thorium Widget}", "{i:273117:inv_garrison_blueprints3:Blueprint: Anarchist's Workbench} Dropped by: {n:11058::Ezra Grimm} in Stratholme" },
            },
          },
        },
        {
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "20", "{s:1229432:inv_misc_leatherscrap_01:Camp Tent}", "Rested experience up to 5% of a level, once an hour (a debuff blocks it until then)", "5 {i:2318:inv_misc_leatherscrap_03:Light Leather}", "Trainer or the Camping 101 quest" },
              { "125", "{s:1263031:inv_10_skinning_leather_rarehide_color1:Tanning Rack}", "A Tanning Rack, needed for many Leatherworking recipes", "5 {i:2319:inv_misc_leatherscrap_05:Medium Leather} 3 {i:2321:inv_fabric_wool_02:Fine Thread} 2 {i:4470:inv_tradeskillitem_01:Simple Wood}", "{i:273096:inv_garrison_blueprints3:Blueprint: Tanning Rack} Dropped by: {n:3886::Razorclaw the Butcher} in Shadowfang Keep" },
              { "300", "{s:1263079:inv_tailoring_modifiedcraftingreagent_orange:Sewing Machine}", "A Sewing Machine, needed for many Leatherworking recipes", "1 {i:273130:inv_axe_2h_undeadguitar_c_01:Undeath Engine} 5 {i:8170:inv_misc_leatherscrap_02:Rugged Leather} 1 {i:14341:spell_shadow_antimagicshell:Rune Thread}", "{i:273121:inv_garrison_blueprints3:Blueprint: Sewing Machine} Dropped by: {n:10432::Vectus} in Scholomance" },
            },
          },
        },
        {
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "20", "{s:1229504:inv_banner_03:Faction Banner}", "Spirit buff for players of your faction, doesn't stack with Divine Spirit. Horde and Alliance each have their own banner", "1 {i:2996:inv_fabric_linen_02:Bolt of Linen Cloth} 1 {i:2320:inv_fabric_linen_03:Coarse Thread}", "Trainer or the Camping 101 quest" },
              { "140", "{s:1263032:10prof_table_tailoring01:Spinning Wheel}", "A Spinning Wheel, needed for many Tailoring recipes", "2 {i:4470:inv_tradeskillitem_01:Simple Wood} 5 {i:4305:inv_fabric_silk_03:Bolt of Silk Cloth} 3 {i:2321:inv_fabric_wool_02:Fine Thread}", "{i:273099:inv_garrison_blueprints3:Blueprint: Spinning Wheel} Dropped by: {n:246017::Unstable Sentinel} in the City of Dalaran" },
              { "300", "{s:1263080:inv_tailoring_80_tidespraylinen:Loom}", "A Loom, needed for many Tailoring recipes", "1 {i:273131:spell_holy_senseundead:Bottled Screams} 4 {i:14048:inv_fabric_purplefire_02:Bolt of Runecloth} 4 {i:4470:inv_tradeskillitem_01:Simple Wood}", "{i:273124:inv_garrison_blueprints3:Blueprint: Loom} Dropped by: {n:10436::Baroness Anastari} in Stratholme" },
            },
          },
        },
        {
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "20", "{s:1229705:inv_misc_candle_02:Incense Candle}", "Intellect buff, doesn't stack with Arcane Intellect", "1 {i:2447:inv_misc_flower_02:Peacebloom} 1 {i:765:inv_misc_herb_10:Silverleaf}", "Trainer or the Camping 101 quest" },
              { "140", "{s:1262980:inv_misc_herb_08:Greenhouse}", "A Greenhouse that grows herbs from seeds you plant", "2 {i:4470:inv_tradeskillitem_01:Simple Wood} 1 {i:8836:inv_misc_herb_13:Arthas' Tears} 1 {i:8831:inv_misc_herb_17:Purple Lotus}", "{i:273106:inv_garrison_blueprints3:Blueprint: Greenhouse} Dropped by: {n:260325::Shadetooth} in Excavation Site: Wetlands" },
              { "300", "{s:1263070:inv_farm_herbseed:Seed Hybridizer}", "A Seed Hybridizer that multiplies seeds or combines them into rarer ones", "4 {i:13465:inv_misc_herb_mountainsilversage:Mountain Silversage} 1 {i:8925:inv_potion_86:Crystal Vial} 2 {i:14047:inv_fabric_purplefire_01:Runecloth}", "{i:273120:inv_garrison_blueprints3:Blueprint: Seed Hybridizer}" },
            },
          },
        },
        {
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "20", "{s:1230161:inv_misc_rune_06:Lodestone}", "Melee Attack Power buff, doesn't stack with Blessing of Might", "1 {i:2835:inv_stone_06:Rough Stone} 1 {i:2840:inv_ingot_02:Copper Bar}", "Trainer or the Camping 101 quest" },
              { "140", "{s:1262975:inv_misc_powder_iron:Rock Garden}", "Spawns a common mining node over time, and gives the Lodestone buff too", "2 {i:2838:inv_stone_12:Heavy Stone} 1 {i:2772:inv_ore_iron_01:Iron Ore} 1 {i:2842:inv_ingot_01:Silver Bar}", "{i:273097:inv_garrison_blueprints3:Blueprint: Rock Garden} Dropped by: {n:260326::Relic Guardian} in Excavation Site: Wetlands" },
              { "300", "{s:1263071:inv_blacksmithingalloys_red:Molten Foundry}", "A Molten Foundry, needed for Smelt Heavy Thorium", "5 {i:12359:inv_ingot_07:Thorium Bar} 2 {i:12365:inv_misc_stonetablet_07:Dense Stone} 1 {i:6037:inv_ingot_08:Truesilver Bar}", "{i:273122:inv_garrison_blueprints3:Blueprint: Molten Foundry} Dropped by: {n:9156::Ambassador Flamelash} in Blackrock Depths" },
            },
          },
        },
        {
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "20", "{s:1229517:inv_crate_01:Camp Chair}", "+2% crit chance, doesn't stack with Moonkin Aura", "3 {i:2318:inv_misc_leatherscrap_03:Light Leather} 2 {i:4470:inv_tradeskillitem_01:Simple Wood}", "Trainer or the Camping 101 quest" },
              { "140", "{s:1262985:inv_misc_book_03:Field Guide}", "A book anyone can read to learn Track Beasts", "3 {i:2319:inv_misc_leatherscrap_05:Medium Leather} 2 {i:5784:inv_misc_monsterscales_02:Slimy Murloc Scale} 1 {i:2321:inv_fabric_wool_02:Fine Thread}", "{i:273098:inv_garrison_blueprints3:Blueprint: Field Guide} Dropped by: {n:3671::Lady Anacondra} in Wailing Caverns" },
              { "300", "{s:1262982:inv_misc_kobysstools_knifetrap_color3:Trapper's Workbench}", "A workbench with 1 trap", "2 {i:4470:inv_tradeskillitem_01:Simple Wood} 4 {i:4234:inv_misc_leatherscrap_07:Heavy Leather} 1 {i:3575:inv_ingot_iron:Iron Bar}", "{i:273109:inv_garrison_blueprints3:Blueprint: Trapper's Workbench} Dropped by: {n:10430::The Beast} in Upper Blackrock Spire and {n:3974::Houndmaster Loksey} in Scarlet Monastery" },
            },
          },
        },
        {
          { t = "p", x = "Cooking has no tier 1 camp item, its first one is the campfire (see How to Make a Campfire above)." },
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "140", "{s:1262978:inv_cooking_80_majorfeast:Cookie's Feast}", "Stamina food for everyone at the camp", "2 {i:12037:inv_misc_food_67:Mystery Meat} 1 {i:12204:inv_misc_food_70:Heavy Kodo Meat} 1 {i:3713:inv_misc_food_vendor_rice:Soothing Spices}", "{i:273102:inv_garrison_blueprints3:Blueprint: Cookie's Feast} Dropped by: {n:645::Cookie} in The Deadmines" },
              { "300", "{s:1263067:achievement_cooking_masteroftheoven:Iron Oven}", "An Iron Oven, needed for the most advanced Cooking recipes", "10 {i:10284:inv_misc_food_wheat_01:Simple Flour} 5 {i:159:inv_drink_07:Refreshing Spring Water} 4 {i:3713:inv_misc_food_vendor_rice:Soothing Spices}", "{i:273115:inv_garrison_blueprints3:Blueprint: Iron Oven} Dropped by: {n:9736::Quartermaster Zigris} in Lower Blackrock Spire" },
            },
          },
        },
        {
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "20", "{s:1230117:inv_misc_bandage_11:First Aid Kit}", "Stamina buff, doesn't stack with Power Word: Fortitude", "3 {i:1251:inv_misc_bandage_15:Linen Bandage} 1 {i:159:inv_drink_07:Refreshing Spring Water}", "Trainer or the Camping 101 quest" },
              { "140", "{s:1262996:inv_misc_potiona3:Toxin Study}", "Healing potions and anti-venom", "1 {i:6452:inv_misc_slime_01:Anti-Venom} 2 {i:8544:inv_misc_bandage_19:Mageweave Bandage} 2 {i:4470:inv_tradeskillitem_01:Simple Wood}", "{i:273105:inv_garrison_blueprints3:Blueprint: Toxin Study} Dropped by: {n:4278::Commander Springvale} in Shadowfang Keep" },
              { "300", "{s:1263001:inv_10_alchemy_incenseholder_color1:Plague Doctor's Laboratory}", "Healing potions and poultices", "2 {i:4470:inv_tradeskillitem_01:Simple Wood} 2 {i:6453:inv_misc_slime_01:Strong Anti-Venom} 5 {i:14530:inv_misc_bandage_12:Heavy Runecloth Bandage}", "{i:273118:inv_garrison_blueprints3:Blueprint: Plague Doctor's Laboratory} Dropped by: {n:11261::Doctor Theolen Krastinov} in Scholomance" },
            },
          },
        },
        {
          {
            t = "table",
            h = 1,
            r = {
              { "Skill", "Camp Item", "What It Does", "Materials", "Recipe" },
              { "20", "{s:1229745:inv_magicalfishpet:Fish Bowl}", "+8% all stats, doesn't stack with Blessing of Kings", "1 {i:6291:inv_misc_fish_08:Raw Brilliant Smallfish} 1 {i:3371:inv_potion_84:Empty Vial}", "Trainer or the Camping 101 quest" },
              { "140", "{s:1262990:inv_misc_2h_draenorfishingpole_a_01:Fishing Rack}", "Uncommon fish for 1 hour and Fishing lures", "2 {i:4470:inv_tradeskillitem_01:Simple Wood} 1 {i:8925:inv_potion_86:Crystal Vial} 2 {i:8365:inv_misc_fish_02:Raw Mithril Head Trout}", "{i:273141:inv_garrison_blueprints3:Blueprint: Fishing Rack} Dropped by: {n:6243::Gelihast} in Blackfathom Deeps" },
              { "300", "{s:1262998:inv_fishingchair:Fishing Hut}", "Rare fish for 1 hour and Fishing lures", "5 {i:4470:inv_tradeskillitem_01:Simple Wood} 2 {i:14048:inv_fabric_purplefire_02:Bolt of Runecloth} 1 {i:273295:inv_misc_food_156_fish_79:Seasonal Fish Steaks}", "{i:273119:inv_garrison_blueprints3:Blueprint: Fishing Hut} Dropped by: {n:5710::Jammal'an the Prophet} in the Sunken Temple" },
            },
          },
        },
      },
    },
    { t = "h", l = 2, x = "Crafting Stations: Tanning Rack, Loom and More" },
    {
      t = "p",
      x = "A lot of recipes in WoW Forever need a crafting station nearby, like a Tanning Rack, a Spinning Wheel or a Loom. {b}I haven't found any of them out in the world{/b}, they only come from camps, so for a lot of higher level crafting you need a camp. The easiest way is a camp that already has the station, anyone at the fire can use it.",
    },
    { t = "p", x = "To place one yourself:" },
    {
      t = "list",
      i = { "Get your profession to the skill in the table below.", "Get the station's Blueprint and learn it. The table shows where it drops, if we know it.", "Craft the station, put down a campfire and use the station from your bags next to it." },
    },
    {
      t = "table",
      h = 1,
      r = {
        { "Station", "Profession", "Skill", "Blueprint" },
        { "{s:1263005:inv_alchemy_90_cauldron:Fermenter}", "Alchemy", "140", "Dropped by: {n:250657::Rath'mael} in the Ruins of Lordaeron" },
        { "{s:1263078:10prof_portabletable_alchemy01:Alchemy Laboratory}", "Alchemy", "300", "Dropped by: {n:10508::Ras Frostwhisper} in Scholomance" },
        { "{s:1263073:inv_mace_1h_blacksmithing_b_01_black:Master Forge}", "Blacksmithing", "300", "Dropped by: {n:8983::Golem Lord Argelmach} in Blackrock Depths" },
        { "{s:1263082:inv_enchanting_modifiedcraftingreagent_indigo:Arcane Forge}", "Enchanting", "300", "Dropped by: {n:261809::Nanaya} in Kalimdor" },
        { "{s:1263083:inv_10_specialization_professionbook_engineering_color1:Anarchist's Workbench}", "Engineering", "300", "Dropped by: {n:11058::Ezra Grimm} in Stratholme" },
        { "{s:1263031:inv_10_skinning_leather_rarehide_color1:Tanning Rack}", "Leatherworking", "125", "Dropped by: {n:3886::Razorclaw the Butcher} in Shadowfang Keep" },
        { "{s:1263079:inv_tailoring_modifiedcraftingreagent_orange:Sewing Machine}", "Leatherworking", "300", "Dropped by: {n:10432::Vectus} in Scholomance" },
        { "{s:1263032:10prof_table_tailoring01:Spinning Wheel}", "Tailoring", "140", "Dropped by: {n:246017::Unstable Sentinel} in the City of Dalaran" },
        { "{s:1263080:inv_tailoring_80_tidespraylinen:Loom}", "Tailoring", "300", "Dropped by: {n:10436::Baroness Anastari} in Stratholme" },
        { "{s:1263071:inv_blacksmithingalloys_red:Molten Foundry}", "Mining", "300", "Dropped by: {n:9156::Ambassador Flamelash} in Blackrock Depths" },
        { "{s:1263067:achievement_cooking_masteroftheoven:Iron Oven}", "Cooking", "300", "Dropped by: {n:9736::Quartermaster Zigris} in Lower Blackrock Spire" },
      },
    },
  },
})
