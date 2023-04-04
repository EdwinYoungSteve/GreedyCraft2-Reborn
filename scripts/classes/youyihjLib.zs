/*
    Author: youyihj
    License: CC BY-NC-SA 4.0
*/

#priority 32767
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;

zenClass youyihjLib {
	zenConstructor() {
	}
	//获取物品ID 原版石头 minecraft:stone
	function getItemName(input as IItemStack) as string {
		val id as string = input.definition.id;
		val meta as int = input.metadata;
		if (meta == 0){
			return id;
		} else return (id + meta);
	}
	//获取物品ID 只是冒号由下划线取代 原版石头 minecraft_stone
	function getItemNameWithUnderline(input as IItemStack) as string {
		var mod as string = input.definition.owner;
		var id as string = input.definition.id.split(":")[1];
		var meta as int = input.metadata;
		if (meta == 0){
			return (mod + "_" + id);
		} else return (mod + "_" + id + "_" + meta);
	}
	
	//修改合成，先删后加，第一个参数true表有序，false无序，需要二维数组（即使是无序）
	function recipeTweak(isShaped as bool,out as IItemStack,input as IIngredient[][]) {
		val recipeName as string = this.getItemNameWithUnderline(out);
		recipes.remove(out,true);
		if (isShaped) {
			recipes.addShaped(recipeName,out,input);
		} else {
			recipes.addShapeless(recipeName,out,input[0]);
		}
	}	
	function createSurround(core as IIngredient,surrounded as IIngredient) as IIngredient[][] {
		return [[surrounded,surrounded,surrounded],
		[surrounded,core,surrounded],
		[surrounded,surrounded,surrounded]];
	}
	
	function createFull3(input as IIngredient) as IIngredient[][] {
		return [[input,input,input],
		[input,input,input],
		[input,input,input]];
	}
	
	function createFull2(input as IIngredient) as IIngredient[][] {
		return [[input,input],[input,input]];
	}

	function createCross(five as IIngredient, four as IIngredient) as IIngredient[][] {
		return [[five, four, five],
		[four, five, four],
		[five, four, five]];
	}
	
	//删除工作台与熔炉合成，并在JEI内隐藏
	function removeAllRecipe(input as IItemStack) as bool {
		recipes.remove(input);
		furnace.remove(input);
		furnace.setFuel(input, 0);
		mods.jei.JEI.removeAndHide(input);
		return true;
	}
	//数组复数删除
	function removeAllRecipes(input as IItemStack[]) as bool {
		for item in input {
			this.removeAllRecipe(item);
		}
		return true;
	}
	//IItemStack => youyihjItemStack;
	function getItem(stack as IItemStack) as scripts.classes.youyihjItemStack.youyihjItemStack {
		return scripts.classes.youyihjItemStack.youyihjItemStack(stack);
	}

	//从矿辞中提取金属名
	function getMetalName(arg as IOreDictEntry) as string {
		var input as string = arg.name;
		var temp as string = "";
		var i as int = input.length - 1;
		while (i >= 0) {
			temp = input[i] ~ temp;
			if (input[i].toUpperCase() == input[i]) {
				return temp;
			}
			i -= 1;
		}
		return "Invalid";
	}

	//IBlock => IItemStack
	function blockToItem(input as IBlock) as IItemStack {
		return itemUtils.getItem(input.definition.id, input.meta);
	}
}
function getYouyihjLib() as youyihjLib{
	return youyihjLib();
}

