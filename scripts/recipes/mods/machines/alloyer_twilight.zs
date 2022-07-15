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

RecipeBuilder.newBuilder("twilight_crystal", "twilight_alloyer", 80)
    .addItemInput(<ore:ingotEden>, 1)
    .addItemInput(<ore:ingotWildwood>, 1)
    .addItemInput(<ore:ingotApalachia>, 1)
    .addItemInput(<ore:ingotSkythern>, 1)
    .addItemInput(<ore:ingotMortum>, 1)
    .addEnergyPerTickInput(100)
    .addItemOutput(<additions:greedycraft-twilight_crystal_ingot> * 1)
    .build();