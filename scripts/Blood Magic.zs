print("SCRIPT: Blood Magic");

recipes.remove(<AWWayofTime:Altar>);
recipes.addShaped(<AWWayofTime:Altar>, 
                [[<ore:stone>, null, <ore:stone>], 
                 [<ore:stone>, <minecraft:furnace>, <ore:stone>], 
                 [<ore:ingotSanguinite>, <ore:gemRuby>, <ore:ingotSanguinite>]]);

recipes.remove(<AWWayofTime:sacrificialKnife>);
recipes.addShaped(<AWWayofTime:sacrificialKnife>, 
                [[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>], 
                 [<ore:gemDiamond>, <ore:ingotSanguinite>, <ore:blockGlassColorless>], 
                 [<ore:ingotMithril>, <ore:gemDiamond>, <ore:blockGlassColorless>]]);

mods.bloodmagic.Altar.removeRecipe(<AWWayofTime:daggerOfSacrifice>);
mods.bloodmagic.Altar.addRecipe(<AWWayofTime:daggerOfSacrifice>, <Metallurgy:carmot.sword>, 2, 3000);

recipes.remove(<AWWayofTime:AlchemicalWizardrybloodRune:5>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:AlchemicalWizardrybloodRune:5>, 
                [[<minecraft:bucket>, <AWWayofTime:bloodMagicBaseItems:27>,<minecraft:bucket>], 
                 [<Metallurgy:quicksilver.ingot>, <AWWayofTime:speedRune>, <Metallurgy:quicksilver.ingot>], 
                 [<minecraft:bucket>, <AWWayofTime:archmageBloodOrb>,<minecraft:bucket>]]);

recipes.remove(<AWWayofTime:runeOfSacrifice>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:runeOfSacrifice>, 
                [[<minecraft:stone>, <AWWayofTime:reinforcedSlate>,<minecraft:stone>], 
                 [<Metallurgy:rubracium.ingot>, <AWWayofTime:apprenticeBloodOrb>, <Metallurgy:rubracium.ingot>], 
                 [<minecraft:stone>, <AWWayofTime:reinforcedSlate>,<minecraft:stone>]]);

recipes.remove(<AWWayofTime:runeOfSelfSacrifice>);
mods.bloodmagic.BloodOrb.addShaped(<AWWayofTime:runeOfSelfSacrifice>, 
                [[<minecraft:stone>, <AWWayofTime:reinforcedSlate>,<minecraft:stone>], 
                 [<Metallurgy:infuscolium.ingot>, <AWWayofTime:apprenticeBloodOrb>, <Metallurgy:infuscolium.ingot>], 
                 [<minecraft:stone>, <AWWayofTime:reinforcedSlate>,<minecraft:stone>]]);
				 
				 
mods.bloodmagic.Binding.addRecipe(<ExtraUtilities:angelRing:0>, <blighttweaks:boundRing:0>);
mods.bloodmagic.Binding.addRecipe(<ExtraUtilities:angelRing:1>, <blighttweaks:boundRing:1>);
mods.bloodmagic.Binding.addRecipe(<ExtraUtilities:angelRing:2>, <blighttweaks:boundRing:2>);
mods.bloodmagic.Binding.addRecipe(<ExtraUtilities:angelRing:3>, <blighttweaks:boundRing:3>);
mods.bloodmagic.Binding.addRecipe(<ExtraUtilities:angelRing:4>, <blighttweaks:boundRing:4>);

// Sigil of the Hardened Soul
mods.bloodmagic.BloodOrb.addShaped(<blighttweaks:soulSigil>,
                [[<AWWayofTime:bloodMagicBaseItems:16>, <AWWayofTime:bloodMagicBaseItems:30>, <AWWayofTime:bloodMagicBaseItems:16>],
                 [<AWWayofTime:bloodMagicBaseItems:17>, <AWWayofTime:bloodMagicBaseItems:27>, <AWWayofTime:bloodMagicBaseItems:17>],
                 [<AWWayofTime:bloodMagicBaseItems:16>, 6, <AWWayofTime:bloodMagicBaseItems:16>]]);
