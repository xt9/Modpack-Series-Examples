import mods.recipestages.Recipes;

# Set the stage of a existing recipe
Recipes.setRecipeStage("te_stage", <thermalexpansion:frame>);

## Removing default recipe and adding a new one that is gated
recipes.remove(<thermalexpansion:frame>);
Recipes.addShaped("te_frame", "te_stage", <thermalexpansion:frame>, [
    [<ore:blockGlassColorless>, <ore:ingotIron>, <ore:blockGlassColorless>],
    [<ore:cropPumpkin>, null, <ore:cropPumpkin>],
    [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>]
]);

# Gating entire mods behind a stage. 
# Not recommended since it hides large sections of progression from the player in many cases
Recipes.setRecipeStageByMod("te_stage", "thermalexpansion");