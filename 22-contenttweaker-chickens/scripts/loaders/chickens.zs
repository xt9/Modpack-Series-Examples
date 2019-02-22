#loader contenttweaker
#modloaded chickens

import mods.contenttweaker.ChickenFactory;
import mods.contenttweaker.Color;

var voidChickenColor = Color.fromHex("210042");
var voidChickenColorFG = Color.fromHex("853ad1");

var voidChicken = ChickenFactory.createChicken("voidmetal_chicken", voidChickenColor, <item:thaumcraft:ingot:1> * 4);
voidChicken.setForegroundColor(voidChickenColorFG);
voidChicken.register();