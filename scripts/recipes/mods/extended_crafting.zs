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

mods.extendedcrafting.TableCrafting.addShaped(0, <gct_mobs:primordial_stone> * 48, [
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:primordial_pearl>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>], 
	[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]
]);

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