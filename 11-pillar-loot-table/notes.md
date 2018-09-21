# How to make a Minecraft Modpack | Pillar Part 2 & Loottables
https://www.youtube.com/watch?v=ojM2UH9ApXw

# Spawners in structures are added with a structure block on "data" mode then using the spawner tag.
`spawner Skeleton`
`spawner skeleton`
`spawner minecraft:skeleton`
`spawner thermalfoundation:blizz`

# Get full entitynames with
`/tellme dump entities`

# Loottable json
Each loottable consists of pools, there can be multiple pools and unless the pools have 0 rolls or if the pool has a special condition they will all try and generate loot.
The number of rolls define how many times the pool will try and grab an entry from the entries key in the pool, and those rolls will be completely random unless the entries have different weights.

Entries can either be a type of "loot_table" or type "item", if it's the item type it can be used with functions to set a integer range on how many of the item should drop, aswell as stuff like setting how much extra items will drop per fortune/looting level.