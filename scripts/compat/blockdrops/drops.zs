/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 40
#no_fix_recipe_book

import mods.dropt.Dropt;

vanilla.seeds.addSeed(<additions:greedycraft-plant_fibre> % 2);

Dropt.list("bedrock")
    .add(Dropt.rule()
    .matchBlocks(["minecraft:bedrock:*"])
    .replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("WHITELIST", [], "pickaxe;10;-1")
    )
    .addDrop(Dropt.drop().items([<minecraft:bedrock>])));

Dropt.list("witherium_ore")
    .add(Dropt.rule()
    .matchBlocks(["gct_ores:witherium_ore_overworld:*", "gct_ores:witherium_ore_nether:*", "gct_ores:witherium_ore_end:*"])
    .replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("WHITELIST", [], "pickaxe;8;-1")
    )
    .addDrop(Dropt.drop().items([<gct_ores:witherium_dust> * 3])));
Dropt.list("sapling_evileye")
    .add(Dropt.rule()
    .matchBlocks(["gct_mobs:evileye_leaves:*"])
    .replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "shears;127;-1")
    )
    .addDrop(Dropt.drop()
          .selector(Dropt.weight(19)) 
    ).addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
          .items([<treetweaker:evileye>])
    )
);    
Dropt.list("sapling_livingwood")
    .add(Dropt.rule()
    .matchBlocks(["gct_mobs:livingwood_leaves:*"])
    .replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "shears;127;-1")
    )
    .addDrop(Dropt.drop()
          .selector(Dropt.weight(19)) 
    ).addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
          .items([<treetweaker:livingwood>])
    )
);    
Dropt.list("sapling_dreamwood")
    .add(Dropt.rule()
    .matchBlocks(["gct_mobs:dreamwood_leaves:*"])
    .replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "shears;127;-1")
    )
    .addDrop(Dropt.drop()
          .selector(Dropt.weight(19)) 
    ).addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
          .items([<treetweaker:dreamwood>])
    )
);    
Dropt.list("end_portal_frame")
    .add(Dropt.rule()
    .matchBlocks(["minecraft:end_portal_frame:*"])
    .replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("WHITELIST", [], "pickaxe;5;-1")
      )
      .addDrop(Dropt.drop().items([<minecraft:end_portal_frame>])
));

Dropt.list("barrier")
    .add(Dropt.rule()
    .matchBlocks(["minecraft:barrier:*"])
    .replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("WHITELIST", [], "pickaxe;12;-1")
      )
      .addDrop(Dropt.drop().items([<minecraft:barrier>])
));

Dropt.list("lucky_clover")
    .add(Dropt.rule()
    .matchBlocks([
        "minecraft:tallgrass:*",
        "minecraft:vine:*",
        "biomesoplenty:plant_0:*",
        "biomesoplenty:plant_1:*",
        "biomesoplenty:willow_vine:*",
        "xlfoodmod:grass:*",
        "minecraft:double_plant:*"
    ])
    .replaceStrategy("ADD")
    .addDrop(Dropt.drop()
          .selector(Dropt.weight(199)) 
    ).addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
          .items([<additions:greedycraft-lucky_clover>])
    )
);
