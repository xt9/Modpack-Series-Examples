#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;

var liquidSlime = VanillaFactory.createFluid("liquid_slime", Color.fromHex("66d1ad")); 
liquidSlime.register();

var lightAsh = VanillaFactory.createBlock("light_ash", <blockmaterial:sand>);
lightAsh.setBlockHardness(0.5);
lightAsh.setBlockResistance(2.5);
lightAsh.setToolClass("shovel");
lightAsh.setToolLevel(0);
lightAsh.setBlockSoundType(<soundtype:sand>);
lightAsh.register();

var windupClock = VanillaFactory.createItem("windup_clock");
windupClock.maxStackSize = 1;
windupClock.register();