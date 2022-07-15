
#priority 3000
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.avaritia.ExtremeCrafting;
import mods.avaritia.Compressor;
import mods.extendedcrafting.CompressionCrafting;
import mods.ctintegration.util.RecipePattern;

val cj = <extendedcrafting:material:8>;
val gj = <extendedcrafting:material:9>;
val jy = <extendedcrafting:material:10>;
val zj = <extendedcrafting:material:11>;
val js = <extendedcrafting:material:12>;

//原版无尽贪婪奇点：
CompressionCrafting.addRecipe(<avaritia:singularity:0>, <minecraft:iron_block>, 800, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:1>, <minecraft:gold_block>, 500, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:2>, <minecraft:lapis_block>, 600, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:3>, <minecraft:redstone_block>, 600, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:4>, <minecraft:quartz_block>, 600, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:5>, <thermalfoundation:storage>, 800, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:6>, <thermalfoundation:storage:1>, 800, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:7>, <thermalfoundation:storage:3>, 800, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:8>, <thermalfoundation:storage:2>, 600, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:9>, <thermalfoundation:storage:5>, 600, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:10>, <minecraft:diamond_block>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:11>, <minecraft:emerald_block>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:12>, <redstonearsenal:storage>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:13>, <thermalfoundation:storage:6>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<avaritia:singularity:14>, <thermalfoundation:storage:7>, 400, gj, 100000000, 500000);

//JAOPCA提供奇点：
CompressionCrafting.addRecipe(<jaopca:item_singularityabyssalnite>, <abyssalcraft:ingotblock>, 500, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityadamantium>, <jaopca:block_blockadamantium>, 80, zj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityadeninite>, <additions:greedycraft-adeninite_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityaeroite>, <additions:greedycraft-aeroite_block>, 300, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityaetherium>, <additions:greedycraft-aetherium_block>, 150, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityaluminium>, <thermalfoundation:storage:4>, 800, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityaqualite>, <additions:greedycraft-aqualite_block>, 300, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityardite>, <tconstruct:metal:1>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityasgardium>, <additions:greedycraft-asgardium_block>, 300, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityastralstarmetal>, <additions:greedycraft-star_metal_block>, 300, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitybnightium>, <additions:greedycraft-bnightium_block>, 80, zj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitycanopium>, <additions:greedycraft-canopium_block>, 100, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitychromium>, <hammermetals:chrome_block>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitycobalt>, <tconstruct:metal>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitycryonium>, <additions:greedycraft-cryonium_block>, 150, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitycytosinite>, <additions:greedycraft-cytosinite_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitydilithium>, <taiga:dilithium_block>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitydraconium>, <draconicevolution:draconium_block>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityfreezite>, <additions:greedycraft-freezite_block>, 100, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityguaninite>, <additions:greedycraft-guaninite_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityharcadium>, <additions:taigaddon-harcadium_block>, 300, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityinferium>, <mysticalagriculture:ingot_storage:1>, 150, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityinfernium>, <additions:greedycraft-infernium_block>, 100, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitylavarite>, <additions:greedycraft-lavarite_block>, 150, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityliquifiedcoralium>, <abyssalcraft:ingotblock:1>, 300, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitymanganese>, <jaopca:block_blockmanganese>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitymistium>, <additions:greedycraft-mistium_block>, 80, zj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitymithril>, <thermalfoundation:storage:8>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityoceanium>, <additions:greedycraft-oceanium_block>, 80, zj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityosmium>, <mekanism:basicblock>, 600, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityplasmarite>, <additions:greedycraft-plasmarite_block>, 100, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityshadowium>, <extrabotany:blockshadowium>, 100, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitysnowingium>, <additions:greedycraft-snowingium_block>, 150, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitythyminite>, <additions:greedycraft-thyminite_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitytitanium>, <additions:greedycraft-titanium_block>, 80, zj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityumbrium>, <defiledlands:umbrium_block>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityuranium>, <minecraft:barrier>, 300, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityvoidessence>, <additions:taigaddon-void_essence_block>, 100, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityzinc>, <additions:greedycraft-zinc_block>, 600, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityamber>, <biomesoplenty:gem_block:7>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityambrosium>, <jaopca:block_blockambrosium>, 300, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityamethyst>, <biomesoplenty:gem_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityancientdebris>, <jaopca:block_blockancientdebris>, 80, zj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityapatite>, <forestry:resource_storage>, 800, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityaquamarine>, <jaopca:block_blockaquamarine>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitycertusquartz>, <jaopca:block_blockcertusquartz>, 300, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitychargedcertusquartz>, <jaopca:block_blockchargedcertusquartz>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitycoal>, <minecraft:coal_block>, 800, cj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitycoralium>, <jaopca:block_blockcoralium>, 500, gj, 100000000, 500000);
//CompressionCrafting.addRecipe(<jaopca:item_singularitydimensionalshard>, <jaopca:block_blockdimensionalshard>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityenderbiotite>, <jaopca:block_blockenderbiotite>, 300, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityhephaestite>, <defiledlands:hephaestite_block>, 500, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitymalachite>, <biomesoplenty:gem_block:5>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityperidot>, <biomesoplenty:gem_block:2>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityquartzblack>, <actuallyadditions:block_misc:2>, 300, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityruby>, <biomesoplenty:gem_block:1>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitysapphire>, <biomesoplenty:gem_block:6>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularityscarlite>, <defiledlands:scarlite_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitytanzanite>, <biomesoplenty:gem_block:4>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<jaopca:item_singularitytopaz>, <biomesoplenty:gem_block:3>, 200, jy, 100000000, 500000);
//CompressionCrafting.addRecipe(<jaopca:item_singularityniter>, <jaopca:block_blockniter>, 300, jy, 100000000, 500000);

//合成拓展模组提供奇点：
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:1>, <taiga:basalt_block>, 300, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:2>, <taiga:tiberium_block>, 500, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:3>, <taiga:aurorium_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:4>, <taiga:prometheum_block>, 150, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:5>, <taiga:duranite_block>, 150, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:6>, <taiga:valyrium_block>, 100, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:7>, <taiga:vibranium_block>, 80, zj, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:8>, <taiga:karmesine_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:9>, <taiga:ovium_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:10>, <taiga:jauxum_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:11>, <taiga:palladium_block>, 150, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:12>, <taiga:uru_block>, 100, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:13>, <taiga:osram_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:14>, <taiga:eezo_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:15>, <taiga:abyssum_block>, 200, jy, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:16>, <taiga:meteorite_block>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:17>, <taiga:obsidiorite_block>, 400, gj, 100000000, 500000);
CompressionCrafting.addRecipe(<extendedcrafting:singularity_custom:18>, <gct_ores:reditrite_block>, 200, jy, 100000000, 500000);

recipes.remove(<extendedcrafting:singularity_ultimate>);
mods.avaritia.ExtremeCrafting.addShaped("singularitycompressed1", <extendedcrafting:singularity_ultimate> * 1, [[<avaritia:singularity:0>, <avaritia:singularity:1>, <avaritia:singularity:2>, <avaritia:singularity:3>, <avaritia:singularity:4>, <avaritia:singularity:5>, <avaritia:singularity:6>, <avaritia:singularity:7>, <avaritia:singularity:8>], [<avaritia:singularity:9>, <avaritia:singularity:10>, <avaritia:singularity:11>, <avaritia:singularity:12>, <avaritia:singularity:13>, <avaritia:singularity:14>, <jaopca:item_singularityabyssalnite>, <jaopca:item_singularityadamantium>, <jaopca:item_singularityadeninite>],[<jaopca:item_singularityaeroite>, <jaopca:item_singularityaetherium>, <jaopca:item_singularityaluminium>, <jaopca:item_singularityaqualite>, <jaopca:item_singularityardite>, <jaopca:item_singularityasgardium>, <jaopca:item_singularityastralstarmetal>, <jaopca:item_singularitybnightium>, <jaopca:item_singularitycanopium>],[<jaopca:item_singularitychromium>, <jaopca:item_singularitycobalt>, <jaopca:item_singularitycryonium>, <jaopca:item_singularitycytosinite>, <jaopca:item_singularitydilithium>, <jaopca:item_singularitydraconium>, <jaopca:item_singularityfreezite>, <jaopca:item_singularityguaninite>, <jaopca:item_singularityharcadium>],[<jaopca:item_singularityinferium>, <jaopca:item_singularityinfernium>, <jaopca:item_singularitylavarite>, <jaopca:item_singularityliquifiedcoralium>, <jaopca:item_singularitymanganese>, <jaopca:item_singularitymistium>, <jaopca:item_singularitymithril>, <jaopca:item_singularityoceanium>, <jaopca:item_singularityosmium>],[<jaopca:item_singularityplasmarite>, <jaopca:item_singularityshadowium>, <jaopca:item_singularitysnowingium>, <jaopca:item_singularitythyminite>, <jaopca:item_singularitytitanium>, <jaopca:item_singularityumbrium>, <jaopca:item_singularityuranium>, <jaopca:item_singularityvoidessence>, <jaopca:item_singularityyellorium>],[<jaopca:item_singularityzinc>, <jaopca:item_singularityamber>, <jaopca:item_singularityambrosium>, <jaopca:item_singularityamethyst>, <jaopca:item_singularityancientdebris>, <jaopca:item_singularityapatite>, <jaopca:item_singularityaquamarine>, <jaopca:item_singularitycertusquartz>, <jaopca:item_singularitychargedcertusquartz>],[<jaopca:item_singularitycoal>, <jaopca:item_singularitycoralium>, <jaopca:item_singularitydimensionalshard>, <jaopca:item_singularityenderbiotite>, <jaopca:item_singularityhephaestite>, <jaopca:item_singularitymalachite>, <jaopca:item_singularityperidot>, <jaopca:item_singularityquartzblack>, <jaopca:item_singularityruby>],[<jaopca:item_singularitysapphire>, <jaopca:item_singularityscarlite>, <jaopca:item_singularitytanzanite>, <jaopca:item_singularitytopaz>, <jaopca:item_singularityniter>, <extendedcrafting:singularity_custom:1>, <extendedcrafting:singularity_custom:2>, <extendedcrafting:singularity_custom:3>, <extendedcrafting:singularity_custom:4>]]);
