/*
 * This script is created for the GreedyCraft Tweaks by mc_Edwin.
 */

#priority 50
#no_fix_recipe_book

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;
import mods.ctutils.utils.Math;
import mods.jei.JEI;

//强化装配室
RecipeBuilder.newBuilder("controller_builder_refined", "builder_basic", 7200)
    .addFluidInput(<liquid:redstone> * 4000)
    .addItemInput(<appliedenergistics2:quartz_block> * 32)
    .addItemInput(<ore:gearIron>, 80)
    .addItemInput(<ore:gearCopper>, 80)
    .addItemInput(<ore:gearDiamond>, 20)
    .addItemInput(<ore:gearEmerald>, 20)
    .addItemInput(<ore:circuitBasic>, 10)
    .addItemInput(<ore:circuitAdvanced>, 5)
    .addEnergyPerTickInput(100)
    .addItemOutput(<modularcontroller:builder_refined_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:builder_refined"}))
    .build();

//进阶装配室
RecipeBuilder.newBuilder("controller_builder_advanced", "builder_refined", 12000)
    .addFluidInput(<liquid:redstone> * 20000)
    .addItemInput(<betternether:cincinnasite_block> * 64)
    .addItemInput(<ore:gearManyullyn>, 30)
    .addItemInput(<ore:gearShadowBar>, 30)
    .addItemInput(<ore:gearDraconium>, 16)
    .addItemInput(<ore:gearWitherium>, 16)
    .addItemInput(<ore:circuitAdvanced>, 20)
    .addItemInput(<ore:circuitElite>, 8)
    .addEnergyPerTickInput(4000)
    .addItemOutput(<modularcontroller:builder_advanced_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:builder_advanced"}))
    .build();

//耐钢熔合机
RecipeBuilder.newBuilder("controller_durasteel_forge", "builder_basic", 3600)
    .addFluidInput(<liquid:redstone> * 4000)
    .addItemInput(<ore:plateElectrum>, 16)
    .addItemInput(<ore:plateInvar>, 16)
    .addItemInput(<ore:plateBrass>, 16)
    .addItemInput(<ore:ingotModularium>, 64)
    .addItemInput(<ore:plateStainlessSteel>, 8)
    .addItemInput(<thermalfoundation:material:514> * 8)
    .addItemInput(<thermalfoundation:material:513> * 8)
    .addEnergyPerTickInput(50)
    .addItemOutput(<modularcontroller:durasteel_forge_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:durasteel_forge"}))
    .build();

//恒钢熔合机
RecipeBuilder.newBuilder("controller_aeonsteel_forge", "builder_refined", 6000)
    .addFluidInput(<liquid:redstone> * 10000)
    .addItemInput(<modularcontroller:durasteel_forge_controller> * 1)
    .addItemInput(<ore:ingotModularium>, 128)
    .addItemInput(<ore:plateDurasteel>, 16)
    .addItemInput(<ore:plateElectrumFlux>, 16)
    .addItemInput(<ore:plateGlowingSignalum>, 16)
    .addItemInput(<ore:plateGelidEnderium>, 16)
    .addItemInput(<ore:circuitBasic>, 20)
    .addItemInput(<ore:circuitAdvanced>, 10)
    .addEnergyPerTickInput(400)
    .addItemOutput(<modularcontroller:aeonsteel_forge_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:aeonsteel_forge"}))
    .build();

//炫钢熔合机
RecipeBuilder.newBuilder("controller_chromasteel_forge", "builder_advanced", 6000)
    .addFluidInput(<liquid:redstone> * 40000)
    .addItemInput(<modularcontroller:aeonsteel_forge_controller> * 1)
    .addItemInput(<ore:ingotModularium>, 512)
    .addItemInput(<ore:plateAeonsteel>, 12)
    .addItemInput(<ore:plateEverite>, 16)
    .addItemInput(<ore:plateOsmiridium>, 16)
    .addItemInput(<ore:plateVoid>, 16)
    .addItemInput(<ore:circuitBasic>, 20)
    .addItemInput(<ore:circuitAdvanced>, 10)
    .addEnergyPerTickInput(400)
    .addItemOutput(<modularcontroller:chromasteel_forge_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:chromasteel_forge"}))
    .build();

//固体离心机
RecipeBuilder.newBuilder("controller_solid_centrifuge", "builder_basic", 1800)
    .addFluidInput(<liquid:redstone> * 1000)
    .addItemInput(<ore:plateIron>, 8)
    .addItemInput(<ore:plateCopper>, 8)
    .addItemInput(<ore:plateAluminium>, 8)
    .addItemInput(<ore:plateTin>, 8)
    .addItemInput(<ore:plateNickel>, 8)
    .addItemInput(<ore:plateLead>, 8)
    .addItemInput(<ore:plateChromium>, 8)
    .addItemInput(<ore:plateGold>, 8)
    .addItemInput(<ore:plateSilver>, 8)
    .addItemInput(<ore:gearSteel>, 4)
    .addEnergyPerTickInput(40)
    .addItemOutput(<modularcontroller:solid_centrifuge_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:solid_centrifuge"}))
    .build();

//液体离心机
RecipeBuilder.newBuilder("controller_liquid_centrifuge", "builder_basic", 3600)
    .addFluidInput(<liquid:redstone> * 2000)
    .addFluidInput(<liquid:water> * 1000)
    .addFluidInput(<liquid:lava> * 1000)
    .addFluidInput(<liquid:organic_fluid> * 1000)
    .addFluidInput(<liquid:sand> * 1000)
    .addFluidInput(<liquid:blood> * 1000)
    .addFluidInput(<liquid:crude_oil> * 1000)
    .addFluidInput(<liquid:liquidcoralium> * 1000)
    .addFluidInput(<liquid:liquidantimatter> * 1000)
    .addItemInput(<ore:gearElectrum>, 16)
    .addEnergyPerTickInput(40)
    .addItemOutput(<modularcontroller:liquid_centrifuge_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:liquid_centrifuge"}))
    .build();

//基础矿机
RecipeBuilder.newBuilder("controller_miner_basic", "builder_basic", 3600)
    .addFluidInput(<liquid:redstone> * 2000)
    .addItemInput(<minecraft:diamond_pickaxe> * 1)
    .addItemInput(<minecraft:iron_pickaxe> * 1)
    .addItemInput(<ore:plateGold>, 8)
    .addItemInput(<ore:plateSilver>, 8)
    .addItemInput(<ore:plateCopper>, 8)
    .addItemInput(<ore:plateIron>, 8)
    .addEnergyPerTickInput(40)
    .addItemOutput(<modularcontroller:miner_basic_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:miner_basic"}))
    .build();

//暮色矿机
RecipeBuilder.newBuilder("controller_miner_twilight", "builder_basic", 3600)
    .addFluidInput(<liquid:redstone> * 5000)
    .addItemInput(<twilightforest:mazebreaker_pickaxe>.withTag({ench: [{lvl: 4 as short, id: 32}, {lvl: 3 as short, id: 34}, {lvl: 2 as short, id: 35}]}))
    .addItemInput(<twilightforest:giant_pickaxe>)
    .addItemInput(<twilightforest:lamp_of_cinders>)
    .addItemInput(<ore:plateKnightmetal>, 16)
    .addItemInput(<ore:plateFierymetal>, 16)
    .addEnergyPerTickInput(40)
    .addItemOutput(<modularcontroller:miner_twilight_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:miner_twilight"}))
    .build();

//机械高炉
RecipeBuilder.newBuilder("controller_mechanical_blast_furnace", "builder_refined", 1200)
    .addFluidInput(<liquid:redstone> * 3000)
    .addFluidInput(<liquid:lava> * 10000)
    .addItemInput(<ore:ingotBrickScorched>, 32)
    .addItemInput(<ore:ingotModularium>, 16)
    .addEnergyPerTickInput(100)
    .addItemOutput(<modularcontroller:mechanical_blast_furnace_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mechanical_blast_furnace"}))
    .build();

//基因构造机
RecipeBuilder.newBuilder("controller_gene_builder", "builder_refined", 3600)
    .addFluidInput(<liquid:redstone> * 10000)
    .addItemInput(<ore:plateCytosinite>, 4)
    .addItemInput(<ore:plateThyminite>, 4)
    .addItemInput(<ore:plateGuaninite>, 4)
    .addItemInput(<ore:plateAdeninite>, 4)
    .addItemInput(<ore:gearEmerald>, 20)
    .addItemInput(<ore:circuitBasic>, 20)
    .addItemInput(<ore:circuitAdvanced>, 10)
    .addEnergyPerTickInput(200)
    .addItemOutput(<modularcontroller:gene_builder_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:gene_builder"}))
    .build();

//有机灌注机
RecipeBuilder.newBuilder("controller_organic_infuser", "builder_advanced", 4800)
    .addFluidInput(<liquid:redstone> * 10000)
    .addFluidInput(<liquid:organic_fluid> * 10000)
    .addItemInput(<ore:plateInferium>, 12)
    .addItemInput(<ore:platePrudentium>, 10)
    .addItemInput(<ore:plateIntermedium>, 8)
    .addItemInput(<ore:plateSuperium>, 6)
    .addItemInput(<ore:plateSupremium>, 4)
    .addItemInput(<ore:plateInsanium>, 2)
    .addItemInput(<ore:gearInferium>, 32)
    .addItemInput(<ore:circuitBasic>, 8)
    .addItemInput(<ore:circuitAdvanced>, 4)
    .addEnergyPerTickInput(800)
    .addItemOutput(<modularcontroller:organic_infuser_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:organic_infuser"}))
    .build();

//流体转换机
RecipeBuilder.newBuilder("controller_liquid_converter", "builder_basic", 2400)
    .addFluidInput(<liquid:redstone> * 1000)
    .addFluidInput(<liquid:experience> * 2000)
    .addItemInput(<ore:ingotModularium>, 32)
    .addItemInput(<minecraft:bucket> * 8)
    .addItemInput(<ore:gearAlubrass>, 8)
    .addEnergyPerTickInput(20)
    .addItemOutput(<modularcontroller:liquid_converter_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:liquid_converter"})) 
    .build();

//经验发电机
RecipeBuilder.newBuilder("controller_exp_power_generater", "builder_refined", 3600)
    .addFluidInput(<liquid:redstone> * 2000)
    .addItemInput(<ore:ingotModularium>, 64)
    .addItemInput(<ore:plateExperience>, 32)
    .addItemInput(<ore:plateElementium>, 8)
    .addEnergyPerTickInput(100)
    .addItemOutput(<modularcontroller:exp_power_generator_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:exp_power_generator"})) 
    .build();

//不锈钢熔炉
RecipeBuilder.newBuilder("controller_stainlesssteel_forge", "builder_basic", 2400)
    .addFluidInput(<liquid:redstone> * 1500)
    .addItemInput(<ore:plateSteel>, 16)
    .addItemInput(<ore:plateManasteel>, 4)
    .addItemInput(<ore:plateTerrasteel>, 2)
    .addItemInput(<ore:gearManganese>, 8)
    .addItemInput(<ore:gearChromium>, 8)
    .addItemInput(<ore:gearNickel>, 8)
    .addItemInput(<ore:ingotModularium>, 32)
    .addEnergyPerTickInput(50)
    .addItemOutput(<modularcontroller:stainlesssteel_forge_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:stainlesssteel_forge"})) 
    .build();

//战利品发电机
RecipeBuilder.newBuilder("controller_loot_power_generater", "builder_refined", 3600)
    .addFluidInput(<liquid:redstone> * 2000)
    .addItemInput(<ore:ingotModularium>, 64)
    .addItemInput(<ore:plateIron>, 32)
    .addItemInput(<ore:plateGold>, 8)
    .addEnergyPerTickInput(100)
    .addItemOutput(<modularcontroller:loot_power_generator_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:loot_power_generator"})) 
    .build();

//暮光合金炉
RecipeBuilder.newBuilder("controller_twilight_alloyer", "builder_advanced", 4800)
    .addFluidInput(<liquid:redstone> * 8000)
    .addItemInput(<ore:plateEden>, 4)
    .addItemInput(<ore:plateWildwood>, 4)
    .addItemInput(<ore:plateApalachia>, 4)
    .addItemInput(<ore:plateSkythern>, 4)
    .addItemInput(<ore:plateMortum>, 4)
    .addEnergyPerTickInput(600)
    .addItemOutput(<modularcontroller:twilight_alloyer_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:twilight_alloyer"})) 
    .build();

//极光合金炉
RecipeBuilder.newBuilder("controller_aurorian_alloyer", "builder_advanced", 4800)
    .addFluidInput(<liquid:redstone> * 8000)
    .addItemInput(<ore:plateMoonstone>, 4)
    .addItemInput(<ore:plateCerulean>, 4)
    .addItemInput(<ore:plateUmbra>, 2)
    .addItemInput(<ore:plateCrystalline>, 2)
    .addItemInput(<ore:Aurorianite>, 2)
    .addEnergyPerTickInput(600)
    .addItemOutput(<modularcontroller:aurorian_alloyer_controller>)
    .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:aurorian_alloyer"})) 
    .build();
