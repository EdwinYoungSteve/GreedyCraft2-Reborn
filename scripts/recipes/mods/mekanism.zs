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
import mods.mekanism.purification;

infuser.removeRecipe(<mekanism:otherdust:1>);

infuser.addRecipe("OSGLOGLAS", 10, <mekanism:atomicalloy>, <additions:mekaddon-imaginative_alloy>);

enrichment.addRecipe(<hammermetals:osgloglas_dust>, <additions:mekaddon-compressed_osgloglas>);

purification.addRecipe(<thermalfoundation:material>, <gas:oxygen>, <additions:mekaddon-iron_oxide_dust>);

mods.mekanism.chemical.oxidizer.addRecipe(<minecraft:coal>, <gas:carbonoxide> * 50);
mods.mekanism.chemical.oxidizer.addRecipe(<minecraft:coal_block>, <gas:carbonoxide> * 450);
mods.mekanism.chemical.oxidizer.addRecipe(<minecraft:coal:1>, <gas:carbonoxide> * 50);
mods.mekanism.chemical.oxidizer.addRecipe(<actuallyadditions:block_misc:5>, <gas:carbonoxide> * 450);
mods.mekanism.chemical.oxidizer.addRecipe(<thermalfoundation:material:802>, <gas:carbonoxide> * 80);
mods.mekanism.chemical.oxidizer.addRecipe(<thermalfoundation:storage_resource:1>, <gas:carbonoxide> * 720);

mods.mekanism.chemical.infuser.addRecipe(<gas:oxygen>, <gas:carbonoxide> * 2, <gas:carbondioxide> * 2);
mods.mekanism.chemical.infuser.addRecipe(<gas:hydrogenchloride> * 500, <gas:water>, <gas:hydrochloricacid> * 500);