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
import mod.mekanism.gas.IGasStack;

import scripts.util.machines as MMUtil;

RecipeBuilder.newBuilder("liquid_hydrogen", "mek_changer", 1).addGasInput("hydrogen", 10).addFluidOutput(<fluid:hydrogen> * 10).build();
RecipeBuilder.newBuilder("gas_hydrogen", "mek_changer", 1).addFluidInput(<fluid:hydrogen> * 10).addGasOutput("hydrogen", 10).build();

RecipeBuilder.newBuilder("liquid_oxygen", "mek_changer", 1).addGasInput("oxygen", 10).addFluidOutput(<fluid:oxygen> * 10).build();
RecipeBuilder.newBuilder("gas_oxygen", "mek_changer", 1).addFluidInput(<fluid:oxygen> * 10).addGasOutput("oxygen", 10).build();

RecipeBuilder.newBuilder("liquid_water", "mek_changer", 1).addGasInput("water", 10).addFluidOutput(<fluid:water> * 10).build();
RecipeBuilder.newBuilder("gas_water", "mek_changer", 1).addFluidInput(<fluid:water> * 10).addGasOutput("water", 10).build();

RecipeBuilder.newBuilder("liquid_liquidchlorine", "mek_changer", 1).addGasInput("chlorine", 10).addFluidOutput(<fluid:liquidchlorine> * 10).build();
RecipeBuilder.newBuilder("gas_liquidchlorine", "mek_changer", 1).addFluidInput(<fluid:liquidchlorine> * 10).addGasOutput("chlorine", 10).build();

RecipeBuilder.newBuilder("liquid_sulfur_dioxide", "mek_changer", 1).addGasInput("sulfurdioxide", 10).addFluidOutput(<fluid:sulfur_dioxide> * 10).build();
RecipeBuilder.newBuilder("gas_sulfur_dioxide", "mek_changer", 1).addFluidInput(<fluid:sulfur_dioxide> * 10).addGasOutput("sulfurdioxide", 10).build();

RecipeBuilder.newBuilder("liquid_sulfur_trioxide", "mek_changer", 1).addGasInput("sulfurtrioxide", 10).addFluidOutput(<fluid:sulfur_trioxide> * 10).build();
RecipeBuilder.newBuilder("gas_sulfur_trioxide", "mek_changer", 1).addFluidInput(<fluid:sulfur_trioxide> * 10).addGasOutput("sulfurtrioxide", 10).build();

RecipeBuilder.newBuilder("liquid_sulfuric_acid", "mek_changer", 1).addGasInput("sulfuricacid", 10).addFluidOutput(<fluid:sulfuric_acid> * 10).build();
RecipeBuilder.newBuilder("gas_sulfuric_acid", "mek_changer", 1).addFluidInput(<fluid:sulfuric_acid> * 10).addGasOutput("sulfuricacid", 10).build();

RecipeBuilder.newBuilder("liquid_hydrogenchloride", "mek_changer", 1).addGasInput("hydrogenchloride", 10).addFluidOutput(<fluid:liquidhydrogenchloride> * 10).build();
RecipeBuilder.newBuilder("gas_hydrogenchloride", "mek_changer", 1).addFluidInput(<fluid:liquidhydrogenchloride> * 10).addGasOutput("hydrogenchloride", 10).build();

RecipeBuilder.newBuilder("liquid_ethene", "mek_changer", 1).addGasInput("ethene", 10).addFluidOutput(<fluid:ethene> * 10).build();
RecipeBuilder.newBuilder("gas_ethene", "mek_changer", 1).addFluidInput(<fluid:ethene> * 10).addGasOutput("ethene", 10).build();

RecipeBuilder.newBuilder("liquid_liquidsodium", "mek_changer", 1).addGasInput("sodium", 10).addFluidOutput(<fluid:liquidsodium> * 10).build();
RecipeBuilder.newBuilder("gas_liquidsodium", "mek_changer", 1).addFluidInput(<fluid:liquidsodium> * 10).addGasOutput("sodium", 10).build();

RecipeBuilder.newBuilder("liquid_brine", "mek_changer", 1).addGasInput("brine", 10).addFluidOutput(<fluid:brine> * 10).build();
RecipeBuilder.newBuilder("gas_brine", "mek_changer", 1).addFluidInput(<fluid:brine> * 10).addGasOutput("brine", 10).build();

RecipeBuilder.newBuilder("liquid_deuterium", "mek_changer", 1).addGasInput("deuterium", 10).addFluidOutput(<fluid:deuterium> * 10).build();
RecipeBuilder.newBuilder("gas_deuterium", "mek_changer", 1).addFluidInput(<fluid:deuterium> * 10).addGasOutput("deuterium", 10).build();

RecipeBuilder.newBuilder("liquid_tritium", "mek_changer", 1).addGasInput("tritium", 10).addFluidOutput(<fluid:tritium> * 10).build();
RecipeBuilder.newBuilder("gas_tritium", "mek_changer", 1).addFluidInput(<fluid:tritium> * 10).addGasOutput("tritium", 10).build();

RecipeBuilder.newBuilder("liquid_liquidfusionfuel", "mek_changer", 1).addGasInput("fusionfuel", 10).addFluidOutput(<fluid:liquidfusionfuel> * 10).build();
RecipeBuilder.newBuilder("gas_liquidfusionfuel", "mek_changer", 1).addFluidInput(<fluid:liquidfusionfuel> * 10).addGasOutput("fusionfuel", 10).build();

RecipeBuilder.newBuilder("liquid_liquidlithium", "mek_changer", 1).addGasInput("lithium", 10).addFluidOutput(<fluid:liquidlithium> * 10).build();
RecipeBuilder.newBuilder("gas_liquidlithium", "mek_changer", 1).addFluidInput(<fluid:liquidlithium> * 10).addGasOutput("lithium", 10).build();

RecipeBuilder.newBuilder("liquid_helium", "mek_changer", 1).addGasInput("helium", 10).addFluidOutput(<fluid:helium> * 10).build();
RecipeBuilder.newBuilder("gas_helium", "mek_changer", 1).addFluidInput(<fluid:helium> * 10).addGasOutput("helium", 10).build();

RecipeBuilder.newBuilder("liquid_nitrogen", "mek_changer", 1).addGasInput("nitrogen", 10).addFluidOutput(<fluid:nitrogen> * 10).build();
RecipeBuilder.newBuilder("gas_nitrogen", "mek_changer", 1).addFluidInput(<fluid:nitrogen> * 10).addGasOutput("nitrogen", 10).build();

RecipeBuilder.newBuilder("liquid_fluorine", "mek_changer", 1).addGasInput("fluorine", 10).addFluidOutput(<fluid:fluorine> * 10).build();
RecipeBuilder.newBuilder("gas_fluorine", "mek_changer", 1).addFluidInput(<fluid:fluorine> * 10).addGasOutput("fluorine", 10).build();

RecipeBuilder.newBuilder("liquid_carbon_dioxide", "mek_changer", 1).addGasInput("carbondioxide", 10).addFluidOutput(<fluid:carbon_dioxide> * 10).build();
RecipeBuilder.newBuilder("gas_carbon_dioxide", "mek_changer", 1).addFluidInput(<fluid:carbon_dioxide> * 10).addGasOutput("carbondioxide", 10).build();

RecipeBuilder.newBuilder("liquid_carbon_monoxide", "mek_changer", 1).addGasInput("carbonoxide", 10).addFluidOutput(<fluid:carbon_monoxide> * 10).build();
RecipeBuilder.newBuilder("gas_carbon_monoxide", "mek_changer", 1).addFluidInput(<fluid:carbon_monoxide> * 10).addGasOutput("carbonoxide", 10).build();

RecipeBuilder.newBuilder("liquid_ammonia", "mek_changer", 1).addGasInput("ammonia", 10).addFluidOutput(<fluid:ammonia> * 10).build();
RecipeBuilder.newBuilder("gas_ammonia", "mek_changer", 1).addFluidInput(<fluid:ammonia> * 10).addGasOutput("ammonia", 10).build();

RecipeBuilder.newBuilder("liquid_nitrogen_oxide", "mek_changer", 1).addGasInput("nitrogenoxide", 10).addFluidOutput(<fluid:nitrogen_oxide> * 10).build();
RecipeBuilder.newBuilder("gas_nitrogen_oxide", "mek_changer", 1).addFluidInput(<fluid:nitrogen_oxide> * 10).addGasOutput("nitrogenoxide", 10).build();

RecipeBuilder.newBuilder("liquid_nitrogen_dioxide", "mek_changer", 1).addGasInput("nitrogendioxide", 10).addFluidOutput(<fluid:nitrogen_dioxide> * 10).build();
RecipeBuilder.newBuilder("gas_nitrogen_dioxide", "mek_changer", 1).addFluidInput(<fluid:nitrogen_dioxide> * 10).addGasOutput("nitrogendioxide", 10).build();

RecipeBuilder.newBuilder("liquid_nitric_acid", "mek_changer", 1).addGasInput("nitricacid", 10).addFluidOutput(<fluid:nitric_acid> * 10).build();
RecipeBuilder.newBuilder("gas_nitric_acid", "mek_changer", 1).addFluidInput(<fluid:nitric_acid> * 10).addGasOutput("nitricacid", 10).build();

RecipeBuilder.newBuilder("liquid_hydrochloric_acid", "mek_changer", 1).addGasInput("hydrochloricacid", 10).addFluidOutput(<fluid:hydrochloric_acid> * 10).build();
RecipeBuilder.newBuilder("gas_hydrochloric_acid", "mek_changer", 1).addFluidInput(<fluid:hydrochloric_acid> * 10).addGasOutput("hydrochloricacid", 10).build();