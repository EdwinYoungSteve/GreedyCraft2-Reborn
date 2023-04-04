/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 90
#no_fix_recipe_book

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.LootTweaker;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;   

import scripts.util.date as CalendarUtil;
import scripts.util.loot_tables as LootUtil;

LootUtil.addItem(<minecraft:bone>, 50, 1, 2, 10);
LootUtil.addItem(<minecraft:web>, 40, 1, 2, 15);
LootUtil.addItem(<minecraft:string>, 10, 1, 2, 12);
LootUtil.addItem(<minecraft:gunpowder>, 20, 1, 4, 12);
LootUtil.addItem(<minecraft:leather>, 6, 1, 5, 10);
LootUtil.addItem(<minecraft:rotten_flesh>, 60, 1, 2, 12);
LootUtil.addItem(<minecraft:dye:15>, 25, 1, 2, 10);
LootUtil.addItem(<minecraft:paper>, 15, 1, 2, 16);
LootUtil.addItem(<minecraft:clay_ball>, 10, 1, 12, 24);
LootUtil.addItem(<minecraft:redstone>, 10, 1, 16, 32);
LootUtil.addItem(<minecraft:dye:4>, 10, 1, 16, 32);
LootUtil.addItem(<minecraft:wheat>, 10, 1, 4, 12);
LootUtil.addItem(<minecraft:wheat_seeds>, 4, 1, 4, 8);
LootUtil.addItem(<minecraft:melon_seeds>, 4, 1, 4, 8);
LootUtil.addItem(<minecraft:pumpkin_seeds>, 4, 1, 4, 8);
LootUtil.addItem(<minecraft:book>, 15, 1, 1, 6);
LootUtil.addItem(<minecraft:compass>, 3, 1, 1, 1);
LootUtil.addItem(<minecraft:map>, 3, 1, 1, 1);
LootUtil.addItem(<minecraft:clock>, 3, 1, 1, 1);
LootUtil.addItem(<minecraft:glass_bottle>, 6, 1, 1, 8);
LootUtil.addItem(<minecraft:experience_bottle>, 12, 1, 3, 10);
LootUtil.addItem(<additions:greedycraft-blood_sigil>, 2, 1, 1, 1);
LootUtil.addItem(<appliedenergistics2:material>, 12, 1, 14, 26);
LootUtil.addItem(<appliedenergistics2:material:1>, 5, 1, 14, 26);
LootUtil.addItem(<cyclicmagic:ender_tnt_6>, 12, 1, 1, 3);
LootUtil.addItem(<thermalfoundation:material:128>, 10, 1, 2, 12);
LootUtil.addItem(<thermalfoundation:material:129>, 10, 1, 2, 12);
LootUtil.addItem(<thermalfoundation:material:163>, 18, 1, 2, 10);
LootUtil.addItem(<thermalfoundation:material:134>, 6, 1, 2, 6);
LootUtil.addItem(<thermalfoundation:material:199>, 8, 1, 2, 8);
LootUtil.addItem(<thermalfoundation:material:131>, 8, 1, 2, 8);
LootUtil.addItem(<thermalfoundation:material:130>, 10, 1, 2, 8);
LootUtil.addItem(<thermalfoundation:material:132>, 7, 1, 3, 12);
LootUtil.addItem(<thermalfoundation:material:133>, 6, 1, 3, 12);
LootUtil.addItem(<thermalfoundation:material:160>, 4, 1, 2, 6);
LootUtil.addItem(<thermalfoundation:material:161>, 6, 1, 2, 12);
LootUtil.addItem(<thermalfoundation:material:162>, 6, 1, 2, 12);
LootUtil.addItem(<additions:chromium_ingot>, 5, 1, 4, 12);
LootUtil.addItem(<projecte:item.pe_fuel>, 3, 1, 2, 6);
LootUtil.addItem(<ae2wtlib:infinity_booster_card>, 12, 1, 1, 8);
LootUtil.addItem(<progressivebosses:nether_star_shard>, 2, 1, 4, 18);
LootUtil.addItem(<thaumcraft:sanity_soap>, 2, 1, 2, 8);
LootUtil.addItem(<minecraft:emerald>, 10, 1, 2, 6);
LootUtil.addItem(<minecraft:diamond>, 12, 1, 8, 18);
LootUtil.addItem(<tofucraft:tofustick>, 1, 1, 1, 1);
LootUtil.addItem(<appliedenergistics2:material>, 10, 1, 12, 28);
LootUtil.addItem(<minecraft:glowstone_dust>, 8, 1, 12, 32);
LootUtil.addItem(<mysticalagriculture:crafting>, 8, 1, 16, 40);
LootUtil.addItem(<minecraft:quartz>, 10, 1, 16, 30);
LootUtil.addItem(<fluxnetworks:fluxcore>, 3, 1, 5, 10);
LootUtil.addItem(<touhou_little_maid:gashapon_coin>, 2, 1, 4, 12);
LootUtil.addItem(<additions:greedycraft-time_fragment>, 18, 1, 1, 3);
LootUtil.addItem(<additions:greedycraft-time_shard>, 3, 1, 1, 1);
LootUtil.addItem(<tofucraft:tofu_food>, 16, 1, 24, 64);
LootUtil.addItem(<tofucraft:tofu_food:2>, 8, 1, 12, 32);
LootUtil.addItem(<tofucraft:tofu_food:3>, 10, 1, 12, 24);
LootUtil.addItem(<tofucraft:tofu_material>, 4, 1, 4, 20);
LootUtil.addItem(<thermalfoundation:material:2053>, 4, 1, 4, 10);
LootUtil.addItem(<additions:greedycraft-one_punch>.withTag({ench: [{lvl: 33 as short, id: 19}]}), 1, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-reward_ticket_common>, 25, 1, 1, 3);
LootUtil.addItem(<additions:greedycraft-reward_ticket_rare>, 8, 1, 1, 2);
LootUtil.addItem(<additions:greedycraft-reward_ticket_epic>, 2, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-medkit_super>, 1, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-medkit_big>, 4, 1, 1, 3);
LootUtil.addItem(<additions:greedycraft-medkit_small>, 16, 1, 1, 6);
LootUtil.addItem(<additions:greedycraft-experience_ingot>, 18, 1, 2, 12);
LootUtil.addItem(<scalinghealth:crystalshard>, 3, 1, 1, 1);
LootUtil.addItem(<scalinghealth:heartdust>, 10, 1, 3, 12);
LootUtil.addItem(<additions:greedycraft-delivery_order>, 3, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-tower_chest_key>, 2, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-sunny_doll>, 4, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-bag_of_dyes>, 6, 1, 1, 3);
LootUtil.addItem(<additions:tcsponsors-sponsors_chest>, 1, 1, 1, 1);
LootUtil.addItem(<additions:tcsponsors-sponsor_chest_fragment>, 6, 1, 1, 2);
LootUtil.addItem(<additions:greedycraft-true_eye_of_ender>, 1, 1, 1, 1);
LootUtil.addItem(<abyssalcraft:shadowgem>, 6, 1, 1, 1);
LootUtil.addItem(<abyssalcraft:shadowshard>, 12, 1, 1, 6);
LootUtil.addItem(<abyssalcraft:shadowfragment>, 18, 1, 1, 20);
LootUtil.addItem(<additions:greedycraft-huaji>, 3, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-poop>, 8, 1, 1, 2);
LootUtil.addItem(<additions:greedycraft-experience_transporter>, 1, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-blueprint_laser_gun>, 1, 1, 1, 1);
LootUtil.addItem(<actuallyadditions:block_treasure_chest>, 9, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-skill_reset_scroll>, 1, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-plate_of_honor>, 1, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-purifying_dust>, 3, 1, 10, 40);
LootUtil.addItem(<additions:perfectly_generic_item>, 2, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-respawn_anchor>, 1, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-loli_lolipop>, 3, 1, 1, 2);
LootUtil.addItem(<additions:greedycraft-food_bag>, 4, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-furniture_crate>, 3, 1, 1, 1);
LootUtil.addItem(<sakura:sakura_diamond>, 2, 1, 3, 8);
LootUtil.addItem(<thaumcraft:curio>, 2, 1, 1, 2);
LootUtil.addItem(<thermalfoundation:material:136>, 1, 1, 2, 4);
LootUtil.addItem(<appliedenergistics2:material:36>, 3, 1, 3, 6);
LootUtil.addItem(<appliedenergistics2:material:38>, 1, 1, 2, 4);
LootUtil.addItem(<harvestcraft:bambooshootitem>, 2, 1, 8, 20);
LootUtil.addItem(<bountifulbaubles:potionrecall>, 30, 1, 2, 6);
LootUtil.addItem(<bountifulbaubles:potionwormhole>, 15, 1, 3, 8);
LootUtil.addItem(<harvestcraft:hamandpineapplepizzaitem>, 2, 1, 3, 5);
LootUtil.addItem(<minecraft:clay_ball>, 12, 1, 16, 64);
LootUtil.addItem(<redstonepaste:redstonepaste>, 4, 1, 16, 64);
LootUtil.addItem(<mysticalagriculture:crafting:32>, 4, 1, 6, 12);
LootUtil.addItem(<mysticalagriculture:crafting:33>, 3, 1, 5, 9);
LootUtil.addItem(<additions:greedycraft-strange_matter>, 1, 1, 1, 1);
LootUtil.addItem(<lootbags:itemlootbag:0>, 5, 1, 1, 1);
LootUtil.addItem(<lootbags:itemlootbag:1>, 3, 1, 1, 1);
LootUtil.addItem(<lootbags:itemlootbag:2>, 2, 1, 1, 1);
LootUtil.addItem(<lootbags:itemlootbag:3>, 1, 1, 1, 1);
LootUtil.addItem(<lootbags:itemlootbag:4>, 1, 1, 1, 1);
LootUtil.addItem(<lootbags:itemlootbag:6>, 1, 1, 1, 1);
LootUtil.addItem(<lootbags:itemlootbag:11>, 1, 1, 1, 1);
LootUtil.addItem(<lootbags:itemlootbag:13>, 1, 1, 1, 1);
LootUtil.addItem(<extrautils2:ingredients:12>, 5, 1, 3, 5);
LootUtil.addItem(<minecraft:coal>, 10, 1, 3, 12);
LootUtil.addItem(<enderio:item_alloy_ingot:1>, 8, 1, 4, 12);
LootUtil.addItem(<enderio:item_alloy_ingot:2>, 6, 1, 4, 8);
LootUtil.addItem(<enderio:item_alloy_ingot:8>, 4, 1, 4, 8);
LootUtil.addItem(<thaumcraft:ingot:2>, 8, 1, 5, 12);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "minecraft:invisibility"}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "minecraft:luck"}), 2, 1, 1, 1);
LootUtil.addItem(<abyssalcraft:antidote>, 2, 1, 1, 1);
LootUtil.addItem(<abyssalcraft:antidote:1>, 4, 1, 1, 1);
LootUtil.addItem(<abyssalcraft:antidote:1>, 4, 1, 1, 1);
LootUtil.addItem(<minecraft:splash_potion>.withTag({CustomPotionEffects: [{ShowParticles: 0 as byte, Duration: 1200, Id: 25, Amplifier: 126}], CustomPotionColor: 16722379, display: {Lore: [game.localize("greedycraft.misc.flyingpotion.tooltip")], Name: game.localize("greedycraft.misc.flyingpotion.name")}}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:splash_potion>.withTag({CustomPotionEffects: [{ShowParticles: 0 as byte, Duration: 2400, Id: 1, Amplifier: 126}, {ShowParticles: 0 as byte, Duration: 2400, Id: 8, Amplifier: 126}], CustomPotionColor: 720859, display: {Lore: [game.localize("greedycraft.misc.lightspeedpotion.tooltip")], Name: game.localize("greedycraft.misc.lightspeedpotion.name")}}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:splash_potion>.withTag({CustomPotionEffects: [{ShowParticles: 0 as byte, Duration: 6000, Id: 27, Amplifier: 126}], CustomPotionColor: 0, display: {Lore: [game.localize("greedycraft.misc.badluckpotion.tooltip")], Name: game.localize("greedycraft.misc.badluckpotion.name")}}), 2, 1, 1, 1);
LootUtil.addItem(<minecraft:stick>.withTag({ench: [{lvl: 10, id: 19}], display: {Lore: [game.localize("greedycraft.misc.knockbackwand.tooltip")], Name: game.localize("greedycraft.misc.knockbackwand.name")}}), 1, 1, 1, 1);
LootUtil.addItem(<foodexpansion:itemchocolatebar>, 8, 1, 4, 10);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:long_absorption"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:long_step_up"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:slow_fall"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:bless"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:magic_shield"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:strong_teleport"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:diamond_skin"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:teleport"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:teleport_surface"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:chance"}), 3, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:long_drown"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:lightning"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:solid_core"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:teleport_spawn"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:extension"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:glowing"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:iron_skin"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:purity"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:strong_chance"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:reach"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:antidote"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:curse"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:burst"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:love"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "potioncore:blindness"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "cyclicmagic:saturation"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "abyssalcraft:cplague"}), 1, 1, 1, 1);
LootUtil.addItem(<minecraft:potion>.withTag({Potion: "abyssalcraft:dplague"}), 1, 1, 1, 1);
LootUtil.addItem(<torchmaster:mega_torch>, 2, 1, 1, 1);
LootUtil.addItem(<torchmaster:dread_lamp>, 2, 1, 1, 1);
LootUtil.addItem(<torchmaster:feral_flare_lantern>, 2, 1, 1, 1);
LootUtil.addItem(<natura:edibles:5>, 1, 1, 1, 4);
LootUtil.addItem(<natura:edibles:6>, 1, 1, 1, 4);
LootUtil.addItem(<natura:edibles:7>, 1, 1, 1, 4);
LootUtil.addItem(<natura:edibles:8>, 1, 1, 1, 4);
LootUtil.addItem(<natura:edibles:9>, 1, 1, 1, 4);
LootUtil.addItem(<additions:greedycraft-catalyst_star>, 2, 1, 1, 1);
LootUtil.addItem(<charm:suspicious_soup>, 10, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-slime_crown>, 2, 1, 1, 1);
LootUtil.addItem(<additions:greedycraft-shining_star>, 2, 1, 1, 1);
LootUtil.addItem(<extrabotany:rewardbag:3>.withTag({weight: 189}), 2, 1, 1, 2);
LootUtil.addItem(<extrabotany:rewardbag:1>.withTag({weight: 76}), 2, 1, 1, 2);
LootUtil.addItem(<extrabotany:rewardbag>.withTag({weight: 96}), 4, 1, 1, 2);
LootUtil.addItem(<oeintegration:excavatemodifier>, 3, 1, 1, 3);
LootUtil.addItem(<charm:iron_lantern>, 4, 1, 4, 12);
LootUtil.addItem(<charm:gold_lantern>, 3, 1, 2, 6);

LootUtil.addHardmodeItem(<extrabotany:rewardbag:2>.withTag({weight: 113}), 2, 1, 1, 2);
LootUtil.addHardmodeItem(<minecraft:chorus_fruit_popped>, 4, 1, 4, 12);
LootUtil.addHardmodeItem(<minecraft:chorus_fruit>, 4, 1, 4, 16);
LootUtil.addHardmodeItem(<minecraft:chorus_fruit>, 4, 1, 4, 16);
LootUtil.addHardmodeItem(<taiga:iox_ingot>, 1, 1, 1, 1);
LootUtil.addHardmodeItem(<taiga:solarium_ingot>, 1, 1, 1, 1);
LootUtil.addHardmodeItem(<taiga:imperomite_ingot>, 1, 1, 1, 2);
LootUtil.addHardmodeItem(<taiga:violium_ingot>, 1, 1, 1, 2);
LootUtil.addHardmodeItem(<taiga:proxii_ingot>, 1, 1, 1, 2);
LootUtil.addHardmodeItem(<taiga:lumix_ingot>, 1, 1, 1, 2);
LootUtil.addHardmodeItem(<taiga:seismum_ingot>, 1, 1, 1, 2);
LootUtil.addHardmodeItem(<taiga:nucleum_ingot>, 1, 1, 1, 2);
LootUtil.addHardmodeItem(<taiga:dyonite_ingot>, 1, 1, 1, 2);
LootUtil.addHardmodeItem(<taiga:niob_ingot>, 1, 1, 1, 2);
LootUtil.addHardmodeItem(<taiga:ignitz_ingot>, 1, 1, 1, 2);
LootUtil.addHardmodeItem(<taiga:tritonite_ingot>, 1, 1, 1, 2);
LootUtil.addHardmodeItem(<taiga:tiberium_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:aurorium_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:prometheum_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:duranite_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:valyrium_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:vibranium_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:karmesine_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:ovium_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:jauxum_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:terrax_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:palladium_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:osram_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:uru_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:abyssum_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:eezo_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:triberium_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:fractum_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<taiga:dilithium_ingot>, 2, 1, 3, 5);
LootUtil.addHardmodeItem(<enderio:item_alloy_endergy_ingot:1>, 2, 1, 2, 5);
LootUtil.addHardmodeItem(<enderio:item_alloy_endergy_ingot:5>, 2, 1, 2, 5);
LootUtil.addHardmodeItem(<enderio:item_alloy_ingot:8>, 2, 1, 2, 5);
LootUtil.addHardmodeItem(<draconicevolution:draconium_ingot>, 3, 1, 8, 24);
LootUtil.addHardmodeItem(<draconicevolution:draconic_core>, 3, 1, 4, 10);
LootUtil.addHardmodeItem(<projecte:item.pe_fuel:1>, 2, 1, 4, 18);
LootUtil.addHardmodeItem(<projecte:item.pe_fuel:2>, 2, 1, 3, 8);
LootUtil.addHardmodeItem(<projecte:item.pe_matter>, 2, 1, 1, 2);
LootUtil.addHardmodeItem(<projecte:nova_cataclysm>, 2, 1, 1, 2);
LootUtil.addHardmodeItem(<additions:greedycraft-catalyst_star>, 3, 1, 1, 2);
LootUtil.addHardmodeItem(<mysticalagriculture:crafting:2>, 4, 1, 10, 12);
LootUtil.addHardmodeItem(<mysticalagriculture:crafting:3>, 3, 1, 4, 6);
LootUtil.addHardmodeItem(<mysticalagriculture:crafting:4>, 2, 1, 1, 2);
LootUtil.addHardmodeItem(<randomthings:ingredient:3>, 3, 1, 3, 5);
LootUtil.addHardmodeItem(<additions:stainless_steel_ingot>, 3, 1, 8, 12);
LootUtil.addHardmodeItem(<minecraft:end_rod>, 3, 1, 8, 12);
LootUtil.addHardmodeItem(<avaritia:resource:1>, 2, 1, 1, 2);
LootUtil.addHardmodeItem(<avaritia:resource:2>, 3, 1, 6, 16);
LootUtil.addHardmodeItem(<avaritia:resource:3>, 1, 1, 1, 1);
LootUtil.addHardmodeItem(<botania_tweaks:compressed_tiny_potato_4>, 1, 1, 1, 1);
LootUtil.addHardmodeItem(<appliedenergistics2:material:37>, 2, 1, 1, 3);
LootUtil.addHardmodeItem(<appliedenergistics2:material:38>, 2, 1, 1, 2);
LootUtil.addHardmodeItem(<minecraft:emerald>, 7, 1, 8, 14);
LootUtil.addHardmodeItem(<minecraft:diamond>, 10, 1, 10, 20);
LootUtil.addHardmodeItem(<thermalfoundation:material:167>, 2, 1, 2, 6);
LootUtil.addHardmodeItem(<botania:manaresource:4>, 2, 1, 2, 4);
LootUtil.addHardmodeItem(<botania:manaresource:7>, 2, 1, 4, 8);
LootUtil.addHardmodeItem(<additions:greedycraft-time_shard>, 1, 1, 1, 2);
LootUtil.addHardmodeItem(<additions:greedycraft-time_fragment>, 4, 1, 2, 5);
LootUtil.addHardmodeItem(<mysticalagriculture:fertilized_essence>, 4, 1, 8, 12);
LootUtil.addHardmodeItem(<mysticalagriculture:mystical_fertilizer>, 3, 1, 4, 8);
LootUtil.addHardmodeItem(<additions:greedycraft-compressed_experience_block>, 2, 1, 2, 5);
LootUtil.addHardmodeItem(<additions:greedycraft-pearl_of_knowledge>, 1, 1, 1, 1);
LootUtil.addHardmodeItem(<appliedenergistics2:material:7>, 2, 1, 20, 42);
LootUtil.addHardmodeItem(<additions:netherite_scrap>, 2, 1, 3, 6);
LootUtil.addHardmodeItem(<compactmachines3:wallbreakable>, 2, 1, 32, 64);
LootUtil.addHardmodeItem(<compactmachines3:machine:5>, 1, 1, 1, 1);
LootUtil.addHardmodeItem(<compactmachines3:machine:4>, 1, 1, 1, 1);
LootUtil.addHardmodeItem(<appliedenergistics2:part:56>, 2, 1, 32, 64);
LootUtil.addHardmodeItem(<modularmachinery:blockcasing:4>, 1, 1, 6, 12);
LootUtil.addHardmodeItem(<modularmachinery:blockcasing>, 1, 1, 8, 16);
LootUtil.addHardmodeItem(<modularmachinery:itemmodularium>, 2, 1, 12, 25);
LootUtil.addHardmodeItem(<additions:perfectly_generic_item>, 2, 1, 1, 3);
LootUtil.addHardmodeItem(<minecraft:gold_ingot>, 16, 1, 12, 22);
LootUtil.addHardmodeItem(<additions:greedycraft-reward_ticket_common>, 10, 1, 1, 3);
LootUtil.addHardmodeItem(<additions:greedycraft-reward_ticket_rare>, 5, 1, 1, 2);
LootUtil.addHardmodeItem(<additions:greedycraft-reward_ticket_epic>, 2, 1, 1, 1);
LootUtil.addHardmodeItem(<additions:greedycraft-reward_ticket_legendary>, 1, 1, 1, 1);
LootUtil.addHardmodeItem(<minecraft:bone>, 24, 1, 22, 40);
LootUtil.addHardmodeItem(<minecraft:web>, 20, 1, 12, 25);
LootUtil.addHardmodeItem(<minecraft:string>, 10, 1, 12, 42);
LootUtil.addHardmodeItem(<minecraft:gunpowder>, 14, 1, 8, 22);
LootUtil.addHardmodeItem(<minecraft:leather>, 6, 1, 5, 10);
LootUtil.addHardmodeItem(<minecraft:rotten_flesh>, 36, 1, 16, 40);
LootUtil.addHardmodeItem(<minecraft:dye:15>, 12, 1, 3, 20);
LootUtil.addHardmodeItem(<minecraft:paper>, 7, 1, 4, 26);
LootUtil.addHardmodeItem(<minecraft:clay_ball>, 5, 1, 32, 64);
LootUtil.addHardmodeItem(<minecraft:redstone>, 6, 1, 32, 64);
LootUtil.addHardmodeItem(<minecraft:dye:4>, 10, 1, 32, 64);
LootUtil.addHardmodeItem(<minecraft:book>, 12, 1, 3, 32);

if (CalendarUtil.isChristmas()) {
    LootUtil.addItem(<additions:greedycraft-gift>, 15, 1, 1, 2);
}

if (CalendarUtil.isLunarNewYear()) {
    LootUtil.addItem(<additions:greedycraft-red_packet>, 15, 1, 1, 2);
}
