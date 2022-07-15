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

MMUtil.addForgeRecipe("cosmic_forge", <additions:cosmilite_ingot> * COSMILITE_OUTPUT_COUNT, (72000 * FORGE_COST_MULTIPLIER) as int, (1000000000 as long * FORGE_COST_MULTIPLIER as long) as long, [
    <additions:chromasteel_ingot> * 1,
    <tconevo:metal:10>,
    <abyssalcraft:ethaxiumingot>,
    <mysticalagradditions:insanium:2>,
    <avaritia:resource:4>,
    <additions:protonium_ingot>,
    <additions:electronium_ingot>,
    <plustic:osgloglasingot>,
    <additions:shadowium_ingot>,
    <additions:astral_metal_ingot>,
    <botania:manaresource:14>,
    <thaumadditions:mithminite_ingot>,
    <additions:netherite_ingot>
] as IItemStack[], {
    <additions:greedycraft-catalyst_star> : {
        speed: 0.25,
        energy: 0.25
    },
    <additions:greedycraft-sand_of_time> : {
        speed: 0.25,
        energy: 0.0
    },
    <additions:greedycraft-ancient_tome> : {
        speed: 0.8,
        energy: 0.8
    },
    <projectex:matter:2> : {
        speed: 0.3,
        energy: 0.3
    },
    <projectex:matter:3> : {
        speed: 0.7,
        energy: 0.7
    },
    <additions:greedycraft-anti_entropy_matter> : {
        speed: 0.9,
        energy: 0.9
    }
} as double[string][IItemStack]);