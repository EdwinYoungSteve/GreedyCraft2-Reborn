#loader preinit

#priority 1008
#no_fix_recipe_book

import mods.treetweaker.TreeFactory;

var evileye = TreeFactory.createTree("evileye");
evileye.setTreeType("CANOPY");
evileye.setLog("gct_mobs:evileye_log");
evileye.setLeaf("gct_mobs:evileye_leaves");
evileye.setMinHeight(6);
evileye.setExtraHeight(4);
evileye.setGenFrequency(5);
evileye.setGenAttempts(1);
evileye.extraThick = false;
evileye.setGenBiome("gct_mobs:bloodyplain");
evileye.setBaseBlock("gct_mobs:bloodygrass");
evileye.setDimWhitelist(41);
evileye.addSapling();
evileye.register();

var evileye2 = TreeFactory.createTree("evileye2");
evileye2.setTreeType("CANOPY");
evileye2.setLog("gct_mobs:evileye_log");
evileye2.setLeaf("gct_mobs:evileye_leaves");
evileye2.setMinHeight(6);
evileye2.setExtraHeight(4);
evileye2.setGenFrequency(5);
evileye2.setGenAttempts(1);
evileye2.extraThick = false;
evileye2.setGenBiome("gct_mobs:curruptplain");
evileye2.setBaseBlock("gct_mobs:corruptgrass");
evileye2.setDimWhitelist(41);
evileye2.register();

var livingwood = TreeFactory.createTree("livingwood");
livingwood.setTreeType("OAK");
livingwood.setLog("gct_mobs:livingwood_log");
livingwood.setLeaf("gct_mobs:livingwood_leaves");
livingwood.setMinHeight(4);
livingwood.setExtraHeight(1);
livingwood.setGenFrequency(1);
livingwood.setGenAttempts(2);
livingwood.extraThick = false;
livingwood.setGenBiome("gct_mobs:mana_forest");
livingwood.setBaseBlock("gct_mobs:mana_grass");
livingwood.setDimWhitelist(0);
livingwood.addSapling();
livingwood.register();