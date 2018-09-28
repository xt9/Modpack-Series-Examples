import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.EnderCrafting;
import mods.extendedcrafting.CompressionCrafting;
import mods.extendedcrafting.CombinationCrafting;

/* 
    Extended Crafting Tutorial
    NYR
 */
 
# 7x7, so 7 arrays with 7 entries, null for empty slot
TableCrafting.addShaped(<thaumcraft:turret:2>, [
	[<thaumcraft:metal_alchemical_advanced>, <thaumcraft:metal_void>, null, null, null, <thaumcraft:metal_void>, <thaumcraft:metal_alchemical_advanced>], 
	[<thaumcraft:metal_void>, <thaumcraft:mechanism_complex>, <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>, <thaumcraft:mechanism_complex>, <thaumcraft:metal_void>], 
	[null, <ore:plateThaumium>, <thaumcraft:elemental_pick>, <thaumcraft:module:1>, <thaumcraft:elemental_pick>, <ore:plateThaumium>, null], 
	[<thaumcraft:metal_brass>, <ore:plateThaumium>, <thaumcraft:thaumatorium_top>, <thaumcraft:curiosity_band>, <thaumcraft:thaumatorium_top>, <ore:plateThaumium>, <thaumcraft:metal_brass>], 
	[null, <ore:plateThaumium>, <thaumcraft:pattern_crafter>, <thaumcraft:mind>, <thaumcraft:pattern_crafter>, <ore:plateThaumium>, null], 
	[<thaumcraft:plank_greatwood>, <thaumcraft:mechanism_complex>, <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>, <thaumcraft:mechanism_complex>, <thaumcraft:plank_greatwood>], 
	[<thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>, null, null, null, <thaumcraft:plank_greatwood>, <thaumcraft:plank_greatwood>]
]);

# 3x3, so 3 arrays with 3 entries, null for empty slot
EnderCrafting.addShaped(<thaumcraft:primordial_pearl>, [
	[null, <extendedcrafting:singularity:3>, null], 
	[<thaumcraft:nitor_red>, <thaumcraft:causality_collapser>, <thaumcraft:nitor_red>], 
	[null, <extendedcrafting:singularity:3>, null]
]);

# output, inputitem, amount, catalyst, rfCost
CompressionCrafting.addRecipe(
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"}}), 
    <minecraft:feather>, 
    1000, 
    <minecraft:chicken>, 
    100000
);

# output, rfCost, rfRate(optional), input, inputItems[]
CombinationCrafting.addRecipe(
    <thaumcraft:smelter_void>,
    100000,
    1000,
    <thaumcraft:smelter_thaumium>,
    [
        <thaumcraft:metal_void>,
        <thaumcraft:primordial_pearl>,
        <thaumcraft:primordial_pearl>,
        <thaumcraft:primordial_pearl>,
        <thaumcraft:metal_alchemical_advanced>,
        <thaumcraft:salis_mundus>
    ]
);