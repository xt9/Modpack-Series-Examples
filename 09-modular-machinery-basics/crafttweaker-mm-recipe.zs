import mods.modularmachinery.RecipeBuilder;

/* 
    Modular Machinery Basics
    Immersive Engineering Required for script to work
    https://www.youtube.com/watch?v=5YiS2-SzSEw
 */
 
# Returns a RecipePrimer object, params are recipeName, machine registry name and processing time in ticks
var potatoRecipe = RecipeBuilder.newBuilder("radioactivePotatoes", "radiation_chamber", 120);

potatoRecipe.addItemInput(<ore:cropPotato>);
potatoRecipe.addItemOutput(<minecraft:poisonous_potato>);

# If you want to add a chance to something, do it after you've specified the input/output, so here it would be a 50% chance of getting 2 uranium dust from IE
potatoRecipe.addItemOutput(<immersiveengineering:metal:14> * 2);
potatoRecipe.setChance(0.5);
potatoRecipe.build();