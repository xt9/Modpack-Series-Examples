import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

/* 
    Crafttweaker Recipe removal & Hiding things in JEI
    Requires Thermal Foundation and JEI for script to run
    https://www.youtube.com/watch?v=WeBdH91e_RA
 */


var itemArray as IItemStack[] = [
    <minecraft:fence>,
    <minecraft:nether_brick_fence>,
    <minecraft:spruce_fence>,
    <minecraft:birch_fence>,
    <minecraft:jungle_fence>,
    <minecraft:dark_oak_fence>,
    <minecraft:acacia_fence>
];

for item in itemArray {
    # The most common way of recipe
    recipes.remove(item);
}

# Furnace removal
furnace.remove(<minecraft:cooked_beef>);

# Removing by recipe id
recipes.removeByRecipeName("minecraft:light_gray_dye_from_white_tulip");

/* 
    You can remove all recipes that's registered to a specific modid with the removeByMod method
    This is sadly missing from the CrT wiki but it was added in this commit
    https://github.com/CraftTweaker/CraftTweaker/commit/815714fa1f9c6db87585add3702eec4a6ff83227
 */
recipes.removeByMod("thermalfoundation");

/* 
    JEI has a hide ingredients mode and I recommend you use it since it's easier to see what's hidden ingame.
    But if you do want to do it in CrT it's done like this
 */
JEI.hide(<minecraft:cooked_beef>);

# You can also combo recipe removal with hiding items in JEI
JEI.removeAndHide(<minecraft:golden_chestplate>);