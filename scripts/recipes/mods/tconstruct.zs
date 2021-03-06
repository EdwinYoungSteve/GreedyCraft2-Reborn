/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 1000
#no_fix_recipe_book

import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.tconstruct.Alloy;
import mods.tconstruct.Fuel;

val VOLUME_BLOCK = 1296;
val VOLUME_INGOT = 144;
val VOLUME_NUGGET = 16;

//Alloy.removeRecipe(<liquid:mirion> * 72, [<liquid:terrasteel> * 18, <liquid:manasteel> * 18, <liquid:elementium> * 18, <liquid:cobalt> * 18, <liquid:glass> * 125]);
//Alloy.removeRecipe(<liquid:mirion>);

Alloy.removeRecipe(<liquid:yrdeen_fluid>);

Alloy.addRecipe(<liquid:yrdeen_fluid> * 3, [<liquid:uru_fluid> * 3, <liquid:valyrium_fluid> * 3, <liquid:signalum>]);
Alloy.addRecipe(<liquid:adamant_fluid> * 3, [<liquid:nihilite_fluid> * 1, <liquid:iox_fluid> * 3]);
Alloy.addRecipe(<liquid:emerald> * 2, [<liquid:experience> * 3, <liquid:redstone> * 2, <liquid:glowstone> * 2]);
Alloy.addRecipe(<liquid:end_steel> * (VOLUME_INGOT * 2), [<liquid:obsidian> * (VOLUME_INGOT * 2), <liquid:dark_steel> * (VOLUME_INGOT * 2), <liquid:ender> * 250]);
Alloy.addRecipe(<liquid:experience> * 16, [<liquid:blood> * 8, <liquid:emerald> * 1, <liquid:gold> * 1]);
Alloy.addRecipe(<liquid:fierymetal> * 2, [<liquid:iron> * 2, <liquid:pyrotheum> * 1, <liquid:lava> * 1]);
Alloy.addRecipe(<liquid:fluxed_electrum> * (VOLUME_INGOT * 2), [<liquid:electrum> * (VOLUME_INGOT * 2), <liquid:redstone> * 100]);
Alloy.addRecipe(<liquid:fusion_matrix> * 2, [<liquid:manyullyn> * 2, <liquid:adamant_fluid> * 1, <liquid:enderium> * 2]);
Alloy.addRecipe(<liquid:liquid_chocolate> * 2, [<liquid:chocolate_liquor> * 1, <liquid:milk> * 1]);
Alloy.addRecipe(<liquid:modularium> * (VOLUME_INGOT * 2), [<liquid:conductive_iron> * VOLUME_INGOT, <liquid:bronze> * VOLUME_INGOT]);
Alloy.addRecipe(<liquid:modularium> * (VOLUME_INGOT * 2), [<liquid:iron> * VOLUME_INGOT, <liquid:bronze> * VOLUME_INGOT, <liquid:redstone> * 100]);
Alloy.addRecipe(<liquid:netherite> * VOLUME_INGOT, [<liquid:gold> * (VOLUME_INGOT * 4), <liquid:ancient_debris> * (VOLUME_INGOT * 4)]);
Alloy.addRecipe(<liquid:scorched> * VOLUME_INGOT, [<liquid:lava> * VOLUME_INGOT, <liquid:stone> * VOLUME_INGOT]);
Alloy.addRecipe(<liquid:stainless_steel> * (VOLUME_INGOT * 4), [<liquid:manganese_steel> * (VOLUME_INGOT * 4), <liquid:nickel> * VOLUME_INGOT, <liquid:chromium> * VOLUME_INGOT]);
Alloy.addRecipe(<liquid:manganese_steel> * (VOLUME_INGOT * 2), [<liquid:steel> * (VOLUME_INGOT * 2), <liquid:manganese> * VOLUME_INGOT]);
Alloy.addRecipe(<liquid:terra_alloy> * 2, [<liquid:cytosinite> * 1, <liquid:cryonium> * 1, <liquid:infernium> * 1, <liquid:titanium> * 1]);
//Alloy.addRecipe(<liquid:mirion> * 72, [<liquid:terrasteel> * 18, <liquid:manasteel> * 18, <liquid:elementium> * 18, <liquid:gaia> * 18]);
Alloy.addRecipe(<liquid:gelid_enderium> * 144, [<liquid:enderium> * 144, <liquid:cryotheum> * 1000]);
Alloy.addRecipe(<liquid:reditrite> * 4, [<liquid:obsidiorite_fluid> * 9, <liquid:osram_fluid> * 2]);
Alloy.addRecipe(<liquid:densite> * 1, [<liquid:osram_fluid> * 1, <liquid:seismum_fluid> * 1]); 
Alloy.addRecipe(<liquid:dyonite_fluid> * 3, [<liquid:triberium_fluid> * 3, <liquid:fractum_fluid> * 1, <liquid:densite> * 1]);
Alloy.addRecipe(<liquid:iox_fluid> * 1, [<liquid:eezo_fluid> * 2, <liquid:abyssum_fluid> * 2, <liquid:reditrite> * 4]);
Alloy.addRecipe(<liquid:sky_alloy> * 2, [<liquid:aetherium>, <liquid:mistium>, <liquid:canopium>, <liquid:thyminite>]);
Alloy.addRecipe(<liquid:fire_alloy> * 2, [<liquid:lavarite>, <liquid:plasmarite>, <liquid:bnightium>, <liquid:guaninite>]);
Alloy.addRecipe(<liquid:ice_alloy> * 2, [<liquid:snowingium>, <liquid:freezite>, <liquid:oceanium>, <liquid:adeninite>]);
Alloy.addRecipe(<liquid:everite> * 1, [<liquid:terra_alloy>, <liquid:sky_alloy>, <liquid:fire_alloy>, <liquid:ice_alloy>]);
Alloy.addRecipe(<liquid:blackiron> * 1, [<liquid:iron>, <liquid:neutronium>]);
Alloy.addRecipe(<liquid:heavenite> * 3, [<liquid:uru_fluid> * 3, <liquid:lighteum> * 2, <liquid:stripium> * 3]);
Alloy.addRecipe(<liquid:ghostite>, [<liquid:valyrium_fluid>, <liquid:manarium>]);
Alloy.addRecipe(<liquid:waringlium> * 3, [<liquid:swinium> * 2, <liquid:stripium> * 2, <liquid:obsidian> * 6]);
Alloy.addRecipe(<liquid:tierite> * 2, [<liquid:cloudite> * 3, <liquid:terrax_fluid> * 3, <liquid:vibranium_fluid> * 2]);
Alloy.addRecipe(<liquid:cheatieum> * 2, [<liquid:mangisite> * 2, <liquid:ghostite>, <liquid:manyullyn> * 3]);
Alloy.addRecipe(<liquid:idiessite>, [<liquid:soilium> * 3, <liquid:heavenite>, <liquid:adamant_fluid>]);
Alloy.addRecipe(<liquid:cthoghate> * 2, [<liquid:osram_fluid> * 4, <liquid:heavenite> * 2, <liquid:dimesium>]);
Alloy.addRecipe(<liquid:ranglium>, [<liquid:idiessite>, <liquid:cheatieum>, <liquid:cloudite>]);
Alloy.addRecipe(<liquid:godiarite> * 3, [<liquid:adamant_fluid> * 3, <liquid:togrium> * 2, <liquid:yoggleseum> * 2]);
Alloy.addRecipe(<liquid:rainite> * 3, [<liquid:ranglium> * 2, <liquid:idiessite> * 2, <liquid:oneo> * 3]);
Alloy.addRecipe(<liquid:panloeseum> * 3, [<liquid:ghostite> * 4, <liquid:breakium>]);
Alloy.addRecipe(<liquid:husturite> * 2, [<liquid:cthoghate> * 2, <liquid:godiarite> * 2, <liquid:xenidium>]);
Alloy.addRecipe(<liquid:fallenium> * 2, [<liquid:vanadium> * 2, <liquid:gallium> * 3, <liquid:fenzium> * 2]);
Alloy.addRecipe(<liquid:phoenixite> * 2, [<liquid:fenzium> * 3, <liquid:dawnium> * 2]);
Alloy.addRecipe(<liquid:depthite> * 3, [<liquid:rainite> * 2, <liquid:breakium> * 4, <liquid:gallium> * 2]);
Alloy.addRecipe(<liquid:lovaquite> * 2, [<liquid:fallenium> * 2, <liquid:molybdenum> * 2, <liquid:losessium>]);
Alloy.addRecipe(<liquid:rangolarite> * 2, [<liquid:phoenixite> * 3, <liquid:depthite>]);
Alloy.addRecipe(<liquid:clearite> * 3, [<liquid:indium> * 2, <liquid:sissidium> * 2, <liquid:husturite> * 2]);
Alloy.addRecipe(<liquid:wefenium> * 2, [<liquid:lovaquite> * 3, <liquid:ttwo> * 2, <liquid:tierite>]);
Alloy.addRecipe(<liquid:errorite> * 3, [<liquid:antimony> * 2, <liquid:circlium> * 3, <liquid:rangolarite> * 4]);
Alloy.addRecipe(<liquid:numbereum> * 2, [<liquid:rapesesium> * 2, <liquid:wefenium> * 3]);
Alloy.addRecipe(<liquid:babyrite> * 3, [<liquid:gold> * 7, <liquid:rubidium> * 2, <liquid:clearite>]);
Alloy.addRecipe(<liquid:leadite> * 3, [<liquid:circlium> * 2, <liquid:technetium> * 1, <liquid:fallenium> * 6]);
Alloy.addRecipe(<liquid:martisite> * 3, [<liquid:caesium> * 4, <liquid:leadite> * 3, <liquid:numbereum> * 3]);
Alloy.addRecipe(<liquid:flashite> * 3, [<liquid:francium> * 2, <liquid:babyrite> * 2, <liquid:errorite> * 2]);
Alloy.addRecipe(<liquid:overlaite>, [<liquid:martisite>, <liquid:clearite>]);
Alloy.addRecipe(<liquid:balancite> * 2, [<liquid:aqualite>, <liquid:aeroite>, <liquid:asgardium>, <liquid:meteor>]);
Alloy.addRecipe(<liquid:shadow_bar>, [<liquid:rupee>, <liquid:realmite>]);
Alloy.addRecipe(<liquid:glowing_signalum> * 144, [<liquid:signalum> * 144, <liquid:glowstone> * 1000]);
Alloy.addRecipe(<liquid:twilight_crystal>, [<liquid:eden>, <liquid:wildwood>, <liquid:apalachia>, <liquid:skythern>, <liquid:mortum>]);
Alloy.addRecipe(<liquid:daynight>, [<liquid:falsite>, <liquid:ventium>, <liquid:horizonite>]);

Casting.removeBasinRecipe(<tcomplement:scorched_block:10>);
Casting.removeBasinRecipe(<tcomplement:scorched_block:1>);
Casting.removeBasinRecipe(<tcomplement:scorched_block>);

Casting.removeTableRecipe(<tcomplement:materials:1>);

Casting.addBasinRecipe(<additions:greedycraft-astral_metal_block>, null, <liquid:astral_metal>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-compressed_experience_block>, <ore:blockExperience>, <liquid:experience>, 10368, true, 300);
Casting.addBasinRecipe(<additions:greedycraft-cosmilite_block>, null, <liquid:cosmilite>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-crimsonite_block>, null, <liquid:crimsonite>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-electronium_block>, null, <liquid:electronium>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-experience_block>, null, <liquid:experience>, VOLUME_BLOCK, false, 200);
Casting.addBasinRecipe(<additions:greedycraft-fusion_matrix_block>, null, <liquid:fusion_matrix>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-netherite_block>, null, <liquid:netherite>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-protonium_block>, null, <liquid:protonium>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-stainless_steel_block>, null, <liquid:stainless_steel>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-terra_alloy_block>, null, <liquid:terra_alloy>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-manganese_steel_block>, null, <liquid:manganese_steel>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<bigreactors:blockyellorium>, null, <liquid:yellorium>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<candymod:chocolate_block>, null, <liquid:liquid_chocolate>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<extrabotany:blockorichalcos>, null, <liquid:orichalcos>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<nyx:meteor_block>, null, <liquid:meteor>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<tcomplement:scorched_block>, null, <liquid:scorched>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-durasteel_block>, null, <liquid:durasteel>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-aeonsteel_block>, null, <liquid:aeonsteel>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-chromasteel_block>, null, <liquid:chromasteel>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<botanicadds:gaiasteel_block>, null, <liquid:gaiasteel>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<additions:greedycraft-modularium_block>, null, <liquid:modularium>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<draconicevolution:draconic_block>, null, <liquid:awakened_draconium>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<gct_ores:chaotic_draconium_block>, null, <liquid:chaotic_draconium>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<gct_ores:genite_machine_frame>, <thermalexpansion:frame>, <liquid:genite>, 576, false, 100);
Casting.addBasinRecipe(<gct_ores:everite_machine_frame>, <thermalexpansion:frame>, <liquid:everite>, 576, false, 100);
Casting.addBasinRecipe(<gct_ores:balanced_matrix_block>, null, <liquid:balanced_matrix>, VOLUME_BLOCK, false, 300);
Casting.addBasinRecipe(<abyssalcraft:solidlava>, <minecraft:glass>, <liquid:lava>, 1000, true, 100);
Casting.addBasinRecipe(<gct_tcon:solidpyrotheumblock>, <minecraft:glass>, <liquid:pyrotheum>, 1000, true, 100);
Casting.addBasinRecipe(<gct_tcon:solidnitriteblock>, <minecraft:glass>, <liquid:nitronite_fluid>, 1000, true, 100);

Casting.addTableRecipe(<abyssalcraft:ethaxiumingot>, <tconstruct:cast_custom>, <liquid:ethaxium>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:astral_metal_ingot>, <tconstruct:cast_custom>, <liquid:astral_metal>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:cosmilite_ingot>, <tconstruct:cast_custom>, <liquid:cosmilite>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:crimsonite_ingot>, <tconstruct:cast_custom>, <liquid:crimsonite>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:electronium_ingot>, <tconstruct:cast_custom>, <liquid:electronium>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:greedycraft-cryonic_artifact>, <minecraft:emerald>, <liquid:cryotheum>, 10000, true, 200);
Casting.addTableRecipe(<additions:greedycraft-experience_ingot>, <tconstruct:cast_custom>, <liquid:experience>, VOLUME_INGOT, false, 80);
Casting.addTableRecipe(<additions:greedycraft-experience_nugget>, <tconstruct:cast_custom:1>, <liquid:experience>, 16, false, 20);
Casting.addTableRecipe(<additions:greedycraft-pearl_of_knowledge>, <minecraft:emerald>, <liquid:experience>, 944784, true, 600);
Casting.addTableRecipe(<additions:greedycraft-stainless_steel_ball>, <tconstruct:cast_custom:2>, <liquid:stainless_steel>, 30, false, 60);
Casting.addTableRecipe(<additions:netherite_ingot>, <tconstruct:cast_custom>, <liquid:netherite>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:netherite_scrap>, <tconstruct:cast_custom>, <liquid:ancient_debris>, 160, false, 200);
Casting.addTableRecipe(<additions:protonium_ingot>, <tconstruct:cast_custom>, <liquid:protonium>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:stainless_steel_ingot>, <tconstruct:cast_custom>, <liquid:stainless_steel>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:terra_alloy_ingot>, <tconstruct:cast_custom>, <liquid:terra_alloy>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:manganese_steel_ingot>, <tconstruct:cast_custom>, <liquid:manganese_steel>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<bigreactors:ingotyellorium>, <tconstruct:cast_custom>, <liquid:yellorium>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<botania:manaresource:14>, <tconstruct:cast_custom>, <liquid:gaia>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<candymod:chocolate_bar>, <tconstruct:cast_custom>, <liquid:cosmilite>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<defiledlands:ravaging_ingot>, <tconstruct:cast_custom>, <liquid:ravaging>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<extrabotany:material:1>, <tconstruct:cast_custom>, <liquid:orichalcos>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<harvestcraft:cheeseitem>, null, <liquid:milk>, 20, false, 200);
Casting.addTableRecipe(<harvestcraft:cheeseitem>, null, <liquid:milk>, 200, false);
Casting.addTableRecipe(<minecraft:coal>, <tconstruct:cast_custom:2>, <liquid:coal>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<modularmachinery:itemmodularium>, <tconstruct:cast_custom>, <liquid:modularium>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<nyx:meteor_ingot>, <tconstruct:cast_custom>, <liquid:meteor>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<tcomplement:materials:1>, <tconstruct:cast_custom>, <liquid:scorched>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<tconevo:material>, <tconstruct:cast_custom>, <liquid:fusion_matrix>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<thaumadditions:adaminite_ingot>, <tconstruct:cast_custom>, <liquid:adaminite>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<thaumadditions:mithminite_ingot>, <tconstruct:cast_custom>, <liquid:mithminite>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<thaumadditions:mithrillium_ingot>, <tconstruct:cast_custom>, <liquid:mithrillium>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:durasteel_ingot>, <tconstruct:cast_custom>, <liquid:durasteel>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:aeonsteel_ingot>, <tconstruct:cast_custom>, <liquid:aeonsteel>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<additions:chromasteel_ingot>, <tconstruct:cast_custom>, <liquid:chromasteel>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<randomthings:ingredient:3>, <tconstruct:cast_custom>, <liquid:spectre>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<botanicadds:gaiasteel_ingot>, <tconstruct:cast_custom>, <liquid:gaiasteel>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<draconicevolution:draconic_ingot>, <tconstruct:cast_custom>, <liquid:awakened_draconium>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<gct_ores:chaotic_draconium_ingot>, <tconstruct:cast_custom>, <liquid:chaotic_draconium>, VOLUME_INGOT, false, 200);
Casting.addTableRecipe(<gct_ores:balanced_matrix_ingot>, <tconstruct:cast_custom>, <liquid:balanced_matrix>, VOLUME_INGOT, false, 200);

Melting.removeRecipe(<liquid:gold>, <minecraft:golden_rail>);
Melting.removeRecipe(<liquid:iron>, <minecraft:activator_rail>);
Melting.removeRecipe(<liquid:iron>, <minecraft:bucket>);
Melting.removeRecipe(<liquid:iron>, <minecraft:detector_rail>);
Melting.removeRecipe(<liquid:iron>, <minecraft:rail>);
Melting.removeRecipe(<liquid:osmium>, <minecraft:rail>);
Melting.removeRecipe(<liquid:meteorite_fluid>, <taiga:obsidiorite_block>);

Melting.addEntityMelting(<entity:minecraft:cow>, <liquid:milk>);
Melting.addEntityMelting(<entity:minecraft:enderman>, <liquid:ender>);
Melting.addEntityMelting(<entity:minecraft:snowman>, <liquid:water>);
Melting.addEntityMelting(<entity:minecraft:villager_golem>, <liquid:iron>);
Melting.addEntityMelting(<entity:minecraft:zombie_pigman>, <liquid:gold>);

Melting.addRecipe(<liquid:adaminite> * VOLUME_INGOT, <ore:ingotAdaminite>, 1300);
Melting.addRecipe(<liquid:aerotheum> * 100, <ore:dustBlitz>, 200);
Melting.addRecipe(<liquid:aerotheum> * 250, <ore:dustAerotheum>, 200);
Melting.addRecipe(<liquid:ancient_debris> * 160, <ore:gemAncientDebris>, 1320);
Melting.addRecipe(<liquid:ancient_debris> * 320, <ore:oreAncientDebris>, 1320);
Melting.addRecipe(<liquid:astral_metal> * VOLUME_BLOCK, <ore:blockAstralMetal>, 1500);
Melting.addRecipe(<liquid:astral_metal> * VOLUME_INGOT, <ore:ingotAstralMetal>, 1500);
Melting.addRecipe(<liquid:blood> * 200, <ore:listAllmeatraw>, 200);
Melting.addRecipe(<liquid:coal> * VOLUME_INGOT, <ore:coal>, 600);
Melting.addRecipe(<liquid:cosmilite> * VOLUME_BLOCK, <ore:blockCosmilite>, 1500);
Melting.addRecipe(<liquid:cosmilite> * VOLUME_INGOT, <ore:ingotCosmilite>, 1500);
Melting.addRecipe(<liquid:crimsonite> * VOLUME_BLOCK, <ore:blockCrimsonite>, 1200);
Melting.addRecipe(<liquid:crimsonite> * VOLUME_INGOT, <ore:ingotCrimsonite>, 1200);
Melting.addRecipe(<liquid:cryotheum> * 100, <ore:dustBlizz>, 50);
Melting.addRecipe(<liquid:cryotheum> * 250, <ore:dustCryotheum>, 50);
Melting.addRecipe(<liquid:electronium> * VOLUME_BLOCK, <ore:blockElectronium>, 1200);
Melting.addRecipe(<liquid:electronium> * VOLUME_INGOT, <ore:ingotElectronium>, 1200);
Melting.addRecipe(<liquid:ethaxium> * VOLUME_INGOT, <ore:ingotEthaxium>, 1300);
Melting.addRecipe(<liquid:experience> * 11664, <ore:blockCompressedExperience>, 300);
Melting.addRecipe(<liquid:experience> * VOLUME_BLOCK, <ore:blockExperience>, 300);
Melting.addRecipe(<liquid:experience> * VOLUME_INGOT, <ore:ingotExperience>, 300);
Melting.addRecipe(<liquid:experience> * 16, <ore:nuggetExperience>, 300);
Melting.addRecipe(<liquid:experience> * 160, <actuallyadditions:item_solidified_experience>, 300);
Melting.addRecipe(<liquid:experience> * (VOLUME_INGOT * 2), <additions:greedycraft-experience_ore>, 100);
Melting.addRecipe(<liquid:experience> * 944784, <additions:greedycraft-pearl_of_knowledge>, 1200);
Melting.addRecipe(<liquid:fusion_matrix> * VOLUME_BLOCK, <ore:blockFusionMatrix>, 1300);
Melting.addRecipe(<liquid:fusion_matrix> * VOLUME_INGOT, <tconevo:material>, 1300);
Melting.addRecipe(<liquid:gaia> * VOLUME_INGOT, <ore:ingotGaia>, 700);
Melting.addRecipe(<liquid:insanium> * VOLUME_INGOT, <ore:ingotInsanium>, 1400);
Melting.addRecipe(<liquid:iron> * (VOLUME_INGOT * 2), <actuallyadditions:item_misc:20>, 1100);
Melting.addRecipe(<liquid:lava> * 200, <ore:netherrack>, 800);
Melting.addRecipe(<liquid:liquid_chocolate> * VOLUME_BLOCK, <ore:blockChocolate>, 300);
Melting.addRecipe(<liquid:liquid_chocolate> * VOLUME_INGOT, <ore:foodChocolate>, 300);
Melting.addRecipe(<liquid:meteor> * VOLUME_BLOCK, <ore:blockMeteor>, 900);
Melting.addRecipe(<liquid:meteor> * VOLUME_INGOT, <ore:dustMeteor>, 900);
Melting.addRecipe(<liquid:meteor> * VOLUME_INGOT, <ore:ingotMeteor>, 900);
Melting.addRecipe(<liquid:meteor> * VOLUME_INGOT, <ore:shardMeteor>, 900);
Melting.addRecipe(<liquid:mithminite> * VOLUME_INGOT, <ore:ingotMithminite>, 1100);
Melting.addRecipe(<liquid:mithrillium> * VOLUME_INGOT, <ore:ingotMithrillium>, 1500);
Melting.addRecipe(<liquid:modularium> * VOLUME_INGOT, <ore:ingotModularium>, 900);
Melting.addRecipe(<liquid:netherite> * VOLUME_BLOCK, <ore:blockNetherite>, 1500);
Melting.addRecipe(<liquid:netherite> * VOLUME_INGOT, <ore:ingotNetherite>, 1500);
Melting.addRecipe(<liquid:organic_fluid> * 100, <mysticalagriculture:fertilized_essence>, 400);
Melting.addRecipe(<liquid:organic_fluid> * 115, <ore:itemBioblendRich>, 400);
Melting.addRecipe(<liquid:organic_fluid> * 150, <mysticalagriculture:mystical_fertilizer>, 400);
Melting.addRecipe(<liquid:organic_fluid> * 25, <ore:itemBiomass>, 400);
Melting.addRecipe(<liquid:organic_fluid> * 45, <ore:itemBiomassRich>, 400);
Melting.addRecipe(<liquid:organic_fluid> * 90, <ore:itemBioblend>, 400);
Melting.addRecipe(<liquid:orichalcos> * VOLUME_BLOCK, <ore:blockOrichalcos>, 1400);
Melting.addRecipe(<liquid:orichalcos> * VOLUME_INGOT, <ore:ingotOrichalcos>, 1400);
Melting.addRecipe(<liquid:petrotheum> * 100, <ore:dustBasalz>, 900);
Melting.addRecipe(<liquid:petrotheum> * 250, <ore:dustPetrotheum>, 900);
Melting.addRecipe(<liquid:protonium> * VOLUME_BLOCK, <ore:blockProtonium>, 1200);
Melting.addRecipe(<liquid:protonium> * VOLUME_INGOT, <ore:ingotProtonium>, 1200);
Melting.addRecipe(<liquid:pyrotheum> * 100, <ore:dustBlaze>, 1300);
Melting.addRecipe(<liquid:pyrotheum> * 250, <ore:dustPyrotheum>, 1300);
Melting.addRecipe(<liquid:ravaging> * VOLUME_INGOT, <ore:ingotRavaging>, 900);
Melting.addRecipe(<liquid:sakura.food_oil> * 100, <ore:tallow>, 200);
Melting.addRecipe(<liquid:scorched> * VOLUME_INGOT, <ore:ingotBrickScorched>, 900);
Melting.addRecipe(<liquid:scorched> * (VOLUME_INGOT * 2), <ore:slabScorched>, 900);
Melting.addRecipe(<liquid:scorched> * 432, <ore:stairScorched>, 900);
Melting.addRecipe(<liquid:scorched> * (VOLUME_INGOT * 4), <ore:blockScorched>, 900);
Melting.addRecipe(<liquid:stainless_steel> * VOLUME_BLOCK, <ore:blockStainlessSteel>, 1200);
Melting.addRecipe(<liquid:stainless_steel> * VOLUME_INGOT, <ore:ingotStainlessSteel>, 1200);
Melting.addRecipe(<liquid:terra_alloy> * VOLUME_BLOCK, <ore:blockTerraAlloy>, 1500);
Melting.addRecipe(<liquid:terra_alloy> * VOLUME_INGOT, <ore:ingotTerraAlloy>, 1500);
Melting.addRecipe(<liquid:yellorium> * VOLUME_BLOCK, <ore:blockYellorium>, 1400);
Melting.addRecipe(<liquid:yellorium> * VOLUME_INGOT, <ore:ingotYellorium>, 1400);
Melting.addRecipe(<liquid:iron> * (VOLUME_INGOT * 2), <sakura:iron_sand>, 534);
Melting.addRecipe(<liquid:manganese_steel> * VOLUME_INGOT, <ore:ingotManganeseSteel>, 734);
Melting.addRecipe(<liquid:manganese_steel> * VOLUME_BLOCK, <ore:blockManganeseSteel>, 734);
Melting.addRecipe(<liquid:durasteel> * VOLUME_INGOT, <ore:ingotDurasteel>, 777);
Melting.addRecipe(<liquid:aeonsteel> * VOLUME_INGOT, <ore:ingotAeonsteel>, 1150);
Melting.addRecipe(<liquid:chromasteel> * VOLUME_INGOT, <ore:ingotChromasteel>, 1337);
Melting.addRecipe(<liquid:durasteel> * VOLUME_BLOCK, <ore:blockDurasteel>, 777);
Melting.addRecipe(<liquid:aeonsteel> * VOLUME_BLOCK, <ore:blockAeonsteel>, 1150);
Melting.addRecipe(<liquid:chromasteel> * VOLUME_BLOCK, <ore:blockChromasteel>, 1337);
Melting.addRecipe(<liquid:spectre> * VOLUME_INGOT, <ore:ingotSpectre>, 1111);
Melting.addRecipe(<liquid:gaiasteel> * VOLUME_INGOT, <ore:ingotGaiasteel>, 1024);
Melting.addRecipe(<liquid:gaiasteel> * VOLUME_BLOCK, <ore:blockGaiasteel>, 1024);
Melting.addRecipe(<liquid:modularium> * VOLUME_BLOCK, <ore:blockModularium>, 900);
Melting.addRecipe(<liquid:awakened_draconium> * VOLUME_INGOT, <ore:ingotDraconiumAwakened>, 775);
Melting.addRecipe(<liquid:awakened_draconium> * VOLUME_BLOCK, <ore:blockDraconiumAwakened>, 921);
Melting.addRecipe(<liquid:awakened_draconium> * VOLUME_INGOT, <ore:dustDraconiumAwakened>, 775);
Melting.addRecipe(<liquid:awakened_draconium> * VOLUME_NUGGET, <ore:nuggetDraconiumAwakened>, 627);
Melting.addRecipe(<liquid:chaotic_draconium> * VOLUME_INGOT, <ore:ingotDraconiumChaotic>, 960);
Melting.addRecipe(<liquid:chaotic_draconium> * VOLUME_BLOCK, <ore:blockDraconiumChaotic>, 1065);
Melting.addRecipe(<liquid:chaotic_draconium> * VOLUME_INGOT, <ore:dustDraconiumChaotic>, 960);
Melting.addRecipe(<liquid:chaotic_draconium> * VOLUME_NUGGET, <ore:nuggetDraconiumChaotic>, 898);
Melting.addRecipe(<liquid:balanced_matrix> * VOLUME_INGOT, <ore:ingotBalancedMatrix>, 1125);
Melting.addRecipe(<liquid:balanced_matrix> * VOLUME_BLOCK, <ore:blockBalancedMatrix>, 1350);
Melting.addRecipe(<liquid:lumixeium> * 100, <ore:dustBligtz>, 800);
Melting.addRecipe(<liquid:lumixeium> * 250, <ore:dustLumixeium>, 800);
Melting.addRecipe(<liquid:noxexeum> * 100, <ore:dustBninz>, 400);
Melting.addRecipe(<liquid:noxexeum> * 250, <ore:dustNoxexeum>, 400);
Melting.addRecipe(<liquid:tonitruium> * 100, <ore:dustBthdz>, 1000);
Melting.addRecipe(<liquid:tonitruium> * 250, <ore:dustTonitruium>, 1000);
Melting.addRecipe(<liquid:naturaeum> * 100, <ore:dustBnatuz>, 500);
Melting.addRecipe(<liquid:naturaeum> * 250, <ore:dustNaturaeum>, 500);

Fuel.registerFuel(<liquid:infernium> * 1, 600);
Fuel.registerFuel(<liquid:cosmilite> * 1, 2400);
Fuel.registerFuel(<liquid:protonium> * 1, 100);
Fuel.registerFuel(<liquid:electronium> * 1, 200);
Fuel.registerFuel(<liquid:experience> * 1, 200);
Fuel.registerFuel(<liquid:ancient_debris> * 1, 200);
Fuel.registerFuel(<liquid:scorched> * 1, 200);
Fuel.registerFuel(<liquid:orichalcos> * 1, 200);
Fuel.registerFuel(<liquid:gaia> * 1, 200);
Fuel.registerFuel(<liquid:ravaging> * 1, 200);
Fuel.registerFuel(<liquid:mithminite> * 1, 200);
Fuel.registerFuel(<liquid:mithrillium> * 1, 200);
Fuel.registerFuel(<liquid:adaminite> * 1, 200);
Fuel.registerFuel(<liquid:netherite> * 1, 200);
Fuel.registerFuel(<liquid:terra_alloy> * 1, 200);
Fuel.registerFuel(<liquid:fierymetal> * 1, 200);
Fuel.registerFuel(<liquid:insanium> * 1, 200);
Fuel.registerFuel(<liquid:fusion_matrix> * 1, 200);
Fuel.registerFuel(<liquid:meteor> * 1, 200);
Fuel.registerFuel(<liquid:crimsonite> * 1, 200);
Fuel.registerFuel(<liquid:reditrite> * 1, 200);
Fuel.registerFuel(<liquid:lavarite> * 1, 200);
Fuel.registerFuel(<liquid:plasmarite> * 1, 200);
Fuel.registerFuel(<liquid:bnightium> * 1, 200);
Fuel.registerFuel(<liquid:fire_alloy> * 1, 200);
Fuel.registerFuel(<liquid:everite> * 1, 200);
Fuel.registerFuel(<liquid:balanced_matrix> * 1, 200);
Fuel.registerFuel(<liquid:cthoghate> * 1, 1600);

//Melting.addRecipe(<liquid:liquid_chocolate> * 48, <ore:beanCocoa>, 200);

//Melting.addRecipe(<liquid:cryonium> * (VOLUME_INGOT * 2), <additions:greedycraft-cryonium_ore>, 200);
//Melting.addRecipe(<liquid:cryonium> * VOLUME_INGOT, <additions:cryonium_ingot>, 200);
//Melting.addRecipe(<liquid:cryonium> * VOLUME_BLOCK, <additions:greedycraft-cryonium_block>, 900);
//Casting.addTableRecipe(<additions:cryonium_ingot>, <tconstruct:cast_custom>, <liquid:cryonium>, VOLUME_INGOT, false, 20);
//Casting.addBasinRecipe(<additions:greedycraft-cryonium_block>, null, <liquid:cryonium>, VOLUME_BLOCK, false, 100);