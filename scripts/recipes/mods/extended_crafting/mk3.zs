#priority 3000
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.avaritia.ExtremeCrafting;
import mods.avaritia.Compressor;
import mods.ctintegration.util.RecipePattern;
import mods.extendedcrafting.TableCrafting;

TableCrafting.addShaped(0, <denseneutroncollectors:double_compressed_neutron_collector>, [
	[null, null, <ore:ingotProtonium>, <ore:ingotProtonium>, <ore:ingotProtonium>, null, null], 
	[null, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, null], 
	[<ore:ingotProtonium>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:ingotProtonium>], 
	[<ore:ingotProtonium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <denseneutroncollectors:compressed_neutron_collector>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:ingotProtonium>], 
	[<ore:ingotProtonium>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:ingotProtonium>], 
	[null, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, null], 
	[null, null, <ore:ingotProtonium>, <ore:ingotProtonium>, <ore:ingotProtonium>, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:storage:3>, [
	[<avaritia:resource>, <ore:ingotSignalum>, <ore:ingotSignalum>, <extendedcrafting:material:7>, <ore:ingotSignalum>, <ore:ingotSignalum>, <avaritia:resource>], 
	[<ore:ingotSignalum>, <avaritia:resource>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <avaritia:resource>, <ore:ingotSignalum>], 
	[<ore:ingotSignalum>, <ore:ingotLumium>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <ore:ingotLumium>, <ore:ingotSignalum>], 
	[<avaritia:resource>, <ore:ingotLumium>, <avaritia:resource>, <ore:blockFusionMatrix>, <avaritia:resource>, <ore:ingotLumium>, <avaritia:resource>], 
	[<ore:ingotSignalum>, <ore:ingotLumium>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <ore:ingotLumium>, <ore:ingotSignalum>], 
	[<ore:ingotSignalum>, <avaritia:resource>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <avaritia:resource>, <ore:ingotSignalum>], 
	[<avaritia:resource>, <ore:ingotSignalum>, <ore:ingotSignalum>, <extendedcrafting:material:7>, <ore:ingotSignalum>, <ore:ingotSignalum>, <avaritia:resource>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <twilightforest:giant_obsidian>, [
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, null], 
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, null], 
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, null], 
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, null], 
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, null], 
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, null], 
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, null], 
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, null], 
	[null, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <twilightforest:giant_cobblestone>, [
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null], 
	[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>, null], 
	[null, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <twilightforest:giant_log>, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, null], 
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, null], 
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, null], 
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, null], 
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, null], 
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, null], 
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, null], 
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, <ore:plankWood>, null], 
	[null, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <twilightforest:giant_leaves>, [
	[<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, null], 
	[<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, null], 
	[<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, null], 
	[<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, null], 
	[<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, null], 
	[<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, null], 
	[<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, null], 
	[<ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, <ore:treeLeaves>, null], 
	[null, null, null, null, null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <additions:mekaddon-scientificite_mirror>, [
	[null, null, null, <ore:ingotCreativeAlloy>, null, null, null], 
	[null, null, <ore:ingotCosmilite>, <ore:blockGlass>, <ore:ingotCosmilite>, null, null], 
	[null, <ore:ingotCrystalMatrix>, <ore:blockGlass>, <ore:glassHardenedScientificite>, <ore:blockGlass>, <ore:ingotCrystalMatrix>, null], 
	[null, <ore:ingotCrystalMatrix>, <ore:glassHardenedScientificite>, <ore:circuitArcane>, <ore:glassHardenedScientificite>, <ore:ingotCrystalMatrix>, null], 
	[null, <ore:ingotCrystalMatrix>, <ore:blockGlass>, <ore:glassHardenedScientificite>, <ore:blockGlass>, <ore:ingotCrystalMatrix>, null], 
	[null, null, <ore:ingotCosmilite>, <ore:blockGlass>, <ore:ingotCosmilite>, null, null], 
	[null, null, null, <ore:ingotCreativeAlloy>, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <additions:mekaddon-balance_core> * 2, [
	[null, null, <ore:ingotDullium>, <thermalexpansion:florb>, <ore:ingotDullium>, null, null], 
	[null, <thermalexpansion:florb>, <ore:ingotDullium>, <ore:ingotGelidEnderium>, <ore:ingotDullium>, <thermalexpansion:florb>, null], 
	[<ore:ingotDullium>, <ore:ingotDullium>, <ore:ingotDecurrium>, <ore:ingotDecurrium>, <ore:ingotDecurrium>, <ore:ingotDullium>, <ore:ingotDullium>], 
	[<thermalexpansion:florb>, <ore:ingotGelidEnderium>, <ore:ingotDecurrium>, <ore:ingotBalancedMatrix>, <ore:ingotDecurrium>, <ore:ingotGelidEnderium>, <thermalexpansion:florb>], 
	[<ore:ingotDullium>, <ore:ingotDullium>, <ore:ingotDecurrium>, <ore:ingotDecurrium>, <ore:ingotDecurrium>, <ore:ingotDullium>, <ore:ingotDullium>], 
	[null, <thermalexpansion:florb>, <ore:ingotDullium>, <ore:ingotGelidEnderium>, <ore:ingotDullium>, <thermalexpansion:florb>, null], 
	[null, null, <ore:ingotDullium>, <thermalexpansion:florb>, <ore:ingotDullium>, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <gct_mobs:kabalah_builder_block>, [
	[<botania:livingrock:4>, <botania:livingrock:4>, <botania:livingrock:4>, <ore:logWoodDream>, <botania:livingrock:4>, <botania:livingrock:4>, <botania:livingrock:4>], 
	[<botania:livingrock:4>, <ore:blockGaia>, <ore:ingotOrichalcos>, <ore:ingotOrichalcos>, <ore:ingotOrichalcos>, <ore:blockGaia>, <botania:livingrock:4>], 
	[<botania:livingrock:4>, <ore:ingotOrichalcos>, <ore:blockGaia>, <botania:pool:3>, <ore:blockGaia>, <ore:ingotOrichalcos>, <botania:livingrock:4>], 
	[<ore:logWoodDream>, <ore:ingotOrichalcos>, <botania:pool:3>, <ore:blockCrimsonite>, <botania:pool:3>, <ore:ingotOrichalcos>, <ore:logWoodDream>], 
	[<botania:livingrock:4>, <ore:ingotOrichalcos>, <ore:blockGaia>, <botania:pool:3>, <ore:blockGaia>, <ore:ingotOrichalcos>, <botania:livingrock:4>], 
	[<botania:livingrock:4>, <ore:blockGaia>, <ore:ingotOrichalcos>, <ore:ingotOrichalcos>, <ore:ingotOrichalcos>, <ore:blockGaia>, <botania:livingrock:4>], 
	[<botania:livingrock:4>, <botania:livingrock:4>, <botania:livingrock:4>, <ore:logWoodDream>, <botania:livingrock:4>, <botania:livingrock:4>, <botania:livingrock:4>]
]);