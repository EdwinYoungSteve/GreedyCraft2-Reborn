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

RecipeBuilder.newBuilder("steel_melting", "mechanical_blast_furnace", 60)
    .addItemInput(<ore:blockCalciumCarbonate>, 1)
    .addItemInput(<ore:dustIronOxide>, 9)
    .addGasInput("carbonoxide", 500)
    .addEnergyPerTickInput(512)
    .addItemOutput(<thermalfoundation:storage_alloy> * 1)
    .addGasOutput("carbondioxide", 500)
    .build();