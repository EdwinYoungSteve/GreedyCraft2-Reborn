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

MMUtil.addForgeRecipe("chromasteel_forge", MMUtil.getStack(<additions:chromasteel_ingot>, 8), (42000 * FORGE_COST_MULTIPLIER) as int, (240000000 as long * FORGE_COST_MULTIPLIER as long) as long, [
    <additions:aeonsteel_ingot>,
    <gct_ores:everite_ingot>,
    <tconevo:metal:5>,
    <gct_ores:relifed_metal_ingot>,
    <additions:greedycraft-daynight_ingot>,
    <tconevo:metal:20>,
    <plustic:osgloglasingot>,
    <additions:greedycraft-dullium_ingot>,
    <additions:botaniaddon-mythsteel_ingot>,
    <biomesoplenty:terrestrial_artifact>
] as IItemStack[], {
    <additions:astral_metal_ingot> : {
        speed: 0.15,
        energy: 0.2
    },
    <additions:greedycraft-catalyst_star> : {
        speed: 0.5,
        energy: 0.5
    }, 
    <additions:protonium_ingot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <additions:electronium_ingot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <avaritia:resource:4> : {
        speed: 0.15,
        energy: 0.3
    }, 
    <extrabotany:material:1> : {
        speed: 0.25,
        energy: 0.25
    }, 
    <additions:greedycraft-sand_of_time> : {
        speed: 0.3,
        energy: 0.0
    }, 
    <mysticalagradditions:insanium:2> : {
        speed: 0.1,
        energy: 0.1
    }, 
    <thaumadditions:mithminite_ingot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <additions:greedycraft-aurora_heart> : {
        speed: 0.4,
        energy: 0.4
    },
    <additions:greedycraft-sand_of_time> : {
        speed: 0.4,
        energy: 0.0
    }
} as double[string][IItemStack]);