/*
 * This script is created for the GreedyCraft II modpack by mc_Edwin.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 3000
#no_fix_recipe_book

import mods.inworldcrafting.FluidToItem;

FluidToItem.transform(<thebetweenlands:swamp_talisman:1>,<liquid:blackhole_alloy>*1000,[<gct_aby:shadownuclear>,<additions:cosmilite_ingot>],false); 
FluidToItem.transform(<thebetweenlands:swamp_talisman:2>,<liquid:blackhole_alloy>*1000,[<aether_legacy:dungeon_key:2>,<aether_legacy:dungeon_key:1>,<aether_legacy:dungeon_key>,<additions:cosmilite_ingot>],false); 
FluidToItem.transform(<thebetweenlands:swamp_talisman:3>,<liquid:blackhole_alloy>*1000,[<gct_aby:ancientmud>,<additions:cosmilite_ingot>],false); 
FluidToItem.transform(<thebetweenlands:swamp_talisman:4>,<liquid:blackhole_alloy>*1000,[<gct_aby:shoggothtancale>,<additions:cosmilite_ingot>],false); 
FluidToItem.transform(<moretcon:ingotrotiron>,<liquid:cosmilite>*1000,[<additions:greedycraft-rotiron_scrap>*9,<additions:greedycraft-bone_shard>],false); 
FluidToItem.transform(<thebetweenlands:bl_bucket_plant_tonic>,<liquid:stagnant_water>*1000,[<thebetweenlands:mire_scramble>,<thebetweenlands:items_misc:61>,<thebetweenlands:weeping_blue_petal_salad>,<thebetweenlands:sushi>],false); 
FluidToItem.transform(<minecraft:spawn_egg>.withTag({EntityTag: {id: "thebetweenlands:olm"}}),<liquid:cosmilite>*1000,[<thebetweenlands:mire_snail_egg>],true); 
FluidToItem.transform(<thebetweenlands:shimmer_stone>,<liquid:cosmilite>*1000,[<thebetweenlands:life_crystal>],true); 
FluidToItem.transform(<additions:greedycraft-rotiron_scrap>*8,<liquid:rottensludge>*1000,[<thebetweenlands:bl_bucket_plant_tonic>,<moretcon:ingotrunesteel>,<thebetweenlands:items_misc:11>*3,<thaumcraft:bottle_taint>],true);
FluidToItem.transform(<moretcon:ingotgravitonium>*2,<liquid:betweensludge>*4000,[<extendedcrafting:material>*2,<journey:storoningot>*8],true); 
FluidToItem.transform(<moretcon:ingotswampsteel>*2,<liquid:betweensludge>*4000,[<extendedcrafting:material>*2,<additions:greedycraft-swampsteel_scrap>*8],true); 
FluidToItem.transform(<thebetweenlands:dentrothyst_fluid_vial:1>.withTag({Fluid: {FluidName: "shallowbreath", Amount: 1000}}),<liquid:betweensludge>*1000,[<thebetweenlands:dentrothyst_fluid_vial:1>.withTag({Fluid: {FluidName: "fog", Amount: 1000}}),<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Wodren"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 2000}}]}}),<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byrginaz"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 1000}}]}}),<thebetweenlands:aspect_vial:1>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Byariis"}, storage: {hasStoredStatic: 0 as byte, storedStatic: 0, dynamic: 1000}}]}})],true);
FluidToItem.transform(<moretcon:repitemferroherb> * 3, <liquid:fierymetal> * 1000, [<twilightforest:steeleaf_ingot> * 4, <twilightforest:ironwood_raw> * 6, <twilightforest:knightmetal_ingot> * 2], true);
