#priority 30
#no_fix_recipe_book

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;
import mods.ctutils.utils.Math;

val speed = 100;
val energy = 100;

RecipeBuilder.newBuilder("miner_basic", "miner_basic", speed, 0)
    .addEnergyPerTickInput(energy)
    .setDimension([0])
    .addItemOutput(<appliedenergistics2:material>)
    .setChance(0.3f / 10.0f)
    .addItemOutput(<appliedenergistics2:material:1>)
    .setChance(0.08f / 10.0f)
    .addItemOutput(<mysticalagriculture:crafting:5>)
    .setChance(0.6f / 10.0f)
    .addItemOutput(<additions:greedycraft-experience_ingot>)
    .setChance(0.6f / 10.0f)
    .addItemOutput(<mysticalagriculture:crafting>)
    .setChance(0.6f / 10.0f)
    .addItemOutput(<thermalfoundation:material:772>)
    .setChance(0.2f / 10.0f)
    .addItemOutput(<minecraft:flint>)
    .setChance(0.4f / 10.0f)
    .addItemOutput(<minecraft:quartz>)
    .setChance(0.4f / 10.0f)
    .addItemOutput(<astralsorcery:blockmarble>)
    .setChance(0.5f / 10.0f)
    .addItemOutput(<netherex:basalt>)
    .setChance(0.5f / 10.0f)
    .addItemOutput(<minecraft:obsidian>)
    .setChance(0.4f / 10.0f)
    .addItemOutput(<astralsorcery:blockcustomore:1>)
    .setChance(0.1f / 10.0f)
    .addItemOutput(<astralsorcery:itemcraftingcomponent>)
    .setChance(0.1f / 10.0f)
    .addItemOutput(<minecraft:cobblestone>)
    .setChance(2.5f/ 10.0f)
    .build();