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
for i in 1 to 7 {
    RecipeBuilder.newBuilder("controller_builder_refined" + i, "builder_" + i, 7200)
        .addFluidInput(<liquid:redstone> * 4000)
        .addItemInput(<appliedenergistics2:quartz_block> * 32)
        .addItemInput(<ore:gearIron>, 80)
        .addItemInput(<ore:gearCopper>, 80)
        .addItemInput(<ore:gearDiamond>, 20)
        .addItemInput(<ore:gearEmerald>, 20)
        .addItemInput(<ore:circuitBasic>, 10)
        .addItemInput(<ore:circuitAdvanced>, 5)
        .addEnergyPerTickInput(100)
        .addItemOutput(<modularcontroller:builder_2_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:builder_2"}))
        .build();
}
//进阶装配室
for i in 2 to 7 {
    RecipeBuilder.newBuilder("controller_builder_advanced" + i, "builder_" + i, 12000)
        .addFluidInput(<liquid:redstone> * 20000)
        .addItemInput(<betternether:cincinnasite_block> * 64)
        .addItemInput(<ore:gearManyullyn>, 30)
        .addItemInput(<ore:gearShadowBar>, 30)
        .addItemInput(<ore:gearDraconium>, 16)
        .addItemInput(<ore:gearWitherium>, 16)
        .addItemInput(<ore:circuitAdvanced>, 20)
        .addItemInput(<ore:circuitElite>, 8)
        .addEnergyPerTickInput(4000)
        .addItemOutput(<modularcontroller:builder_3_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:builder_3"}))
        .build();
}
//炫光装配室
for i in 3 to 7 {
    RecipeBuilder.newBuilder("controller_builder_chroma" + i, "builder_" + i, 20000)
        .addFluidInput(<liquid:redstone> * 40000)
        .addItemInput(<gct_ores:rainboquartz_block> * 96)
        .addItemInput(<ore:gearEverite>, 24)
        .addItemInput(<ore:gearDraconiumChaotic>, 12)
        .addItemInput(<ore:gearWitheriumStormy>, 12)
        .addItemInput(<ore:gearPrimordial>, 2)
        .addItemInput(<ore:gearOrichalcos>, 2)
        .addItemInput(<ore:gearChromasteel>, 2)
        .addItemInput(<ore:circuitElite>, 10)
        .addItemInput(<ore:circuitUltimate>, 4)
        .addItemInput(<ore:circuitFinal>, 1)
        .addEnergyPerTickInput(8000)
        .addItemOutput(<modularcontroller:builder_4_controller>) 
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:builder_4"})) 
        .build();
}
//耐钢熔合机
for i in 1 to 7 {
    RecipeBuilder.newBuilder("controller_durasteel_forge" + i, "builder_" + i, 3600)
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
}
//恒钢熔合机
for i in 2 to 7 {
    RecipeBuilder.newBuilder("controller_aeonsteel_forge" + i, "builder_" + i, 6000)
        .addFluidInput(<liquid:redstone> * 10000)
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
}
//炫钢熔合机
for i in 3 to 7 {
    RecipeBuilder.newBuilder("controller_chromasteel_forge" + i, "builder_" + i, 6000)
        .addFluidInput(<liquid:redstone> * 40000)
        .addItemInput(<ore:ingotModularium>, 512)
        .addItemInput(<ore:plateAeonsteel>, 12)
        .addItemInput(<ore:plateEverite>, 16)
        .addItemInput(<ore:plateOsmiridium>, 16)
        .addItemInput(<ore:plateVoid>, 16)
        .addItemInput(<ore:circuitBasic>, 20)
        .addItemInput(<ore:circuitAdvanced>, 10)
        .addEnergyPerTickInput(900)
        .addItemOutput(<modularcontroller:chromasteel_forge_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:chromasteel_forge"}))
        .build();
}
//寰宇熔合机
for i in 4 to 7 {
    RecipeBuilder.newBuilder("controller_cosmic_forge" + i, "builder_" + i, 8000)
        .addFluidInput(<liquid:redstone> * 100000)
        .addItemInput(<ore:ingotModularium>, 1024)
        .addItemInput(<ore:plateChromasteel>, 12)
        .addItemInput(<ore:plateCrimsonite>, 16)
        .addItemInput(<ore:plateAdaminite>, 2)
        .addItemInput(<ore:plateHarcadium>, 32)
        .addItemInput(<ore:plateVoidEssence>, 32)
        .addItemInput(<ore:circuitAdvanced>, 12)
        .addItemInput(<ore:circuitElite>, 8)
        .addItemInput(<ore:circuitUltimate>, 4)
        .addEnergyPerTickInput(2000)
        .addItemOutput(<modularcontroller:cosmic_forge_controller>) 
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:cosmic_forge"})) 
        .build();
}
//终焉熔合机
for i in 4 to 7 {
    RecipeBuilder.newBuilder("controller_final_forge" + i, "builder_" + i, 9000)
        .addFluidInput(<liquid:redstone> * 256000)
        .addFluidInput(<liquid:crystaltine> * 2880)
        .addItemInput(<ore:ingotModularium>, 2048)
        .addItemInput(<ore:plateCosmilite>, 8)
        .addItemInput(<ore:plateBetwnite>, 16)
        .addItemInput(<ore:plateThermallite>, 6)
        .addItemInput(<ore:plateCreativeAlloy>, 6)
        .addItemInput(<ore:plateScientificite>, 6)
        .addItemInput(<ore:circuitElite>, 16)
        .addItemInput(<ore:circuitUltimate>, 8)
        .addItemInput(<ore:circuitFinal>, 4)
        .addEnergyPerTickInput(6000)
        .addItemOutput(<modularcontroller:final_forge_controller>) 
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:final_forge"})) 
        .build();
}
//固体离心机
for i in 1 to 7 {
    RecipeBuilder.newBuilder("controller_solid_centrifuge" + i, "builder_" + i, 1800)
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
}
//液体离心机
for i in 1 to 7 {
    RecipeBuilder.newBuilder("controller_liquid_centrifuge" + i, "builder_" + i, 3600)
        .addFluidInput(<liquid:redstone> * 2000)
        .addFluidInput(<liquid:water> * 1000)
        .addFluidInput(<liquid:lava> * 1000)
        .addFluidInput(<liquid:organic_fluid> * 1000)
        .addItemInput(<ore:gearElectrum>, 16)
        .addEnergyPerTickInput(40)
        .addItemOutput(<modularcontroller:liquid_centrifuge_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:liquid_centrifuge"}))
        .build();
}
//气体离心机
for i in 3 to 7 {
    RecipeBuilder.newBuilder("controller_gas_centrifuge" + i, "builder_" + i, 4800)
        .addFluidInput(<liquid:redstone> * 4000)
        .addGasInput("oxygen", 4000)
        .addGasInput("chlorine", 4000)
        .addGasInput("hydrogen", 4000)
        .addItemInput(<ore:gearGelidEnderium>, 8)
        .addEnergyPerTickInput(40)
        .addItemOutput(<modularcontroller:gas_centrifuge_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:gas_centrifuge"}))
        .build();
}
//基础矿机
for i in 1 to 7 {
    RecipeBuilder.newBuilder("controller_miner_basic" + i, "builder_" + i, 3600)
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
}
//暮色矿机
for i in 2 to 7 {
    RecipeBuilder.newBuilder("controller_miner_twilight" + i, "builder_" + i, 3600)
        .addFluidInput(<liquid:redstone> * 5000)
        .addItemInput(<twilightforest:mazebreaker_pickaxe>)
        .addItemInput(<twilightforest:giant_pickaxe>)
        .addItemInput(<twilightforest:lamp_of_cinders>)
        .addItemInput(<ore:plateKnightmetal>, 16)
        .addItemInput(<ore:plateFierymetal>, 16)
        .addEnergyPerTickInput(40)
        .addItemOutput(<modularcontroller:miner_twilight_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:miner_twilight"}))
        .build();
}
//一阶矿机
for i in 3 to 7 {
    RecipeBuilder.newBuilder("controller_miner_advanced" + i, "builder_" + i, 3600) 
        .addFluidInput(<liquid:redstone> * 10000)
        .addItemInput(<minecraft:diamond_pickaxe> * 3)
        .addItemInput(<ore:plateDurasteel>, 8)
        .addItemInput(<ore:plateAqualite>, 8)
        .addItemInput(<ore:plateAeroite>, 8)
        .addItemInput(<ore:plateMeteor>, 8)
        .addItemInput(<ore:plateManganese>, 16)
        .addEnergyPerTickInput(40)
        .addItemOutput(<modularcontroller:miner_advanced_controller>) 
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:miner_advanced"})) 
        .build();
}
//二阶矿机
for i in 4 to 7 {
    RecipeBuilder.newBuilder("controller_miner_hardened" + i, "builder_" + i, 3600) 
        .addFluidInput(<liquid:redstone> * 50000)
        .addItemInput(<tconstruct:throwball:1> * 32)
        .addItemInput(<minecraft:tnt> * 64)
        .addItemInput(<ore:plateDraconium>, 24)
        .addItemInput(<ore:plateWitherium>, 24)
        .addItemInput(<ore:plateChromasteel>, 4)
        .addItemInput(<ore:plateFusionMatrix>, 16)
        .addItemInput(<ore:plateDraconiumAwakened>, 8)
        .addItemInput(<ore:plateWitheriumRelifed>, 8)
        .addEnergyPerTickInput(40)
        .addItemOutput(<modularcontroller:miner_hardened_controller>) 
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:miner_hardened"})) 
        .build();
}
//下界矿机
for i in 3 to 7 {
    RecipeBuilder.newBuilder("controller_miner_nether" + i, "builder_" + i, 3600)
        .addFluidInput(<liquid:redstone> * 10000)
        .addItemInput(<minecraft:diamond_pickaxe> * 3)
        .addItemInput(<ore:plateCobalt>, 24)
        .addItemInput(<ore:plateArdite>, 24)
        .addItemInput(<ore:plateLavaSolid>, 16)
        .addItemInput(<ore:plateBloodcrust>, 16)
        .addItemInput(<ore:plateMithril>, 8)
        .addEnergyPerTickInput(40)
        .addItemOutput(<modularcontroller:miner_nether_controller>) 
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:miner_nether"})) 
        .build();        
}
//极光矿机
for i in 3 to 7 {
    RecipeBuilder.newBuilder("controller_miner_aurorian" + i, "builder_" + i, 3600) 
        .addFluidInput(<liquid:redstone> * 10000)
        .addItemInput(<theaurorian:auroriansteelpickaxe>)
        .addItemInput(<ore:plateAurorianite>, 8)
        .addItemInput(<ore:plateCrystalline>, 8)
        .addItemInput(<ore:plateUmbra>, 8)
        .addItemInput(<ore:plateCerulean>, 16)
        .addItemInput(<ore:plateMoonstone>, 24)
        .addItemInput(<ore:plateAeonsteel>, 4)
        .addEnergyPerTickInput(40)
        .addItemOutput(<modularcontroller:miner_aurorian_controller>) 
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:miner_aurorian"})) 
        .build();
}
//机械高炉
for i in 2 to 7 {
    RecipeBuilder.newBuilder("controller_mechanical_blast_furnace" + i, "builder_" + i, 1200)
        .addFluidInput(<liquid:redstone> * 3000)
        .addFluidInput(<liquid:lava> * 10000)
        .addItemInput(<ore:ingotBrickScorched>, 32)
        .addItemInput(<ore:ingotModularium>, 16)
        .addEnergyPerTickInput(100)
        .addItemOutput(<modularcontroller:mechanical_blast_furnace_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mechanical_blast_furnace"}))
        .build();
}
//基因构造机
for i in 2 to 7 {
    RecipeBuilder.newBuilder("controller_gene_builder" + i, "builder_" + i, 3600)
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
}
//有机灌注机
for i in 3 to 7 {
    RecipeBuilder.newBuilder("controller_organic_infuser" + i, "builder_" + i, 4800)
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
}
//流体转换机
for i in 1 to 7 {
    RecipeBuilder.newBuilder("controller_liquid_converter" + i, "builder_" + i, 2400)
        .addFluidInput(<liquid:redstone> * 1000)
        .addFluidInput(<liquid:experience> * 2000)
        .addItemInput(<ore:ingotModularium>, 32)
        .addItemInput(<minecraft:bucket> * 8)
        .addItemInput(<ore:gearAlubrass>, 8)
        .addEnergyPerTickInput(20)
        .addItemOutput(<modularcontroller:liquid_converter_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:liquid_converter"})) 
        .build();
}
//经验发电机
for i in 2 to 7 {
    RecipeBuilder.newBuilder("controller_exp_power_generater" + i, "builder_" + i, 3600)
        .addFluidInput(<liquid:redstone> * 2000)
        .addItemInput(<ore:ingotModularium>, 64)
        .addItemInput(<ore:plateExperience>, 32)
        .addItemInput(<ore:plateElementium>, 8)
        .addEnergyPerTickInput(100)
        .addItemOutput(<modularcontroller:exp_power_generator_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:exp_power_generator"})) 
        .build();
}
//不锈钢熔炉
for i in 1 to 7 {
    RecipeBuilder.newBuilder("controller_stainlesssteel_forge" + i, "builder_" + i, 2400)
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
}
//战利品发电机
for i in 2 to 7 {
    RecipeBuilder.newBuilder("controller_loot_power_generater" + i, "builder_" + i, 3600)
        .addFluidInput(<liquid:redstone> * 2000)
        .addItemInput(<ore:ingotModularium>, 64)
        .addItemInput(<ore:plateIron>, 32)
        .addItemInput(<ore:plateGold>, 8)
        .addEnergyPerTickInput(100)
        .addItemOutput(<modularcontroller:loot_power_generator_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:loot_power_generator"})) 
        .build();
}
//暮光合金炉
for i in 3 to 7 {
    RecipeBuilder.newBuilder("controller_twilight_alloyer" + i, "builder_" + i, 4800)
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
}
//极光合金炉
for i in 3 to 7 {
    RecipeBuilder.newBuilder("controller_aurorian_alloyer" + i, "builder_" + i, 4800)
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
}
//冷凝液化机
for i in 3 to 7 {
    RecipeBuilder.newBuilder("controller_condensation_liquefactor" + i, "builder_" + i, 4000)
        .addFluidInput(<liquid:redstone> * 6000)
        .addItemInput(<ore:gearCryonium>, 16)
        .addItemInput(<ore:gearOsmium>, 16)
        .addItemInput(<ore:gearPlatinum>, 16)
        .addItemInput(<ore:gearIridium>, 16)
        .addEnergyPerTickInput(600)
        .addItemOutput(<modularcontroller:condensation_liquefactor_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:condensation_liquefactor"})) 
        .build();
}
//冷凝固化机
for i in 4 to 7 {
    RecipeBuilder.newBuilder("controller_condensation_solidificator" + i, "builder_" + i, 6000)
        .addFluidInput(<liquid:redstone> * 10000)
        .addItemInput(<ore:gearIceAlloy>, 16)
        .addItemInput(<ore:gearRuthenium>, 16)
        .addItemInput(<ore:gearRhodium>, 16)
        .addItemInput(<ore:gearPalladium>, 16)
        .addEnergyPerTickInput(800)
        .addItemOutput(<modularcontroller:condensation_solidificator_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:condensation_solidificator"})) 
        .build();
}
//魔力液化机
for i in 3 to 7 {
    RecipeBuilder.newBuilder("controller_mana_liquefactor" + i, "builder_" + i, 4200)
        .addFluidInput(<liquid:redstone> * 5000)
        .addItemInput(<ore:gearManasteel>, 8)
        .addItemInput(<ore:gearTerrasteel>, 4)
        .addItemInput(<ore:gearMirion>, 4)
        .addItemInput(<ore:gearAeonsteel>, 1)
        .addEnergyPerTickInput(120)
        .addItemOutput(<modularcontroller:mana_liquefactor_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_liquefactor"})) 
        .build();
}
//魔力释能机
for i in 4 to 7 {
    RecipeBuilder.newBuilder("controller_mana_powereducer" + i, "builder_" + i, 5000)
        .addFluidInput(<liquid:redstone> * 10000)
        .addItemInput(<ore:gearElementium>, 8)
        .addItemInput(<ore:gearElfsteel>, 4)
        .addItemInput(<ore:gearMirion>, 8)
        .addItemInput(<ore:gearChromasteel>, 1)
        .addEnergyPerTickInput(300)
        .addItemOutput(<modularcontroller:mana_powereducer_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_powereducer"})) 
        .build();
}
//空气收集器
for i in 2 to 7 {
    RecipeBuilder.newBuilder("controller_air_collector" + i, "builder_" + i, 4000)
        .addFluidInput(<liquid:redstone> * 2000)
        .addItemInput(<ore:plateOsmium>, 32)
        .addItemInput(<ore:plateIridium>, 20)
        .addItemInput(<ore:platePlatinum>, 20)
        .addItemInput(<ore:plateOsgloglas>, 16)
        .addItemInput(<ore:plateSentientMetal>, 8)
        .addItemInput(<minecraft:bucket> * 16)
        .addEnergyPerTickInput(400)
        .addItemOutput(<modularcontroller:air_collector_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:air_collector"})) 
        .build();
}
//矩阵稳定机
for i in 4 to 7 {
    RecipeBuilder.newBuilder("controller_matrix_balancer" + i, "builder_" + i, 8000)
        .addFluidInput(<liquid:redstone> * 40000)
        .addItemInput(<ore:gearFusionMatrix>, 8)
        .addItemInput(<ore:gearElectronium>, 8)
        .addItemInput(<ore:gearProtonium>, 8)
        .addItemInput(<ore:gearCosmilite>, 1)
        .addItemInput(<ore:plateRuthenium>, 16)
        .addItemInput(<ore:plateRhodium>, 16)
        .addItemInput(<ore:platePalladium>, 16)
        .addItemInput(<ore:plateOsmium>, 16)
        .addItemInput(<ore:plateIridium>, 16)
        .addItemInput(<ore:platePlatinum>, 16)
        .addItemInput(<ore:itemPurpleMatter>, 4)
        .addEnergyPerTickInput(2000)
        .addItemOutput(<modularcontroller:matrix_balancer_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:matrix_balancer"})) 
        .build();
}
//血灵祭坛
for i in 4 to 7 {
    RecipeBuilder.newBuilder("controller_blood_altar_mk7" + i, "builder_" + i, 5000)
        .addFluidInput(<liquid:redstone> * 10000)
        .addFluidInput(<liquid:lifeessence> * 160000)
        .addItemInput(<ore:plateCrimsonite>, 8)
        .addItemInput(<ore:plateChromasteel>, 4)
        .addItemInput(<ore:plateCthughate>, 12)
        .addItemInput(<ore:plateMithrillium>, 2)
        .addItemInput(<ore:plateAdaminite>, 1)
        .addItemInput(<ore:gearSentientMetal>, 3)
        .addItemInput(<ore:gearWigthium>, 2)
        .addItemInput(<additions:bloody-slate_6> * 4)
        .addEnergyPerTickInput(800)
        .addItemOutput(<modularcontroller:blood_altar_mk7_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:blood_altar_mk7"})) 
        .build();
}
//血浴祭坛
for i in 4 to 7 {
    RecipeBuilder.newBuilder("controller_blood_altar_mk8" + i, "builder_" + i, 6000)
        .addFluidInput(<liquid:redstone> * 15000)
        .addFluidInput(<liquid:lifeessence> * 1280000)
        .addItemInput(<ore:plateCrimsonite>, 8)
        .addItemInput(<ore:plateCosmilite>, 2)
        .addItemInput(<ore:plateDarkest>, 8)
        .addItemInput(<ore:plateWigthium>, 8)
        .addItemInput(<ore:gearGhostMetal>, 2)
        .addItemInput(<ore:gearBoundMetal>, 4)
        .addItemInput(<ore:gearSentientMetal>, 4)
        .addItemInput(<additions:bloody-slate_7> * 4)
        .addEnergyPerTickInput(1000)
        .addItemOutput(<modularcontroller:blood_altar_mk8_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:blood_altar_mk8"})) 
        .build();
}
//秩序注入器
for i in 4 to 7 {
    RecipeBuilder.newBuilder("controller_order_fusioner" + i, "builder_" + i, 8000)
        .addFluidInput(<liquid:redstone> * 144000)
        .addItemInput(<ore:gearDraconiumRuled>, 8)
        .addItemInput(<ore:gearWitheriumEquipment>, 8)
        .addItemInput(<ore:gearDraconium>, 64)
        .addItemInput(<ore:gearWitherium>, 64)
        .addItemInput(<ore:plateBetwnite>, 2)
        .addItemInput(<ore:plateAbyssine>, 2)
        .addItemInput(<ore:plateEugardite>, 16)
        .addItemInput(<ore:ingotBalancedMatrix>, 4)
        .addItemInput(<ore:stoneOrdered>, 64)
        .addItemInput(<ore:gemOrderCrystal>, 2)
        .addItemInput(<ore:blockChaosShard>, 1)
        .addItemInput(<ore:blockStormyShard>, 1)
        .addEnergyPerTickInput(2000)
        .addItemOutput(<modularcontroller:order_fusioner_controller>)
        .addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:order_fusioner"})) 
        .build();
}