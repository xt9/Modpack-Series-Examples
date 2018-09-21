/* 
    CraftTweaker Renaming and Localization
    https://www.youtube.com/watch?v=VLHfo_G2im0
 */
 
# Renaming can be done on items and blocks with the IItemStack brackets
<minecraft:stick>.displayName = "Fly Flogger";

var materialName = "Rupee";
<minecraft:emerald_ore>.displayName = materialName + " Ore";
<minecraft:emerald_block>.displayName = materialName + " Block";
<minecraft:emerald>.displayName = materialName;

/* 
    If you want to localize for other languages (or rename entities) you need to use the 
    setLocalization() method on the global game field.
 */
# Localizing a entityname
game.setLocalization("entity.Sheep.name", "Super Sheep");

# Getting the entityname isn't always easy, you can use an IEntityDefinition bracket to get the localizable name, or fetch the definition with game.getEntity()
game.setLocalization("entity." + <entity:minecraft:spider>.name + ".name", "Giant Spider");
game.setLocalization("entity." + game.getEntity("cow").name + ".name", "Belgian Blue");

# You can localize for example blocks with either typing out the unlocalized string manually
game.setLocalization("tile.stone.diorite.name", "All hail diorite");

# or grabbing the unlocalized name from the IItemDefinition, however the following will not work since it's a subitem of stone
game.setLocalization(<minecraft:stone:5>.definition.name + ".name", "Annddeeesssite");

# But the following would work since it has no subitems
game.setLocalization(<minecraft:pumpkin>.definition.name + ".name", "Orange cubic melon");