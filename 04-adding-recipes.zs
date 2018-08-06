import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

/* 
    Crafttweaker Shaped and Shapeless recipes
    https://www.youtube.com/watch?v=xXm10FaAvXY
 */

# We'll use x as a token for pumpkin seeds in this recipe, as they will become more readable.
var x = <minecraft:pumpkin_seeds>;

/*
    addShaped()
    recipename - identifier of the recipe
    output - IItemStack
    inputs - a two dimensional array of inputs, think of each array entry as a row
            Each row can hold 1-3 IIngredients, and you can have 1-3 rows, so the following 3 recipes are valid
 */
# 1 row, each row populated with 2 IIngredients
recipes.addShaped("cropPumpkingExample1", <ore:cropPumpkin>.firstItem, [
    [x, x]
]);

# 2 rows, each row populated with 2 IIngredients
recipes.addShaped("cropPumpkingExample2", <ore:cropPumpkin>.firstItem * 2, [
    [x, x],
    [x, x]
]);

# 3 row, each row populated with 3 IIngredients
recipes.addShaped("cropPumpkingExample3", <ore:cropPumpkin>.firstItem * 3, [
    [x, x, x],
    [x, x, x],
    [x, x, x]
]);


# Mirrored recipes can be mirrored in the crafting grid, so the following example would match / and \
recipes.addShapedMirrored("cropPumpkingExample4", <ore:cropPumpkin>.firstItem * 2, [
    [x, null, null],
    [null, x, null],
    [null, null, x]
]);


/*
    addShapeless()
    recipename - identifier of the recipe
    output - IItemStack
    inputs - a one dimensional array of inputs, shape in grid will not matter
 */
recipes.addShapeless("cropPumpkingExample5", <ore:cropPumpkin>.firstItem * 12, [x, x, <minecraft:pumpkin_pie>]);
