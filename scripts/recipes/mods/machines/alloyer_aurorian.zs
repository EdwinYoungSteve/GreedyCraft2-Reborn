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

RecipeBuilder.newBuilder("aurorian_steel", "aurorian_alloyer", 80)
    .addItemInput(<ore:ingotMoonstone>, 1)
    .addItemInput(<ore:ingotCerulean>, 1)
    .addItemInput(<ore:ingotAurorianite>, 2)
    .addItemInput(<ore:ingotUmbra>, 2)
    .addItemInput(<ore:ingotCrystalline>, 2)
    .addItemInput(<theaurorian:crystal> * 1)
    .addEnergyPerTickInput(100)
    .addItemOutput(<theaurorian:auroriansteel> * 6)
    .build();