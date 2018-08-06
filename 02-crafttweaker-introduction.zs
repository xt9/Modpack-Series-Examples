import crafttweaker.item.IItemStack;

# List of common CrT data types
# https://crafttweaker.readthedocs.io/en/latest/#Vanilla/Variable_Types/Variable_Types/

# List of globally available fields in CrT
# https://crafttweaker.readthedocs.io/en/latest/#Vanilla/Global_Functions/#global-fields

/* 
    Values are saved in either
    val, var, global or static (The last 2 are not covered in the video)
    val can't change value after being declared
    var can change value after being declared
    https://ftb.gamepedia.com/How_to_Use_MineTweaker_3#Variables_and_Values
 */


/* The vars below will autocast to the commented type */
# string
var aString = "Hello world";
# int 
var aInteger = 42;
# bool
var aBoolean = false;
# null
var aNullVal = null;
# IItemStack
var aItemStack = <minecraft:stone>;
# IOreDictEntry
var aOreDictEntry = <ore:oreIron>;

# You can implicitly cast types if you don't want to rely on autocasting
var tooltip = "Test" as string;

/* 
    IItemStack array, needs to be casted and IItemStack needs to be imported
    If you need a IItemStack from an IOreDictEntry you can grab that from the firstItem field
 */
var itemArray as IItemStack[] = [
    aOreDictEntry.firstItem,
    <minecraft:stone:1>,
    <minecraft:stone:2>,
    <minecraft:stone:3>,
    <minecraft:stone:4>,
    <minecraft:stone:5>,
    <minecraft:stone:6>,
    <minecraft:grass>,
    <minecraft:dirt>,
    <minecraft:dirt:1>
];

/* 
    Since tooltip is a var we can set a new value after it's declaration.
    We still need to adhere to the original type of the var so if we want to use solely an int we need to cast it to string
 */
tooltip = 12 as string;

# We can also use string appending if we want to use a integer var without casting
tooltip = "The meaning of life? Well it's: " + aInteger;

/* 
    A loop will traverse arrays or maps(not yet covered), the code block inside of the for loop
    will execute once per entry in the array/map
    item is the handle for the current entry
 */
for item in itemArray {
    item.addTooltip(tooltip);
}

# You can also get the index of the current entry when grabbing 2 vars from the array.
for i, item in itemArray {
    # Will output the indexes of itemArray, from 0-9
    print(i);
}