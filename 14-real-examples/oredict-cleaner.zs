# Call with a list of oreDictEntries the targeted mod should be removed from
# This function will purge the oredict from any items that have a modname that matches modToRemove
function oreDictModRemove(oreDictEntry as IOreDictEntry, modToRemove as string) {
    for item in oreDictEntry.items {
        if(item.definition.owner == modToRemove) {
            oreDictEntry.remove(item);
        }
    }
}