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

MMUtil.addForgeRecipe("cosmic_forge", <additions:cosmilite_ingot> * 8, (72000 * FORGE_COST_MULTIPLIER) as int, (1000000000 as long * FORGE_COST_MULTIPLIER as long) as long, [
    <additions:chromasteel_ingot>,
    <additions:taigaddon-compressite_ingot>,
    <tconevo:metal:10>,
    <gct_ores:stormy_metal_ingot>,
    <thaumadditions:adaminite_ingot>,
    <additions:eioaddon-blackhole_alloy_ingot>,
    <additions:mekaddon-porpezite_ingot>,
    <extrabotany:material:1>,
    <gct_mobs:cthulhurite_ingot>,
    <additions:crimsonite_ingot>,
    <additions:astral_metal_ingot>,
    <gct_ores:hermaphroditic_artifact>
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