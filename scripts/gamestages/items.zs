/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 950
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;

import scripts.util.gamestages as GameStagesUtil;

GameStagesUtil.stageDescendantOfTheSun.addIngredients([
    <ore:ingotInfernium>,
    <ore:nuggetInfernium>,
    <ore:blockInfernium>,
    <ore:dustInfernium>,
    <additions:infernium_ingot>,
    <additions:greedycraft-infernium_block>,
    <additions:greedycraft-infernium_nugget>,
    <additions:greedycraft-infernium_ore>,
    <additions:greedycraft-canopium_ore>,
    <additions:greedycraft-canopium_ingot>,
    <gct_ores:canopium_nugget>,
    <additions:greedycraft-plasmarite_ore>,
    <additions:greedycraft-plasmarite_ingot>,
    <gct_ores:plasmarite_nugget>,
    <additions:greedycraft-freezite_ore>,
    <additions:greedycraft-freezite_ingot>,
    <gct_ores:freezite_nugget>,
    <additions:greedycraft-dullium_ingot>,
    <hammermetals:dullium_dust>,
    <hammermetals:dullium_nugget>,
    <hammermetals:dullium_block>,
    <gct_ores:relifed_core>
], true);

GameStagesUtil.stageExpert.addIngredients([
    <additions:greedycraft-fake_philosopher_stone>,
    <additions:greedycraft-undead_medkit>,
    <additions:greedycraft-strange_lolipop>,
    <additions:greedycraft-adrenaline>,
    <additions:greedycraft-shield_gum>,
    <additions:greedycraft-goodie_bag>
], true);


GameStagesUtil.stageChaoticDominator.addIngredients([
    <additions:greedycraft-death_coin>,
    <scalinghealth:difficultychanger:*>,
    <additions:greedycraft-difficulty_changer>,
    <avaritiatweaks:infinitato>,
    <draconicadditions:chaotic_energy_core>,
    <additions:eioaddon-blackhole_alloy_ingot>
], true);

GameStagesUtil.stageGettingStarted.addIngredients([
    <ore:workbench>,
    <ore:plankWood>,
    <ore:chest>,
    <ore:craftingTableWood>,
    <minecraft:wooden_pickaxe>,
    <minecraft:stone_pickaxe>,
    <minecraft:diamond_pickaxe>,
    <minecraft:golden_pickaxe>,
    <minecraft:iron_pickaxe>,
    <minecraft:wooden_axe>,
    <minecraft:stone_axe>,
    <minecraft:diamond_axe>,
    <minecraft:golden_axe>,
    <minecraft:iron_axe>,
    <ore:cobblestone>,
    <minecraft:golden_axe>,
    <tconstruct:tooltables:*>,
    <tconstruct:tooltables:2>,
    <tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}),
    <conarm:armorstation>,
    <tconstruct:tooltables>,
    <tconstruct:tooltables:1>,
    <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}),
    <tconstruct:tooltables:5>,
    <tconstruct:tooltables:3>,
    <tconstruct:tooltables:4>,
    <divinerpg:corrupted_shards>,
    <divinerpg:divine_shards>,
    <divinerpg:ice_shards>,
    <divinerpg:terran_shards>,
    <divinerpg:corrupted_stone>,
    <divinerpg:divine_stone>,
    <divinerpg:ice_stone>,
    <divinerpg:jungle_stone>,
    <divinerpg:terran_stone>,
    <divinerpg:jungle_shards>
], true);

GameStagesUtil.stageGettingStarted.addIngredients([
    <ore:ingotIron>,
    <ore:ingotGold>,
    <ore:nuggetIron>,
    <ore:nuggetGold>,
    <ore:dustIron>,
    <ore:dustGold>,
    <ore:blockIron>,
    <ore:blockGold>
], false);

GameStagesUtil.stageFusionMatrix.addIngredients([
    <zensummoning:altar>,
    <ore:oreDraconium>,
    <ore:ingotDraconium>,
    <ore:dustDraconium>,
    <ore:blockDraconium>,
    <ore:ingotElectronium>,
    <ore:blockElectronium>,
    <mysticalcreations:fusion_matrix_essence>,
    <gct_ores:fallen_core>,
    <ore:oreWitherium>,
    <ore:dustWitherium>,
    <tiths:ingot_witherium>,
    <tiths:block_witherium>,
    <gct_ores:witherium_dust>,
    <gct_ores:witherium_ore_overworld>,
    <gct_ores:witherium_ore_nether>,
    <gct_ores:witherium_ore_end>,
    <hammermetals:witherium_nugget>,
    <gct_ores:witheric_core>,
    <divinerpg:nightmare_bed>,
    <gct_ores:relifed_witherium_ingot>,
    <gct_ores:relifed_witherium_block>,
    <gct_ores:relifed_witherium_dust>,
    <gct_ores:relifed_witherium_nugget>
], true);

GameStagesUtil.stageVetheaBreaker.addIngredients([
    <additions:greedycraft-beast_hand>,
    <additions:greedycraft-thunder_eye>,
    <additions:greedycraft-weather_breathe>,
    <additions:greedycraft-blood_tears>,
    <journey:eucaportalframe>,
    <journey:depthsportalframe>,
    <journey:corbaportalframe>,
    <journey:darkgem>,
    <journey:demoniceye>
], true);

GameStagesUtil.stageWyvern.addIngredients([
    <ore:ingotWyvernMetal>,
    <ore:blockWyvernMetal>,
    <ore:nuggetWyvernMetal>,
    <ore:dustWyvernMetal>,
    <gct_ores:fallen_metal_ingot>,
    <gct_ores:fallen_metal_nugget>,
    <gct_ores:fallen_metal_block>,
    <gct_ores:fallen_metal_dust>,
    <additions:greedycraft-solarium_star>,
    <additions:greedycraft-sun_totem>,
    <additions:greedycraft-solar_seed>,
    <additions:greedycraft-broken_solarium_star>,
    <additions:greedycraft-ice_star>,
    <additions:greedycraft-end_star>,
    <additions:greedycraft-canopy_star>,
    <additions:greedycraft-ice_seed>,
    <additions:greedycraft-end_seed>,
    <additions:greedycraft-canopy_seed>,
    <additions:greedycraft-broken_ice_star>,
    <additions:greedycraft-broken_end_star>,
    <additions:greedycraft-broken_canopy_star>,
    <additions:greedycraft-ice_totem>,
    <additions:greedycraft-end_totem>,
    <additions:greedycraft-canopy_totem>,
    <journey:terraniaportalframe>,
    <journey:cloudiaportalframe>,
    <journey:senterianportalframe>,
    <journey:sentryeye>,
    <additions:greedycraft-quardstate_star>
], true);

GameStagesUtil.stageAwakened.addIngredients([
    <gct_ores:relifed_metal_ingot>,
    <gct_ores:relifed_metal_block>,
    <gct_ores:relifed_metal_nugget>,
    <gct_ores:relifed_metal_dust>,
    <ore:ingotDraconicMetal>,
    <ore:blockDraconicMetal>,
    <ore:nuggetDraconicMetal>,
    <ore:dustDraconicMetal>,
    <ore:nuggetTitanium>,
    <ore:ingotTitanium>,
    <ore:oreTitanium>,
    <ore:dustTitanium>,
    <ore:blockTitanium>,
    <extrautils2:chickenring>,
    <extrautils2:angelring:*>,
    <cyclicmagic:glowing_chorus>,
    <toolprogression:magic_mushroom>,
    <ore:blockTerraAlloy>,
    <ore:ingotTerraAlloy>,
    <actuallyadditions:item_misc:15>,
    <magicfeather:magicfeather>,
    <minecraft:bedrock>,
    <ore:ingotProtonium>,
    <ore:blockProtonium>,
    <modularmachinery:blockcasing:5>,
    <ore:ingotChromasteel>,
    <ore:blockChromasteel>,
    <openmodularturrets:turret_base:4>,
    <additions:greedycraft-mistium_ore>,
    <additions:greedycraft-mistium_ingot>,
    <gct_ores:mistium_nugget>,
    <additions:greedycraft-bnightium_ore>,
    <additions:greedycraft-bnightium_ingot>,
    <gct_ores:bnightium_nugget>,
    <additions:greedycraft-oceanium_ore>,
    <additions:greedycraft-oceanium_ingot>,
    <gct_ores:oceanium_nugget>,
    <gct_ores:sky_alloy_ingot>,
    <gct_ores:sky_alloy_block>,
    <gct_ores:fire_alloy_ingot>,
    <gct_ores:fire_alloy_block>,
    <gct_ores:ice_alloy_ingot>,
    <gct_ores:ice_alloy_block>,
    <gct_ores:everite_ingot>,
    <gct_ores:everite_block>,
    <gct_ores:everite_nugget>,
    <gct_ores:everite_dust>,
    <utilityworlds:portal_garden>,
    <utilityworlds:portal_void>
], true);

GameStagesUtil.stageNether.addIngredients([
    <botanicadds:gaia_plate>,
    <botanicadds:terra_catalyst>,
    <botanicadds:gaia_shard>,
    <threng:material>,
    <threng:material:1>,
    <threng:material:2>,
    <ore:pearlFluix>,
    <ore:dustFluix>,
    <appliedenergistics2:part:140>,
    <ore:gemFluix>,
    <ore:crystalPureNetherQuartz>,
    <ore:crystalPureFluix>,
    <abyssalcraft:eoa>,
    <abyssalcraft:oc>,
    <abyssalcraft:powerstonetracker>,
    <abyssalcraft:gatewaykey>,
    <defiledlands:idol_sorrow>,
    <quark:blaze_lantern>,
    <thermalfoundation:material:1024>,
    <additions:greedycraft-shining_star>,
    <ore:eternalLifeEssence>,
    <botania:manaresource:14>,
    <ore:ingotNetherite>,
    <ore:blockNetherite>,
    <ore:gemAncientDebris>,
    <ore:oreAncientDebris>,
    <minecraft:beacon>,
    <ore:oreArdite>,
    <ore:ingotArdite>,
    <ore:dustArdite>,
    <ore:oreCobalt>,
    <ore:ingotCobalt>,
    <ore:dustCobalt>,
    <minecraft:blaze_rod>,
    <minecraft:blaze_powder>,
    <ore:dustGlowstone>,
    <additions:tcsponsors-sponsors_chest>,
    <ore:blockGlowstone>,
    <additions:greedycraft-medkit_big>,
    <additions:greedycraft-blood_sigil>,
    <ore:dustQuartz>,
    <ore:gemQuartz>,
    <ore:oreQuartz>,
    <ore:dustNetherQuartz>,
    <additions:greedycraft-bloody_sacrifice>,
    <minecraft:ender_eye>,
    <minecraft:enchanted_book>,
    <minecraft:anvil:*>,
    <enderio:item_dark_steel_sword>.withTag({RepairCost: 0}),
    <minecraft:enchanting_table>,
    <ore:ingotDemonicMetal>,
    <additions:greedycraft-awakened_eye>,
    <ore:blockDemonicMetal>,
    <botania:enchanter>,
    <thaumictinkerer:osmotic_enchanter>,
    <ore:ingotAeroite>,
    <ore:blockAeroite>,
    <ore:nuggetAeroite>,
    <ore:dustAeroite>,
    <ore:ingotAsgardium>,
    <ore:blockAsgardium>,
    <ore:nuggetAsgardium>,
    <ore:dustAsgardium>,
    <nyx:meteor_ingot>,
    <nyx:meteor_block>,
    <nyx:meteor_dust>,
    <openblocks:auto_anvil>,
    <hooked:hook:3>,
    <additions:tcsponsors-sponsor_chest_fragment>,
    <ore:ingotLumium>,
    <ore:blockLumium>,
    <ore:nuggetLumium>,
    <ore:dustLumium>,
    <ore:gearLumium>,
    <ore:ingotValkyrie>,
    <ore:nuggetValkyrie>,
    <ore:blockValkyrie>,
    <ore:essenceDestroyer>,
    <ore:ingotRavaging>,
    <defiledlands:calling_stone>,
    <ore:essenceMourner>,
    <ore:gemRemorseful>,
    <ore:slimecrystalMagma>,
    <ore:blockQuartz>,
    <minecraft:brewing_stand>,
    <ore:ingotAqualite>,
    <ore:nuggetAqualite>,
    <ore:dustAqualite>,
    <ore:oreAqualite>,
    <ore:blockAqualite>,
    <minecraft:ghast_tear>,
    <ore:boneWithered>,
    <netherex:wither_bone>,
    <darkutils:material>,
    <ore:dropofevil>,
    <quark:black_ash>,
    <minecraft:magma_cream>,
    <modularmachinery:blockcasing:2>,
    <ore:ingotDurasteel>,
    <ore:blockDurasteel>,
    <openmodularturrets:turret_base:2>,
    <minecraft:quartz>.withTag({display: {Lore: ["§5§lEPIC"],Name: "§5Overflux Capacitor"}}),
    <divinerpg:rupee_ingot>,
    <divinerpg:rupee_block>,
    <divinerpg:rupee_nugget>,
    <divinerpg:rupee_ore>,
    <divinerpg:arlemite_ingot>,
    <divinerpg:arlemite_block>,
    <divinerpg:arlemite_nugget>,
    <divinerpg:arlemite_ore>,
    <divinerpg:realmite_ingot>,
    <divinerpg:realmite_block>,
    <divinerpg:realmite_nugget>,
    <divinerpg:realmite_ore>,
    <divinerpg:bloodgem_block>,
    <divinerpg:bloodgem>,
    <divinerpg:bloodgem_block>,
    <divinerpg:netherite_ingot>,
    <divinerpg:netherite_block>,
    <divinerpg:netherite_nugget>,
    <divinerpg:netherite_ore>,
    <divinerpg:raw_arcanium>,
    <divinerpg:arcanium_block>,
    <divinerpg:arcana_portal_frame>,
    <divinerpg:teleportation_crystal>,
    <divinerpg:teleportation_star>.withTag({}),
    <divinerpg:molten_shards>,
    <divinerpg:molten_stone>,
    <divinerpg:shadow_stone>,
    <divinerpg:hellstone_ingot>,
    <divinerpg:shadow_bar>,
    <divinerpg:infernal_flame>,
    <divinerpg:mysterious_clock>,
    <divinerpg:aquatic_blaze_rod>,
    <divinerpg:bluefire_stone>,
    <divinerpg:fury_fire>,
    <divinerpg:netherite_chunk>,
    <divinerpg:purple_blaze>,
    <divinerpg:shadow_coins>,
    <divinerpg:snow_globe>,
    <divinerpg:arcanium_attractor>,
    <divinerpg:arcanium_reflector>,
    <divinerpg:divine_accumulator>,
    <divinerpg:ghostbane>,
    <divinerpg:orb_of_light>,
    <divinerpg:frozen_charge>,
    <divinerpg:wizards_book>,
    <divinerpg:weak_arcana_potion>,
    <divinerpg:strong_arcana_potion>,
    <divinerpg:arcanium>,
    <divinerpg:collector>,
    <divinerpg:collector_fragments>,
    <divinerpg:dungeon_tokens>,
    <additions:greedycraft-iciricium_ingot>,
    <additions:greedycraft-iciricium_ore>,
    <jaopca:block_blockiciricium>,
    <jaopca:item_dusticiricium>,
    <abyssalcraft:cingot>,
    <abyssalcraft:ingotblock:1>,
    <abyssalcraft:ingotnugget:1>,
    <acintegration:dust:1>,
    <additions:twilightaddon-refined_twilight_gem>,
    <tconstruct:ingots:2>,
    <tconstruct:metal:2>,
    <tconstruct:nuggets:2>,
    <additions:greedycraft-iciricium_scroll>,
    <additions:greedycraft-gem_of_sing>,
    <additions:greedycraft-balancite_ingot>,
    <additions:greedycraft-balancite_block>
], true);

GameStagesUtil.stageNether.addIngredients([
    <ore:nitor>
], false);

GameStagesUtil.stageCosmic.addIngredients([
    <gct_ores:ruled_draconium_ingot>,
    <gct_ores:ruled_draconium_block>,
    <gct_ores:ruled_draconium_dust>,
    <gct_ores:ruled_draconium_nugget>,
    <gct_ores:equipment_witherium_ingot>,
    <gct_ores:equipment_witherium_block>,
    <gct_ores:equipment_witherium_dust>,
    <gct_ores:equipment_witherium_nugget>,
    <additions:taigaddon-antimony_ore>,
    <additions:taigaddon-breakium_ore>,
    <additions:taigaddon-fraxinium_ore>,
    <additions:taigaddon-circlium_ore>,
    <additions:taigaddon-cloudite_ore>,
    <additions:taigaddon-dawnium_ore>,
    <additions:taigaddon-dimesium_ore>,
    <additions:taigaddon-fenzium_ore>,
    <additions:taigaddon-rubium_ore>,
    <additions:taigaddon-gallium_ore>,
    <additions:taigaddon-gallium_ore>,
    <additions:taigaddon-indium_ore>,
    <additions:taigaddon-lighteum_ore>,
    <additions:taigaddon-losessium_ore>,
    <additions:taigaddon-manarium_ore>,
    <additions:taigaddon-mangisite_ore>,
    <additions:taigaddon-molybdenum_ore>,
    <additions:taigaddon-oneo_ore>,
    <additions:taigaddon-rapesesium_ore>,
    <additions:taigaddon-cestium_ore>,
    <additions:taigaddon-sissidium_ore>,
    <additions:taigaddon-soilium_ore>,
    <additions:taigaddon-stripium_ore>,
    <additions:taigaddon-swinium_ore>,
    <additions:taigaddon-technetium_ore>,
    <additions:taigaddon-togrium_ore>,
    <additions:taigaddon-ttwo_ore>,
    <additions:taigaddon-vanadium_ore>,
    <additions:taigaddon-xenidium_ore>,
    <additions:taigaddon-yoggleseum_ore>,
    <additions:antimony_ingot>,
    <additions:babyrite_ingot>,
    <additions:breakium_ingot>,
    <additions:cestium_ingot>,
    <additions:cheatieum_ingot>,
    <additions:circlium_ingot>,
    <additions:clearite_ingot>,
    <additions:cloudite_ingot>,
    <additions:dawnium_ingot>,
    <additions:depthite_ingot>,
    <additions:dimesium_ingot>,
    <additions:errorite_ingot>,
    <additions:fallenium_ingot>,
    <additions:fenzium_ingot>,
    <additions:flashite_ingot>,
    <additions:fraxinium_ingot>,
    <additions:ghostite_ingot>,
    <additions:godiarite_ingot>,
    <additions:heavenite_ingot>,
    <additions:idiessite_ingot>,
    <additions:indium_ingot>,
    <additions:leadite_ingot>,
    <additions:lighteum_ingot>,
    <additions:losessium_ingot>,
    <additions:lovaquite_ingot>,
    <additions:manarium_ingot>,
    <additions:mangisite_ingot>,
    <additions:martisite_ingot>,
    <additions:moltenium_ingot>,
    <additions:molybdenum_ingot>,
    <additions:numbereum_ingot>,
    <additions:oneo_ingot>,
    <additions:overlaite_ingot>,
    <additions:panloeseum_ingot>,
    <additions:phoenixite_ingot>,
    <additions:rainite_ingot>,
    <additions:ranglium_ingot>,
    <additions:rangolarite_ingot>,
    <additions:rapesesium_ingot>,
    <additions:rubium_ingot>,
    <additions:sissidium_ingot>,
    <additions:soilium_ingot>,
    <additions:stripium_ingot>,
    <additions:swinium_ingot>,
    <additions:technetium_ingot>,
    <additions:tierite_ingot>,
    <additions:togrium_ingot>,
    <additions:ttwo_ingot>,
    <additions:typhoonite_ingot>,
    <additions:vanadium_ingot>,
    <additions:waringlium_ingot>,
    <additions:wefenium_ingot>,
    <additions:xenidium_ingot>,
    <additions:yoggleseum_ingot>,
    <gct_ores:balanced_matrix_ingot>
], false);

GameStagesUtil.stageChaotic.addIngredients([
    <ore:ingotChaoticMetal>,
    <ore:blockChaoticMetal>,
    <ore:nuggetChaoticMetal>,
    <ore:dustChaoticMetal>,
    <ore:ingotCosmilite>,
    <ore:blockCosmilite>,
    <additions:greedycraft-flux_singularity>,
    <additions:greedycraft-mana_singularity>,
    <additions:greedycraft-experience_singularity>,
    <additions:greedycraft-matter_singularity>,
    <additions:greedycraft-anti_entropy_matter>,
    <eternalsingularity:eternal_singularity>,
    <gct_ores:chaotic_draconium_ingot>,
    <gct_ores:chaotic_draconium_block>,
    <gct_ores:chaotic_draconium_dust>,
    <gct_ores:chaotic_draconium_nugget>,
    <gct_ores:stormy_witherium_ingot>,
    <gct_ores:stormy_witherium_block>,
    <gct_ores:stormy_witherium_dust>,
    <gct_ores:stormy_witherium_nugget>,
    <ageofminecraft:withered_nether_star>,
    <gct_ores:creepy_wither_doll>,
    <ore:ingotHarcadium>,
    <ore:blockHarcadium>,
    <ore:nuggetHarcadium>,
    <ore:dustHarcadium>,
    <ore:oreHarcadium>,
    <ore:gemVoidEssence>,
    <ore:nuggetVoidEssence>,
    <ore:blockVoidEssence>,
    <ore:oreVoidEssence>,
    <ore:dustVoidEssence>,
    <ore:ingotAdamantium>,
    <ore:nuggetAdamantium>,
    <ore:blockAdamantium>,
    <ore:oreAdamantium>,
    <ore:dustAdamantium>,
    <gct_ores:command_core>,
    <minecraft:command_block>,
    <gct_ores:creepy_witherstorm_doll>,
    <gct_ores:stormy_shard>,
    <tiths:redins>,
    <tiths:corundum>,
    <tiths:pyrophyllite>,
    <tiths:lizanite>,
    <tiths:spinel>,
    <tiths:tourmaline>,
    <tiths:opal>,
    <tiths:cordierite>,
    <tiths:prehnite>,
    <tiths:ore_redins>,
    <tiths:ore_corundum>,
    <tiths:ore_pyrophyllite>,
    <tiths:ore_lizanite>,
    <tiths:ore_spinel>,
    <tiths:ore_tourmaline>,
    <tiths:ore_opal>,
    <tiths:ore_cordierite>,
    <tiths:ore_prehnite>,
    <tiths:block_redins>,
    <tiths:block_corundum>,
    <tiths:block_pyrophyllite>,
    <tiths:block_lizanite>,
    <tiths:block_spinel>,
    <tiths:block_tourmaline>,
    <tiths:block_opal>,
    <tiths:block_cordierite>,
    <tiths:block_prehnite>,
    <gct_ores:hermaphroditic_artifact>,
    <additions:taigaddon-compressite_ingot>,
    <additions:taigaddon-astronicium_ingot>,
    <additions:taigaddon-raisium_ingot>,
    <additions:taigaddon-heaven_gem_shard1>,
    <additions:taigaddon-heaven_gem_shard2>,
    <additions:taigaddon-heaven_gem>,
    <additions:taigaddon-ameralite>,
    <additions:taigaddon-lerdite>
], true);

GameStagesUtil.stageStormBreaker.addIngredients([
    <gct_ores:stormy_core>
], true);

GameStagesUtil.stageStormy.addIngredients([
    <gct_ores:stormy_metal_ingot>,
    <gct_ores:stormy_metal_block>,
    <gct_ores:stormy_metal_nugget>,
    <gct_ores:stormy_metal_dust>    
], true);

GameStagesUtil.stageNoviceEngineer.addIngredients([
    <actuallyadditions:block_battery_box>,
    <actuallyadditions:block_item_viewer_hopping>,
    <actuallyadditions:block_bio_reactor>,
    <actuallyadditions:block_farmer>,
    <actuallyadditions:block_empowerer>,
    <actuallyadditions:block_shock_suppressor>,
    <actuallyadditions:block_display_stand>,
    <actuallyadditions:block_player_interface>,
    <actuallyadditions:block_item_viewer>,
    <actuallyadditions:block_crystal_empowered:*>,
    <actuallyadditions:block_enervator>,
    <actuallyadditions:block_energizer>,
    <actuallyadditions:block_lava_factory_controller>,
    <actuallyadditions:block_canola_press>,
    <actuallyadditions:block_coffee_machine>,
    <actuallyadditions:block_atomic_reconstructor>,
    <enderio:item_dark_steel_sword>
], true);

GameStagesUtil.stageHardmode.addIngredients([
    <ore:essenceTier6>,
    <minecraft:chorus_fruit_popped>,
    <tconstruct:materials:19>,
    <tconstruct:materials:18>,
    <actuallyadditions:block_phantom_booster>,
    <actuallyadditions:block_phantom_placer>,
    <actuallyadditions:block_phantomface>,
    <actuallyadditions:block_phantom_energyface>,
    <actuallyadditions:block_phantom_liquiface>,
    <actuallyadditions:block_phantom_redstoneface>,
    <actuallyadditions:item_disenchanting_lens>,
    <additions:greedycraft-forbidden_bible>,
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}),
    <extrabotany:bottledflame>,
    <additions:greedycraft-true_blood_sigil>,
    <additions:greedycraft-ordinary_medal>,
    <abyssalcraft:gatewaykeyjzh>,
    <minecraft:dragon_egg>,
    <additions:greedycraft-medkit_super>,
    <additions:greedycraft-wither_soul>,
    <additions:greedycraft-dragon_soul>,
    <twilightforest:shield_scepter>,
    <tconevo:material>,
    <ore:blockFusionMatrix>,
    <additions:greedycraft-creative_shard>,
    <ore:ingotCryonium>,
    <ore:blockCryonium>,
    <ore:oreCryonium>,
    <ore:dustCryonium>,
    <ore:nuggetCryonium>,
    <plustic:osgloglasingot>,
    <minecraft:elytra:*>,
    <colytra:elytra_bauble:*>,
    <plustic:osmiridiumingot>,
    <biomesoplenty:gem:*>,
    <ore:ingotCytosinite>,
    <ore:blockCytosinite>,
    <ore:oreCytosinite>,
    <ore:nuggetCytosinite>,
    <ore:dustCytosinite>,
    <ore:ingotShadowium>,
    <ore:blockShadowium>,
    <ore:nuggetShadowium>,
    <ore:dustShadowium>,
    <extrautils2:teleporter:1>,
    <openblocks:hang_glider>,
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short}]}),
    <actuallyadditions:item_tele_staff>,
    <actuallyadditions:block_misc:8>,
    <ore:oreRuby>,
    <ore:orePeridot>,
    <ore:oreTopaz>,
    <ore:oreTanzanite>,
    <ore:oreMalachite>,
    <ore:oreSapphire>,
    <ore:oreAmber>,
    <biomesoplenty:terrestrial_artifact>,
    <ore:blockEthaxium>,
    <ore:ingotEthaxium>,
    <ore:nuggetEthaxium>,
    <ore:ingotEthaxiumBrick>,
    <ore:gemEnderBiotite>,
    <tofucraft:swordkinu>,
    <tofucraft:swordmomen>,
    <tofucraft:swordsolid>,
    <tofucraft:swordmetal>,
    <tofucraft:sworddiamond>,
    <netherex:amethyst_ore>,
    <netherex:amethyst_crystal>,
    <netherex:amethyst_block>,
    <modularmachinery:blockcasing:3>,
    <ore:ingotAeonsteel>,
    <ore:blockAeonsteel>,
    <openmodularturrets:turret_base:3>,
    <additions:greedycraft-guaninite_ore>,
    <additions:greedycraft-guaninite_ingot>,
    <gct_ores:guaninite_nugget>,
    <additions:greedycraft-adeninite_ore>,
    <additions:greedycraft-adeninite_ingot>,
    <gct_ores:adeninite_nugget>,
    <additions:greedycraft-thyminite_ore>,
    <additions:greedycraft-thyminite_ingot>,
    <gct_ores:thyminite_nugget>,
    <additions:greedycraft-aetherium_ore>,
    <additions:greedycraft-aetherium_ingot>,
    <gct_ores:aetherium_nugget>,
    <additions:greedycraft-snowingium_ore>,
    <additions:greedycraft-snowingium_ingot>,
    <gct_ores:snowingium_nugget>,
    <additions:greedycraft-lavarite_ore>,
    <additions:greedycraft-lavarite_ingot>,
    <gct_ores:lavarite_nugget>,
    <gct_ores:genite_ingot>,
    <gct_ores:genite_block>,
    <gct_ores:genite_dust>,
    <gct_ores:genite_nugget>,
    <divinerpg:twilight_stone>,
    <divinerpg:eden_ore>,
    <divinerpg:wildwood_ore>,
    <divinerpg:apalachia_ore>,
    <divinerpg:skythern_ore>,
    <divinerpg:mortum_ore>,
    <divinerpg:eden_block>,
    <divinerpg:wildwood_block>,
    <divinerpg:apalachia_block>,
    <divinerpg:skythern_block>,
    <divinerpg:mortum_block>,
    <divinerpg:call_of_the_watcher>,
    <divinerpg:horde_horn>,
    <divinerpg:eden_soul>,
    <divinerpg:wildwood_soul>,
    <divinerpg:apalachia_soul>,
    <divinerpg:skythern_soul>,
    <divinerpg:mortum_soul>,
    <divinerpg:eden_heart>,
    <divinerpg:wildwood_heart>,
    <divinerpg:apalachia_heart>,
    <divinerpg:skythern_heart>,
    <divinerpg:mortum_heart>,
    <divinerpg:eden_gem>,
    <divinerpg:wildwood_gem>,
    <divinerpg:apalachia_gem>,
    <divinerpg:skythern_gem>,
    <divinerpg:mortum_gem>,
    <divinerpg:eden_chunk>,
    <divinerpg:wildwood_chunk>,
    <divinerpg:apalachia_chunk>,
    <divinerpg:skythern_chunk>,
    <divinerpg:mortum_chunk>,
    <divinerpg:eden_dust>,
    <divinerpg:wildwood_dust>,
    <divinerpg:apalachia_dust>,
    <divinerpg:skythern_dust>,
    <divinerpg:mortum_dust>,
    <divinerpg:eden_fragments>,
    <divinerpg:wildwood_fragments>,
    <divinerpg:apalachia_fragments>,
    <divinerpg:skythern_fragments>,
    <divinerpg:mortum_fragments>,
    <divinerpg:karot_crystal>,
    <divinerpg:reyvor_crystal>,
    <divinerpg:densos_crystal>,
    <divinerpg:soul_fiend_crystal>,
    <divinerpg:twilight_demon_crystal>,
    <divinerpg:vamacheron_crystal>,
    <divinerpg:base_spawn_crystal>,
    <divinerpg:eden_sparkles>,
    <additions:greedycraft-twilight_crystal_ingot>,
    <divinerpg:twilight_clock>,
    <divinerpg:divine_rock>,
    <gct_mobs:apocalypse_ruin>,
    <gct_mobs:apocalypsium_ingot>,
    <gct_mobs:apocalypsium_block>,
    <minecraft:elytra>.withTag({Unbreakable: 1, HideFlags: 63, display: {Lore: ["Sewn in India with ordinary cotton string, but sewn VERY well."], Name: "Glider"}})
], true);

GameStagesUtil.stageInfinity.addIngredients([
    <thaumcraft:thaumonomicon:1>,
    <additions:greedycraft-pioneer_medal>,
    <additions:greedycraft-greedy_medal>,
    <ore:blockCompressedInfinity>,
    <ore:blockDoubleCompressedInfinity>,
    <extrabotany:managenerator>,
    <ambience:horn>,
    <ambience:ocarina>,
    <additions:greedycraft-creative_soul>,
    <additions:greedycraft-difficulty_changer>,
    <additions:greedycraft-creative_controller>,
    <minecraft:diamond_sword>.withTag({ench: [{lvl: 10 as short}]}),
    <minecraft:diamond_pickaxe>.withTag({ench: [{lvl: 10 as short}]}),
    <minecraft:diamond_helmet>.withTag({ench: [{lvl: 10 as short}]}),
    <minecraft:diamond_chestplate>.withTag({ench: [{lvl: 10 as short}]}),
    <minecraft:diamond_leggings>.withTag({ench: [{lvl: 10 as short}]}),
    <minecraft:diamond_boots>.withTag({ench: [{lvl: 10 as short}]}),
    <additions:greedycraft-infinity_block_block>,
    <additions:greedycraft-infinity_block_block_block>,
    <additions:greedycraft-difficulty_changer>,
    <draconicevolution:draconic_staff_of_power>,
    <extrautils2:rainbowgenerator:2>,
    <extrautils2:rainbowgenerator:1>,
    <extrautils2:rainbowgenerator>,
    <solarflux:solar_panel_infinity>,
    <actuallyadditions:item_growth_ring>
], true);

GameStagesUtil.stageGraduated.addIngredients([
    <extrautils2:creativeenergy>,
    <extrautils2:passivegenerator:6>,
    <extrautils2:itemcreativedestructionwand>,
    <extrautils2:itemcreativebuilderswand>,
    <extrautils2:creativeharvest>,
    <draconicevolution:draconium_capacitor:2>,
    <appliedenergistics2:creative_storage_cell>,
    <thermalcultivation:watering_can:32000>,
    <thermalinnovation:injector:32000>,
    <botania:pool:1>,
    <mysticalagradditions:stuff:69>,
    <additions:greedycraft-creative_controller>,
    <danknull:dank_null_6>,
    <projecte:item.pe_time_watch>,
    <projecte:item.pe_tome>,
    <thermalfoundation:upgrade:256>,
    <chancecubes:creative_pendant>,
    <wct:wct_creative>,
    <wit:wit_creative>,
    <wft:wft_creative>,
    <storagedrawers:upgrade_creative:1>,
    <extrautils2:spike_creative>,
    <extrautils2:creativechest>,
    <thaumicwonders:creative_essentia_jar>,
    <randomthings:creativeplayerinterface>,
    <draconicevolution:creative_exchanger>,
    <randomthings:spectrecoil_genesis>,
    <additions:greedycraft-ocd_certificate>,
    <ae2wtlib:wut_creative>,
    <ae2wtlib:wut_creative>.withTag({StoredTerminals: [{ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wct:wct_creative", Count: 1 as byte, Damage: 0 as short}, {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wit:wct_creative", Count: 1 as byte, Damage: 0 as short}, {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wit:wit_creative", Count: 1 as byte, Damage: 0 as short}, {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wft:wft_creative", Count: 1 as byte, Damage: 0 as short}], IsInRange: 0 as byte, SelectedTerminal: 0, internalCurrentPower: 1600000.0})
]);

GameStagesUtil.stageAbyssalConquerer.addIngredients([
    <minecraft:nether_star>.withTag({display:{Name:"North Star"}}),
    <ore:netherStar>,
    <ore:skullWitherSkeleton>,
    <ore:ingotMirion>,
    <ore:blockMirion>
], true);

GameStagesUtil.stageWitherSlayer.addIngredients([
    <botanicadds:gaiasteel_ingot>,
    <botanicadds:gaiasteel_block>,
    <additions:greedycraft-bravery_certificate>,
    <enderio:block_reinforced_obsidian>,
    <mysticalagriculture:witherproof_block>,
    <mysticalagriculture:witherproof_glass>,
    <additions:greedycraft-ender_charm>,
    <ore:ingotEvilMetal>,
    <ore:blockEvilMetal>,
    <rftools:shield_template_block:*>,
    <rftools:shield_block1>,
    <rftools:shield_block2>,
    <minecraft:end_crystal>,
    <ore:ingotStellarAlloy>,
    <ore:blockStellarAlloy>,
    <ore:nuggetStellarAlloy>,
    <abyssalcraft:soulreaper>,
    <additions:greedycraft-soul_of_slider>,
    <additions:greedycraft-gem_of_valkyrie>,
    <additions:greedycraft-sun_crystal>,
    <journey:flamecoin>,
    <additions:greedycraft-chillinium_ingot>,
    <additions:greedycraft-chillinium_ore>,
    <journey:boilingportalframe>,
    <journey:frozenportalframe>,
    <journey:hellstoneore>,
    <journey:hellstoneingot>,
    <journey:summoningtable>,
    <additions:greedycraft-hellite_ingot>
], true);

GameStagesUtil.stageNoviceWizard.addIngredients([
    <thaumcraft:infusion_matrix>,
    <thaumcraft:plate:2>,
    <thaumcraft:ingot>,
    <ore:ingotBoundMetal>,
    <ore:blockBoundMetal>,
    <ore:nuggetBoundMetal>,
    <ore:dustBoundMetal>,
    <ore:ingotSentientMetal>,
    <ore:blockSentientMetal>,
    <ore:nuggetSentientMetal>,
    <ore:dustSentientMetal>,
    <thaumcraft:mechanism_complex>
], false);

GameStagesUtil.stageSkilledWizard.addIngredients([
    <thaumadditions:void_thaumometer>,
    <thaumadditions:crystal_bore>,
    <thaumcraft:matrix_speed>,
    <thaumcraft:matrix_cost>,
    <thaumcraft:stabilizer>,
    <astralsorcery:blockstarlightinfuser>,
    <astralsorcery:blockattunementaltar>,
    <astralsorcery:blockaltar:3>,
    <astralsorcery:blockprism>,
    <astralsorcery:itemshiftingstar>,
    <astralsorcery:itemcraftingcomponent:4>,
    <additions:greedycraft-arcane_crystal_ball>,
    <ore:blockAstralMetal>,
    <ore:ingotAstralMetal>,
    <ore:blockCrimsonite>,
    <ore:ingotCrimsonite>
], false);

GameStagesUtil.stageMasterWizard.addIngredients([
    <thaumcraft:primordial_pearl>,
    <additions:greedycraft-purifying_pill>,
    <additions:greedycraft-energy_matter_core>,
    <thaumcraft:plate:3>,
    <thaumcraft:ingot:1>,
    <thaumcraft:void_seed>,
    <ore:ingotPrimordial>,
    <ore:blockPrimordial>,
    <ore:nuggetPrimordial>,
    <ore:dustPrimordial>,
    <thaumcraft:causality_collapser>,
    <thaumadditions:mithrillium_ingot>,
    <thaumadditions:adaminite_ingot>,
    <thaumadditions:mithminite_ingot>,
    <thaumadditions:mithrillium_plate>,
    <thaumadditions:adaminite_plate>,
    <thaumadditions:mithminite_plate>,
    <thaumicwonders:void_beacon>,
    <thaumicwonders:coalescence_matrix_precursor>,
    <thaumicwonders:meaty_orb>,
    <thaumadditions:mithrillium_nugget>,
    <thaumadditions:adaminite_nugget>,
    <thaumadditions:mithminite_nugget>,
    <thaumadditions:mithminite_smelter>,
    <thaumadditions:adaminite_smelter>,
    <thaumadditions:mithrillium_smelter>,
    <thaumadditions:void_anvil>,
    <thaumadditions:shadow_enchanter>,
    <thaumicwonders:flux_capacitor>,
    <thaumicwonders:coalescence_matrix>
], false);

GameStagesUtil.stageEnderCharm.addIngredients([
    <minecraft:end_rod>,
    <minecraft:end_bricks>,
    <minecraft:end_portal_frame>,
    <prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "EnderGateway"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, Damage: 0 as short}),
    <ore:endstone>,
    <ore:cropChorusfruit>,
    <hooked:hook:4>,
    <divinerpg:ender_shards>,
    <divinerpg:ender_stone>,
    <divinerpg:watching_eye>,
    <divinerpg:legendary_ender_eye>
], true);

GameStagesUtil.stageSkilledEngineer.addIngredients([
    <ore:ingotIridium>,
    <ore:nuggetIridium>,
    <ore:blockIridium>,
    <ore:oreIridium>,
    <ore:dustIridium>,
    <ore:dustPlatinum>,
    <ore:ingotPlatinum>,
    <ore:nuggetPlatinum>,
    <ore:orePlatinum>,
    <solarflux:solar_panel_5>,
    <solarflux:solar_panel_6>,
    <solarflux:solar_panel_7>,
    <ore:blockPlatinum>,
    <rftools:builder>,
    <extrautils2:passivegenerator:*>,
    <extrautils2:machine:*>,
    <randomthings:biomeradar>,
    <randomthings:redstoneobserver>,
    <randomthings:irondropper>,
    <randomthings:onlinedetector>,
    <randomthings:dyeingmachine>,
    <randomthings:enderbridge>,
    <randomthings:prismarineenderbridge>,
    <randomthings:enderanchor>,
    <randomthings:imbuingstation>,
    <randomthings:spectreblock>,
    <randomthings:analogemitter>,
    <randomthings:fluiddisplay>,
    <randomthings:advancedredstoneinterface>,
    <randomthings:fertilizeddirt>,
    <randomthings:playerinterface>,
    <randomthings:basicredstoneinterface>,
    <randomthings:rainshield>,
    <randomthings:spectrecoil_number>,
    <randomthings:spectrecoil_normal>,
    <randomthings:spectrecoil_redstone>,
    <randomthings:spectrecoil_ender>,
    <ore:ingotEnderium>,
    <ore:blockEnderium>,
    <ore:nuggetEnderium>,
    <ore:dustEnderium>,
    <ore:gearEnderium>,
    <ore:gemGelid>,
    <ore:blockGelidGem>,
    <ore:blockGelidEnderium>,
    <ore:ingotGelidEnderium>,
    <ore:nuggetGelidEnderium>,
], true);

GameStagesUtil.stageMasterEngineer.addIngredients([
    <actuallyadditions:block_directional_breaker>,
    <extrautils2:quarry>,
    <extrautils2:quarryproxy>,
    <ore:alloyUltimate>,
    <ore:circuitUltimate>,
    <solarflux:solar_panel_8>,
    <enderio:block_killer_joe>,
    <cyclicmagic:block_user>,
    <thaumictinkerer:animation_tablet>,
    <actuallyadditions:block_miner>,
    <solarflux:solar_panel_wyvern>,
    <solarflux:solar_panel_draconic>,
    <solarflux:solar_panel_chaotic>,
    <solarflux:solar_panel_neutronium>,
    <actuallyadditions:block_breaker>,
    <actuallyadditions:block_phantom_breaker>,
    <actuallyadditions:block_fluid_placer>,
    <actuallyadditions:block_dropper>,
    <actuallyadditions:block_fluid_collector>,
    <rftools:shield_block3>,
    <rftools:shield_block4>
], true);

GameStagesUtil.stageChallenger1.addIngredients([
    <ore:seedsTier1>,
    <ore:essenceInferium>,
    <ore:ingotInferium>,
    <tinymobfarm:stone_farm>
], true);

GameStagesUtil.stageChallenger2.addIngredients([
    <ore:seedsTier2>,
    <ore:essencePrudentium>,
    <ore:ingotPrudentium>,
    <tinymobfarm:iron_farm>
], true);

GameStagesUtil.stageChallenger3.addIngredients([
    <ore:seedsTier3>,
    <ore:essenceIntermedium>,
    <ore:ingotIntermedium>,
    <tinymobfarm:gold_farm>
], true);

GameStagesUtil.stageChallenger4.addIngredients([
    <ore:seedsTier4>,
    <ore:essenceSuperium>,
    <ore:ingotSuperium>,
    <tinymobfarm:diamond_farm>
], true);

GameStagesUtil.stageChallenger5.addIngredients([
    <ore:seedsTier5>,
    <ore:essenceSupremium>,
    <ore:ingotSupremium>,
    <tinymobfarm:emerald_farm>
], true);

GameStagesUtil.stageChallenger6.addIngredients([
    <ore:essenceInsanium>,
    <ore:ingotInsanium>,
    <tinymobfarm:inferno_farm>
], true);

GameStagesUtil.stageChallenger7.addIngredients([
    <ore:seedsTier6>,
    <tinymobfarm:ultimate_farm>
], true);

GameStagesUtil.stageFearlessMan.addIngredients([
    <abyssalcraft:dreadkey>,
    <abyssalcraft:gatewaykeydl>,
    <abyssalcraft:dreadshard>,
    <ore:ingotDreadium>
], true);

GameStagesUtil.stageGatekeeper.addIngredients([
    <additions:greedycraft-sanite_ore>
], true);

GameStagesUtil.stageSkilledEngineer.addModId(["mekanism", "mekanismgenerators"]);
GameStagesUtil.stageHardmode.addModId(["avaritia", "draconicevolution", "extrabotany", "projecte", "projectex", "taiga", "theaurorian"]);
GameStagesUtil.stageNether.addModId(["aether_legacy", "cyclicmagic", "touhou_little_maid", "aeble"]);
GameStagesUtil.stageNoviceWizard.addModId(["bloodmagic", "bloodarsenal", "animus"]);
GameStagesUtil.stageNoviceEngineer.addModId(["enderio"]);
GameStagesUtil.stageWyvern.addModId(["blue_skies"]);
GameStagesUtil.stageChaoticDominator.addModId(["extendedcrafting"]);
GameStagesUtil.stageGatekeeper.addModId(["gct_aby"]);
GameStagesUtil.stageEpicEngineer.addModId(["nuclearcraft"]);
GameStagesUtil.stageBetweenlandTraveller.addModId(["thebetweenlands"]);

GameStagesUtil.stageGettingStarted.addRecipeName("tinkersurvival:cobblestone");
