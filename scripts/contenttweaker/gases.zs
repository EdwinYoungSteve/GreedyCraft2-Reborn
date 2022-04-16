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

var nitrogenoxide = GasFactory.createGas("nitrogenoxide");
nitrogenoxide.setUnlocalizedName("nitrogenoxide");
nitrogenoxide.setColorize(true);
nitrogenoxide.setColor(0x82a3c6);
nitrogenoxide.setNeedBucket(true);
nitrogenoxide.setNeedFluid(false);
nitrogenoxide.setIcon("blocks/gas_clear");
nitrogenoxide.register();

var nitrogendioxide = GasFactory.createGas("nitrogendioxide");
nitrogendioxide.setUnlocalizedName("nitrogendioxide");
nitrogendioxide.setColorize(true);
nitrogendioxide.setColor(0x8aaac6);
nitrogendioxide.setNeedBucket(true);
nitrogendioxide.setNeedFluid(false);
nitrogendioxide.setIcon("blocks/gas_clear");
nitrogendioxide.register();

var nitricacid = GasFactory.createGas("nitricacid");
nitricacid.setUnlocalizedName("nitricacid");
nitricacid.setColorize(true);
nitricacid.setColor(0x1200e1);
nitricacid.setNeedBucket(true);
nitricacid.setNeedFluid(false);
nitricacid.setIcon("blocks/gas_clear");
nitricacid.register();

var carbonoxide = GasFactory.createGas("carbonoxide");
carbonoxide.setUnlocalizedName("carbonoxide");
carbonoxide.setColorize(true);
carbonoxide.setColor(0x9a9c9a);
carbonoxide.setNeedBucket(true);
carbonoxide.setNeedFluid(false);
carbonoxide.setIcon("blocks/gas_clear");
carbonoxide.register();

var carbondioxide = GasFactory.createGas("carbondioxide");
carbondioxide.setUnlocalizedName("carbondioxide");
carbondioxide.setColorize(true);
carbondioxide.setColor(0x8a8b8a);
carbondioxide.setNeedBucket(true);
carbondioxide.setNeedFluid(false);
carbondioxide.setIcon("blocks/gas_clear");
carbondioxide.register();