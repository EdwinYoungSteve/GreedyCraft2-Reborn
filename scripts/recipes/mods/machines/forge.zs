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

RecipeBuilder.newBuilder("chromasteel_forge_terra_alloy", "chromasteel_forge", 100, 0)
    .addItemInput(<ore:ingotInfernium>)
    .addItemInput(<ore:ingotCryonium>)
    .addItemInput(<ore:ingotCytosinite>)
    .addItemInput(<ore:ingotTitanium>)
    .addEnergyPerTickInput(500)
    .addItemOutput(<additions:terra_alloy_ingot> * 2)
    .build();

RecipeBuilder.newBuilder("chromasteel_forge_sky_alloy", "chromasteel_forge", 100, 0)
    .addItemInput(<ore:ingotAetherium>)
    .addItemInput(<ore:ingotCanopium>)
    .addItemInput(<ore:ingotMistium>)
    .addItemInput(<ore:ingotThyminite>)
    .addEnergyPerTickInput(500)
    .addItemOutput(<gct_ores:sky_alloy_ingot> * 2)
    .build();

RecipeBuilder.newBuilder("chromasteel_forge_fire_alloy", "chromasteel_forge", 100, 0)
    .addItemInput(<ore:ingotLavarite>)
    .addItemInput(<ore:ingotPlasmarite>)
    .addItemInput(<ore:ingotBnightium>)
    .addItemInput(<ore:ingotGuaninite>)
    .addEnergyPerTickInput(500)
    .addItemOutput(<gct_ores:fire_alloy_ingot> * 2)
    .build();

RecipeBuilder.newBuilder("chromasteel_forge_ice_alloy", "chromasteel_forge", 100, 0)
    .addItemInput(<ore:ingotSnowingium>)
    .addItemInput(<ore:ingotFreezite>)
    .addItemInput(<ore:ingotOceanium>)
    .addItemInput(<ore:ingotAdeninite>)
    .addEnergyPerTickInput(500)
    .addItemOutput(<gct_ores:ice_alloy_ingot> * 2)
    .build();
