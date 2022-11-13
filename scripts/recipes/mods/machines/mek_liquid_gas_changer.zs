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

RecipeBuilder.newBuilder("liquid_liquidhydrogen", "mek_changer", 1).addGasInput("hydrogen", 10).addFluidOutput(<fluid:liquidhydrogen> * 10).build();
RecipeBuilder.newBuilder("gas_liquidhydrogen", "mek_changer", 1).addFluidInput(<fluid:liquidhydrogen> * 10).addGasOutput("hydrogen", 10).build();

RecipeBuilder.newBuilder("liquid_liquidoxygen", "mek_changer", 1).addGasInput("oxygen", 10).addFluidOutput(<fluid:liquidoxygen> * 10).build();
RecipeBuilder.newBuilder("gas_liquidoxygen", "mek_changer", 1).addFluidInput(<fluid:liquidoxygen> * 10).addGasOutput("oxygen", 10).build();

RecipeBuilder.newBuilder("liquid_water", "mek_changer", 1).addGasInput("water", 10).addFluidOutput(<fluid:water> * 10).build();
RecipeBuilder.newBuilder("gas_water", "mek_changer", 1).addFluidInput(<fluid:water> * 10).addGasOutput("water", 10).build();

RecipeBuilder.newBuilder("liquid_liquidchlorine", "mek_changer", 1).addGasInput("chlorine", 10).addFluidOutput(<fluid:liquidchlorine> * 10).build();
RecipeBuilder.newBuilder("gas_liquidchlorine", "mek_changer", 1).addFluidInput(<fluid:liquidchlorine> * 10).addGasOutput("chlorine", 10).build();

RecipeBuilder.newBuilder("liquid_liquidsulfurdioxide", "mek_changer", 1).addGasInput("sulfurdioxide", 10).addFluidOutput(<fluid:liquidsulfurdioxide> * 10).build();
RecipeBuilder.newBuilder("gas_liquidsulfurdioxide", "mek_changer", 1).addFluidInput(<fluid:liquidsulfurdioxide> * 10).addGasOutput("sulfurdioxide", 10).build();

RecipeBuilder.newBuilder("liquid_liquidsulfurtrioxide", "mek_changer", 1).addGasInput("sulfurtrioxide", 10).addFluidOutput(<fluid:liquidsulfurtrioxide> * 10).build();
RecipeBuilder.newBuilder("gas_liquidsulfurtrioxide", "mek_changer", 1).addFluidInput(<fluid:liquidsulfurtrioxide> * 10).addGasOutput("sulfurtrioxide", 10).build();

RecipeBuilder.newBuilder("liquid_sulfuricacid", "mek_changer", 1).addGasInput("sulfuricacid", 10).addFluidOutput(<fluid:sulfuricacid> * 10).build();
RecipeBuilder.newBuilder("gas_sulfuricacid", "mek_changer", 1).addFluidInput(<fluid:sulfuricacid> * 10).addGasOutput("sulfuricacid", 10).build();
