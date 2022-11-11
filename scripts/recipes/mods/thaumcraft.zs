 /* 
  *  This script is created for the GreedyCraft modpack by TCreopargh.
  *  You may NOT use this script in any other publicly distributed modpack without my permission.
  */

#priority 3000
#no_fix_recipe_book

import thaumcraft.aspect.CTAspect;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;

var removedRecipes as IItemStack[] = [
    <thaumadditions:adaminite_hood>,
    <thaumadditions:adaminite_robe>,
    <thaumadditions:adaminite_belt>,
    <thaumadditions:adaminite_boots>,
    <thaumadditions:mithminite_hood>,
    <thaumadditions:mithminite_robe>,
    <thaumadditions:mithminite_belt>,
    <thaumadditions:mithminite_boots>,
    <thaumcraft:fortress_helm>,
    <thaumcraft:fortress_chest>,
    <thaumcraft:fortress_legs>,
    <thaumcraft:void_robe_helm>,
    <thaumcraft:void_robe_chest>,
    <thaumcraft:void_robe_legs>,
    <thaumadditions:adaminite_sword>,
    <thaumadditions:mithminite_scythe>,
    <thaumadditions:mithminite_blade>,
    <thaumadditions:mithminite_handle>,
    <thaumadditions:adaminite_fabric>,
    <thaumadditions:mithminite_fabric>,
    <thaumadditions:entity_summoner>,
    <thaumadditions:dna_sample>
];

for removedItem in removedRecipes {
    Infusion.removeRecipe(removedItem);
    ArcaneWorkbench.removeRecipe(removedItem);
}

mods.thaumcraft.Infusion.registerRecipe("quardstate", "", <additions:greedycraft-quardstate_star>, 15, 
[<aspect:aversio>*500, <aspect:motus>*500, <aspect:vinculum>*500, <aspect:machina>*500], 
<additions:greedycraft-arcane_crystal_ball>, [<additions:greedycraft-end_star>, <additions:greedycraft-ice_star>, <additions:greedycraft-canopy_star>, <additions:greedycraft-solarium_star>]);