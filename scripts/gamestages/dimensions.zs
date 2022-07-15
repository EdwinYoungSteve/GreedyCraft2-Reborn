/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

/*小小的注释：维度ID
*-11325 漆黑世界
*-1 下界
*0 主世界
*1 末地
*4 天境
*7 暮色森林
*41 裂隙彼端
*50 深渊荒原
*51 恐惧之地
*52 奥穆索
*53 黑暗领域
*100 虚空之地
*101 无名之地
*102 秩序之地
*
*
*
*
*
*
*
*
*
*
*
*/

#priority 910
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;

import scripts.util.gamestages as GameStagesUtil;

GameStagesUtil.stageTwilightShield.addDimension(-1);
GameStagesUtil.stageEnderCharm.addDimension(1);
GameStagesUtil.stageFearlessMan.addDimension(51);
GameStagesUtil.stageHardmode.addDimension(52);
GameStagesUtil.stageNether.addDimension(4);
GameStagesUtil.stageHardmode.addDimension(-11325);
