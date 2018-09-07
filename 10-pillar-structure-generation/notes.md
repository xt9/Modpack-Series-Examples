# How to make a Minecraft Modpack | Structure generation basics with Pillar
https://www.youtube.com/watch?v=7f3l2z6GO-I

# Command to dump loottables (Requires loottweaker)
/crafttweaker loottables all

# Command to generate a sample of the loot table
/setblock ~ ~2 ~ minecraft:chest 1 0 {LootTable:"minecraft:chests/village_blacksmith"}

# Data block tag to spawn in said structure with the orientation of north
chest north minecraft:chests/village_blacksmith