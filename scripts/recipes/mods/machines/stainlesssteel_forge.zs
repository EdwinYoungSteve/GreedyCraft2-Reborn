/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 30
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

RecipeBuilder.newBuilder("stainlesssteel", "stainlesssteel_forge", 40, 0)
    .addItemInput(<minecraft:iron_ingot> * 6)
    .addItemInput(<minecraft:coal> * 6)
    .addItemInput(<additions:manganese_ingot> * 3)
    .addItemInput(<additions:chromium_ingot>)
    .addItemInput(<thermalfoundation:material:133>)
    .addEnergyPerTickInput(100)
    .addItemOutput(<additions:stainless_steel_ingot> * 6)
    .build();