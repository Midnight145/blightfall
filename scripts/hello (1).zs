// Minetweaker recipes and changes

print("SCRIPT: Hello World");

// Add recipe for the Quest book
recipes.addShapeless(<HardcoreQuesting:quest_book>, [<minecraft:coal:*>, <TConstruct:blankPattern>]);

// Change the diamond armor to be made from cobalt and rename it
recipes.remove(<minecraft:diamond_helmet>);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.remove(<minecraft:diamond_leggings>);
recipes.remove(<minecraft:diamond_boots>);

val cobalt = (<TConstruct:materials:3>);
recipes.addShaped(<minecraft:diamond_helmet>, [[cobalt, cobalt, cobalt], [cobalt, null, cobalt]]);
recipes.addShaped(<minecraft:diamond_chestplate>, [[cobalt, null, cobalt], [cobalt, cobalt, cobalt], [cobalt, cobalt, cobalt]]);
recipes.addShaped(<minecraft:diamond_leggings>, [[cobalt, cobalt, cobalt], [cobalt, null, cobalt], [cobalt, null, cobalt]]);
recipes.addShaped(<minecraft:diamond_boots>, [[null, null, null], [cobalt, null, cobalt], [cobalt, null, cobalt]]);

<minecraft:diamond_helmet>.displayName = "Cobalt Helmet";
<minecraft:diamond_chestplate>.displayName = "Cobalt Chestplate";
<minecraft:diamond_leggings>.displayName = "Cobalt Leggings";
<minecraft:diamond_boots>.displayName = "Cobalt Boots";

// Add bitumen x8 to rubber recipe
val bitumen = <Metallurgy:utility.item:4>;
recipes.addShapeless(<MineFactoryReloaded:rubber.raw>, [bitumen, bitumen, bitumen, bitumen, bitumen, bitumen, bitumen, bitumen]);

// Craft Silk-Touched Silverwood Leaves Into Normal Ones
recipes.addShapeless(<Thaumcraft:blockMagicalLeaves:1>, [<Thaumcraft:blockMagicalLeaves:5>]);
recipes.addShapeless(<Thaumcraft:blockMagicalLeaves:1>, [<Thaumcraft:blockMagicalLeaves:9>]);
recipes.addShapeless(<Thaumcraft:blockMagicalLeaves:1>, [<Thaumcraft:blockMagicalLeaves:13>]);

// Alchemic Chemistry Set Recipes
// Ethereal Blooms
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:4>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, <minecraft:diamond>], 3, 2000);

// Shimmerleaves
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:yellow_flower>], 2, 500);
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:red_flower>], 2, 500);
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:red_flower:1>], 2, 500);
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:red_flower:2>], 2, 500);
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:red_flower:3>], 2, 500);
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:2>, [<Thaumcraft:blockMagicalLeaves:1>, <Thaumcraft:blockMagicalLeaves:1>, 
<Thaumcraft:ItemResource:3>, <Thaumcraft:blockMagicalLog:1>, <minecraft:red_flower:8>], 2, 500);

// Greatwood Saplings
mods.bloodmagic.Alchemy.addRecipe(<Thaumcraft:blockCustomPlant:0>, [<minecraft:sapling>, <Thaumcraft:blockCrystal:0>,
                                  <Thaumcraft:blockCrystal:1>, <Thaumcraft:blockCrystal:2>, <Thaumcraft:blockCrystal:3>], 3, 2000);

// Necrotic Bones
mods.bloodmagic.Alchemy.addRecipe(<TConstruct:materials:8>, [<Thaumcraft:blockTaint:2>, <AWWayofTime:tennebrae>,
<minecraft:bone>, <Thaumcraft:ItemShard:5>, <Thaumcraft:ItemShard:5>], 3, 2000);

// Wither Skeleton Skull Infusion
mods.thaumcraft.Research.addResearch("WITHERINFUSION", "ALCHEMY", "tenebrae 10, exanimis 10, perditio 10, infernus 10", -7, -1, 4, <minecraft:skull:1>);
mods.thaumcraft.Research.addPrereq("WITHERINFUSION", "ENTROPICPROCESSING", false);
mods.thaumcraft.Research.addPrereq("WITHERINFUSION", "INFUSION", false);
mods.thaumcraft.Research.setConcealed("WITHERINFUSION", true);

game.setLocalization("en_US", "tc.research_name.WITHERINFUSION", "Wither Infusion");
game.setLocalization("en_US", "tc.research_text.WITHERINFUSION", "Corrupting uncorrupted skulls");

mods.thaumcraft.Research.addPage("WITHERINFUSION", "cavestokingdoms.research_page.WITHERINFUSION");
game.setLocalization("en_US", "cavestokingdoms.research_page.WITHERINFUSION", "The lack of nether strongholds would normally make summoning withers hard. That being said, the ambient magic of this planet might make it possible to wither a normal skeleton skull, bypassing the need for the nether altogether. Now all you need to do is find normal skeletons. That... might also be a challenge, come to think of it.");

mods.thaumcraft.Infusion.addRecipe("WITHERINFUSION", <minecraft:skull:0>, [<minecraft:coal_block>, <minecraft:coal_block>, <minecraft:obsidian>, <minecraft:obsidian>, <minecraft:nether_brick>, <minecraft:nether_brick>, <TConstruct:swordBlade:1>, <TConstruct:swordBlade:1>], "tenebrae 24, exanimis 32, perditio 48, infernus 64", <minecraft:skull:1>, 6);

mods.thaumcraft.Research.addInfusionPage("WITHERINFUSION", <minecraft:skull:1>);

// Silverwood Sapling Infusion
mods.thaumcraft.Research.addResearch("SILVERWOODINFUSION", "ALCHEMY", "auram 10, arbor 10, praecantatio 10, sano 10", -2, -4, 4, <Thaumcraft:blockCustomPlant:1>);
game.setLocalization("en_US", "tc.research_name.SILVERWOODINFUSION", "Silverwood Infusion");
game.setLocalization("en_US", "tc.research_text.SILVERWOODINFUSION", "Promoting Trees");

mods.thaumcraft.Research.addPrereq("SILVERWOODINFUSION", "ETHEREALBLOOM", false);
mods.thaumcraft.Research.addPrereq("SILVERWOODINFUSION", "INFUSION", false);
mods.thaumcraft.Research.setConcealed("SILVERWOODINFUSION", true);

mods.thaumcraft.Research.addPage("SILVERWOODINFUSION", "cavestokingdoms.research_page.SILVERWOODINFUSION");
game.setLocalization("en_US", "cavestokingdoms.research_page.SILVERWOODINFUSION", "You could always use more silverwood trees, but you are loathe to chop down the ones you have, because you cannot guarantee that they give you a sapling. Instead, you have developed a way to infuse oak saplings with magic, transforming them into silverwood saplings.");

mods.thaumcraft.Infusion.addRecipe("SILVERWOODINFUSION", <minecraft:sapling>, [<ThermalFoundation:material:66>, <ThermalFoundation:material:66>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>, <Thaumcraft:ItemShard:6>], "arbor 128, auram 32, praecantatio 128, sano 48", <Thaumcraft:blockCustomPlant:1>, 6);

mods.thaumcraft.Research.addInfusionPage("SILVERWOODINFUSION", <Thaumcraft:blockCustomPlant:1>);

// AS+ Helm Infusion
recipes.remove(<ArchimedesShipsPlus:marker>);
mods.thaumcraft.Research.addResearch("FLYINGSHIP", "ARTIFICE", "machina 6, potentia 6, iter 6, motus 6, volatus 6", -6, 2, 4, <ArchimedesShipsPlus:marker>);

mods.thaumcraft.Research.addPrereq("FLYINGSHIP", "INFUSION", false);
mods.thaumcraft.Research.setConcealed("FLYINGSHIP", true);

game.setLocalization("en_US", "tc.research_name.FLYINGSHIP", "Flying Ships");
game.setLocalization("en_US", "tc.research_text.FLYINGSHIP", "Scouting in Style");
game.setLocalization("en_US", "cavestokingdoms.research_page.FLYINGSHIP", "The Jaded expects you to scout, and yet they keep all the aircraft for themselves. Hardly seems fair. <BR>Whatever. You can just make your own aircraft. The Ship Helm allows you to create ships. It is the core of the 'Archimedes Ships' mod. Search the internet for more information on how to use that mod; only the recipe for the ship helm has changed.");
game.setLocalization("en_US", "cavestokingdoms.research_page.FLYINGSHIP2", "Only certain blocks will work on a ship. Most vanilla or decorative blocks will work. Most mod-added blocks that have a function of some kind will not. These airships are suitable to be transportation, not mobiles bases.");
mods.thaumcraft.Infusion.addRecipe("FLYINGSHIP", <Thaumcraft:blockMagicalLog>, [<minecraft:redstone_block>, <ThermalFoundation:material:134>, <ThermalFoundation:material:136>, <minecraft:redstone_block>, <ThermalFoundation:material:134>, <ThermalFoundation:material:136>],
	"machina 24, potentia 32, iter 32, motus 32, volatus 16", <ArchimedesShipsPlus:marker>, 4);
mods.thaumcraft.Research.addPage("FLYINGSHIP", "cavestokingdoms.research_page.FLYINGSHIP");
mods.thaumcraft.Research.addInfusionPage("FLYINGSHIP", <ArchimedesShipsPlus:marker>);
mods.thaumcraft.Research.addPage("FLYINGSHIP", "cavestokingdoms.research_page.FLYINGSHIP2");

// Glowshroom alchemy
mods.thaumcraft.Crucible.addRecipe("PLANTCONJURATION", <Natura:Glowshroom:0>, <Botania:mushroom:5>, "lux 5, spiritus 2, infernus 2");
mods.thaumcraft.Crucible.addRecipe("PLANTCONJURATION", <Natura:Glowshroom:1>, <Botania:mushroom:10>, "lux 5, spiritus 2, infernus 2");
mods.thaumcraft.Crucible.addRecipe("PLANTCONJURATION", <Natura:Glowshroom:2>, <Botania:mushroom:11>, "lux 5, spiritus 2, infernus 2");
mods.thaumcraft.Research.addCruciblePage("PLANTCONJURATION", <Natura:Glowshroom:0>);
mods.thaumcraft.Research.addCruciblePage("PLANTCONJURATION", <Natura:Glowshroom:1>);
mods.thaumcraft.Research.addCruciblePage("PLANTCONJURATION", <Natura:Glowshroom:2>);

// Remove metal from Milk
mods.thaumcraft.Aspects.remove(<MineFactoryReloaded:milkbottle>, "metallum 6");

// Language Samples
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 1, [<TabulaRasa:RasaItem0:1>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 1, [<TabulaRasa:RasaItem0:2>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 2, [<TabulaRasa:RasaItem0:3>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 3, [<TabulaRasa:RasaItem0:4>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 4, [<TabulaRasa:RasaItem0:5>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 5, [<TabulaRasa:RasaItem0:6>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 6, [<TabulaRasa:RasaItem0:7>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 7, [<TabulaRasa:RasaItem0:8>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 8, [<TabulaRasa:RasaItem0:9>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 9, [<TabulaRasa:RasaItem0:10>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 10, [<TabulaRasa:RasaItem0:11>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 12, [<TabulaRasa:RasaItem0:12>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 15, [<TabulaRasa:RasaItem0:13>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 17, [<TabulaRasa:RasaItem0:14>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 25, [<TabulaRasa:RasaItem0:15>]);
recipes.addShapeless(<TabulaRasa:RasaItem0:16> * 4, [<TabulaRasa:RasaItem0:0>]);

<TabulaRasa:RasaItem0:1>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:2>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:3>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:4>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:5>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:6>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:7>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:8>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:9>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:10>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:11>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:12>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:13>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:14>.addTooltip("Can be crafted into");
<TabulaRasa:RasaItem0:15>.addTooltip("Can be crafted into");

<TabulaRasa:RasaItem0:1>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:2>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:3>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:4>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:5>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:6>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:7>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:8>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:9>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:10>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:11>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:12>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:13>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:14>.addTooltip(format.aqua("Language Samples."));
<TabulaRasa:RasaItem0:15>.addTooltip(format.aqua("Language Samples."));

<TabulaRasa:RasaItem0:0>.addTooltip("Can be crafted into "+format.aqua("Language"));
<TabulaRasa:RasaItem0:0>.addTooltip(format.aqua("Samples.")+format.darkGray(format.italic(" Hendon Myre isn't")));
<TabulaRasa:RasaItem0:0>.addTooltip(format.darkGray(format.italic("the only old city with a legacy.")));

<TabulaRasa:RasaItem0:16>.addTooltip("A quest item for the Jaded");

<TabulaRasa:RasaItem0:17>.addTooltip("A quest item for the Jaded. Also");
<TabulaRasa:RasaItem0:17>.addTooltip("can be crafted into "+format.aqua("2 String."));

// Tabula Rasa Items
recipes.addShapeless(<minecraft:string> * 2, [<TabulaRasa:RasaItem0:17>]);

<TabulaRasa:RasaItem0:18>.addTooltip("A crafting item. Used to");
<TabulaRasa:RasaItem0:18>.addTooltip("translate alien texts.");

<TabulaRasa:RasaItem0:19>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:19>.addTooltip(format.aqua("Device")+format.gray(" to translate! Too valuable"));
<TabulaRasa:RasaItem0:19>.addTooltip("to break into language samples.");

<TabulaRasa:RasaItem0:22>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:22>.addTooltip(format.aqua("Device")+format.gray(" to translate! Too valuable"));
<TabulaRasa:RasaItem0:22>.addTooltip("to break into language samples.");

<TabulaRasa:RasaItem0:23>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:23>.addTooltip(format.aqua("Device")+format.gray(" to translate!"));

<TabulaRasa:RasaItem0:24>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:24>.addTooltip(format.aqua("Device")+format.gray(" to translate!"));

<TabulaRasa:RasaItem0:25>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:25>.addTooltip(format.aqua("Device")+format.gray(" to translate!"));

<TabulaRasa:RasaItem0:26>.addTooltip("Craft together with a "+format.aqua("Translation"));
<TabulaRasa:RasaItem0:26>.addTooltip(format.aqua("Device")+format.gray(" to translate!"));

recipes.addShapeless(<blighttweaks:researchNote>, [<TabulaRasa:RasaItem0:22>, <TabulaRasa:RasaItem0:18>]);
recipes.addShapeless(<cavestokingdoms:basicManual:6>, [<TabulaRasa:RasaItem0:23>, <TabulaRasa:RasaItem0:18>]);
recipes.addShapeless(<cavestokingdoms:basicManual:7>, [<TabulaRasa:RasaItem0:24>, <TabulaRasa:RasaItem0:18>]);
recipes.addShapeless(<cavestokingdoms:basicManual:8>, [<TabulaRasa:RasaItem0:25>, <TabulaRasa:RasaItem0:18>]);
recipes.addShapeless(<cavestokingdoms:basicManual:9>, [<TabulaRasa:RasaItem0:26>, <TabulaRasa:RasaItem0:18>]);

<TabulaRasa:RasaItem0:20>.addTooltip("Craft together with a dye and a");
<TabulaRasa:RasaItem0:20>.addTooltip("flower to make the flower mystical.");

<TabulaRasa:RasaItem0:21>.addTooltip("Crafting item. Used in");
<TabulaRasa:RasaItem0:21>.addTooltip("infusion to make wings.");

// Notes to help players decipher Natura nether trees.
<Natura:florasapling:4>.addTooltip("Ghostwood can mine anything flint can.");
<Natura:florasapling:6>.addTooltip("Requires a hard non-metal axe to chop.");
<Natura:florasapling:6>.addTooltip("Darkwood can mine anything copper can.");
<Natura:florasapling:7>.addTooltip("Requires a soft metal axe to chop.");
<Natura:florasapling:7>.addTooltip("Fusewood can mine anything iron can");
<Natura:florasapling:5>.addTooltip("Requires a hard metal axe to chop.");
<Natura:florasapling:5>.addTooltip("Bloodwood can mine anything obsidian can.");

// Make chunkloaders easier.

recipes.remove(<MineFactoryReloaded:machine.2:10>);
recipes.addShaped(<MineFactoryReloaded:machine.2:10>, 
                [[<MineFactoryReloaded:plastic.sheet>, <MineFactoryReloaded:plastic.sheet>, <MineFactoryReloaded:plastic.sheet>],
                 [<MineFactoryReloaded:machine.1:3>, <ore:gemCrystalFlux>, <MineFactoryReloaded:machine.1:3>],
                 [<minecraft:redstone_block>, <MineFactoryReloaded:machineblock>, <minecraft:redstone_block>]]);

// Remove ugly stuff from NEI:
recipes.remove(<ExtraUtilities:decorativeBlock1:14>);

recipes.addShapeless(<ExtraUtilities:decorativeBlock1:14>, [<ore:stone>, <ore:stone>, <ore:obsidian>, <ore:obsidian>,
                     <ore:dyePurple>, <ore:dyePurple>, <minecraft:ender_eye>, <ore:ingotUnstable>]);

val qSilver = <ore:nuggetQuicksilver>;

qSilver.remove(<Thaumcraft:ItemResource:3>);

val blueGem = <ore:gemSapphire>;
blueGem.add(<customnpcs:npcSaphire>);
