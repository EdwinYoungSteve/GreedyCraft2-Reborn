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

RecipeBuilder.newBuilder("solidification_mana", "condensation_solidificator", 40)
    .addFluidInput(<liquid:mana> * 144)
    .addEnergyPerTickInput(50000)
    .addItemOutput(<hammermetals:mana_ingot>)
    .build();
RecipeBuilder.newBuilder("solidification_pe", "condensation_solidificator", 40)
    .addFluidInput(<liquid:pe> * 144)
    .addEnergyPerTickInput(50000)
    .addItemOutput(<hammermetals:pe_ingot>)
    .build();