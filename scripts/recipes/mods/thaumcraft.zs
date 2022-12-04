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

Infusion.removeRecipe(<thaumicaugmentation:thaumostatic_harness>);
Infusion.removeRecipe(<thaumadditions:mithminite_ingot>);
Infusion.removeRecipe(<thaumadditions:adaminite_ingot>);

Infusion.registerRecipe("quardstate", "", <additions:greedycraft-quardstate_star>, 15, 
[<aspect:aversio>*500, <aspect:motus>*500, <aspect:vinculum>*500, <aspect:machina>*500], 
<additions:greedycraft-arcane_crystal_ball>, [<additions:greedycraft-end_star>, <additions:greedycraft-ice_star>, <additions:greedycraft-canopy_star>, <additions:greedycraft-solarium_star>]);

Infusion.registerRecipe("PRIMPEARL", "PRIMPEARL", <thaumcraft:primordial_pearl>,3, 
[<aspect:aer>*1000, <aspect:ordo>*1000, <aspect:aqua>*1000, <aspect:terra>*1000, <aspect:ignis>*1000, <aspect:perditio>*1000, <aspect:praecantatio>*1000, <aspect:auram>*1000], 
<thaumcraft:causality_collapser>,
[<thaumcraft:primordial_pearl>,<thaumcraft:void_seed>,<thaumcraft:primordial_pearl>,<thaumcraft:void_seed>]);

Infusion.registerRecipe("miyin", "TAR_MITHRILLIUM",<thaumadditions:mithrillium_ingot>,6, 
[<aspect:vitreus>*400, <aspect:metallum>*400, <aspect:potentia>*320, <aspect:alienis>*150, <aspect:praecantatio>*150, <aspect:instrumentum>*100], 
<additions:aeonsteel_ingot>,
[<thaumcraft:primordial_pearl>,<thaumicwonders:alchemist_stone>,<thaumictinkerer:energetic_nitor>,<botania:manaresource:22>,<thaumcraft:curio:1>,<thaumcraft:primordial_pearl>,<thaumicwonders:alchemist_stone>,<thaumictinkerer:energetic_nitor>,<botania:manaresource:22>,<thaumcraft:curio:1>]);


mods.thaumcraft.Infusion.registerRecipe("kengjin", "TAR_ADAMINITE",<thaumadditions:adaminite_ingot>,12, 
[<aspect:draco>*3000, <aspect:infernum>*2000, <aspect:visum>*1200,<aspect:ordo>*1000, <aspect:spiritus>*900, <aspect:cognitio>*700, <aspect:alkimia>*700, <aspect:fabrico>*500], 
<additions:chromasteel_ingot>,
[<thaumadditions:zeith_fur>,<thaumicwonders:primordial_grain>,<thaumadditions:mithrillium_resonator>,<thaumicwonders:primordial_grain>,<draconicevolution:draconic_ingot>,<thaumadditions:zeith_fur>,<thaumicwonders:primordial_grain>,<thaumadditions:mithrillium_resonator>,<thaumicwonders:primordial_grain>,<gct_ores:relifed_witherium_ingot>]);


mods.thaumcraft.Infusion.registerRecipe("jingjin", "TAR_MITHMINITE",<thaumadditions:mithminite_ingot>,18, 
[<aspect:tempus>*6666, <aspect:caeles>*6666, <aspect:exitium>*6666, <aspect:fluctus>*6666, <aspect:coralos>*6666, <aspect:dreadia>*6666], 
<additions:cosmilite_ingot>,
[<thaumadditions:adaminite_fabric>,<thaumicaugmentation:material:5>,<thaumicwonders:alienist_stone>,<additions:greedycraft-betwnite_ingot>,<thaumadditions:adaminite_fabric>,<thaumicaugmentation:material:5>,<thaumicwonders:alienist_stone>,<additions:greedycraft-betwnite_ingot>]);

mods.thaumcraft.Infusion.registerRecipe("deadman", "",<thebetweenlands:mummy_bait>,8, [<aspect:victus>*2400, <aspect:imperium>*1200,<aspect:exanimis>*1200],<thebetweenlands:items_misc:25>, [<thebetweenlands:items_misc:26>,<thebetweenlands:dentrothyst_fluid_vial:1>.withTag({Fluid: {FluidName: "shallowbreath", Amount: 1000}}),<thebetweenlands:items_misc:26>,<thebetweenlands:items_misc:13>,<thebetweenlands:items_misc:13>,<thebetweenlands:items_misc:45>,<thebetweenlands:items_misc:13>,<thebetweenlands:items_misc:13>]);
