import minetweaker.item.IItemStack;

print("SCRIPT: Fucking Metals");

                   //////////
                   //COPPER//
                   //////////

val copperIngot = <ThermalFoundation:material:64>;
val copperIngotDict = <ore:ingotCopper>;
val copperDustDict = <ore:dustCopper>;
val copperOreDict = <ore:oreCopper>;
val copperBlock = <ThermalFoundation:Storage:0>;
val copperNugget = <ThermalFoundation:material:96>;

// Remove extra types
recipes.remove(<TConstruct:materials:20> * 9);
recipes.remove(<Metallurgy:base.nugget:0> * 9);
recipes.removeShaped(copperIngot);
recipes.remove(<Metallurgy:copper.ingot>);
recipes.remove(<TConstruct:materials:9>);
recipes.removeShaped(<Thaumcraft:ItemNugget:1> * 9);
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemNugget:1>);
mods.thaumcraft.Crucible.addRecipe("TRANSCOPPER", copperNugget * 3, <ore:nuggetCopper>, "metallum 2, permutatio 1");

// Replace smelting recipes
furnace.remove(copperIngotDict);
furnace.remove(<TConstruct:materials:20>);
furnace.addRecipe(copperIngot * 2, <Thaumcraft:ItemNugget:17>, 0.5); //Ore cluster
furnace.addRecipe(copperIngot, copperDustDict, 0.5);
furnace.addRecipe(copperIngot, copperOreDict, 0.5);
furnace.addRecipe(copperNugget, <TConstruct:oreBerries:2>, 0.1);

// Change smeltery casting to Thermal
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:9>);
mods.tconstruct.Casting.addTableRecipe(copperIngot, <liquid:copper.molten> * 144, <TConstruct:metalPattern> * 1, false, 20);
mods.tconstruct.Casting.removeTableRecipe(<Thaumcraft:ItemNugget:1>);
mods.tconstruct.Casting.addTableRecipe(copperNugget, <liquid:copper.molten> * 16, <TConstruct:metalPattern:27> * 1, false, 20);
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:3>);
mods.tconstruct.Casting.addBasinRecipe(copperBlock, <liquid:copper.molten> * 1296, null, false, 20);

// Metallurgy and Tinkers' blocks to Thermal
recipes.remove(<Metallurgy:base.block:0>);
recipes.addShapeless(<Metallurgy:base.block:0>, [copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict]);
recipes.remove(<Metallurgy:base.brick:0>);
recipes.addShaped(<Metallurgy:base.brick:0>, [[copperIngotDict, copperIngotDict], [copperIngotDict, copperIngotDict]]);
recipes.addShapeless(copperIngot * 4, [<Metallurgy:base.brick:0>]);
recipes.remove(<TConstruct:MetalBlock:3>);
recipes.addShapeless(<TConstruct:MetalBlock:3>, [copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict, copperIngotDict]);


                   ///////
                   //TIN//
                   ///////

val tinIngot = <ThermalFoundation:material:65>;
val tinIngotDict = <ore:ingotTin>;
val tinDustDict = <ore:dustTin>;
val tinOreDict = <ore:oreTin>;
val tinBlock = <ThermalFoundation:Storage:1>;
val tinNugget = <ThermalFoundation:material:97>;

// Remove extra types
recipes.remove(<TConstruct:materials:21> * 9);
recipes.remove(<Metallurgy:base.nugget:1> * 9);
recipes.removeShaped(tinIngot);
recipes.remove(<Metallurgy:tin.ingot>);
recipes.remove(<TConstruct:materials:10>);
recipes.remove(<Thaumcraft:ItemNugget:2> * 9);
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemNugget:2>);
mods.thaumcraft.Crucible.addRecipe("TRANSTIN", tinNugget * 3, <ore:nuggetTin>, "metallum 2, vitreus 1");

// Replace smelting recipes
furnace.remove(tinIngotDict);
furnace.remove(<TConstruct:materials:21>);
furnace.addRecipe(tinIngot * 2, <Thaumcraft:ItemNugget:18>, 0.5); //Ore cluster
furnace.addRecipe(tinIngot, tinDustDict, 0.5);
furnace.addRecipe(tinIngot, tinOreDict, 0.5);
furnace.addRecipe(tinNugget, <TConstruct:oreBerries:3>, 0.1);

// Change smeltery casting to Thermal
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:10>);
mods.tconstruct.Casting.addTableRecipe(tinIngot, <liquid:tin.molten> * 144, <TConstruct:metalPattern> * 1, false, 20);
mods.tconstruct.Casting.removeTableRecipe(<Thaumcraft:ItemNugget:2>);
mods.tconstruct.Casting.addTableRecipe(tinNugget, <liquid:tin.molten> * 16, <TConstruct:metalPattern:27> * 1, false, 20);
mods.tconstruct.Casting.removeBasinRecipe(<TConstruct:MetalBlock:5>);
mods.tconstruct.Casting.addBasinRecipe(tinBlock, <liquid:tin.molten> * 1296, null, false, 20);

// Metallurgy and Tinkers' blocks to Thermal
recipes.remove(<Metallurgy:base.block:1>);
recipes.addShapeless(<Metallurgy:base.block:1>, [tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict]);
recipes.remove(<Metallurgy:base.brick:1>);
recipes.addShaped(<Metallurgy:base.brick:1>, [[tinIngotDict, tinIngotDict], [tinIngotDict, tinIngotDict]]);
recipes.addShapeless(tinIngot * 4, [<Metallurgy:base.brick:1>]);
recipes.remove(<TConstruct:MetalBlock:5>);
recipes.addShapeless(<TConstruct:MetalBlock:5>, [tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict, tinIngotDict]);


                   ////////
                   //IRON//
                   ////////

recipes.remove(<TConstruct:materials:19> * 9);


                   //////////
                   //BRONZE//
                   //////////

val bronzeIngot = <ThermalFoundation:material:73>;
val bronzeIngotDict = <ore:ingotBronze>;
val bronzeNuggetDict = <ore:nuggetBronze>;
val bronzeDustDict = <ore:dustBronze>;
val bronzeNugget = <ThermalFoundation:material:105>;

// Remove extra types
recipes.remove(<TConstruct:materials:31> * 9);
recipes.remove(<Metallurgy:base.nugget:3> * 9);
recipes.removeShaped(bronzeIngot);
recipes.remove(<Metallurgy:bronze.ingot>);
recipes.remove(<TConstruct:materials:13>);

// Replace smelting recipes
furnace.remove(bronzeIngotDict);
furnace.addRecipe(bronzeIngot, bronzeDustDict);

// Change smeltery casting to Thermal
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:13>);
mods.tconstruct.Casting.addTableRecipe(bronzeIngot, <liquid:bronze.molten> * 144, <TConstruct:metalPattern> * 1, false, 20);

// Metallurgy and Tinkers' blocks to Thermal
recipes.remove(<Metallurgy:base.block:3>);
recipes.addShapeless(<Metallurgy:base.block:3>, [bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict]);
recipes.remove(<Metallurgy:base.brick:3>);
recipes.addShaped(<Metallurgy:base.brick:3>, [[bronzeIngotDict, bronzeIngotDict], [bronzeIngotDict, bronzeIngotDict]]);
recipes.addShapeless(bronzeIngot * 4, [<Metallurgy:base.brick:3>]);
recipes.remove(<TConstruct:MetalBlock:4>);
recipes.addShapeless(<TConstruct:MetalBlock:4>, [bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict, bronzeIngotDict]);


                   /////////
                   //STEEL//
                   /////////

val steelIngot = <TConstruct:materials:16>;
val steelIngotDict = <ore:ingotSteel>;
val steelNuggetDict = <ore:nuggetSteel>;
val steelDustDict = <ore:dustSteel>;
val steelNugget = <TConstruct:materials:33>;

// Remove extra types
recipes.remove(<TConstruct:materials:33> * 9);
recipes.remove(<Metallurgy:base.nugget:7> * 9);
recipes.remove(<Metallurgy:steel.ingot>);
recipes.removeShaped(steelIngot);
recipes.remove(<Metallurgy:steel.ingot>);

// Replace smelting recipes
furnace.remove(steelIngotDict);
furnace.addRecipe(steelIngot, steelDustDict, 0.3);

// Metallurgy blocks to Tinkers' steel
recipes.remove(<Metallurgy:base.block:7>);
recipes.addShapeless(<Metallurgy:base.block:7>, [steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict]);
recipes.remove(<Metallurgy:base.brick:7>);
recipes.addShaped(<Metallurgy:base.brick:7>, [[steelIngotDict, steelIngotDict], [steelIngotDict, steelIngotDict]]);
recipes.addShapeless(steelIngot * 4, [<Metallurgy:base.brick:7>]);
recipes.remove(<TConstruct:MetalBlock:9>);
recipes.addShapeless(<TConstruct:MetalBlock:9>, [steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict, steelIngotDict]);
recipes.addShapeless(steelIngot * 9, [<ore:blockSteel>]);
recipes.addShapeless(steelIngot, [steelNuggetDict, steelNuggetDict, steelNuggetDict, steelNuggetDict, steelNuggetDict, steelNuggetDict, steelNuggetDict, steelNuggetDict, steelNuggetDict]);
recipes.addShapeless(steelNugget * 9, [steelIngotDict]);


                   //////////
                   //Silver//
                   //////////

val silverIngot = <ThermalFoundation:material:66>;
val silverIngotDict = <ore:ingotSilver>;
val silverDustDict = <ore:dustSilver>;
val silverOreDict = <ore:oreSilver>;
val silverBlock = <ThermalFoundation:Storage:2>;
val silverNugget = <ThermalFoundation:material:98>;

// Remove extra types
recipes.remove(<Metallurgy:precious.nugget:1> * 9);
recipes.remove(<Metallurgy:silver.ingot>);
recipes.removeShaped(silverIngot);
recipes.remove(<Thaumcraft:ItemNugget:3> * 9);
mods.thaumcraft.Crucible.removeRecipe(<Thaumcraft:ItemNugget:3>);
mods.thaumcraft.Crucible.addRecipe("TRANSSILVER", silverNugget * 3, <ore:nuggetSilver>, "metallum 2, lucrum 1");

// Replace smelting recipes
furnace.remove(silverIngotDict);
furnace.addRecipe(silverIngot * 2, <Thaumcraft:ItemNugget:19>, 1); //Ore cluster
furnace.addRecipe(silverIngot, silverDustDict, 1);
furnace.addRecipe(silverIngot, silverOreDict, 1);

// Change smeltery casting to Thermal
mods.tconstruct.Casting.removeTableRecipe(<Thaumcraft:ItemNugget:3>);
mods.tconstruct.Casting.addTableRecipe(silverNugget, <liquid:silver.molten> * 16, <TConstruct:metalPattern:27> * 1, false, 20);

// Metallurgy blocks to Thermal
recipes.remove(<Metallurgy:precious.block:1>);
recipes.addShapeless(<Metallurgy:precious.block:1>, [silverIngotDict, silverIngotDict, silverIngotDict, silverIngotDict, silverIngotDict, silverIngotDict, silverIngotDict, silverIngotDict, silverIngotDict]);
recipes.remove(<Metallurgy:precious.brick:1>);
recipes.addShaped(<Metallurgy:precious.brick:1>, [[silverIngotDict, silverIngotDict], [silverIngotDict, silverIngotDict]]);
recipes.addShapeless(silverIngot * 4, [<Metallurgy:precious.brick:1>]);


                   ///////////
                   //Mithril//
                   ///////////

val mithrilIngot = <ThermalFoundation:material:70>;
val mithrilIngotDict = <ore:ingotMithril>;
val mithrilDustDict = <ore:dustMithril>;
val mithrilOreDict = <ore:oreMithril>;
val mithrilNugget= <ThermalFoundation:material:101>;


// Remove extra types
recipes.remove(<Metallurgy:fantasy.nugget:7> * 9);
recipes.remove(<Metallurgy:mithril.ingot>);
<ore:ingotMithril>.remove(<customnpcs:npcMithrilIngot>);

// Replace smelting recipes
furnace.remove(mithrilIngotDict);
furnace.addRecipe(mithrilIngot, mithrilDustDict, 1);
furnace.addRecipe(mithrilIngot, mithrilOreDict, 1);

// Turn Metallurgy mithril into Thermal mithril
recipes.remove(<Metallurgy:fantasy.block:7>);
recipes.addShaped(<Metallurgy:fantasy.block:7>, [[mithrilIngotDict, mithrilIngotDict, mithrilIngotDict], [mithrilIngotDict, mithrilIngotDict, mithrilIngotDict], [mithrilIngotDict, mithrilIngotDict, mithrilIngotDict]]);
recipes.remove(<Metallurgy:fantasy.brick:7>);
recipes.addShaped(<Metallurgy:fantasy.brick:7>, [[mithrilIngotDict, mithrilIngotDict], [mithrilIngotDict, mithrilIngotDict]]);
recipes.addShapeless(mithrilIngot * 4, [<Metallurgy:fantasy.brick:7>]);

// Rename mana-infused ingots, dust, nuggets, and blocks into mithril versions
game.setLocalization("en_US", "tile.thermalfoundation.ore.mithril.name", "Mithril Ore");
game.setLocalization("en_US", "item.thermalfoundation.material.ingotMithril.name", "Mithril Ingot");
game.setLocalization("en_US", "item.thermalfoundation.material.dustMithril.name", "Pulverized Mithril");
game.setLocalization("en_US", "item.thermalfoundation.material.nuggetMithril.name", "Mithril Nugget");
game.setLocalization("en_US", "tile.thermalfoundation.storage.mithril.name", "Mithril Block");
game.setLocalization("en_US", "item.thermalfoundation.material.gearMithril.name", "Mithril Gear");
game.setLocalization("en_US", "ore.manainfused.name", "Mithril Ore");
game.setLocalization("en_US", "item.tconstruct.bucket.Mithril.name", "Molten Mithril Bucket");
game.setLocalization("en_US", "item.iguana.tcon.clayBucket.Mithril.name", "Molten Mithril Clay Bucket");
game.setLocalization("en_US", "tile.fluid.molten.mithril.name", "Molten Mithril");
game.setLocalization("en_US", "LiquidMetal.Mithril.name", "Molten Mithril");
game.setLocalization("en_US", "fluid.mithril.molten", "Molten Mithril");

// German Translation
game.setLocalization("de_DE", "tile.thermalfoundation.ore.mithril.name", "Mithrilerz");
game.setLocalization("de_DE", "item.thermalfoundation.material.ingotMithril.name", "Mithrilbarren");
game.setLocalization("de_DE", "item.thermalfoundation.material.dustMithril.name", "Mithrilpulver");
game.setLocalization("de_DE", "item.thermalfoundation.material.nuggetMithril.name", "Mithrilklumpen");
game.setLocalization("de_DE", "tile.thermalfoundation.storage.mithril.name", "Mithrilblock");
game.setLocalization("de_DE", "item.thermalfoundation.material.gearMithril.name", "Mithrilzahnrad");


                   ////////////
                   //Platinum//
                   ////////////

val platinumIngot = <ThermalFoundation:material:69>;
val platinumIngotDict = <ore:ingotPlatinum>;
val platinumDustDict = <ore:dustPlatinum>;
val platinumOreDict = <ore:orePlatinum>;
val platinumNugget = <ThermalFoundation:material:98>;

// Remove extra types
recipes.remove(<Metallurgy:precious.nugget:2> * 9);
recipes.removeShaped(platinumIngot);

// Replace smelting recipes
furnace.remove(platinumIngotDict);
furnace.addRecipe(platinumIngot, platinumDustDict, 1);
furnace.addRecipe(platinumIngot, platinumOreDict, 1);

// Metallurgy blocks to Thermal
recipes.removeShaped(<Metallurgy:platinum.ingot>);
recipes.removeShapeless(<Metallurgy:platinum.ingot>);
recipes.remove(<Metallurgy:precious.block:2>);
recipes.addShapeless(<Metallurgy:precious.block:2>, [platinumIngotDict, platinumIngotDict, platinumIngotDict, platinumIngotDict, platinumIngotDict, platinumIngotDict, platinumIngotDict, platinumIngotDict, platinumIngotDict]);
recipes.remove(<Metallurgy:precious.brick:2>);
recipes.addShaped(<Metallurgy:precious.brick:2>, [[platinumIngotDict, platinumIngotDict], [platinumIngotDict, platinumIngotDict]]);
recipes.addShapeless(platinumIngot * 4, [<Metallurgy:precious.brick:2>]);

//...and then rename shiny ingots, dust, nuggets, and blocks into platinum versions
game.setLocalization("en_US", "tile.thermalfoundation.ore.platinum.name", "Platinum Ore");
game.setLocalization("en_US", "item.thermalfoundation.material.ingotPlatinum.name", "Platinum Ingot");
game.setLocalization("en_US", "item.thermalfoundation.material.dustPlatinum.name", "Pulverized Platinum");
game.setLocalization("en_US", "item.thermalfoundation.material.nuggetPlatinum.name", "Platinum Nugget");
game.setLocalization("en_US", "tile.thermalfoundation.storage.platinum.name", "Platinum Block");
game.setLocalization("en_US", "item.thermalfoundation.material.gearPlatinum.name", "Platinum Gear");
//game.setLocalization("en_US", "item.thermalfoundation.armor.platinumHelmet.name", "Platinum Helmet"); // Unused. Hidden in favor of the metallurgy version.
//game.setLocalization("en_US", "item.thermalfoundation.armor.platinumPlate.name", "Platinum Chestplate");
//game.setLocalization("en_US", "item.thermalfoundation.armor.platinumLegs.name", "Platinum Leggings");
//game.setLocalization("en_US", "item.thermalfoundation.armor.platinumBoots.name", "Platinum Boots");
//game.setLocalization("en_US", "item.thermalfoundation.tool.platinumSword.name", "Platinum Sword");
//game.setLocalization("en_US", "item.thermalfoundation.tool.platinumShovel.name", "Platinum Shovel");
//game.setLocalization("en_US", "item.thermalfoundation.tool.platinumPickaxe.name", "Platinum Pickaxe");
//game.setLocalization("en_US", "item.thermalfoundation.tool.platinumAxe.name", "Platinum Axe");
//game.setLocalization("en_US", "item.thermalfoundation.tool.platinumHoe.name", "Platinum Hoe");
game.setLocalization("en_US", "item.thermalfoundation.tool.platinumShears.name", "Platinum Shears");
game.setLocalization("en_US", "item.thermalfoundation.tool.platinumFishingRod.name", "Platinum Fishing Rod");
game.setLocalization("en_US", "item.thermalfoundation.tool.platinumSickle.name", "Platinum Sickle");
game.setLocalization("en_US", "item.thermalfoundation.tool.platinumBow.name", "Platinum Reinforced Bow");
game.setLocalization("en_US", "ore.shiny.name", "Platinum Ore");
game.setLocalization("en_US", "item.tconstruct.bucket.Shiny.name", "Molten Platinum Bucket");
game.setLocalization("en_US", "item.iguana.tcon.clayBucket.Shiny.name", "Molten Platinum Clay Bucket");
game.setLocalization("en_US", "tile.fluid.molten.shiny.name", "Molten Platinum");
game.setLocalization("en_US", "LiquidMetal.Shiny.name", "Molten Platinum");
game.setLocalization("en_US", "fluid.platinum.molten", "Molten Platinum");
game.setLocalization("en_US", "toolpart.material.platinum", "Platinum");
game.setLocalization("en_US", "material.thermalfoundation.platinum", "Platinum");


                   //////////
                   //Nickel//
                   //////////

//...and then rename ferrous ingots, dust, nuggets, and blocks into nickel versions
game.setLocalization("en_US", "tile.thermalfoundation.ore.nickel.name", "Nickel Ore");
game.setLocalization("en_US", "item.thermalfoundation.material.ingotNickel.name", "Nickel Ingot");
game.setLocalization("en_US", "item.thermalfoundation.material.dustNickel.name", "Pulverized Nickel");
game.setLocalization("en_US", "item.thermalfoundation.material.nuggetNickel.name", "Nickel Nugget");
game.setLocalization("en_US", "tile.thermalfoundation.storage.nickel.name", "Nickel Block");
game.setLocalization("en_US", "item.thermalfoundation.material.gearNickel.name", "Nickel Gear");
game.setLocalization("en_US", "item.thermalfoundation.armor.nickelHelmet.name", "Nickel Helmet");
game.setLocalization("en_US", "item.thermalfoundation.armor.nickelPlate.name", "Nickel Chestplate");
game.setLocalization("en_US", "item.thermalfoundation.armor.nickelLegs.name", "Nickel Leggings");
game.setLocalization("en_US", "item.thermalfoundation.armor.nickelBoots.name", "Nickel Boots");
game.setLocalization("en_US", "item.thermalfoundation.tool.nickelSword.name", "Nickel Sword");
game.setLocalization("en_US", "item.thermalfoundation.tool.nickelShovel.name", "Nickel Shovel");
game.setLocalization("en_US", "item.thermalfoundation.tool.nickelPickaxe.name", "Nickel Pickaxe");
game.setLocalization("en_US", "item.thermalfoundation.tool.nickelAxe.name", "Nickel Axe");
game.setLocalization("en_US", "item.thermalfoundation.tool.nickelHoe.name", "Nickel Hoe");
game.setLocalization("en_US", "item.thermalfoundation.tool.nickelShears.name", "Nickel Shears");
game.setLocalization("en_US", "item.thermalfoundation.tool.nickelFishingRod.name", "Nickel Fishing Rod");
game.setLocalization("en_US", "item.thermalfoundation.tool.nickelSickle.name", "Nickel Sickle");
game.setLocalization("en_US", "item.thermalfoundation.tool.nickelBow.name", "Nickel Reinforced Bow");
game.setLocalization("en_US", "ore.ferrous.name", "Nickel Ore");
game.setLocalization("en_US", "tile.netherores.ore.nickel.name", "Nether Nickel Ore");
game.setLocalization("en_US", "material.thermalfoundation.nickel", "Nickel");


                   ////////////
                   //Electrum//
                   ////////////

val electrumIngot = <ThermalFoundation:material:71>;
val electrumIngotDict = <ore:ingotElectrum>;
val electrumDustDict = <ore:dustElectrum>;
val electrumNugget = <ThermalFoundation:material:98>;
val electrumNuggetDict = <ore:nuggetElectrum>;

// Remove extra types
recipes.remove(<Metallurgy:precious.nugget:4> * 9);
recipes.removeShaped(electrumIngot);

// Replace smelting recipes
furnace.remove(electrumIngotDict);
furnace.addRecipe(electrumIngot, electrumDustDict, 1);

// Metallurgy blocks to Thermal
recipes.removeShaped(<Metallurgy:electrum.ingot>);
recipes.removeShapeless(<Metallurgy:electrum.ingot>);
recipes.removeShapeless(electrumIngot);
recipes.addShapeless(electrumIngot, [electrumNuggetDict, electrumNuggetDict, electrumNuggetDict, electrumNuggetDict, electrumNuggetDict, electrumNuggetDict, electrumNuggetDict, electrumNuggetDict, electrumNuggetDict]);
recipes.remove(<Metallurgy:precious.block:4>);
recipes.addShapeless(<Metallurgy:precious.block:4>, [electrumIngotDict, electrumIngotDict, electrumIngotDict, electrumIngotDict, electrumIngotDict, electrumIngotDict, electrumIngotDict, electrumIngotDict, electrumIngotDict]);
recipes.addShapeless(electrumIngot * 9, [<ore:blockElectrum>]);
recipes.remove(<Metallurgy:precious.brick:4>);
recipes.addShaped(<Metallurgy:precious.brick:4>, [[electrumIngotDict, electrumIngotDict], [electrumIngotDict, electrumIngotDict]]);
recipes.addShapeless(electrumIngot * 4, [<Metallurgy:precious.brick:4>]);


/*  Thaumcraft nugget duplication  */

// Metallurgy Fantasy Metals

game.setLocalization("en_US", "tc.research_name.TRANSFANTASY", "Fantasy Metals");
game.setLocalization("en_US", "tc.research_text.TRANSFANTASY", "Where magic meets metals");
game.setLocalization("en_US", "tc.research_page.TRANSFANTASY.1", "You have found various fantastical metals on this planet, but they are simply too difficult to find in large quantities. You have taken it upon yourself to apply the principles of metal transmutation to multiply your stores of these fantasy metals. You might be able to fetch a high price for them if only you knew the right person...");
mods.thaumcraft.Research.addResearch("TRANSFANTASY", "ALCHEMY", "metallum 6, permutatio 4, praecantatio 4, perfodio 2, desidia 0", 5, 5, 5, <Metallurgy:fantasy.nugget>);
mods.thaumcraft.Research.addPrereq("TRANSFANTASY", "TRANSIRON", true);
mods.thaumcraft.Research.setConcealed("TRANSFANTASY", true);
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget> * 3, <ore:nuggetPrometheum>, "metallum 2, herba 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:1> * 3, <ore:nuggetDeepIron>, "metallum 2, terra 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:2> * 3, <ore:nuggetInfuscolium>, "metallum 2, praecantatio 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:4> * 3, <ore:nuggetOureclase>, "metallum 2, tutamen 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:5> * 3, <ore:nuggetAstralSilver>, "metallum 2, auram 1, lucrum 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:6> * 3, <ore:nuggetCarmot>, "metallum 2, praecantatio 1, aer 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <ThermalFoundation:material:102> * 3, <ore:nuggetMithril>, "metallum 2, volatus 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:8> * 3, <ore:nuggetRubracium>, "metallum 2, spiritus 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:11> * 3, <ore:nuggetOrichalcum>, "metallum 2, vitreus 1, tutamen 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:13> * 3, <ore:nuggetAdamantine>, "metallum 2, tutamen 1, terra 1");
mods.thaumcraft.Crucible.addRecipe("TRANSFANTASY", <Metallurgy:fantasy.nugget:14> * 3, <ore:nuggetAtlarus>, "metallum 2, tutamen 1, auram 1");
mods.thaumcraft.Research.addPage("TRANSFANTASY", "tc.research_page.TRANSFANTASY.1");
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:1>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:2>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:4>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:5>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:6>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <ThermalFoundation:material:102>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:8>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:11>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:13>);
mods.thaumcraft.Research.addCruciblePage("TRANSFANTASY", <Metallurgy:fantasy.nugget:14>);

// Nether Metals

game.setLocalization("en_US", "tc.research_name.TRANSNETHER", "Nether Metals");
game.setLocalization("en_US", "tc.research_text.TRANSNETHER", "Metals forged in the fires of hell");
game.setLocalization("en_US", "tc.research_page.TRANSNETHER.1", "There are various hellish metals found beneath the volcanic islands just off the coast of the continent. Many of them have useful qualities as weapons, such as weakening or poisoning your opponents. The only problem with the weapon casts developed by Dr. Diyo is that they often take large amounts of metal for the more powerful weapons. To remedy this, you have deepened your research of transmuting the fantasy metals of this planet and are now also able to duplicate these infernal metals.");
mods.thaumcraft.Research.addResearch("TRANSNETHER", "ALCHEMY", "metallum 4, permutatio 2, infernus 2", 4, 5, 5, <Metallurgy:nether.nugget>);
mods.thaumcraft.Research.setSecondary("TRANSNETHER", true);
mods.thaumcraft.Research.addPrereq("TRANSNETHER", "TRANSFANTASY", false);
mods.thaumcraft.Research.setConcealed("TRANSNETHER", true);
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget> * 3, <ore:nuggetIgnatius>, "metallum 2, ignis 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:1> * 3, <ore:nuggetShadowIron>, "metallum 2, permutatio 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:2> * 3, <ore:nuggetLemurite>, "metallum 2, infernus 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:3> * 3, <ore:nuggetMidasium>, "metallum 2, lucrum 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:4> * 3, <ore:nuggetVyroxeres>, "metallum 2, venenum 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:5> * 3, <ore:nuggetCeruclase>, "metallum 2, gelum 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:6> * 3, <ore:nuggetAlduorite>, "metallum 2, vinculum 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:7> * 3, <ore:nuggetKalendrite>, "metallum 2, sano 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:8> * 3, <ore:nuggetVulcanite>, "metallum 2, ignis 1, perditio 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <Metallurgy:nether.nugget:9> * 3, <ore:nuggetSanguinite>, "metallum 2, ignis 1, superbia 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <TConstruct:materials:28> * 3, <ore:nuggetCobalt>, "metallum 2, motus 1");
mods.thaumcraft.Crucible.addRecipe("TRANSNETHER", <TConstruct:materials:29> * 3, <ore:nuggetArdite>, "metallum 2, ignis 1, terra 1");
mods.thaumcraft.Research.addPage("TRANSNETHER", "tc.research_page.TRANSNETHER.1");
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:1>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:2>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:3>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:4>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:5>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:6>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:7>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:8>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <Metallurgy:nether.nugget:9>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <TConstruct:materials:28>);
mods.thaumcraft.Research.addCruciblePage("TRANSNETHER", <TConstruct:materials:29>);

// Ender metals

game.setLocalization("en_US", "tc.research_name.TRANSENDER", "Ender Metals");
game.setLocalization("en_US", "tc.research_text.TRANSENDER", "Not that kind of void metal");
game.setLocalization("en_US", "tc.research_page.TRANSENDER.1", "Your exploration of eerie locales on this alien planet has uncovered some metals that resonate with energy from the end. You have managed to replicate these metals in a manner similar to the other fantasy metals that you have found. These metals are also quite dense; they make for strong and durable tools when alloyed together.");
mods.thaumcraft.Research.addResearch("TRANSENDER", "ALCHEMY", "metallum 4, permutatio 2, alienis 2", 6, 5, 5, <Metallurgy:ender.nugget>);
mods.thaumcraft.Research.setSecondary("TRANSENDER", true);
mods.thaumcraft.Research.addPrereq("TRANSENDER", "TRANSFANTASY", false);
mods.thaumcraft.Research.setConcealed("TRANSENDER", true);
mods.thaumcraft.Crucible.addRecipe("TRANSENDER", <Metallurgy:ender.nugget> * 3, <ore:nuggetEximite>, "metallum 2, alienis 1");
mods.thaumcraft.Crucible.addRecipe("TRANSENDER", <Metallurgy:ender.nugget:1> * 3, <ore:nuggetMeutoite>, "metallum 2, alienis 1");
mods.thaumcraft.Research.addPage("TRANSENDER", "tc.research_page.TRANSENDER.1");
mods.thaumcraft.Research.addCruciblePage("TRANSENDER", <Metallurgy:ender.nugget>);
mods.thaumcraft.Research.addCruciblePage("TRANSENDER", <Metallurgy:ender.nugget:1>);

// Tech metals and manganese. Some translation strings were moved to BlightTweaks because the formatting symbol caused problems for some users.

game.setLocalization("en_US", "tc.research_name.TRANSNICKEL", "Nickel Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSNICKEL", "Transformation of metals into nickel");
mods.thaumcraft.Research.addResearch("TRANSNICKEL", "ALCHEMY", "metallum 2, machina 1", 2, 6, 0, <ThermalFoundation:material:100>);
mods.thaumcraft.Research.setSecondary("TRANSNICKEL", true);
mods.thaumcraft.Research.setConcealed("TRANSNICKEL", true);
mods.thaumcraft.Research.addPrereq("TRANSNICKEL", "TRANSIRON", false);
mods.thaumcraft.Crucible.addRecipe("TRANSNICKEL", <ThermalFoundation:material:100> * 3, <ore:nuggetNickel>, "metallum 2, machina 1");
mods.thaumcraft.Research.addPage("TRANSNICKEL", "tc.research_page.TRANSNICKEL.1");
mods.thaumcraft.Research.addCruciblePage("TRANSNICKEL", <ThermalFoundation:material:100>);

game.setLocalization("en_US", "tc.research_name.TRANSPLATINUM", "Platinum Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSPLATINUM", "Transformation of metals into platinum");
mods.thaumcraft.Research.addResearch("TRANSPLATINUM", "ALCHEMY", "metallum 2, lucrum 1, permutatio 1", 2, 4, 0, <ThermalFoundation:material:101>);
mods.thaumcraft.Research.setSecondary("TRANSPLATINUM", true);
mods.thaumcraft.Research.setConcealed("TRANSPLATINUM", true);
mods.thaumcraft.Research.addPrereq("TRANSPLATINUM", "TRANSIRON", false);
mods.thaumcraft.Crucible.addRecipe("TRANSPLATINUM", <ThermalFoundation:material:101> * 3, <ore:nuggetPlatinum>, "metallum 2, lucrum 1, permutatio 1");
mods.thaumcraft.Research.addPage("TRANSPLATINUM", "tc.research_page.TRANSPLATINUM.1");
mods.thaumcraft.Research.addCruciblePage("TRANSPLATINUM", <ThermalFoundation:material:101>);

game.setLocalization("en_US", "tc.research_name.TRANSALUMINUM", "Aluminum Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSALUMINUM", "Transformation of metals into aluminum");
mods.thaumcraft.Research.addResearch("TRANSALUMINUM", "ALCHEMY", "metallum 2, machina 1", 3, 6, 0, <TConstruct:materials:22>);
mods.thaumcraft.Research.setSecondary("TRANSALUMINUM", true);
mods.thaumcraft.Research.setConcealed("TRANSALUMINUM", true);
mods.thaumcraft.Research.addPrereq("TRANSALUMINUM", "TRANSIRON", false);
mods.thaumcraft.Crucible.addRecipe("TRANSALUMINUM", <TConstruct:materials:22> * 3, <ore:nuggetAluminum>, "metallum 2, machina 1");
mods.thaumcraft.Research.addPage("TRANSALUMINUM", "tc.research_page.TRANSALUMINUM.1");
mods.thaumcraft.Research.addCruciblePage("TRANSALUMINUM", <TConstruct:materials:22>);

game.setLocalization("en_US", "tc.research_name.TRANSMANGANESE", "Manganese Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSMANGANESE", "Transformation of metals into manganese");
mods.thaumcraft.Research.addResearch("TRANSMANGANESE", "ALCHEMY", "metallum 2, terra 1", 3, 4, 0, <Metallurgy:base.nugget:2>);
mods.thaumcraft.Research.setSecondary("TRANSMANGANESE", true);
mods.thaumcraft.Research.setConcealed("TRANSMANGANESE", true);
mods.thaumcraft.Research.addPrereq("TRANSMANGANESE", "TRANSIRON", false);
mods.thaumcraft.Crucible.addRecipe("TRANSMANGANESE", <Metallurgy:base.nugget:2> * 3, <ore:nuggetManganese>, "metallum 2, terra 1");
mods.thaumcraft.Research.addPage("TRANSMANGANESE", "tc.research_page.TRANSMANGANESE.1");
mods.thaumcraft.Research.addCruciblePage("TRANSMANGANESE", <Metallurgy:base.nugget:2>);

game.setLocalization("en_US", "tc.research_name.TRANSZINC", "Zinc Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSZINC", "Transformation of metals into zinc");
mods.thaumcraft.Research.addResearch("TRANSZINC", "ALCHEMY", "metallum 2, perditio 1", 3, 3, 0, <Metallurgy:precious.nugget>);
mods.thaumcraft.Research.setSecondary("TRANSZINC", true);
mods.thaumcraft.Research.setConcealed("TRANSZINC", true);
mods.thaumcraft.Research.addPrereq("TRANSZINC", "TRANSIRON", false);
mods.thaumcraft.Crucible.addRecipe("TRANSZINC", <Metallurgy:precious.nugget> * 3, <ore:nuggetZinc>, "metallum 2, perditio 1");
mods.thaumcraft.Research.addPage("TRANSZINC", "tc.research_page.TRANSZINC.1");
mods.thaumcraft.Research.addCruciblePage("TRANSZINC", <Metallurgy:precious.nugget>);

game.setLocalization("en_US", "tc.research_name.TRANSQUICKSILVER", "Quicksilver Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSQUICKSILVER", "Transformation of metals into quicksilver");
mods.thaumcraft.Research.addResearch("TRANSQUICKSILVER", "ALCHEMY", "metallum 2, permutatio 1", 3, 7, 0, <Thaumcraft:ItemNugget:5>);
mods.thaumcraft.Research.setSecondary("TRANSQUICKSILVER", true);
mods.thaumcraft.Research.setConcealed("TRANSQUICKSILVER", true);
mods.thaumcraft.Research.addPrereq("TRANSQUICKSILVER", "TRANSIRON", false);
mods.thaumcraft.Crucible.addRecipe("TRANSQUICKSILVER", <Thaumcraft:ItemNugget:5> * 3, <Thaumcraft:ItemNugget:5>, "metallum 2, permutatio 1");
mods.thaumcraft.Research.addPage("TRANSQUICKSILVER", "tc.research_page.TRANSQUICKSILVER.1");
mods.thaumcraft.Research.addCruciblePage("TRANSQUICKSILVER", <Thaumcraft:ItemNugget:5>);

game.setLocalization("en_US", "tc.research_name.TRANSSTEEL", "Steel Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSSTEEL", "Transformation of iron into steel");
game.setLocalization("en_US", "tc.research_page.TRANSSTEEL.1", "You have discovered a way to alchemically strengthen iron into steel by steeping iron nuggets in metallum, ordo, and ignis.");
mods.thaumcraft.Research.addResearch("TRANSSTEEL", "ALCHEMY", "metallum 4, permutatio 2, ignis 2, ordo 2", 3, 5, 5, <TConstruct:materials:33>);
mods.thaumcraft.Research.setSecondary("TRANSSTEEL", true);
mods.thaumcraft.Research.setConcealed("TRANSSTEEL", true);
mods.thaumcraft.Research.addPrereq("TRANSSTEEL", "TRANSIRON", false);
mods.thaumcraft.Crucible.addRecipe("TRANSSTEEL", <TConstruct:materials:33> * 2, <ore:nuggetIron>, "metallum 1, ordo 1, ignis 1");
mods.thaumcraft.Research.addPage("TRANSSTEEL", "tc.research_page.TRANSSTEEL.1");
mods.thaumcraft.Research.addCruciblePage("TRANSSTEEL", <TConstruct:materials:33>);

game.setLocalization("en_US", "tc.research_name.TRANSDIAMOND", "Diamond Transmutation");
game.setLocalization("en_US", "tc.research_text.TRANSDIAMOND", "Transformation of valuables into diamond");
game.setLocalization("en_US", "tc.research_page.TRANSDIAMOND.1", "You have discovered a way to multiply diamonds by steeping diamond nuggets in lucrum harvested from other substances.");
mods.thaumcraft.Research.addResearch("TRANSDIAMOND", "FORBIDDEN", "vitreus 4, lucrum 4", 2, -6, 0, <Translocator:diamondNugget>);
mods.thaumcraft.Research.setSecondary("TRANSDIAMOND", true);
mods.thaumcraft.Research.setConcealed("TRANSDIAMOND", true);
mods.thaumcraft.Research.addPrereq("TRANSDIAMOND", "TRANSEMERALD", false);
mods.thaumcraft.Crucible.addRecipe("TRANSDIAMOND", <Translocator:diamondNugget> * 4, <ore:nuggetDiamond>, "vitreus 2, lucrum 2");
mods.thaumcraft.Research.addPage("TRANSDIAMOND", "tc.research_page.TRANSDIAMOND.1");
mods.thaumcraft.Research.addCruciblePage("TRANSDIAMOND", <Translocator:diamondNugget>);

