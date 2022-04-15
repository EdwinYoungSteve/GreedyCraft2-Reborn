/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 1150
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.abyssalcraft.Transmutator;
import mods.abyssalcraft.CreationRitual;
import mods.abyssalcraft.InfusionRitual;

Transmutator.addFuel(<abyssalcraft:cingot>, 1200);
Transmutator.addFuel(<additions:greedycraft-energy_matter_core>, 600000);

InfusionRitual.addRitual("abyssalite", 0, -1, 500, false, <abyssalcraft:abyore>,  <minecraft:iron_ore>, [
    <abyssalcraft:shadowshard>, 
    <abyssalcraft:shadowfragment>, 
    <abyssalcraft:shadowshard>, 
    <abyssalcraft:shadowfragment>, 
    <abyssalcraft:shadowshard>, 
    <abyssalcraft:shadowfragment>, 
    <abyssalcraft:shadowshard>, 
    <abyssalcraft:shadowfragment>
] as IIngredient[], false);

InfusionRitual.removeRitual(<abyssalcraft:psdl>);
InfusionRitual.addRitual("dreadland_artifact", 1, -1, 10000, true, <abyssalcraft:psdl>,  <abyssalcraft:ingotblock:1>, [<abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>
] as IIngredient[], false);

InfusionRitual.addRitual("empty_key1", 4, -1, 10000, false, <gct_ores:door_key_empty>, <abyssalcraft:gatewaykey>, [
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
] as IIngredient[], false);

InfusionRitual.addRitual("empty_key2", 4, -1, 10000, false, <gct_ores:door_key_empty>, <abyssalcraft:gatewaykeydl>, [
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
] as IIngredient[], false);

InfusionRitual.addRitual("empty_key3", 4, -1, 10000, false, <gct_ores:door_key_empty>, <abyssalcraft:gatewaykeyjzh>, [
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
] as IIngredient[], false);

InfusionRitual.addRitual("key_order", 4, 53, 100000, true, <gct_ores:door_key_of_orderland>, <gct_ores:door_key_empty>, [
    <additions:cosmilite_ingot>,
    <gct_ores:ruled_draconium_block>,
    <draconicevolution:chaotic_core>,
    <gct_ores:balanced_matrix_ingot>,
    <gct_ores:everite_block>,
    <gct_ores:balanced_matrix_ingot>,
    <gct_ores:stormy_core>,
    <gct_ores:equipment_witherium_block>
] as IIngredient[], false);

InfusionRitual.removeRitual(<ageofminecraft:fusionasorah>);
InfusionRitual.removeRitual(<ageofminecraft:fusionchagaroth>);
InfusionRitual.removeRitual(<ageofminecraft:fusionjzahar>);
InfusionRitual.removeRitual(<ageofminecraft:fusionsacthoth>);