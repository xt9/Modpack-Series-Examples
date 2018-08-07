import crafttweaker.oredict.IOreDictEntry;

/* 
    Crafttweaker Crafttweaker Maps/Associative Arrays
    Immersive Engineering Required for script to work (Thermal Foundation is optional)
    Video not yet released.

    A map (or an Associative Array, which is the proper term) is a data-type that's similiar to arrays.
    The big difference being that a map can have non-numeric indexes.

    A map is declared with the {} brackets and entries are specified as key: value

    Text before the key separator ":" will be interpreted as strings even if they don't have
    the quotation marks, so both iron and "iron" would later be accessed through map["iron"]

    You could fetch the IOreDictEntry for oreIron from the metalObjects map 
        with -> metalObjects["iron"].ore

    When wondering what key represents what nesting level just read 
        "as IOreDictEntry[string][string]" LEFT to right
        So for example:
            First [string] bracket represents the level where the iron, gold and copper keys are
            Second [string] bracket represents the level where the ore and dust keys are
            Thidrly IOreDictEntry, The value.
 */
var metalObjects as IOreDictEntry[string][string] = {
    iron: {
        ore: <ore:oreIron>,
        dust: <ore:dustIron>
    },
    gold: {
        ore: <ore:oreGold>,
        dust: <ore:dustGold>
    },
    copper: {
        ore: <ore:oreCopper>,
        dust: <ore:dustCopper>
    },
    silver: {
        ore: <ore:oreSilver>,
        dust: <ore:dustSilver>
    }
};

/* 
    You can access nested maps like these with 
    either the key, value iterator and grab the nested map from -> value
    or the key iterator and get the nested map from -> metalObjects[key]
 */
for key, value in metalObjects {
    recipes.addShapeless(value.dust.firstItem * 4, 
        [<immersiveengineering:tool>, value.ore]
    ); 
}

for key in metalObjects {
    recipes.addShapeless(metalObjects[key].dust.firstItem * 4, 
        [<immersiveengineering:tool>, metalObjects[key].ore]
    ); 
}
