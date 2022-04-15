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

MMUtil.addForgeRecipe("aeonsteel_forge", MMUtil.getStack(<additions:aeonsteel_ingot>, 6), (30000 * FORGE_COST_MULTIPLIER) as int, (64000000 as long * FORGE_COST_MULTIPLIER as long) as long, [
    <additions:durasteel_ingot>,
    <tconevo:material>,
    <draconicevolution:draconium_ingot>,
    <enderio:item_alloy_endergy_ingot:3>,
    <gct_ores:genite_ingot>
] as IItemStack[], {
    <additions:greedycraft-catalyst_star> : {
        speed: 0.75,
        energy: 0.75
    }, 
    <additions:astral_metal_ingot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <draconicevolution:draconic_ingot> : {
        speed: 0.15,
        energy: 0.3
    }, 
    <extrabotany:material:1> : {
        speed: 0.35,
        energy: 0.35
    },
    <mysticalagradditions:insanium:2> : {
        speed: 0.25,
        energy: 0.05
    }, 
    <thaumcraft:ingot:1> : {
        speed: 0.2,
        energy: 0.2
    },
    <abyssalcraft:ethaxiumingot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <botanicadds:gaiasteel_ingot> : {
        speed: 0.5,
        energy: 0.4
    },
    <additions:greedycraft-time_shard> : {
        speed: 0.15,
        energy: 0.0
    }
} as double[string][IItemStack]);