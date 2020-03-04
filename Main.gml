#define Main



// CHANGES TO STEEL

ItemEdit(Item.Steel, ItemData.Blueprint, [
	Item.IronIngot, 2,
	Item.Coal, 2
]);
ItemEdit(Item.Steel, ItemData.Description, "an iron/carbon alloy highly resilient to breakage or blemish.");
ItemEdit(Item.Steel, ItemData.Sprite, sprite_add("steel/steel.png", 1, true, false, 9, 8));



// CREATE DAMASCUS STEEL

global.DamascusSteel = ItemCreate(
	undefined,
	"damascus\nsteel",
	"a beautiful waterfall pattern wraps all around the alloy's surface",
	sprite_add("steel/damascus.png", 1, true, false, 9, 8),
	ItemType.Material,
	ItemSubType.None,
	150,
	0,
	0,
	[
		Item.Steel, 1,
		Item.GoldIngot, 2,
		Item.Coal, 2
	],
	ScriptWrap(EmptyScript),
	ItemGet(Item.Steel, ItemData.CraftingTime),
	false
);



// CHANGES TO HAMMER

ItemEdit(Item.Hammer, ItemData.Blueprint, [
	Item.Steel, 5,
	Item.Wood, 5
]);



// CREATE SAPPHIRE

global.Sapphire = ItemCreate(
	undefined,
	"sapphire",
	"corundum has never looked better.",
	sprite_add("gems/sapphire.png", 1, true, false, 9, 9),
	ItemType.Material,
	ItemSubType.Gem,
	50,
	0,
	0,
	[global.DamascusSteel, 1, Item.Stone, 16, Item.Coal, 16, Item.Lavender, 4],
	ScriptWrap(EmptyScript),
	300,
	false
);



// UPDATING RECIPES THAT USE STEEL/GEMS

ItemEdit(Item.RoyalClothing, ItemData.Blueprint, [
	Item.Leather, 2,
	global.Sapphire, 1,
	Item.Amethyst, 1,
	Item.Topaz, 1,
	Item.Emerald, 1,
	Item.Ruby, 1,
	Item.Thread, 4
]);
ItemEdit(Item.RoyalSteel, ItemData.Blueprint, [
	global.DamascusSteel, 2,
	global.Sapphire, 1,
	Item.Amethyst, 1,
	Item.Topaz, 1,
	Item.Emerald, 1,
	Item.Ruby, 1,
	Item.Coal, 4
]);



// CHANGES TO TRANSMUTATION

ItemEdit(Item.Transmutation, ItemData.Blueprint, [global.DamascusSteel, 1, Item.Stone, 16, Item.Coal, 16]);
ItemEdit(Item.Transmutation, ItemData.CraftingTime, 60);
ItemEdit(Item.Transmutation, ItemData.Description, "transform steel into a random gem.");



// CHANGES TO GEMS

ItemEdit(Item.Amethyst, ItemData.Blueprint, [global.DamascusSteel, 1, Item.Stone, 16, Item.Coal, 16, Item.NightShade, 4]);
ItemEdit(Item.Amethyst, ItemData.CraftingTime, 300);
ItemEdit(Item.Amethyst, ItemData.Unlocked, false);
ItemEdit(Item.Topaz, ItemData.Blueprint, [global.DamascusSteel, 1, Item.Stone, 16, Item.Coal, 16, Item.HotPepper, 4]);
ItemEdit(Item.Topaz, ItemData.CraftingTime, 300);
ItemEdit(Item.Topaz, ItemData.Unlocked, false);
ItemEdit(Item.Emerald, ItemData.Blueprint, [global.DamascusSteel, 1, Item.Stone, 16, Item.Coal, 16, Item.Beet, 4]);
ItemEdit(Item.Emerald, ItemData.CraftingTime, 300);
ItemEdit(Item.Emerald, ItemData.Unlocked, false);
ItemEdit(Item.Ruby, ItemData.Blueprint, [global.DamascusSteel, 1, Item.Stone, 16, Item.Coal, 16, Item.Cinderbloom, 4]);
ItemEdit(Item.Ruby, ItemData.CraftingTime, 300);
ItemEdit(Item.Ruby, ItemData.Unlocked, false);



// CHANGES TO VOID STEEL

ItemEdit(Item.VoidSteel, ItemData.Sprite, sprite_add("steel/void.png", 16, true, false, 8, 8));



// CHANGES TO LEGENDARY GEM

ItemEdit(Item.LegendaryGem, ItemData.Blueprint, [
	Item.FiberGlass, 20,
	global.Sapphire, 10,
	Item.Amethyst, 10,
	Item.Topaz, 10,
	Item.Emerald, 10,
	Item.Ruby, 10,
	Item.StarFragment, 40
]);
ItemEdit(Item.LegendaryGem, ItemData.CraftingTime, 8000);
ItemEdit(Item.LegendaryGem, ItemData.Description, "a legendary gem that radiates a vibrant light.");
ItemEdit(Item.LegendaryGem, ItemData.Name, "diamond");
ItemEdit(Item.LegendaryGem, ItemData.Sprite, sprite_add("gems/diamond.png", 16, true, false, 8, 8));
ItemEdit(Item.LegendaryGem, ItemData.Unlocked, false);



// CHANGES TO ONYX RELIC

ItemEdit(Item.OnyxRelic, ItemData.Name, "jet black\nrelic");



// CREATE ONYX

global.Onyx = ItemCreate(
	undefined,
	"onyx",
	"a legendary gem that closely resembles the night sky.",
	sprite_add("gems/onyx.png", 16, true, false, 8, 8),
	ItemType.Material,
	ItemSubType.Gem,
	200,
	0,
	0,
	[
		Item.FiberGlass, 20,
    	global.Sapphire, 10,
    	Item.Amethyst, 10,
    	Item.Topaz, 10,
    	Item.Emerald, 10,
    	Item.Ruby, 10,
    	Item.OnyxRelic, 40
    ],
	ScriptWrap(EmptyScript),
	ItemGet(Item.LegendaryGem, ItemData.CraftingTime),
	false
);



// CHANGES TO COSMIC ITEMS

ItemEdit(Item.CosmicSteel, ItemData.Blueprint, [
	Item.VoidSteel, 2,
	Item.LegendaryGem, 5,
	Item.StarFragment, 5
]);
ItemEdit(Item.CosmicSteel, ItemData.Description, "a legendary steel imbued with the magic of a fallen star.");
ItemEdit(Item.CosmicSteel, ItemData.Name, "sky steel");
ItemEdit(Item.CosmicSteel, ItemData.Sprite, sprite_add("steel/cosmic.png", 16, true, false, 8, 8));

ItemEdit(Item.CosmicAmulet, ItemData.Name, "skyforged amulet");
ItemEdit(Item.CosmicBoots, ItemData.Name, "skyforged boots");
ItemEdit(Item.CosmicBow, ItemData.Name, "skyforged bow");
ItemEdit(Item.CosmicFloor, ItemData.Name, "skyforged floor");
ItemEdit(Item.CosmicGate, ItemData.Name, "skyforged gate");
ItemEdit(Item.CosmicGloves, ItemData.Name, "skyforged gloves");
ItemEdit(Item.CosmicPickaxe, ItemData.Name, "skyforged pickaxe");
ItemEdit(Item.CosmicSword, ItemData.Name, "skyforged sword");
ItemEdit(Item.CosmicWall, ItemData.Name, "skyforged wall");
ItemEdit(Item.CosmicWallet, ItemData.Name, "skyforged wallet");



// CREATE SIDEREAL STEEL

global.SiderealSteel = ItemCreate(
	undefined,
	"sidereal steel",
	"a legendary steel imbued with the power of the vast cosmos.",
	sprite_add("steel/sidereal.png", 16, true, false, 8, 8),
	ItemType.Material,
	ItemSubType.None,
	5000,
	0,
	0,
	[
		Item.CosmicSteel, 2,
		global.Onyx, 5,
		Item.KrakenEye, 5
	],
	ScriptWrap(EmptyScript),
	4 * ItemGet(Item.CosmicSteel, ItemData.CraftingTime) / 3,
	false
);



// CREATE SIDEREAL TOOLS
/*
global.SiderealPickaxe = ItemCreate();
global.SiderealSword = ItemCreate();
global.SiderealBow = ItemCreate();
global.SiderealWallet = ItemCreate();
global.SiderealGloves = ItemCreate();
global.SiderealBoots = ItemCreate();
global.SiderealEncyclopedia = ItemCreate();
global.SiderealAmulet = ItemCreate();
*/


// CHANGES TO OBLITERATOR

ItemEdit(Item.Obliterator, ItemData.Blueprint, [
	Item.SpiritOrb, 20,
	global.SiderealSteel, 20,
	Item.NuclearMachinery, 20
]);



// ADD ITEMS TO STRUCTURES

StructureAddItem(Structure.Furnace, global.DamascusSteel);
StructureAddItem(Structure.Cauldron, global.Sapphire);
StructureAddItem(Structure.Cauldron, Item.Amethyst);
StructureAddItem(Structure.Cauldron, Item.Topaz);
StructureAddItem(Structure.Cauldron, Item.Emerald);
StructureAddItem(Structure.Cauldron, Item.Ruby);
StructureAddItem(Structure.SpiritCrystal, Item.LegendaryGem);
StructureAddItem(Structure.SpiritCrystal, global.SiderealSteel);
StructureAddItem(Structure.SpiritCrystal, global.Onyx);



// MODIFY SKILL DESCRIPTIONS

LocalizationAddKey("english", "skillDesc5", "U unlocks hammer**U unlocks damascus steel**U unlocks royal steel**U unlocks royal clothing");
LocalizationAddKey("english", "skillDesc63", "U unlocks legendary steels**U unlocks legendary gems**U starfalls occur more often");



// VARIABLES FOR SCRIPTS

global.SapphireDropChance = 25;
// global.StepCount = 0;
global.AllRockTypes[0] = undefined; // OnResourceDestroy placeholder
global.AllRockTypes[1] = undefined; // OnResourceDestroy placeholder
global.AllRockTypes[2] = objRock;
global.AllRockTypes[3] = objDesertRock;
global.AllRockTypes[4] = objCrystal;
global.AllRockTypes[5] = objVolcanoRock;
global.AllRockTypes[6] = objVolcanoRockBig;
global.AllRockTypes[7] = objVoidstoneRock;
global.AllRockTypes[8] = objUraniumRock;



// CUSTOM SCRIPTS

#define CheckQuarries(QuarryDestroyed)
/* var temp = max(0, instance_number(objQuarry));
if(!(temp >= 1)) { temp = 0; }
if(QuarryDestroyed && temp > 0) { temp--; }
StructureEdit(Structure.Quarry, StructureData.Blueprint, [
	global.Sapphire, temp+4,
	Item.Amethyst, temp+4,
	Item.Topaz, temp+4,
	Item.Emerald, temp+4,
	Item.Ruby, temp+4,
	Item.Stone, 10*(temp+4)
]); */

#define CheckSkillExtras
if(HasSkill(Skill.Prospecting)) {
	global.SapphireDropChance = 75;
} else {
	global.SapphireDropChance = 25;
}
if(HasSkill(Skill.Calciverous)) {
	ItemEdit(global.Sapphire, ItemData.Energy, 250);
	ItemEdit(global.Sapphire, ItemData.Type, ItemType.Consumable);
}

#define CheckSkillUnlocks
ItemEdit(global.DamascusSteel, ItemData.Unlocked, HasSkill(Skill.Craftsmanship));
ItemEdit(global.Sapphire, ItemData.Unlocked, HasSkill(Skill.Transmutation));
ItemEdit(Item.Amethyst, ItemData.Unlocked, HasSkill(Skill.Transmutation));
ItemEdit(Item.Topaz, ItemData.Unlocked, HasSkill(Skill.Transmutation));
ItemEdit(Item.Emerald, ItemData.Unlocked, HasSkill(Skill.Transmutation));
ItemEdit(Item.Ruby, ItemData.Unlocked, HasSkill(Skill.Transmutation));
ItemEdit(Item.LegendaryGem, ItemData.Unlocked, HasSkill(Skill.Astrology));
ItemEdit(global.SiderealSteel, ItemData.Unlocked, HasSkill(Skill.Astrology));
ItemEdit(global.Onyx, ItemData.Unlocked, HasSkill(Skill.Astrology));

#define EmptyScript
// "Don't you say a f*ckin' word."

#define PlaySound(str)
audio_play_sound(asset_get_index(str), 0, false);



// GAME SCRIPTS

#define OnDig(x, y)
if(GearGet(Gear.Shovel, GearData.Current) == Item.RoboticShovel) {
	var rand = random(1000);
	if(rand < global.SapphireDropChance) {
		if(rand+50 < global.SapphireDropChance) {
			DropItem(x, y, global.Sapphire, round(random_range(3,6)/2));
		} else {
			DropItem(x, y, global.Sapphire, 1);
		}
	}
}

#define OnItemGet(item, quantity)
if(item == global.Sapphire) { PlaySound("sndRarePickup"); }
if(item == global.Onyx) { PlaySound("sndStarFragmentPickup"); }

#define OnLoadEnd
CheckQuarries(false);
CheckSkillUnlocks();

#define OnMobDeath(inst)
/* if(gearGet(Gear.Sword, GearData.Current) == global.SiderealSword) {
	var rand = random(100);
	if(rand < 15) {
		DropItem(x, y, Item.LegendaryGem, 1);
		PlaySound("sndGemDrop");
	}
	rand = random(100);
	if(rand < 1.5) {
		DropItem(x, y, global.Onyx, 1);
		PlaySound("sndStarFragmentDrop");
	}
} */
var dmg10 = 0, health = 0;
switch(inst.object_index) {
	case objThunderSpiritBoss:
		dmg10 = EnemyGet(Enemy.ThunderSpiritBoss, EnemyData.Damage)*10;
		health = EnemyGet(Enemy.ThunderSpiritBoss, EnemyData.HP);
		DropItem(x, y, global.Sapphire, round(random_range(dmg10, health/dmg10)));
		DropItem(x, y, Item.Topaz, round(random_range(dmg10, health/dmg10)));
		DropItem(x, y, Item.Emerald, round(random_range(dmg10, health/dmg10)));
		PlaySound("sndGemDrop");
		break;
	case objWizrobBoss:
		dmg10 = EnemyGet(Enemy.WizrobBoss, EnemyData.Damage)*10;
		health = EnemyGet(Enemy.WizrobBoss, EnemyData.HP);
		DropItem(x, y, global.Sapphire, round(random_range(dmg10, health/dmg10)));
		PlaySound("sndGemDrop");
		break;
	case objDemonBoss:
		dmg10 = EnemyGet(Enemy.DemonBoss, EnemyData.Damage)*10;
		health = EnemyGet(Enemy.DemonBoss, EnemyData.HP);
		DropItem(x, y, Item.Amethyst, round(random_range(dmg10, health/dmg10)));
		PlaySound("sndGemDrop");
		break;
	case objSlimeKing:
		dmg10 = EnemyGet(Enemy.SlimeKing, EnemyData.Damage)*10;
		health = EnemyGet(Enemy.SlimeKing, EnemyData.HP);
		DropItem(x, y, global.Sapphire, round(random_range(dmg10, health/dmg10)));
		PlaySound("sndGemDrop");
		break;
	case objSkeletonKing:
		dmg10 = EnemyGet(Enemy.SkeletonKing, EnemyData.Damage)*10;
		health = EnemyGet(Enemy.SkeletonKing, EnemyData.HP);
		DropItem(x, y, global.Sapphire, round(random_range(dmg10, health/dmg10)));
		PlaySound("sndGemDrop");
		break;
	case objDarkBeet:
		dmg10 = EnemyGet(Enemy.DarkBeet, EnemyData.Damage)*10;
		health = EnemyGet(Enemy.DarkBeet, EnemyData.HP);
		DropItem(x, y, global.Sapphire, round(random_range(dmg10, health/dmg10)));
		PlaySound("sndGemDrop");
		break;
	case objToxicGuardian:
		dmg10 = EnemyGet(Enemy.ToxicGuardian, EnemyData.Damage)*10;
		health = EnemyGet(Enemy.ToxicGuardian, EnemyData.HP);
		DropItem(x, y, global.Sapphire, round(random_range(dmg10, health/dmg10)));
		PlaySound("sndGemDrop");
		break;
}
if(dmg10-10 > 0 && random(100) < dmg10) {
	DropItem(x, y, global.Onyx, 1);
	PlaySound("sndStarFragmentDrop");
}

#define OnResourceDestroy(inst)
for(lcv = 2; lcv < 9; lcv++) {
	if(inst.object_index == global.AllRockTypes[lcv]) {
		var rand = random(1000);
		if(rand < global.SapphireDropChance) {
			if(rand+50 < global.SapphireDropChance) {
				DropItem(x, y, global.Sapphire, round(random_range(1, lcv/2)));
			} else {
				DropItem(x, y, global.Sapphire, 1);
			}
			PlaySound("sndGemDrop");
		}
		/* if(gearGet(Gear.Pickaxe, GearData.Current) != global.SiderealPickaxe) { break; }
		rand = random(1000);
		if(rand < 10) {
			DropItem(x, y, Item.LegendaryGem, 1);
			PlaySound("sndGemDrop");
		}
		rand = random(1000);
		if(rand < 1.0) {
			DropItem(x, y, global.Onyx, 1);
			PlaySound("sndStarFragmentDrop");
		} */
		break;
	}
}

#define OnRoomLoad
CheckSkillExtras();
CheckSkillUnlocks();

#define OnStep
/* global.StepCount++;
if(global.StepCount >= 300) {
	CheckQuarries(false);
	global.StepCount = 0;
} */

#define OnStructureBuild(inst, structure)
CheckQuarries(false);

#define OnStructureDestroy(inst, structure)
CheckQuarries(inst.object_index == objQuarry);



