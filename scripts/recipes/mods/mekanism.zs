/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 3000
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.mekanism.infuser;
import mods.mekanism.enrichment;

infuser.removeRecipe(<mekanism:otherdust:1>);

infuser.addRecipe("OSGLOGLAS", 10, <mekanism:atomicalloy>, <additions:mekaddon-imaginative_alloy>);

enrichment.addRecipe(<plustic:osgloglasingot>, <additions:mekaddon-compressed_osgloglas>);