//Minetweaker recipes and changes
import mods.botania.Lexicon;
import minetweaker.item.IItemStack;
print("Loading Botania Tweaks");
print("Removing Botania Fertilizers");

print("Modifying Botania Lexicon");

//Edit Pure Daisy to mention anti-taint effects and that it can be found in the world.
Lexicon.addTextPage("botania.page.BlightfallPureDaisy5","botania.entry.pureDaisy",5);
game.setLocalization("en_US", "botania.page.BlightfallPureDaisy5", "These flowers also seem to have a &1cleansing&0 effect on the taint. This makes it easy to spot them &1in the wild&0; just look for small patches of purified land.");
print("Pure Daisy entry modified");
// Pemove/modify passive decay.
game.setLocalization("en_US", "botania.page.daybloom1", "&1Dayblooms&0 produce feeble amounts of &4Mana&0, so perhaps hastily upgrading to &1Endoflames&0 or other &1active flowers&0, once available, might be a good idea.");
game.setLocalization("en_US", "botania.page.nightshade0", "The &1Nightshade&0 is the dark counterpart of the &1Daybloom&0, as it generates &4Mana&0 passively in any situation the &1Daybloom&0 can not, as long as it's nighttime.");
game.setLocalization("en_US", "botania.page.hydroangeas0", "&1Hydroangeas&0 act as a liquid based passive generator. They will suck up any &1Still Water&0 in a 3x3 area around it, on the same height, creating &4Mana&0 from it. The amount they produce is comparable to that of an &1Endoflame&0. They also seem to function faster during &4Rain&0.");
game.setLocalization("en_US", "botania.page.flowerShrinking0", "Some functional flowers have a bit too much reach. Sometimes one might not want that to be the case. Tossing one of those few flowers into a &1Mana Pool&0 with an &1Alchemy Catalyst&0 will, at the cost of some &4Mana&0, shrink it, making its radius smaller. Every other function remains the same.<br>This can also be done for passive generating flowers, turning them into decorative versions with no function.");
game.setLocalization("botania.page.passiveGen1", "At the start of a botanist's career, only very basic and rudimentary &4Passive Flowers&0 are available, such as the &1Daybloom&0 or &1Nightshade&0.<br>These flowers are required to advance on to more potent and effective &4Active Flowers&0, but they should not be relied upon aside from being a stepping stone. While &4Passive Flowers&0 will not decay into &1Dead Bushes&0, their mana output is minimal.");
print("Passive flowers modified");
//Kill Orechid Ingam, Wrap, Spellbinding Cloth
mods.botania.Lexicon.removeEntry("botania.entry.orechidIgnem");
mods.botania.Apothecary.removeRecipe("orechidIgnem");
mods.botania.Lexicon.removeEntry("botania.entry.wrap");
mods.botania.Lexicon.removeEntry("botania.entry.spellCloth");
mods.botania.Lexicon.removeEntry("botania.entry.primusLoci");
recipes.remove(<Botania:spellCloth>);
print("Misc. entries removed");
//Edit Elf Message.
Lexicon.removePage("botania.entry.elfMessage", 1);
Lexicon.addLorePage("botania.page.blightfallElfMessage1","botania.entry.elfMessage",1);
game.setLocalization("en_US", "botania.page.blightfallElfMessage1", "&oGreetings. We noticed that our portal was opened via a link from another world. That's rather shocking news indeed. We thank you very much for providing us with a repository of the knowledge from your world, as to keep us up to date to what happened since we left it. Speaking of which... what in Freya's name has happened over there? It seems to have been woefully mismanaged!");
Lexicon.removePage("botania.entry.elfMessage", 3);
Lexicon.addLorePage("botania.page.blightfallElfMessage3","botania.entry.elfMessage",3);
game.setLocalization("en_US", "botania.page.blightfallElfMessage3", "&oThe link you have managed to establish is rather weak, no living beings will be able to go through. We're perfectly fine with that; we see no need to risk our lands becoming infected with your taint. There's another positive side; the link strikes the fabric of time of both our worlds in a way where it doesn't keep them in sync. That's the reason why you received your book back so quickly.");
print("Elf entry modified");
//Better forbidden magic hints.
Lexicon.removePage("forbidden.lexicon.tainthistle", 0);
Lexicon.addTextPage("botania.page.blightfallTainthistle","forbidden.lexicon.tainthistle",0);
game.setLocalization("en_US", "botania.page.blightfallTainthistle", "The disgusting &1Tainthistle&0 derives sustenance from the tainted runoff of magical experiments. It'll suck up any such substance it can find and try to turn it into mana. <br>Because it is born of thaumaturgic energies, it can be created only by thaumaturges. Research via a &1Thaumonomicon&0 should reveal its recipe.");
print("Tainthistle entry modified");
Lexicon.removePage("forbidden.lexicon.euclidaisy", 0);
Lexicon.addTextPage("botania.page.blightfallEuclidaisy","forbidden.lexicon.euclidaisy",0);
game.setLocalization("en_US", "botania.page.blightfallEuclidaisy", "The eerie, pink &1Euclidaisy&0 is an oddity. It uses large amounts of mana to conjure some sort of ethereal substance. <br>Thaumaturges seem to covet this ethereal substance. Likely, it is they who invented it. Research via a &1Thaumonomicon&0 should reveal its recipe.");
print("Euclidaisy entry modified");
Lexicon.removePage("forbidden.lexicon.whisperweed", 0);
Lexicon.addTextPage("botania.page.blightfallWhisperweed","forbidden.lexicon.whisperweed",0);
game.setLocalization("en_US", "botania.page.blightfallWhisperweed", "The &1Whisperweed&0 is an unpleasant plant that whispers thaumaturgic secrets into the ears of anyone who'll listen.<br>Because the secrets are thaumaturgic in nature, it's obvious this plant is their doing. Research via a &1Thaumonomicon&0 should reveal its recipe.");
print("Whisperweed entry modified");

//Make Lexicon gated.
recipes.remove(<Botania:lexicon>);
recipes.addShapeless(<Botania:lexicon>, [<TabulaRasa:RasaItem0:19>, <TabulaRasa:RasaItem0:18>]);
recipes.addShapeless(<Botania:lexicon>*2, [<Botania:lexicon>, <minecraft:book>]);

Lexicon.removePage("botania.entry.lexicon", 2);
mods.botania.Lexicon.addCraftingPage("botania.page.blightfallLexicon","botania.entry.lexicon",2,
               [<Botania:lexicon> * 2],

					     [[[<Botania:lexicon>, <minecraft:book>, null]]]);
game.setLocalization("en_US", "botania.page.blightfallLexicon", "Copying the Lexicon.");
print("Lexicon entry modified");
print("Lexicon gated");


mods.thaumcraft.Research.addResearch("THAUMOMORPHICESSENCE", "FORBIDDEN", "praecantatio 15, herba 15, permutatio 15, sensus 5", -5, 4, 4, <TabulaRasa:RasaItem0:20>);
game.setLocalization("en_US", "tc.research_name.THAUMOMORPHICESSENCE", "Thaumomorphic Botanist Essence");
game.setLocalization("en_US", "tc.research_text.THAUMOMORPHICESSENCE", "Making flowers more Mystical.");
game.setLocalization("en_US", "cavestokingdoms.research_page.THAUMOMORPHICESSENCE.1", "Those mystical flowers must have come from somewhere. Obviously, a wizard did it. And if a wizard could do it, a different wizard should be able to do it again.<LINE>Thaumomorphic botanist essence, in addition to being hard to pronounce, allows a thaumoturge to create mystical flowers from dandelions and poppies. Adding any dye is required to decide the color of the resulting mystical flower.");
game.setLocalization("en_US", "cavestokingdoms.research_page.THAUMOMORPHICESSENCE.2", "Without an easily accessible source of mana, the mana pearl required will take great effort to procure. Your arcane worktable is absolutely not the correct tool for this job, so it will take a large amount of vis and some salis mundus to keep this craft stable enough to merge the mana and ender magics.");
game.setLocalization("en_US", "cavestokingdoms.research_page.THAUMOMORPHICESSENCE.3", "Mana is a form of mystical energy with strange sensory properties. You are able to create a fluid in your crucible that matches this description perfectly, but bottling it causes it to not be stable enough to add to a mana pool. Despite its tempting appearance, ingestion is ill-advised.<LINE>While you have devised a way to create it yourself, there may also be some bottles of mana that were left behind by this planet's previous inhabitants. Some may rarely be found in their structures or bartered for with creatures who deal in rare and precious items.");
mods.thaumcraft.Infusion.addRecipe("THAUMOMORPHICESSENCE", <minecraft:dye:15>, [<Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Botania:manaResource:1>], "permutatio 40, herba 16, praecantatio 16, sensus 40, lux 8", <TabulaRasa:RasaItem0:20>, 6);
mods.thaumcraft.Arcane.addShaped("THAUMOMORPHICESSENCE", <Botania:manaResource:1>, "aer 50, ignis 50, aqua 50, terra 50, ordo 50, perditio 50", [[<Thaumcraft:ItemResource:14>, <Botania:manaBottle>, <Thaumcraft:ItemResource:14>],
[<Botania:manaBottle>, <ore:pearlEnder>, <Botania:manaBottle>],
[<Thaumcraft:ItemResource:14>, <Botania:manaBottle>, <Thaumcraft:ItemResource:14>]]);
mods.thaumcraft.Crucible.addRecipe("THAUMOMORPHICESSENCE", <Botania:manaBottle>, <minecraft:glass_bottle>, "praecantatio 16, sensus 8, potentia 8");
mods.thaumcraft.Research.addPage("THAUMOMORPHICESSENCE", "cavestokingdoms.research_page.THAUMOMORPHICESSENCE.1");
mods.thaumcraft.Research.addInfusionPage("THAUMOMORPHICESSENCE", <TabulaRasa:RasaItem0:20>);
mods.thaumcraft.Research.addPage("THAUMOMORPHICESSENCE", "cavestokingdoms.research_page.THAUMOMORPHICESSENCE.2");
mods.thaumcraft.Research.addArcanePage("THAUMOMORPHICESSENCE", <Botania:manaResource:1>);
mods.thaumcraft.Research.addPage("THAUMOMORPHICESSENCE", "cavestokingdoms.research_page.THAUMOMORPHICESSENCE.3");
mods.thaumcraft.Research.addCruciblePage("THAUMOMORPHICESSENCE", <Botania:manaBottle>);
print("Thaumomorphic Botanist Essence added");
val nonmagicFlower = <ore:nonmagicFlower>;
nonmagicFlower.add(<minecraft:yellow_flower>);
nonmagicFlower.add(<minecraft:red_flower>);

mods.thaumcraft.Research.addPrereq("THAUMOMORPHICESSENCE", "INFUSION", false);
mods.thaumcraft.Research.addPrereq("THAUMOMORPHICESSENCE", "BOTANY", false);

var dyes = [<minecraft:dye:15>, <minecraft:dye:14>, <minecraft:dye:13>, <minecraft:dye:12>, <minecraft:dye:11>, <minecraft:dye:10>, <minecraft:dye:9>, <minecraft:dye:8>, <minecraft:dye:7>, <minecraft:dye:6>, <minecraft:dye:5>, <minecraft:dye:4>, <minecraft:dye:3>, <minecraft:dye:2>, <minecraft:dye:1>, <minecraft:dye:0>] as IItemStack[];
var mFlowers = [<Botania:flower:0>, <Botania:flower:1>, <Botania:flower:2>, <Botania:flower:3>, <Botania:flower:4>, <Botania:flower:5>, <Botania:flower:6>, <Botania:flower:7>, <Botania:flower:8>, <Botania:flower:9>, <Botania:flower:10>, <Botania:flower:11>, <Botania:flower:12>, <Botania:flower:13>, <Botania:flower:14>, <Botania:flower:15>, ] as IItemStack[];

for i, dye in dyes
{
    var mFlower = mFlowers[i];

    recipes.addShapeless(mFlower, [<ore:nonmagicFlower>, dye, <TabulaRasa:RasaItem0:20>]);
}

mods.botania.Apothecary.addRecipe(<Thaumcraft:blockCustomPlant:2>.withTag({display: {Name: "Botanist Shimmerleaf"}}), [<ore:petalWhite>, <ore:petalWhite>, <ore:petalLightBlue>, <ore:petalLightBlue>, <ore:petalGreen>]);
mods.botania.Apothecary.addRecipe(<Thaumcraft:blockCustomPlant:4>.withTag({display: {Name: "Botanist Ethereal Bloom"}}), [<ore:petalWhite>, <ore:petalWhite>, <ore:petalLightBlue>, <ore:petalLightBlue>, <ore:petalGreen>, <ore:petalLime>, <ore:petalCyan>, <ore:petalCyan>, <ore:petalBlue>, <ore:petalBlue>, <ore:runeEarthB>, <ore:runeSpringB>]);

mods.botania.Lexicon.addEntry("botania.entry.etherealBloom","botania.category.functionalFlowers",<Thaumcraft:blockCustomPlant:4>);
game.setLocalization("en_US", "botania.entry.etherealBloom", "Ethereal Blooms");

mods.botania.Lexicon.addEntry("botania.entry.shimmerleaf","botania.category.functionalFlowers",<Thaumcraft:blockCustomPlant:2>);
game.setLocalization("en_US", "botania.entry.shimmerleaf", "Shimmerleaf");

mods.botania.Lexicon.addTextPage("botania.page.etherealBloom0","botania.entry.etherealBloom",0);
game.setLocalization("en_US", "botania.page.etherealBloom0", "The thaumaturges might believe that they own the concept of ethereal blooms, but they're wrong. The bloom is a flower, and all things flowery belong to the botanist. Obviously, there is a way to make them in a petal apothecary.");

mods.botania.Lexicon.addTextPage("botania.page.shimmerleaf0","botania.entry.shimmerleaf",0);
game.setLocalization("en_US", "botania.page.shimmerleaf0", "The thaumaturges might believe that they own the concept of ethereal blooms, but they're wrong. The bloom is a flower, and all things flowery belong to the botanist. Obviously, there is a way to make them in a petal apothecary.");

mods.botania.Lexicon.addPetalPage("botania.page.etherealBloom1","botania.entry.etherealBloom",1,[<Thaumcraft:blockCustomPlant:4>.withTag({display: {Name: "Botanist Ethereal Bloom"}})],[[<ore:petalWhite>, <ore:petalWhite>, <ore:petalLightBlue>, <ore:petalLightBlue>, <ore:petalGreen>, <ore:petalLime>, <ore:petalCyan>, <ore:petalCyan>, <ore:petalBlue>, <ore:petalBlue>, <ore:runeEarthB>, <ore:runeSpringB>]]);
game.setLocalization("en_US", "botania.page.etherealBloom1", "&oRequires a surprising amount of iron.&r");

mods.botania.Lexicon.addPetalPage("botania.page.shimmerleaf1","botania.entry.shimmerleaf",1,[<Thaumcraft:blockCustomPlant:2>.withTag({display: {Name: "Botanist Shimmerleaf"}})],[[<ore:petalWhite>, <ore:petalWhite>, <ore:petalLightBlue>, <ore:petalLightBlue>, <ore:petalGreen>]]);
game.setLocalization("en_US", "botania.page.shimmerleaf1", "&oWay easier than with blood magic. What'd you expect?&r");

mods.thermalexpansion.Smelter.addRecipe(400, <minecraft:end_stone>, <minecraft:glass_bottle>, <Botania:manaResource:15>, <Thaumcraft:ItemCrystalEssence>.withTag({Aspects: [{amount: 1, key: "alienis"}]}), 15);
print("Added shimmerleaf, bloom entries");
//Correct spelling of Soujourner's Sash (in English)
game.setLocalization("en_US", "item.botania:travelBelt.name", "Sojourner's Sash");

mods.botania.ManaInfusion.removeRecipe(<minecraft:nether_wart>);
mods.botania.ManaInfusion.addAlchemy(<minecraft:nether_wart>, <minecraft:blaze_powder>, 4000);
mods.botania.ManaInfusion.addAlchemy(<minecraft:ghast_tear>, <minecraft:blaze_rod>, 20000);

// Remove translated Lexica from dungeon loot table (for convocation of the damned/loonium)
vanilla.loot.removeChestLoot("dungeonChest", <Botania:lexicon>);
vanilla.loot.addChestLoot("dungeonChest", <TabulaRasa:RasaItem0:19>.weight(6), 1, 1);
vanilla.loot.removeChestLoot("bonusChest", <Botania:lexicon>);
vanilla.loot.addChestLoot("bonusChest", <TabulaRasa:RasaItem0:19>.weight(7), 1, 1);

game.setLocalization("botaniamisc.edition", "Blightfall Edition");

// The kindle lens does not open nether portals
game.setLocalization("botania.page.lens32", "The &1Kindle Lens&0 is infused with a burning spark. When it hits a block, it'll set it on fire, but it doesn't seem to set any living beings on fire.");


// Fix mana cookie recipe shown in lexica
mods.botania.Lexicon.removePage("botania.entry.pool", 14);
mods.botania.Lexicon.addInfusionPage("botania.page.pool7", "botania.entry.pool", 14, [<Botania:manaCookie>], [<TabulaRasa:RasaItem0:28>], [20000]);

// Kekimurus thaumic cake
game.setLocalization("en_US", "botania.page.kekimurus0", "&1Cake&0 is delicious, everyone loves it, flowers included.<br>The &1Kekimurus&0 is one of these &1Cake&0 aficionados, and will eat any it spots nearby, using its enriching nutrients to create &4Mana&0.<br>The magical nature of Thaumic Cakes sadly makes them indigestible by the &1Kekimurus&0.");

// Rafflowsia lore about passive decay
mods.botania.Lexicon.removePage("botania.entry.rafflowsia", 0);
mods.botania.Lexicon.removePage("botania.entry.rafflowsia", 0);
mods.botania.Lexicon.removePage("botania.entry.rafflowsia", 0);

// Remove mentions of passive decay in Overgrowth Seed entry
game.setLocalization("en_US", "botania.tagline.overgrowthSeed", "An elusive object that powers up flowers");
game.setLocalization("en_US", "botania.page.overgrowthSeed0", "An &1Overgrowth Seed&0 is an elusive item, which can be used to enchant a piece of &1Grass&0, via right clicking on it in the world, creating &1Enchanted Soil&0. Flowers that are rooted on this &1Enchanted Soil&0 will function at double the normal speed.<br>&4Passive flowers&0 planted on this soil won't get the speed boost. These rare items are better used on more powerful flowers anyways.");

// Ender Air
game.setLocalization("en_US", "botania.page.enderAir0", "The air present in the void of the &1End&0 seems to have some mutating properties. Smelting some &1End Stone&0 in an induction smelter will capture some of that air in a glass bottle, which can then later be tossed similarly to a splash potion, turning nearby &1Stone&0 on the landing point into more &1End Stone&0.");

// Replace key of the king's law with Excaliber
game.setLocalization("en_US", "botania.entry.kingKey", "Holy Sword Excaliber");
game.setLocalization("en_US", "botania.tagline.kingKey", "You don't vote for kings!");
game.setLocalization("en_US", "botania.page.kingKey0", "The &1Holy Sword Excaliber&0 is a powerful weapon fit for a true king. This legendary sword is unbreakable and does more damage than any mundane sword. It shoots out homing beams of light that will damage your enemies with left click. Wielding the sword also proves your authority over the lowly peasants, increasing the speed of your strides.");

// Shimmering mushrooms do not exist on the map
game.setLocalization("en_US", "botania.page.mushrooms0", "Sprinkling some &1Floral Powder&0 on &1Mushrooms&0 seems to have the interesting effect of them mutating into the respective color of powder, gaining a new shape and getting the ability to emit dim light. Thaumaturges seem to like to put them around their infusion altars.");
game.setLocalization("en_US", "botania.page.tcIntegration5", "Next off, there's a few varied resources or constructs that can work as paraphernalia for an &1Infusion Altar&0, to lower its instability, these come in the form of &1Glimmering Flowers, Glimmering Mushrooms, Floating Flowers and any variety of Pylons&0.");