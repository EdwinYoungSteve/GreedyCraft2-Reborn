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

RecipeBuilder.newBuilder("liquefaction_air", "condensation_liquefactor", 20)
    .addGasInput("air", 320)
    .addEnergyPerTickInput(200)
    .addFluidOutput(<liquid:liquid_air> * 1)
    .build();

RecipeBuilder.newBuilder("liquefaction_naoh", "condensation_liquefactor", 20)
    .addGasInput("sodiumhydroxide", 320)
    .addEnergyPerTickInput(200)
    .addFluidOutput(<liquid:sodium_hydroxide_solution> * 1)
    .build();

