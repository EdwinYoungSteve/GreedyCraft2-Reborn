#priority 3000
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.avaritia.ExtremeCrafting;
import mods.avaritia.Compressor;
import mods.ctintegration.util.RecipePattern;
import mods.extendedcrafting.TableCrafting;

ExtremeCrafting.remove(<avaritia:neutron_collector>);
recipes.remove(<avaritia:neutron_collector>);
recipes.addShaped(<avaritia:neutron_collector> * 1, [
    [<minecraft:quartz_block:0>, <minecraft:hopper>, <minecraft:quartz_block:0>], 
    [<minecraft:iron_block>, <avaritia:resource:1>, <minecraft:iron_block>],
    [<minecraft:quartz_block:0>, <minecraft:redstone_block>, <minecraft:quartz_block:0>]
]);

TableCrafting.addShaped(0, <denseneutroncollectors:compressed_neutron_collector>, [
	[null, null, <ore:ingotCoalescenceMatrix>, null, null], 
	[null, <ore:ingotIron>, <avaritia:resource:2>, <ore:ingotIron>, null], 
	[<ore:ingotCoalescenceMatrix>, <avaritia:resource:2>, <avaritia:neutron_collector>, <avaritia:resource:2>, <ore:ingotCoalescenceMatrix>], 
	[null, <ore:ingotIron>, <avaritia:resource:2>, <ore:ingotIron>, null], 
	[null, null, <ore:ingotCoalescenceMatrix>, null, null]
]);

TableCrafting.addShaped(0, <denseneutroncollectors:double_compressed_neutron_collector>, [
	[null, null, <ore:ingotProtonium>, <ore:ingotProtonium>, <ore:ingotProtonium>, null, null], 
	[null, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, null], 
	[<ore:ingotProtonium>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:ingotProtonium>], 
	[<ore:ingotProtonium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <denseneutroncollectors:compressed_neutron_collector>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:ingotProtonium>], 
	[<ore:ingotProtonium>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:ingotProtonium>], 
	[null, <ore:ingotIron>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:nuggetCosmicNeutronium>, <ore:ingotIron>, null], 
	[null, null, <ore:ingotProtonium>, <ore:ingotProtonium>, <ore:ingotProtonium>, null, null]
]);

TableCrafting.addShaped(0, <denseneutroncollectors:triple_compressed_neutron_collector>, [
	[null, null, <ore:ingotBalancedMatrix>, <ore:ingotEverite>, <ore:ingotBalancedMatrix>, <ore:ingotEverite>, <ore:ingotBalancedMatrix>, null, null], 
	[null, <ore:ingotIron>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotIron>, null], 
	[<ore:ingotBalancedMatrix>, <ore:ingotCosmicNeutronium>, <ore:ingotIron>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotIron>, <ore:ingotCosmicNeutronium>, <ore:ingotBalancedMatrix>], 
	[<ore:ingotEverite>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotIron>, <ore:ingotCosmicNeutronium>, <ore:ingotIron>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotEverite>], 
	[<ore:ingotBalancedMatrix>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <denseneutroncollectors:double_compressed_neutron_collector>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotBalancedMatrix>], 
	[<ore:ingotEverite>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotIron>, <ore:ingotCosmicNeutronium>, <ore:ingotIron>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotEverite>], 
	[<ore:ingotBalancedMatrix>, <ore:ingotCosmicNeutronium>, <ore:ingotIron>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotIron>, <ore:ingotCosmicNeutronium>, <ore:ingotBalancedMatrix>], 
	[null, <ore:ingotIron>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotCosmicNeutronium>, <ore:ingotIron>, null], 
	[null, null, <ore:ingotBalancedMatrix>, <ore:ingotEverite>, <ore:ingotBalancedMatrix>, <ore:ingotEverite>, <ore:ingotBalancedMatrix>, null, null]
]);

recipes.remove(<extendedcrafting:compressor>);
ExtremeCrafting.addShaped("compressor1", <extendedcrafting:compressor> * 1, [[<avaritia:resource:4>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:4>], [<avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>],[<avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>],[<avaritia:resource:4>, <extendedcrafting:material:18>, <extendedcrafting:material:18>, <extendedcrafting:material:18>, <avaritia:resource:4>, <extendedcrafting:material:18>, <extendedcrafting:material:18>, <extendedcrafting:material:18>, <avaritia:resource:4>],[<avaritia:resource:4>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:4>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:4>],[<avaritia:resource:4>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:4>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:4>],[<avaritia:resource:4>, <avaritia:resource:1>, <avaritia:block_resource:0>, <avaritia:block_resource:0>, <avaritia:block_resource:0>, <avaritia:block_resource:0>, <avaritia:block_resource:0>, <avaritia:resource:1>, <avaritia:resource:4>],[<avaritia:resource:4>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:1>, <avaritia:resource:4>],[<avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>, <avaritia:resource:4>]]);

TableCrafting.remove(<extendedcrafting:material:24>);
TableCrafting.addShaped(0, <extendedcrafting:storage:3> * 2, [
	[<extendedcrafting:material:7>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <extendedcrafting:material:7>], 
	[<avaritia:resource>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <avaritia:resource>], 
	[<avaritia:resource>, <ore:ingotSignalum>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotSignalum>, <avaritia:resource>], 
	[<avaritia:resource>, <ore:ingotSignalum>, <ore:ingotLumium>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <ore:ingotLumium>, <ore:ingotSignalum>, <avaritia:resource>], 
	[<avaritia:resource>, <ore:ingotSignalum>, <ore:ingotLumium>, <avaritia:resource>, <ore:blockFusionMatrix>, <avaritia:resource>, <ore:ingotLumium>, <ore:ingotSignalum>, <avaritia:resource>], 
	[<avaritia:resource>, <ore:ingotSignalum>, <ore:ingotLumium>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <ore:ingotLumium>, <ore:ingotSignalum>, <avaritia:resource>], 
	[<avaritia:resource>, <ore:ingotSignalum>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotSignalum>, <avaritia:resource>], 
	[<avaritia:resource>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <avaritia:resource>], 
	[<extendedcrafting:material:7>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <avaritia:resource>, <extendedcrafting:material:7>]
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

recipes.remove(<cyclicmagic:tool_mount_inverse>);
mods.extendedcrafting.TableCrafting.addShaped(0, <cyclicmagic:tool_mount_inverse>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <minecraft:lead>, null], 
	[<ore:ingotIron>, <ore:ingotIron>, null, null, <minecraft:lead>], 
	[null, null, null, <minecraft:lead>, null], 
	[null, null, <ore:itemLeather>, <minecraft:lead>, <ore:itemLeather>], 
	[null, null, <ore:itemLeather>, <ore:itemLeather>, null]
]);

mods.extendedcrafting.TableCrafting.addShapeless(0, <gct_mobs:primordial_stone> * 24, [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <ore:nuggetPrimordial>]);

mods.extendedcrafting.TableCrafting.addShaped(0, <gct_mobs:primordial_vis_receiver>, [
	[null, null, <ore:ingotAdaminite>, null, null], 
	[null, <ore:ingotAdaminite>, <ore:ingotPrimordial>, <ore:ingotAdaminite>, null], 
	[<gct_mobs:primordial_stone>, null, <ore:ingotAdaminite>, null, <gct_mobs:primordial_stone>], 
	[<gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>], 
	[<gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <gct_mobs:arcane_vis_receiver>, [
	[null, null, <ore:ingotMithrillium>, null, null], 
	[null, <ore:ingotMithrillium>, <ore:ingotVoid>, <ore:ingotMithrillium>, null], 
	[<thaumcraft:stone_arcane>, null, <ore:ingotMithrillium>, null, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <gct_mobs:primordial_portal_holder_down>, [
	[<gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>], 
	[<gct_mobs:primordial_stone>, <ore:ingotPrimordial>, <ore:ingotMithminite>, <ore:ingotPrimordial>, <gct_mobs:primordial_stone>], 
	[<ore:ingotPrimordial>, null, null, null, <ore:ingotPrimordial>], 
	[null, null, null, null, null], 
	[null, null, null, null, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <gct_mobs:primordial_portal_holder_up>, [
	[null, null, null, null, null], 
	[null, null, null, null, null], 
	[<ore:ingotPrimordial>, null, null, null, <ore:ingotPrimordial>], 
	[<gct_mobs:primordial_stone>, <ore:ingotPrimordial>, <ore:ingotMithminite>, <ore:ingotPrimordial>, <gct_mobs:primordial_stone>], 
	[<gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>, <gct_mobs:primordial_stone>]
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

mods.extendedcrafting.TableCrafting.addShaped(0, <gct_aby:essenceofdarkerrealm>, [
	[null, <ore:ingotSanite>, <gct_aby:shoggothtancale>, <ore:ingotSanite>, null], 
	[<ore:ingotSanite>, <gct_aby:shoggothtancale>, <ore:nuclearShadow>, <gct_aby:shoggothtancale>, <ore:ingotSanite>], 
	[<gct_aby:shoggothtancale>, <ore:nuclearShadow>, <ore:stoneDarkDense>, <ore:nuclearShadow>, <gct_aby:shoggothtancale>], 
	[<ore:ingotSanite>, <gct_aby:shoggothtancale>, <ore:nuclearShadow>, <gct_aby:shoggothtancale>, <ore:ingotSanite>], 
	[null, <ore:ingotSanite>, <gct_aby:shoggothtancale>, <ore:ingotSanite>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <gct_aby:keyofdark>, [
	[<gct_aby:essenceofdarkrealm>, null, null, <abyssalcraft:oc>, null], 
	[null, <gct_aby:essenceofdarkrealm>, <abyssalcraft:oc>, <abyssalcraft:soulreaper>, <abyssalcraft:oc>], 
	[null, null, <gct_aby:essenceofdarkrealm>, <abyssalcraft:oc>, null], 
	[null, <ore:blockEthaxium>, null, <gct_aby:essenceofdarkrealm>, null], 
	[<ore:blockEthaxium>, null, null, null, <gct_aby:essenceofdarkrealm>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <gct_aby:essenceofdarkrealm>, [
	[null, <ore:gemShadow>, <ore:gemShadow>, <ore:gemShadow>, null], 
	[<ore:gemShadow>, <ore:gemShadow>, <ore:gemShadow>, <ore:gemShadow>, <ore:gemShadow>], 
	[<ore:gemShadow>, <ore:gemShadow>, <ore:gemShadow>, <ore:gemShadow>, <ore:gemShadow>], 
	[<ore:gemShadow>, <ore:gemShadow>, <ore:gemShadow>, <ore:gemShadow>, <ore:gemShadow>], 
	[null, <ore:gemShadow>, <ore:gemShadow>, <ore:gemShadow>, null]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <gct_aby:sanity_altar>, [
	[<ore:ingotSanite>, null, null, null, <ore:ingotSanite>], 
	[<abyssalcraft:darkstone_brick>, <ore:ingotSanite>, <ore:ingotCthulhurite>, <ore:ingotSanite>, <abyssalcraft:darkstone_brick>], 
	[null, <ore:gemShadow>, <ore:blockSanite>, <ore:gemShadow>, null], 
	[null, null, <abyssalcraft:darkstone_brick>, null, null], 
	[null, null, <ore:gemShadow>, null, null]
]);
//机械心脏3
mods.extendedcrafting.TableCrafting.addShaped(0, <journey:heartlrg>, [
	[<scalinghealth:heartcontainer>, null, null, null, <scalinghealth:heartcontainer>], 
	[<scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>, <scalinghealth:heartcontainer>], 
	[<scalinghealth:heartcontainer>, <ore:ingotBoundMetal>, <journey:heartmed>, <ore:ingotBoundMetal>, <scalinghealth:heartcontainer>], 
	[null, <scalinghealth:heartcontainer>, <ore:ingotBoundMetal>, <scalinghealth:heartcontainer>, null], 
	[null, null, <scalinghealth:heartcontainer>, null, null]
]);
//机械心脏4
mods.extendedcrafting.TableCrafting.addShaped(0, <journey:heartult>, [
	[<cyclicmagic:heart_food>, null, null, null, <cyclicmagic:heart_food>], 
	[<cyclicmagic:heart_food>, <cyclicmagic:heart_food>, <cyclicmagic:heart_food>, <cyclicmagic:heart_food>, <cyclicmagic:heart_food>], 
	[<cyclicmagic:heart_food>, <ore:ingotCrimsonite>, <journey:heartlrg>, <ore:ingotCrimsonite>, <cyclicmagic:heart_food>], 
	[null, <cyclicmagic:heart_food>, <ore:ingotCrimsonite>, <cyclicmagic:heart_food>, null], 
	[null, null, <cyclicmagic:heart_food>, null, null]
]);
//霓虹石英（无序合成）
mods.extendedcrafting.TableCrafting.addShapeless(0, <gct_ores:rainboquartz> * 24, [<ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:nuggetChromasteel>]);//虚空世界传送门
mods.extendedcrafting.TableCrafting.addShaped(0, <utilityworlds:portal_void>, [
	[null, null, null, null, null], 
	[null, <ore:coreAwakened>, null, <ore:coreAwakened>, null], 
	[<ore:blockRedstone>, <ore:blockRedstone>, <minecraft:enchanting_table>, <ore:blockRedstone>, <ore:blockRedstone>], 
	[<ore:obsidian>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>]
]);
//花园世界传送门
mods.extendedcrafting.TableCrafting.addShaped(0, <utilityworlds:portal_garden>, [
	[null, null, null, null, null], 
	[null, <ore:coreAwakened>, null, <ore:coreAwakened>, null], 
	[<ore:blockEmerald>, <ore:blockEmerald>, <minecraft:enchanting_table>, <ore:blockEmerald>, <ore:blockEmerald>], 
	[<ore:obsidian>, <ore:blockEmerald>, <ore:blockEmerald>, <ore:blockEmerald>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>]
]);
//第二颗心
mods.extendedcrafting.TableCrafting.addShaped(0, <journey:heartsen>, [
	[null, null, <ore:ingotDullium>, null, null], 
	[null, <ore:ingotDullium>, <ore:ingotDullium>, <ore:ingotDullium>, null], 
	[<ore:ingotDullium>, <ore:ingotDullium>, <journey:heartult>, <ore:ingotDullium>, <ore:ingotDullium>], 
	[null, <ore:ingotDullium>, <ore:ingotDullium>, <ore:ingotDullium>, null], 
	[null, null, <ore:ingotDullium>, null, null]
]);
//翠绿纹石
mods.extendedcrafting.TableCrafting.addShaped(0, <additions:taigaddon-ameralite>, [
	[<blue_skies:turquoise_stonebrick>, <blue_skies:turquoise_stonebrick>, <blue_skies:turquoise_stonebrick>], 
	[<blue_skies:turquoise_stonebrick>, <ore:shardHeavengem2>, <blue_skies:turquoise_stonebrick>], 
	[<blue_skies:turquoise_stonebrick>, <blue_skies:turquoise_stonebrick>, <blue_skies:turquoise_stonebrick>]
]);
//暗红纹石
mods.extendedcrafting.TableCrafting.addShaped(0, <additions:taigaddon-lerdite>, [
	[<blue_skies:lunar_stonebrick>, <blue_skies:lunar_stonebrick>, <blue_skies:lunar_stonebrick>], 
	[<blue_skies:lunar_stonebrick>, <ore:shardHeavengem1>, <blue_skies:lunar_stonebrick>], 
	[<blue_skies:lunar_stonebrick>, <blue_skies:lunar_stonebrick>, <blue_skies:lunar_stonebrick>]
]);
//深空宝石
mods.extendedcrafting.TableCrafting.addShaped(0, <additions:taigaddon-heaven_gem>, [
	[null, null, <ore:shardHeavengem1>, null, null], 
	[null, null, <ore:ingotDaynight>, null, null], 
	[null, <ore:ingotDaynight>, <ore:ingotDaynight>, <ore:ingotDaynight>, null], 
	[null, null, <ore:ingotDaynight>, null, null], 
	[null, null, <ore:shardHeavengem2>, null, null]
]);
//永昼之地宝石
mods.extendedcrafting.TableCrafting.addShaped(0, <additions:greedycraft-everbright_gem>, [
	[null, null, <blue_skies:diopside_block>, null, null], 
	[null, <blue_skies:turquoise_stone>, <blue_skies:moonstone>, <blue_skies:turquoise_stone>, null], 
	[<blue_skies:turquoise_block>, <blue_skies:moonstone>, <extendedcrafting:material:40>, <blue_skies:moonstone>, <blue_skies:pyrope_block>], 
	[null, <blue_skies:turquoise_stone>, <blue_skies:moonstone>, <blue_skies:turquoise_stone>, null], 
	[null, null, <blue_skies:charoite_block>, null, null]
]);
//恒晓之地宝石
mods.extendedcrafting.TableCrafting.addShaped(0, <additions:greedycraft-everdawn_gem>, [
	[null, null, <blue_skies:diopside_block>, null, null], 
	[null, <blue_skies:lunar_stone>, <blue_skies:moonstone>, <blue_skies:lunar_stone>, null], 
	[<blue_skies:turquoise_block>, <blue_skies:moonstone>, <extendedcrafting:material:40>, <blue_skies:moonstone>, <blue_skies:pyrope_block>], 
	[null, <blue_skies:lunar_stone>, <blue_skies:moonstone>, <blue_skies:lunar_stone>, null], 
	[null, null, <blue_skies:charoite_block>, null, null]
]);
//深空核心
mods.extendedcrafting.TableCrafting.addShaped(0, <gct_mobs:everheaven>, [
	[<extendedcrafting:material:48>, <ore:ingotUmbrium>, <extendedcrafting:material:48>, <ore:ingotUmbrium>, <extendedcrafting:material:48>], 
	[<ore:ingotUmbrium>, <ore:ingotDaynight>, <ore:ingotDaynight>, <ore:ingotDaynight>, <ore:ingotUmbrium>], 
	[<extendedcrafting:material:48>, <ore:ingotDaynight>, <ore:gemHeaven>, <ore:ingotDaynight>, <extendedcrafting:material:48>], 
	[<ore:ingotUmbrium>, <ore:ingotDaynight>, <ore:ingotDaynight>, <ore:ingotDaynight>, <ore:ingotUmbrium>], 
	[<extendedcrafting:material:48>, <ore:ingotUmbrium>, <extendedcrafting:material:48>, <ore:ingotUmbrium>, <extendedcrafting:material:48>]
]);