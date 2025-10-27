print("SCRIPT: Natura Trees");

// Aspect Standardization
mods.thaumcraft.Aspects.set(<Natura:floraleavesnocolor:2>, "herba 2, metallum 1"); // Bloodwood Leaves
mods.thaumcraft.Aspects.set(<Natura:floraleavesnocolor:3>, "herba 2"); // Willow Leaves

// When MFR auto-shears leaves, it adds 8 to the ID value of the real leaves
// This allows conversion back to the right IDs

// Said broken leaves have their aspects set to "Herba 1", so their aspects are corrected as well
// One unintended consequence is that there are technically two different items to scan with the Thaumometer

recipes.addShapeless(<Natura:floraleaves:0>, [<Natura:floraleaves:8>]); // Redwood
recipes.addShapeless(<Natura:floraleaves:1>, [<Natura:floraleaves:9>]); // Eucalyptus
recipes.addShapeless(<Natura:floraleaves:2>, [<Natura:floraleaves:10>]); // Hopseed
mods.thaumcraft.Aspects.set(<Natura:floraleaves:8>, "herba 2");
mods.thaumcraft.Aspects.set(<Natura:floraleaves:9>, "herba 2");
mods.thaumcraft.Aspects.set(<Natura:floraleaves:10>, "herba 2");

recipes.addShapeless(<Natura:floraleavesnocolor:0>, [<Natura:floraleavesnocolor:8>]); // Sakura
recipes.addShapeless(<Natura:floraleavesnocolor:1>, [<Natura:floraleavesnocolor:9>]); // Ghostwood
recipes.addShapeless(<Natura:floraleavesnocolor:2>, [<Natura:floraleavesnocolor:10>]); // Bloodwood
recipes.addShapeless(<Natura:floraleavesnocolor:3>, [<Natura:floraleavesnocolor:11>]); // Willow
mods.thaumcraft.Aspects.set(<Natura:floraleavesnocolor:8>, "herba 2");
mods.thaumcraft.Aspects.set(<Natura:floraleavesnocolor:9>, "herba 2");
mods.thaumcraft.Aspects.set(<Natura:floraleavesnocolor:10>, "herba 2, metallum 1");
mods.thaumcraft.Aspects.set(<Natura:floraleavesnocolor:11>, "herba 2");

recipes.addShapeless(<Natura:Dark Leaves:0>, [<Natura:Dark Leaves:8>]); // Darkwood
recipes.addShapeless(<Natura:Dark Leaves:1>, [<Natura:Dark Leaves:9>]); // Darkwood Flowers
recipes.addShapeless(<Natura:Dark Leaves:2>, [<Natura:Dark Leaves:10>]); // Darkwood Apples
recipes.addShapeless(<Natura:Dark Leaves:3>, [<Natura:Dark Leaves:11>]); // Fusewood
mods.thaumcraft.Aspects.set(<Natura:Dark Leaves:8>, "herba 2");
mods.thaumcraft.Aspects.set(<Natura:Dark Leaves:9>, "herba 2");
mods.thaumcraft.Aspects.set(<Natura:Dark Leaves:10>, "herba 2, messis 2");
mods.thaumcraft.Aspects.set(<Natura:Dark Leaves:11>, "herba 2, perditio 1");

recipes.addShapeless(<Natura:Rare Leaves:0>, [<Natura:Rare Leaves:8>]); // Maple
recipes.addShapeless(<Natura:Rare Leaves:1>, [<Natura:Rare Leaves:9>]); // Silverbell
recipes.addShapeless(<Natura:Rare Leaves:2>, [<Natura:Rare Leaves:10>]); // Amaranth
recipes.addShapeless(<Natura:Rare Leaves:3>, [<Natura:Rare Leaves:11>]); // Tiger
mods.thaumcraft.Aspects.set(<Natura:Rare Leaves:8>, "herba 2");
mods.thaumcraft.Aspects.set(<Natura:Rare Leaves:9>, "herba 2");
mods.thaumcraft.Aspects.set(<Natura:Rare Leaves:10>, "herba 2");
mods.thaumcraft.Aspects.set(<Natura:Rare Leaves:11>, "herba 2");