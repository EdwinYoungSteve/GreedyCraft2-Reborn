/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 1250
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.botania.ElvenTrade;
import mods.botania.Apothecary;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;
import mods.botania.ManaInfusion;
import mods.botanicadds.GaiaPlate;
import mods.botaniatweaks.Agglomeration;

ElvenTrade.addRecipe([<defiledlands:scarlite>], [<ore:slimeballBlood>, <ore:gemEmerald>, <ore:gemEmerald>]);
ElvenTrade.addRecipe([<actuallyadditions:item_misc:5>], [<ore:gemQuartz>, <ore:coal>]);
ElvenTrade.addRecipe([<actuallyadditions:item_misc:5>], [<ore:gemQuartz>, <ore:charcoal>]);
ElvenTrade.addRecipe([<minecraft:gold_block>], [<ore:shardTime>]);

Apothecary.addRecipe(<additions:greedycraft-bag_of_dyes>, [<ore:petalGreen>, <ore:petalRed>, <ore:petalBlue>, <ore:petalYellow>, <ore:petalGreen>, <ore:petalRed>, <ore:petalBlue>, <ore:petalYellow>]);

PureDaisy.addRecipe(<minecraft:grass>, <minecraft:dirt>, 200);
PureDaisy.addRecipe(<ore:treeLeaves>, <gct_mobs:livingwood_leaves>, 100);
PureDaisy.addRecipe(<ore:treeSapling>, <treetweaker:livingwood>, 1200);

RuneAltar.addRecipe(<twilightforest:aurora_block> * 32, [<ore:stone>, <quark:rune:*>], 50);
RuneAltar.addRecipe(<twilightforest:castle_rune_brick> * 32, [<ore:brickStone>, <quark:rune:*>, <ore:dyePink>], 50);
RuneAltar.addRecipe(<twilightforest:castle_rune_brick:1> * 32, [<ore:brickStone>, <quark:rune:*>, <ore:dyeLightBlue>], 50);
RuneAltar.addRecipe(<twilightforest:castle_rune_brick:2> * 32, [<ore:brickStone>, <quark:rune:*>, <ore:dyeYellow>], 50);
RuneAltar.addRecipe(<twilightforest:castle_rune_brick:3> * 32, [<ore:brickStone>, <quark:rune:*>, <ore:dyePurple>], 50);
RuneAltar.addRecipe(<botania:manacookie> * 4, [<ore:foodCookie>, <ore:foodCookie>, <ore:foodCookie>, <ore:foodCookie>, <ore:manaPearl>, <ore:manaDiamond>], 3200);

RuneAltar.removeRecipe(<extrabotany:material:5>);

PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.removeRecipe(<minecraft:cobblestone>);
PureDaisy.removeRecipe(<minecraft:sand>);
PureDaisy.removeRecipe(<minecraft:packed_ice>);
PureDaisy.removeRecipe(<minecraft:obsidian>);

GaiaPlate.remove(<botanicadds:gaiasteel_ingot>);
GaiaPlate.add(<botanicadds:gaiasteel_ingot> * 4, 1000000, [<defiledlands:remorseful_gem>, <botania:manaresource:14>, <botania:manaresource:9>, <minecraft:nether_star>]);

ManaInfusion.removeRecipe(<botania:manacookie>);

ManaInfusion.addInfusion(<gct_mobs:mana_stone>, <ore:stone>, 1000);
ManaInfusion.addInfusion(<gct_mobs:mana_cobble_stone>, <ore:cobblestone>, 1000);
ManaInfusion.addInfusion(<gct_mobs:mana_dirt>, <ore:dirt>, 1000);
ManaInfusion.addInfusion(<gct_mobs:mana_grass>, <ore:grass>, 1000);
ManaInfusion.addInfusion(<botania:livingwood>, <gct_mobs:livingwood_log>, 0);
ManaInfusion.addInfusion(<additions:botaniaddon-manasteel_ore>, <ore:oreIron>, 8000);
ManaInfusion.addInfusion(<additions:botaniaddon-manadiamond_ore>, <ore:oreDiamond>, 20000);
ManaInfusion.addInfusion(<additions:botaniaddon-manaquartz_ore>, <ore:oreQuartz>, 500);
ManaInfusion.addInfusion(<additions:botaniaddon-manalapis_ore>, <ore:oreLapis>, 10000);

Agglomeration.addRecipe(<additions:botaniaddon-elfsteel_ingot>, [<botania:manaresource:7>, <botania:manaresource:9>, <botania:manaresource:8>], 1000000, 0xED339A, 0xE67800, <botanicadds:dreamrock>, <botanicadds:mana_lapis_block>, <botanicadds:dreamrock>, null, null, null);

for input in pureDaisyTransmutations {
    var output as IItemStack = pureDaisyTransmutations[input];
    PureDaisy.addRecipe(input, output);
}
