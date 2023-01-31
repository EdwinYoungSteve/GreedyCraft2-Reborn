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

MMUtil.addForgeRecipe("final_forge", <gct_ores:finallium_ingot> * 8, (96000 * FORGE_COST_MULTIPLIER) as int, (30000000000 as long * FORGE_COST_MULTIPLIER as long) as long, [
    <additions:cosmilite_ingot>,
    <gct_ores:ordered_metal_ingot>,
    <additions:eioaddon-creative_alloy_ingot>,
    <gct_ores:balanced_matrix_ingot>,
    <additions:greedycraft-betwnite_ingot>,
    <additions:mekaddon-scientificite_ingot>,
    <additions:greedycraft-legendite_ingot>,
    <additions:mekaddon-thermallite_ingot>,
    <additions:greedycraft-twilit_ingot>,
    <additions:greedycraft-murderite_ingot>,
    <additions:greedycraft-cursium_ingot>,
    <additions:greedycraft-zodiacite_ingot>,
    <additions:greedycraft-abyssine_ingot>,
    <gct_mobs:botanical_ingot_awakened>
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
        speed: 0.4,
        energy: 0.4
    },
    <projectex:matter:4> : {
        speed: 0.2,
        energy: 0.2
    },
    <projectex:matter:5> : {
        speed: 0.5,
        energy: 0.5
    },
    <projectex:matter:6> : {
        speed: 0.7,
        energy: 0.5
    },
    <additions:greedycraft-anti_entropy_matter> : {
        speed: 0.7,
        energy: 0.7
    }
} as double[string][IItemStack]);