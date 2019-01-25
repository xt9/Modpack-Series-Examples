#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;

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
windupClock.itemRightClick = function(stack, world, player, hand) {
	# Return early in the function if the world is on the client side. Prevents serious desyncs.
    if(world.isRemote()) { return "PASS"; }

	# Get the blockpos that is under the player.
    var pos = player.position.asPosition3f();
    pos.y = pos.y - 1;
    var blockPosBelowPlayer = pos.asBlockPos();

	# Check if the blockstate that is under the player matches obsidian.
    if(world.getBlockState(blockPosBelowPlayer) == <blockstate:minecraft:obsidian>) {
        Commands.call("time add 2000", player, world, false, true);
        return "PASS";
    } else {
        Commands.call('title @p times 10 30 10', player, world, false, true);
        Commands.call("title @p subtitle {\"text\":\"You need to stand on Obsidian to do that...\"}", player, world, false, true);
        Commands.call('title @p title {"text":"Hey donkey!","color":"aqua"}', player, world, false, true);
        return "FAIL";
    }
};
windupClock.register();