/*
 * This script is created for the GreedyCraft Tweaks by mc_Edwin.
 */

#priority 50
#no_fix_recipe_book

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;
import mods.ctutils.utils.Math;
import mods.jei.JEI;

import scripts.util.machines as MMUtil;

RecipeBuilder.newBuilder("fusion_order_core", "order_fusioner", 256)
    .addItemInput(<gct_ores:order_crystal>)
    .addItemInput(<draconicevolution:chaotic_core> * 3)
    .addItemInput(<gct_ores:stormy_core> * 3)
    .addItemInput(<additions:cosmilite_ingot> * 2)
    .addItemInput(<gct_ores:equipment_witherium_block> * 2)
    .addItemInput(<gct_ores:ruled_draconium_block> * 2)
    .addEnergyPerTickInput(786432000)
    .addItemOutput(<gct_ores:ordered_core>)
    .build();

RecipeBuilder.newBuilder("fusion_order_metal", "order_fusioner", 256)
    .addItemInput(<gct_ores:ordered_core>)
    .addItemInput(<draconicadditions:chaotic_energy_core>)
    .addItemInput(<ageofminecraft:withered_nether_star>)
    .addItemInput(<draconicadditions:chaos_heart>)
    .addEnergyPerTickInput(268435456)
    .addItemOutput(<gct_ores:ordered_metal_ingot>)
    .build();
    