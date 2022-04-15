/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 3000
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.enderio.SagMill;
import mods.enderio.AlloySmelter;

SagMill.addRecipe([<additions:greedycraft-time_fragment>, <additions:greedycraft-time_fragment>, <additions:greedycraft-experience_ingot>], [20 as float, 20 as float, 50 as float], <ore:dungeonLootTier1> as IIngredient, "CHANCE_ONLY", 12000, [10 as float, 10 as float, 10 as float]);
SagMill.addRecipe([<additions:greedycraft-time_fragment> * 2, <additions:greedycraft-time_fragment>, <additions:greedycraft-time_fragment>, <additions:greedycraft-experience_ingot> * 3], [10 as float, 30 as float, 30 as float, 50 as float], <ore:dungeonLootTier2> as IIngredient, "CHANCE_ONLY", 30000, [25 as float, 25 as float, 25 as float, 25 as float]);
SagMill.addRecipe([<additions:greedycraft-time_fragment> * 6, <additions:greedycraft-time_fragment> * 4, <additions:greedycraft-time_fragment> * 3, <additions:greedycraft-experience_ingot> * 16], [30 as float, 40 as float, 50 as float, 60 as float], <ore:dungeonLootTier3> as IIngredient, "CHANCE_ONLY", 100000, [100 as float, 100 as float, 100 as float, 100 as float]);

SagMill.addRecipe([<nyx:meteor_dust>], [100 as float], <ore:ingotMeteor> as IIngredient, "CHANCE_ONLY", 600, [100 as float]);
SagMill.addRecipe([<nyx:meteor_dust>], [100 as float], <ore:shardMeteor> as IIngredient, "CHANCE_ONLY", 600, [100 as float]);
SagMill.addRecipe([<nyx:meteor_dust> * 9], [100 as float], <ore:blockMeteor> as IIngredient, "CHANCE_ONLY", 5400, [100 as float]);
SagMill.addRecipe([<additions:greedycraft-purifying_dust> * 8], [100 as float], <botania:specialflower>.withTag({type: "puredaisy"}) as IIngredient, "CHANCE_ONLY", 600, [100 as float]);

AlloySmelter.removeRecipe(<thermalfoundation:material:160>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:8>);
AlloySmelter.removeRecipe(<enderio:item_material:54>);

AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 2, [<ore:ingotIron>, <ore:ingotBronze>, <ore:dustRedstone>], 2000, 10.0f);
AlloySmelter.addRecipe(<modularmachinery:itemmodularium> * 2, [<ore:ingotConductiveIron>, <ore:ingotBronze>], 2000, 10.0f);
AlloySmelter.addRecipe(<tconevo:material> * 2, [<ore:ingotAdamant>, <ore:ingotManyullyn> * 2, <ore:ingotEnderium> * 2], 7500, 30.0f);
AlloySmelter.addRecipe(<additions:netherite_ingot>, [<ore:gemAncientDebris> * 4, <ore:ingotGold> * 4], 6000, 50.0f);
AlloySmelter.addRecipe(<additions:stainless_steel_ingot> * 4, [<ore:ingotManganeseSteel> * 4, <ore:ingotNickel>, <ore:ingotChromium>], 4000, 12.0f);
AlloySmelter.addRecipe(<additions:manganese_steel_ingot> * 2, [<ore:ingotSteel> * 2, <ore:ingotManganese>], 1200, 4.0f);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:8> * 2, [<ore:obsidian>, <ore:ingotDarkSteel> * 2, <ore:enderpearl>], 800, 2.0f);
AlloySmelter.addRecipe(<enderio:item_material:54>, [<ore:itemEndSteelMachineChassi>, <ore:dyeEnhancedMachine>, <ore:ingotDurasteel> * 2], 24000, 60.0f);
AlloySmelter.addRecipe(<taiga:terrax_ingot> * 2, [<ore:ingotKarmesine>, <ore:ingotJauxum>, <ore:ingotOvium>], 2000, 10.0f); 
AlloySmelter.addRecipe(<taiga:triberium_ingot>, [<ore:ingotTiberium> * 5, <ore:ingotBasalt>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:triberium_ingot>, [<ore:ingotTiberium> * 5, <ore:ingotDilithium> * 2], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:fractum_ingot> * 2, [<ore:ingotTriberium> * 3, <ore:blockObsidian> * 3, <ore:ingotAbyssum>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:violium_ingot> * 2, [<ore:ingotAurorium> * 3, <ore:ingotArdite> * 2], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:proxii_ingot> * 3, [<ore:ingotPrometheum> * 3, <ore:ingotPalladium> * 3, <ore:ingotEezo>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:tritonite_ingot> * 2, [<ore:ingotCobalt> * 3, <ore:ingotTerrax> * 2], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:ignitz_ingot> * 2, [<ore:ingotArdite> * 2, <ore:ingotTerrax> * 2, <ore:ingotOsram>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:imperomite_ingot> * 2, [<ore:ingotDuranite> * 3, <ore:ingotPrometheum>, <ore:ingotAbyssum>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:solarium_ingot> * 2, [<ore:ingotNucleum>, <ore:ingotUru> * 2, <ore:ingotValyrium> * 2], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:nihilite_ingot>, [<ore:ingotVibranium>, <ore:ingotSolarium>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:adamant_ingot> * 3, [<ore:ingotVibranium>, <ore:ingotSolarium>, <ore:ingotLox> * 3], 2000, 10.0f);
AlloySmelter.addRecipe(<gct_ores:densite_ingot>, [<ore:ingotOsram>, <ore:ingotSeismum>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:dyonite_ingot> * 3, [<ore:ingotTriberium> * 3, <ore:ingotFractum>, <ore:ingotDensite>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:nucleum_ingot> * 3, [<ore:ingotProxii> * 3, <ore:ingotAbyssum>, <ore:ingotOsram>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:nucleum_ingot> * 3, [<ore:ingotImperomite> * 3, <ore:ingotOsram>, <ore:ingotEezo>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:nucleum_ingot> * 3, [<ore:ingotNiob> * 3, <ore:ingotEezo>, <ore:ingotAbyssum>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:lumix_ingot>, [<ore:ingotPalladium>, <ore:ingotTerrax>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:seismum_ingot> * 4, [<ore:blockObsidian> * 4, <ore:ingotTriberium> * 2, <ore:ingotEezo>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:astrium_ingot> * 2, [<ore:ingotTerrax> * 3, <ore:ingotAurorium> * 2], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:niob_ingot> * 3, [<ore:ingotPalladium> * 3, <ore:ingotDuranite>, <ore:ingotOsram>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:yrdeen_ingot> * 3, [<ore:ingotUru> * 3, <ore:ingotValyrium> * 3, <ore:ingotOsram>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:yrdeen_ingot> * 3, [<ore:ingotUru> * 3, <ore:ingotValyrium> * 3, <ore:ingotEezo>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:yrdeen_ingot> * 3, [<ore:ingotUru> * 3, <ore:ingotValyrium> * 3, <ore:ingotAbyssum>], 2000, 10.0f);
AlloySmelter.addRecipe(<gct_ores:reditrite_ingot> * 4, [<ore:ingotOsram> * 2, <ore:ingotObsidiorite> * 9], 2000, 10.0f);
AlloySmelter.addRecipe(<gct_ores:reditrite_ingot> * 4, [<ore:ingotOsram> * 2, <ore:blockObsidiorite>], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:iox_ingot> * 1, [<ore:ingotEezo> * 2, <ore:ingotAbyssum> * 2, <ore:ingotReditrite> * 4], 2000, 10.0f);
AlloySmelter.addRecipe(<taiga:obsidiorite_ingot>, [<ore:blockObsidian>, <ore:ingotMeteorite>], 2000, 10.0f);
AlloySmelter.addRecipe(<extendedcrafting:material> * 1, [<ore:ingotIron>, <ore:ingotCosmicNeutronium>], 1000, 10.0f);
AlloySmelter.addRecipe(<divinerpg:shadow_bar>, [<ore:ingotRupee>, <ore:ingotArlemite>], 2000, 10.0f);
AlloySmelter.addRecipe(<additions:taigaddon-heavenite_ingot>, [<ore:ingotUru> * 3, <ore:ingotLighteum> * 2, <ore:ingotStripium> * 3], 2000, 10.0f);
AlloySmelter.addRecipe(<additions:taigaddon-ghostite_ingot>, [<ore:ingotValyrium>, <ore:ingotManarium>], 2000, 10.0f);
AlloySmelter.addRecipe(<additions:taigaddon-waringlium_ingot> * 3, [<ore:ingotSwinium> * 2, <ore:ingotStripium> * 2, <ore:blockObsidian> * 6], 2000, 10.0f);
AlloySmelter.addRecipe(<additions:taigaddon-tierite_ingot> * 2, [<ore:ingotCloudite> * 3, <ore:ingotTerrax> * 3, <ore:ingotVibranium> * 2], 2000, 10.0f);

SagMill.removeRecipe(<minecraft:coal>);
SagMill.removeRecipe(<actuallyadditions:block_misc:2>);
SagMill.addRecipe([<actuallyadditions:item_dust:7> * 4], [100 as float], <ore:blockQuartzBlack> as IIngredient, "CHANCE_ONLY", 400, [100 as float]);
