/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 3000
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.nuclearcraft.Melter;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Supercooler;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.Pressurizer;

Pressurizer.removeRecipeWithOutput(<thaumadditions:mithrillium_plate>);
Pressurizer.removeRecipeWithOutput(<thaumadditions:adaminite_plate>);
Pressurizer.removeRecipeWithOutput(<thaumadditions:mithminite_plate>);

Melter.addRecipe(<ore:dustSulfur>, <liquid:burningsulfurflow> * 144, 1.0, 1.0, 0.0);
Melter.addRecipe(<ore:ingotSulfur>, <liquid:burningsulfurflow> * 144, 1.0, 1.0, 0.0);

ChemicalReactor.addRecipe(<liquid:burningsulfurflow> * 36, <liquid:oxygen> * 250, <liquid:sulfur_dioxide> * 250, null);
ChemicalReactor.addRecipe(<liquid:ammonia> * 400, <liquid:oxygen> * 500, <liquid:nitrogen_oxide> * 400, <liquid:water> * 600);
ChemicalReactor.addRecipe(<liquid:nitrogen_oxide> * 500, <liquid:oxygen> * 250, <liquid:nitrogen_dioxide> * 500, null);
ChemicalReactor.addRecipe(<liquid:nitrogen_dioxide> * 750, <liquid:water> * 250, <liquid:nitric_acid> * 500, <liquid:nitrogen_oxide> * 250);

Electrolyzer.addRecipe(<liquid:brine> * 1000, <liquid:sodium_hydroxide_solution> * 666, <liquid:hydrogen> * 500, <liquid:liquidchlorine> * 500, null, 1.0d, 1.0d, 0.0d);