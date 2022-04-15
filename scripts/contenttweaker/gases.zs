#loader mekatweaker

#priority 2201
#no_fix_recipe_book

import mods.mekatweaker.GasFactory;
import mods.mekatweaker.Gas;

var nitrogen = GasFactory.createGas("nitrogen");
nitrogen.setUnlocalizedName("nitrogen");
nitrogen.setColorize(true);
nitrogen.setColor(0xa3b0a3);
nitrogen.setNeedBucket(true);
nitrogen.setNeedFluid(false);
nitrogen.setIcon("blocks/gas_clear");
nitrogen.register();

var helium = GasFactory.createGas("helium");
helium.setUnlocalizedName("helium");
helium.setColorize(true);
helium.setColor(0xffb90f);
helium.setNeedBucket(true);
helium.setNeedFluid(false);
helium.setIcon("blocks/gas_clear");
helium.register();
