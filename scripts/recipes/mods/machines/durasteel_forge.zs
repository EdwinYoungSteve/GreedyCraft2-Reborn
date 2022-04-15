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

MMUtil.addForgeRecipe("durasteel_forge", MMUtil.getStack(<additions:durasteel_ingot>, 6), (18000 * FORGE_COST_MULTIPLIER) as int, (10000000 * FORGE_COST_MULTIPLIER) as long, [
    <tconstruct:ingots:2>,
    <additions:stainless_steel_ingot>,
    <additions:asgardium_ingot>,
    <additions:aeroite_ingot>,
    <additions:aqualite_ingot>,
    <twilightforest:fiery_ingot>,
    <nyx:meteor_ingot>
] as IItemStack[], {
    <additions:greedycraft-catalyst_star> : {
        speed: 0.85,
        energy: 0.85
    }, 
    <additions:netherite_ingot> : {
        speed: 0.5,
        energy: 0.5
    }, 
    <additions:crimsonite_ingot> : {
        speed: 0.35,
        energy: 0.35
    }, 
    <botanicadds:gaiasteel_ingot> : {
        speed: 0.35,
        energy: 0.35
    }, 
    <defiledlands:remorseful_gem> : {
        speed: 0.05,
        energy: 0.25
    }, 
    <botania:manaresource:14> : {
        speed: 0.25,
        energy: 0.25
    }, 
    <abyssalcraft:dreadiumingot> : {
        speed: 0.25,
        energy: 0.25
    },
    <tconevo:metal:30> : {
        speed: 0.2,
        energy: 0.2
    },
    <additions:greedycraft-time_shard> : {
        speed: 0.25,
        energy: 0.0
    }
} as double[string][IItemStack]);