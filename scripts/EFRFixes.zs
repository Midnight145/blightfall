print("SCRIPT: EFR Fixes");

// Smooth quartz recipe conflict with ExU burnt quartz
recipes.addShapeless(<etfuturum:smooth_quartz> * 1, [<ExtraUtilities:decorativeBlock1:2>]);
recipes.addShapeless(<ExtraUtilities:decorativeBlock1:2> * 1, [<etfuturum:smooth_quartz>]);

// Add thaumcraft aspects
// (Chest) boats
mods.thaumcraft.Aspects.setEntity("etfuturum.new_boat", "aqua 4, iter 4, arbor 3");
mods.thaumcraft.Aspects.setEntity("etfuturum.chest_boat", "aqua 4, iter 4, vacuos 4, arbor 6");
mods.thaumcraft.Aspects.set(<etfuturum:bamboo_raft>, "aqua 4, iter 4, arbor 3");
mods.thaumcraft.Aspects.set(<etfuturum:bamboo_chest_raft>, "aqua 4, iter 4, vacuos 4, arbor 6");
mods.thaumcraft.Aspects.add(<etfuturum:spruce_chest_boat>, "vacuos 4, arbor 3");
mods.thaumcraft.Aspects.add(<etfuturum:acacia_chest_boat>, "vacuos 4, arbor 3");
mods.thaumcraft.Aspects.add(<etfuturum:birch_chest_boat>, "vacuos 4, arbor 3");
mods.thaumcraft.Aspects.add(<etfuturum:dark_oak_chest_boat>, "vacuos 4, arbor 3");
mods.thaumcraft.Aspects.add(<etfuturum:jungle_chest_boat>, "vacuos 4, arbor 3");
mods.thaumcraft.Aspects.add(<etfuturum:oak_chest_boat>, "vacuos 4, arbor 3");

// Beds

for bed in <ore:bedWood>.items {
    mods.thaumcraft.Aspects.set(bed, "pannus 6, desidia 4, fabrico 3");
}

// Other
mods.thaumcraft.Aspects.add(<etfuturum:observer>, "invidia 2"); // Match comparator
mods.thaumcraft.Aspects.add(<etfuturum:lantern>, "lux 2");
mods.thaumcraft.Aspects.add(<etfuturum:composter>, "permutatio 2");
mods.thaumcraft.Aspects.add(<etfuturum:barrel>, "vacuos 4"); // Match chest
mods.thaumcraft.Aspects.add(<etfuturum:iron_trapdoor>, "machina 2, motus 1, "); // Match iron door
mods.thaumcraft.Aspects.set(<etfuturum:end_bricks:*>, "terra 1, tenebrae 1");
mods.thaumcraft.Aspects.set(<etfuturum:coarse_dirt:*>, "terra 2");
mods.thaumcraft.Aspects.set(<etfuturum:blackstone:*>, "tenebrae 1, terra 1");
mods.thaumcraft.Aspects.set(<etfuturum:gilded_blackstone>, "lucrum 1, tenebrae 1");
mods.thaumcraft.Aspects.set(<etfuturum:polished_blackstone_pressure_plate>, "tenebrae 1, machina 1, sensus 1");
mods.thaumcraft.Aspects.set(<etfuturum:honeycomb>, "ordo 2, fames 1"); // Match Natura
mods.thaumcraft.Aspects.set(<etfuturum:honey_bottle>, "fames 2, vinculum 1, sano 1");
mods.thaumcraft.Aspects.set(<etfuturum:honey_block>, "fames 7, vinculum 3, sano 3");
mods.thaumcraft.Aspects.set(<etfuturum:end_crystal>, "alienis 3, praecantatio 3, sano 3"); // Match entity
mods.thaumcraft.Aspects.set(<etfuturum:dye:*>, "sensus 1");
mods.thaumcraft.Aspects.addEntity("etfuturum.wooden_armorstand", "arbor 4, tutamen 1");
mods.thaumcraft.Aspects.add(<etfuturum:wooden_armorstand>, "tutamen 1");
mods.thaumcraft.Aspects.add(<etfuturum:banner:*>, "sensus 2");

// Chain Recycling
mods.tconstruct.Smeltery.addMelting(<etfuturum:chain>, <liquid:iron.molten> * 176, 600, <minecraft:iron_block>);
mods.thermalexpansion.Pulverizer.addRecipe(3000, <etfuturum:chain>, <ThermalFoundation:material:0>, <Thaumcraft:ItemNugget:0> * 2, 100);

// Blackstone
mods.thaumcraft.Research.addResearch("BLACKSTONE", "ARTIFICE", "terra 4, tenebrae 3, lucrum 1", 5, -4, 0, <etfuturum:blackstone:0>);
mods.thaumcraft.Research.setSecondary("BLACKSTONE", true);
game.setLocalization("en_US", "tc.research_name.BLACKSTONE", "Blackstone");
game.setLocalization("en_US", "tc.research_text.BLACKSTONE", "Making things pretty");

mods.thaumcraft.Arcane.addShaped("BLACKSTONE", <etfuturum:blackstone:0> * 4, "perditio 5", [[null, <MineFactoryReloaded:stone:2>,null],[<MineFactoryReloaded:stone:2>, <Thaumcraft:ItemShard:4>, <MineFactoryReloaded:stone:2>],[null, <MineFactoryReloaded:stone:2>, null]]);
mods.thaumcraft.Crucible.addRecipe("BLACKSTONE", <etfuturum:gilded_blackstone>, <etfuturum:blackstone:*>, "lucrum 1");

game.setLocalization("en_US", "tc.research_page.BLACKSTONE.1", 'You have seen visions from what you can only assume is a time far removed from your own. These visions have shown you large structures in the Nether inhabited by brutish pig-man hybrids who are obsessed with gold. These "bastions" were composed of dark stone blocks, which have particularly piqued your interest for their decorative potential. Using the same principle as arcane stone, exposing some mundane blackstone cobble to the energy emitted by an order shard allows you to fabricate some of those blocks.');
game.setLocalization("en_US", "tc.research_page.BLACKSTONE.2", "You can create a block of gilded blackstone by exposing any of these blackstone blocks to lucrum essentia in a crucible. This block seemed to be highly prized by those creatures in your visions.");

mods.thaumcraft.Research.addPage("BLACKSTONE", "tc.research_page.BLACKSTONE.1");
mods.thaumcraft.Research.addArcanePage("BLACKSTONE", <etfuturum:blackstone:0>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone:1>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone:2>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone:4>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone_wall:0>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone_wall:1>);
mods.thaumcraft.Research.addCraftingPage("BLACKSTONE", <etfuturum:blackstone_wall:2>);
mods.thaumcraft.Research.addPage("BLACKSTONE", "tc.research_page.BLACKSTONE.2");
mods.thaumcraft.Research.addCruciblePage("BLACKSTONE", <etfuturum:gilded_blackstone>);

mods.thaumcraft.Research.addPrereq("BLACKSTONE", "ARCANESTONE", false);

// Elytra
mods.thaumcraft.Research.addResearch("ELYTRA", "ARTIFICE", "volatus 4, motus 4, alienis 3, tutamen 0, praecantatio 0", 3, 6, 5, <etfuturum:elytra>);

game.setLocalization("en_US", "tc.research_name.ELYTRA", "Elytra Wingsuits");
game.setLocalization("en_US", "tc.research_text.ELYTRA", "Bring a water bucket to break your fall");
game.setLocalization("en_US", "tc.research_page.ELYTRA.1", 'While the thaumostatic harness certainly does its job in allowing you to fly, it lacks a certain... grace to its movements. Dragons and bats are able to cut through the air with ease, but you lack the wings that they have. That is, until today. By adding feathers, leather, and air shards to a belt and infusing it with essentia to aid in mobility and emulate the great Ender Dragon, you have created a piece of equipment that you have dubbed "Elytra".');
game.setLocalization("en_US", "tc.research_page.ELYTRA.2", "While equipped on your body or wings slot, you are able to deploy the wings behind you by jumping in midair. Unlike the mighty dragon or even the lowly bat, you are unable to flap your wings to gain velocity while flying. However, these wings allow gliding over long distances and performing deft acrobatic maneuvers with your momentum while in flight.");
game.setLocalization("en_US", "tc.research_page.ELYTRA.3", "While you may be unable to flap your wings to gain speed, it is possible to launch yourself a great distance through the use of firework rockets. Despite defying all reason, firework rockets containing explosive charges seem to not damage the user. Caution must be taken to land gently, or a hasty thaumaturge will meet his end due to the kinetic forces exerted upon his body.");
game.setLocalization("en_US", "tc.research_page.ELYTRA.4", "The elytra will slowly take damage while in flight. This can be mitigated by the Unbreaking enchantment, which can be applied by an anvil or through infusion enchanting. Other means of enchanting, such as the enchantment table, seem to be unable to operate upon the elytra. Damaged elytra may be repaired with leather in an anvil or through other, more magical means.");

mods.thaumcraft.Infusion.addRecipe("ELYTRA", <Thaumcraft:ItemGirdleHover>, [<minecraft:feather>, <minecraft:leather>, <minecraft:ender_eye>, <minecraft:leather>, <Thaumcraft:ItemShard:0>, <minecraft:feather>, <minecraft:leather>, <minecraft:ender_eye>, <minecraft:leather>, <Thaumcraft:ItemShard:0>], "volatus 64, iter 32, aer 32, alienis 16", <etfuturum:elytra>, 7);
mods.thaumcraft.Research.addPage("ELYTRA", "tc.research_page.ELYTRA.1");
mods.thaumcraft.Research.addInfusionPage("ELYTRA", <etfuturum:elytra>);
mods.thaumcraft.Research.addPage("ELYTRA", "tc.research_page.ELYTRA.2");
mods.thaumcraft.Research.addPage("ELYTRA", "tc.research_page.ELYTRA.3");
mods.thaumcraft.Research.addPage("ELYTRA", "tc.research_page.ELYTRA.4");

mods.thaumcraft.Research.addPrereq("ELYTRA", "HOVERGIRDLE", false);
mods.thaumcraft.Research.setConcealed("ELYTRA", true);

// Chorus Flowers
mods.thaumcraft.Research.addResearch("CHORUSFLOWER", "ARTIFICE", "sensus 3, herba 3, alienis 3, victus 3, iter 0", 4, 6, 5, <etfuturum:chorus_flower>);

game.setLocalization("en_US", "tc.research_name.CHORUSFLOWER", "Chorus Flowers");
game.setLocalization("en_US", "tc.research_text.CHORUSFLOWER", "Houdini's favorite snack");
game.setLocalization("en_US", "tc.research_page.CHORUSFLOWER.1", 'Your use of alienis to create wings has caused you to wonder about its effects on other forms of life. Taking some sugar cane and infusing it with the essence of the end has left you with quite a strange specimen. This "chorus flower" only seems to grow on end stone, and it will slowly grow upwards, occasionally splitting into multiple thin branches. Much like the sugar cane it is made from, breaking the base will fell the whole chorus plant, but any chorus flowers will be lost. They must be harvested by hand or dislodged by a well-aimed arrow. Flowers that have reached their maximum height will darken.');
game.setLocalization("en_US", "tc.research_page.CHORUSFLOWER.2", 'When broken, the body of a chorus plant will often drop alien-looking "chorus fruits". These fruits give off a kind of energy that you have only seen left behind after an enderman teleports. Smelting them in a furnace hardens their soft flesh, removing any nutritional value, but this rigidity allows for them to be shaped into eye-catching purple bricks. Additionally, attaching a popped chorus fruit to the end of a blaze rod appears to cause it to continuously emit light, just like a torch.');

mods.thaumcraft.Infusion.addRecipe("CHORUSFLOWER", <minecraft:reeds>, [<minecraft:ender_pearl>,  <minecraft:end_stone>], "sensus 8, herba 8, alienis 8, victus 8, iter 8", <etfuturum:chorus_flower>, 2);
mods.thaumcraft.Research.addPage("CHORUSFLOWER", "tc.research_page.CHORUSFLOWER.1");
mods.thaumcraft.Research.addInfusionPage("CHORUSFLOWER", <etfuturum:chorus_flower>);
mods.thaumcraft.Research.addPage("CHORUSFLOWER", "tc.research_page.CHORUSFLOWER.2");
mods.thaumcraft.Research.addCraftingPage("CHORUSFLOWER", <etfuturum:purpur_block>);
mods.thaumcraft.Research.addCraftingPage("CHORUSFLOWER", <etfuturum:purpur_slab>);
mods.thaumcraft.Research.addCraftingPage("CHORUSFLOWER", <etfuturum:purpur_pillar>);
mods.thaumcraft.Research.addCraftingPage("CHORUSFLOWER", <etfuturum:purpur_stairs>);
mods.thaumcraft.Research.addCraftingPage("CHORUSFLOWER", <etfuturum:end_rod>);

mods.thaumcraft.Research.addPrereq("CHORUSFLOWER", "ELYTRA", false);
mods.thaumcraft.Research.setConcealed("CHORUSFLOWER", true);

// Trapdoors
recipes.remove(<betterstorage:locker>);
recipes.addShapedMirrored(<betterstorage:locker>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, null, <ore:trapdoorWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
recipes.remove(<Thaumcraft:blockMetalDevice:5>);
recipes.addShaped(<Thaumcraft:blockMetalDevice:5>, [[<ore:barsIron>], [<ore:trapdoorWood>]]);
mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockChestHungry>);
mods.thaumcraft.Arcane.addShaped("HUNGRYCHEST", <Thaumcraft:blockChestHungry>, "aer 5, ordo 3, perditio 3", [[<ore:plankWood>, <ore:trapdoorWood>, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
mods.thaumcraft.Arcane.removeRecipe(<Automagy:blockEagerChest>);
mods.thaumcraft.Arcane.addShaped("EAGERCHEST", <Automagy:blockEagerChest>, "ordo 5, perditio 5", [[<ore:plankWood>, <ore:trapdoorWood>, <ore:plankWood>], [<Thaumcraft:blockWoodenDevice:6>, <Automagy:edible>, <Thaumcraft:blockWoodenDevice:6>], [<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>]]);
mods.thaumcraft.Arcane.removeRecipe(<Automagy:blockGreedyChest>);
mods.thaumcraft.Arcane.addShaped("GREEDYCHEST", <Automagy:blockGreedyChest>, "aer 7, ordo 2, perditio 2", [[<Thaumcraft:blockWoodenDevice:6>, <ore:trapdoorWood>, <Thaumcraft:blockWoodenDevice:6>], [<Thaumcraft:blockWoodenDevice:6>, <Automagy:avaricePearl>, <Thaumcraft:blockWoodenDevice:6>], [<Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>]]);
mods.thaumcraft.Arcane.removeRecipe(<Automagy:blockTenaciousChest>); 
mods.thaumcraft.Arcane.addShaped("TENACIOUSCHEST", <Automagy:blockTenaciousChest>, "aer 5, terra 2, aqua 2", [[<ore:plankWood>, <ore:trapdoorWood>, <ore:plankWood>], [<ore:plankWood>, <ore:slimeball>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Beetroot
mods.thaumcraft.Crucible.addRecipe("PLANTCONJURATION", <etfuturum:beetroot_seeds>, <minecraft:wheat_seeds>, "sensus 5, messis 2");
mods.thaumcraft.Research.addCruciblePage("PLANTCONJURATION", <etfuturum:beetroot_seeds>);