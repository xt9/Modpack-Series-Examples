import crafttweaker.entity.IEntityDropFunction;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

/* 
    Adding and removing loot from entities(mobs)
    https://www.youtube.com/watch?v=Gam65KJ4RDM
 */
 
# Removing items from the final droplist
<entity:minecraft:spider>.removeDrop(<minecraft:string>);

# Clears all drops from an entity
<entity:minecraft:spider>.clearDrops();

# You can use weighted itemstacks instead of using the final "chance" parameter
<entity:minecraft:spider>.addDrop(<minecraft:apple> % 35, 1, 4);

# You can add player only drops if you don't want something to be dropped in mobfarms. Some killing mechanics "act" as a player though
<entity:minecraft:spider>.addPlayerOnlyDrop(<minecraft:fermented_spider_eye> % 50, 1, 2);

# Pass a callback to addDropFunction for the entity spider, will be called when the onEntityLivingDeathDrops event triggers in minecraft.
<entity:minecraft:spider>.addDropFunction(function(entity, damageSource) {
    // A drop function is useful when you want to do custom logic that extends beyond checking if the attacker was a player.
    if(true) {
        return <minecraft:diamond> * 2;
    }
} as IEntityDropFunction);


# Get the loottable namespaced as thaumcraft:pech and save it as a var
var pechTable = LootTables.getTable("thaumcraft:pech");

# Get the main pool from pechTable and then remove one of the entries (By entryName)
var pechMainPool = pechTable.getPool("main_pech");
pechMainPool.removeEntry("minecraft:gold_nugget");

# Adding a separate pool with 1 to 1 rolls
var customPool = pechTable.addPool("loottweaker1", 1, 1, 0, 0);
customPool.addItemEntryHelper(<thaumcraft:nitor_yellow>, 1, 1, [
    Functions.setCount(1, 3),
    Functions.lootingEnchantBonus(1, 1, 0)
], []);