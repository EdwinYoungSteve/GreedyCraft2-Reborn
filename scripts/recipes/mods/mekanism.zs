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
import mods.mekanism.separator;

separator.removeRecipe(<liquid:brine>);

infuser.removeRecipe(<mekanism:otherdust:1>);

infuser.addRecipe("OSGLOGLAS", 10, <mekanism:atomicalloy>, <additions:mekaddon-imaginative_alloy>);
infuser.addRecipe("PORPEZITE", 10, <additions:mekaddon-imaginative_alloy>, <additions:mekaddon-shadowing_alloy>);

enrichment.addRecipe(<jaopca:item_dustosgloglas>, <additions:mekaddon-compressed_osgloglas>);
enrichment.addRecipe(<jaopca:item_dustporpezite>, <additions:mekaddon-compressed_porpezite>);

purification.addRecipe(<thermalfoundation:material>, <gas:oxygen>, <additions:mekaddon-iron_oxide_dust>);

separator.addRecipe(<liquid:brine> * 4, 640, <gas:chlorine> * 1, <gas:sodiumhydroxide> * 2);

mods.mekanism.chemical.oxidizer.addRecipe(<minecraft:coal>, <gas:carbonoxide> * 50);
mods.mekanism.chemical.oxidizer.addRecipe(<minecraft:coal_block>, <gas:carbonoxide> * 450);
mods.mekanism.chemical.oxidizer.addRecipe(<minecraft:coal:1>, <gas:carbonoxide> * 50);
mods.mekanism.chemical.oxidizer.addRecipe(<actuallyadditions:block_misc:5>, <gas:carbonoxide> * 450);
mods.mekanism.chemical.oxidizer.addRecipe(<thermalfoundation:material:802>, <gas:carbonoxide> * 80);
mods.mekanism.chemical.oxidizer.addRecipe(<thermalfoundation:storage_resource:1>, <gas:carbonoxide> * 720);

mods.mekanism.chemical.infuser.addRecipe(<gas:oxygen>, <gas:carbonoxide> * 2, <gas:carbondioxide> * 2);
mods.mekanism.chemical.infuser.addRecipe(<gas:hydrogenchloride> * 1, <gas:water> * 1, <gas:hydrochloricacid> * 1);
mods.mekanism.chemical.infuser.addRecipe(<gas:nitrogenoxide> * 2, <gas:oxygen> * 1, <gas:nitrogendioxide> * 2);
mods.mekanism.chemical.infuser.addRecipe(<gas:hydrogen> * 3, <gas:nitrogen>, <gas:ammonia> * 2);
mods.mekanism.chemical.infuser.addRecipe(<gas:hydrogenfluoride> * 1, <gas:water> * 1, <gas:hydrofluoricacid> * 1);
mods.mekanism.chemical.infuser.addRecipe(<gas:hydrogen> * 1, <gas:fluorine> * 1, <gas:hydrogenfluoride> * 2);