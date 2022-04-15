/*
* This JavaScript file can be used to initialize your own solar panels.
* First off, all methods have return types (they are specified after the "=>")
* How-to: (or watch the tutorial https://youtu.be/WVr6-3E7lA8 ;3)
* 1. To create a new panel, you need to make a builder, call panel()=>SolarPanelBuilder to begin the builder chain.
* 2. Chain elements:
*    - .name("yourname")=>SolarPanelBuilder // mandatory
*    - .height(float)=>SolarPanelBuilder // optional, float value is between [0;1]
*    - .generation("amount")=>SolarPanelBuilder // mandatory, pass the number as a string
*    - .capacity("amount")=>SolarPanelBuilder // mandatory, pass the number as a string
*    - .transfer("amount")=>SolarPanelBuilder // mandatory, pass the number as a string
* 3. At the end of the chain, call .build()=>SolarPanel (alternatively, .buildAndRegister()=>SolarPanel, to skip step #5)
* 4. Languages: call after build chain end (operate on panel), start language chain with .langBuilder()=>LanguageBuilder
*    - .put("en_us", "Your Solar Panel Name")=>LanguageBuilder
*    After that, call as many lang assigns as you want:
*    - .put("lang", "Your Solar Panel Name")=>LanguageBuilder
*    End chain with .build()=>SolarPanel
* 5. Recipes: call after build chain end (operate on panel), start recipe chain with .recipeBuilder()=>RecipeBuilder
*    - .shape(string...)=>RecipeBuilder // Specify the needed string amount (1 string = 1 row)
*    After you specified the recipe shape, bind all ingredients:
*    - .bind('c', item("modid", "item_name"))=>RecipeBuilder
*    End chain with .build(AMOUNT)=>SolarPanel // AMOUNT is the int value (0;64] of items in the recipe output, if omitted, will be defaulted to 1.
* 6. To register the panel, append .register()=>SolarPanel after ending the chain.
* 7. Texturing: (all textures are stored in "textures" folder)
*      "yourname_base.png", optionally with "yourname_base.mcmeta" (for animations)
*      "yourname_top.png", optionally with "yourname_top.mcmeta" (for animations)
* 
* Additional methods & features:
*   - isModLoaded("modid")=>boolean // returns if the specified mod is loaded. Could be useful for setting up mod-dependent solar panels.
*   - you can have a line "import path.to.Class;"  to avoid using Java.type("path.to.Class") stuff. Created outside of any functions, declares a new variable with the simple class name.
*   - you can have a line "define a_key !value!" to make the compiler replace all a_key with !value! at runtime.
*/

define func function
define english "en_us"

/** This function is called when mod is being constructed */
func init()
{
	// Example: (textures are extracted in /textures/ by default), uncomment to try it out! (Requires game restart)
	
	/*
	panel()
		.name("example")
		.height(8 / 16.0)
		.generation("8388608")
		.capacity("3355443200")
		.transfer("50331648")
	.buildAndRegister()
		.langBuilder()
			.put(english, "Example Solar Panel")
			.build()
		.recipeBuilder()
			.shape("ppp", "8c8", "8h8")
			.bind('p', item("solarflux", "photovoltaic_cell_6"))
			.bind('8', item("solarflux:solar_panel_8"))
			.bind('c', item("chorus_fruit"))
			.bind('h', item("skull", 5))
		.build(2);
	*/
	panel()
		.name("solar_panel_9")
		.height(6 / 16.0)
		.capacity("25600000")
		.generation("7200")
		.transfer("3000")
	.buildAndRegister()
		.langBuilder()
			.put("en_us", "Solar Panel IX")
			.put("zh_cn", "太阳能电池板 IX")
			.build();
	panel()
		.name("solar_panel_10")
		.height(6 / 16.0)
		.capacity("51200000")
		.generation("16000")
		.transfer("7200")
	.buildAndRegister()
		.langBuilder()
			.put("en_us", "Solar Panel X")
			.put("zh_cn", "太阳能电池板 X")
			.build();
	panel()
		.name("solar_panel_11")
		.height(6 / 16.0)
		.capacity("128000000")
		.generation("32000")
		.transfer("14400")
	.buildAndRegister()
		.langBuilder()
			.put("en_us", "Solar Panel XI")
			.put("zh_cn", "太阳能电池板 XI")
			.build();
	panel()
		.name("solar_panel_12")
		.height(6 / 16.0)
		.capacity("256000000")
		.generation("72000")
		.transfer("28800")
	.buildAndRegister()
		.langBuilder()
			.put("en_us", "Solar Panel XII")
			.put("zh_cn", "太阳能电池板 XII")
			.build();
	panel()
		.name("solar_panel_13")
		.height(6 / 16.0)
		.capacity("512000000")
		.generation("165000")
		.transfer("60000")
	.buildAndRegister()
		.langBuilder()
			.put("en_us", "Solar Panel XIII")
			.put("zh_cn", "太阳能电池板 XIII")
			.build();
	panel()
		.name("solar_panel_14")
		.height(6 / 16.0)
		.capacity("1200000000")
		.generation("400000")
		.transfer("160000")
	.buildAndRegister()
		.langBuilder()
			.put("en_us", "Solar Panel XIV")
			.put("zh_cn", "太阳能电池板 XIV")
			.build();		
}