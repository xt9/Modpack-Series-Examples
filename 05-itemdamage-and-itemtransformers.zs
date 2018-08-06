import crafttweaker.item.IItemStack;

/* 
    Crafttweaker Item Damage Crafting & Item Transformers
    Requires Thermal Foundation mod for script to run
    https://www.youtube.com/watch?v=u-j57wF8nw0
 */

# array filled with IItemStack entries
var teHammers = [
    <thermalfoundation:tool.hammer_copper>,
    <thermalfoundation:tool.hammer_tin>,
    <thermalfoundation:tool.hammer_silver>,
    <thermalfoundation:tool.hammer_lead>,
    <thermalfoundation:tool.hammer_aluminum>,
    <thermalfoundation:tool.hammer_nickel>,
    <thermalfoundation:tool.hammer_platinum>,
    <thermalfoundation:tool.hammer_steel>,
    <thermalfoundation:tool.hammer_electrum>,
    <thermalfoundation:tool.hammer_invar>,
    <thermalfoundation:tool.hammer_bronze>,
    <thermalfoundation:tool.hammer_constantan>,
    <thermalfoundation:tool.hammer_iron>,
    <thermalfoundation:tool.hammer_diamond>,
    <thermalfoundation:tool.hammer_gold>
] as IItemStack[];

# when grabbing 2 vars while iterating an array the first one will be the index of the entry
for i, hammer in teHammers {
    /*  
        For each hammer in the array, add a recipe to crush iron ore into pulverized iron
        using anyDamage() so that a hammer with any damage can be used for the recipe
        and using transformDamage(3) to make sure the hammer takes 3 damage each craft
    */
    recipes.addShapeless("te_hammer_crush_iron_" + i, <thermalfoundation:material> * 2,
        [hammer.anyDamage().transformDamage(3), <ore:oreIron>]
    );
}

/*  
    buckets seem to have their own transformers, this recipe will give back an empty bucket even though
    we don't attach any transformer to the IItemStack
*/
recipes.addShapeless("poorMansSifting", <thermalfoundation:material>,
    [<minecraft:water_bucket>, <minecraft:iron_bars>.reuse(), <ore:oreIron>]
);