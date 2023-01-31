/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#loader contenttweaker

#modloaded tconstruct

#priority 2602
#no_fix_recipe_book

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityMob;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import crafttweaker.world.IBlockPos;
import crafttweaker.enchantments.IEnchantment;
import crafttweaker.item.WeightedItemStack;

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.zenutils.I18n;
import mods.nuclearcraft.RadiationScrubber;

val poopTrait = TraitBuilder.create("poopy");
poopTrait.color = Color.fromHex("5d4037").getIntColor(); 
poopTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.poopTrait.name");
poopTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.poopTrait.desc");
poopTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer && target instanceof IEntityMob) {
        if (Math.random() < 0.005) {
            val player as IPlayer = attacker;
            player.give(itemUtils.getItem("additions:greedycraft-poop"));
        }
    }
};
poopTrait.register();

val pinkyTrait = TraitBuilder.create("pinky");
pinkyTrait.color = Color.fromHex("ff80ab").getIntColor(); 
pinkyTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.pinkyTrait.name");
pinkyTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.pinkyTrait.desc");
pinkyTrait.onBlockHarvestDrops = function(trait, tool, event) {
    if (!event.silkTouch && event.block.definition.id == "minecraft:diamond_ore") {
        if (Math.random() < 0.2) {
            event.addItem(<item:sakura:sakura_diamond>);
        }
    }
};
pinkyTrait.register();

val cotlifestealTrait = TraitBuilder.create("cotlifesteal");
cotlifestealTrait.color = Color.fromHex("ff5252").getIntColor(); 
cotlifestealTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.cotlifestealTrait.name");
cotlifestealTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.cotlifestealTrait.desc");
cotlifestealTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if (attacker instanceof IPlayer && wasHit && target instanceof IEntityMob && !target.isUndead) {
        if (Math.random() < 0.33) {
            var heal as float = damageDealt * 0.05f;
            if (heal > 5.0f) {
                heal = 5.0f;
            }
            attacker.heal(heal);
        }
    }
};
cotlifestealTrait.register();

val superknockpackTrait = TraitBuilder.create("superknockback");
superknockpackTrait.color = Color.fromHex("7e57c2").getIntColor(); 
superknockpackTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.superknockpackTrait.name");
superknockpackTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.superknockpackTrait.desc");
superknockpackTrait.calcCrit = function(trait, tool, attacker, target) {
    if (Math.random() < 0.25) {
        return true;
    }
    return false;
};
superknockpackTrait.calcKnockBack = function(trait, tool, attacker, target, damage, originalKnockBack, newKnockBack, isCritical) {
    if (isCritical) {
        return (newKnockBack * 10.0 + 20.0) as float; 
    }
    return newKnockBack;
};
superknockpackTrait.register();

val gambleTrait = TraitBuilder.create("gamble");
gambleTrait.color = Color.fromHex("ffa000").getIntColor(); 
gambleTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.gambleTrait.name");
gambleTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.gambleTrait.desc");
gambleTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var dmg = newDamage;
    var rand as double = Math.random();
    if (rand < 0.15) {
        dmg = newDamage * 2 as float; 
    } else if (rand < 0.45) {
        dmg = newDamage / 2 as float; 
    }
    return dmg;
};
gambleTrait.register();

val gamble2Trait = TraitBuilder.create("gamble2");
gamble2Trait.color = Color.fromHex("ffa000").getIntColor(); 
gamble2Trait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.gamble2Trait.name");
gamble2Trait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.gamble2Trait.desc");
gamble2Trait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var dmg = newDamage;
    var rand as double = Math.random();
    if (rand < 0.15) {
        dmg = newDamage * 3 as float; 
    } else if (rand < 0.45) {
        dmg = newDamage / 3 as float; 
    }
    return dmg;
};
gamble2Trait.register();


val ragingTrait = TraitBuilder.create("raging");
ragingTrait.color = Color.fromHex("e040fb").getIntColor(); 
ragingTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.ragingTrait.name");
ragingTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.ragingTrait.desc");
ragingTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (!isCritical) {
        return newDamage * 1.2f;
    }
    return newDamage * 0.75f;
};
ragingTrait.register();

val levelingdamageTrait = TraitBuilder.create("levelingdamage");
levelingdamageTrait.color = Color.fromHex("7e57c2").getIntColor(); 
levelingdamageTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.levelingdamageTrait.name");
levelingdamageTrait.addItem(<ore:plateHonor>);
levelingdamageTrait.maxLevel = 3;
levelingdamageTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.levelingdamageTrait.desc");
levelingdamageTrait.extraInfo = function(thisTrait, item, tag) {
    if (isNull(tag) || isNull(tag.memberGet("Modifiers"))) {
        return [] as string[];
    }
    var modifiers = tag.memberGet("Modifiers") as IData;
    var toolLevel = {} as IData;
    if (modifiers.asString().contains("toolleveling")) {
        for i in 0 to modifiers.length {
            var current as IData = modifiers[i];
            if (current.asString().contains("toolleveling")) {
                toolLevel = current;
                break;
            }
        }
    }
    var multiplier = 1.0;
    if (!isNull(toolLevel.memberGet("level"))) {
        var level = toolLevel.memberGet("level").asInt() as int;
        multiplier += 0.025f * level as float;
        if (multiplier > 1.5) {
            multiplier = 1.5 + (multiplier - 1.5) / 4;
        }
    }
    var data as TraitDataRepresentation = thisTrait.getData(item);
    var level = 0;
    if (!isNull(data)) {
        level = data.level;
    }
    multiplier = (multiplier - 1.0f) * (level / 3) + 1.0f;
    var percentage as int = Math.round((multiplier - 1.0) * 100) as int;
    return [I18n.format("greedycraft.tool_trait.tooltip.damage_increase", "" + percentage)] as string[];
};
levelingdamageTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var modifiers = tool.tag.memberGet("Modifiers") as IData;
    var toolLevel = {} as IData;
    if (modifiers.asString().contains("toolleveling")) {
        for i in 0 to modifiers.length {
            var current as IData = modifiers[i];
            if (current.asString().contains("toolleveling")) {
                toolLevel = current;
                break;
            }
        }
    }
    var multiplier = 1.0;
    if (!isNull(toolLevel.memberGet("level"))) {
        var level = toolLevel.memberGet("level").asInt() as int;
        while(level > 0) {
            level -= 1;
            multiplier += 0.05;
        }
        if (multiplier > 2.0) {
            multiplier = 2.0 + (multiplier - 2.0) / 4;
        }
    }    
    var data as TraitDataRepresentation = trait.getData(tool);
    var level = 0;
    if (!isNull(data)) {
        level = data.level;
    }
    multiplier = (multiplier - 1.0f) * (level as float / 3.0f) + 1.0f;
    return newDamage * multiplier as float;
};
levelingdamageTrait.register();

val thunderingTrait = TraitBuilder.create("lightning");
thunderingTrait.color = Color.fromHex("ffee58").getIntColor(); 
thunderingTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.thunderingTrait.name");
thunderingTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.thunderingTrait.desc");
thunderingTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if (attacker instanceof IPlayer && wasHit && target instanceof IEntityMob) {
        if (Math.random() < 0.04) {
            target.world.addWeatherEffect(target.world.createLightningBolt(target.x, target.y, target.z, false));
        }
    }
};
thunderingTrait.register();

val visionTrait = TraitBuilder.create("vision");
visionTrait.color = Color.fromHex("ffeb3b").getIntColor(); 
visionTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.visionTrait.name");
visionTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.visionTrait.desc");
visionTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if (owner instanceof IEntityLivingBase) {
        var ownerBase as IEntityLivingBase = owner;
        if (isSelected) {
            ownerBase.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(330, 0, false, false));
        } 
        /*
        else {
            if (!isNull(ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>)) && (!(ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).duration > 250)) && (!ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).isAmbient) && (!ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).doesShowParticles)) {
                ownerBase.removePotionEffect(<potion:minecraft:night_vision>);
            }
        }
        */
    }
};
visionTrait.register();

val fortifiedTrait = TraitBuilder.create("fortified");
fortifiedTrait.color = Color.fromHex("bdbdbd").getIntColor(); 
fortifiedTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.fortifiedTrait.name");
fortifiedTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.fortifiedTrait.desc");
fortifiedTrait.onBlock = function(trait, tool, player, event) {
    if (!isNull(player)) {
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(99, 1, false, false));
    }
};
fortifiedTrait.register();

val reliableTrait = TraitBuilder.create("reliable");
reliableTrait.color = Color.fromHex("78909c").getIntColor(); 
reliableTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.reliableTrait.name");
reliableTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.reliableTrait.desc");
reliableTrait.onToolDamage = function(trait, tool, unmodifiedAmount, newAmount, holder) {
    if (holder.health > (holder.maxHealth * 0.9f)) {
        if (Math.random() < 0.25) {
            return newAmount;
        } else {
            return 0;
        }
    } else {
        return newAmount * 2;
    }
};
reliableTrait.register();

val sacrificialTrait = TraitBuilder.create("sacrificial");
sacrificialTrait.color = Color.fromHex("c62828").getIntColor(); 
sacrificialTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.sacrificialTrait.name");
sacrificialTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.sacrificialTrait.desc");
sacrificialTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (isCritical) {
        var sacrifice as float = attacker.maxHealth * 0.2f;
        var source as IDamageSource = crafttweaker.damage.IDamageSource.OUT_OF_WORLD();
        source.setDamageIsAbsolute();
        attacker.attackEntityFrom(source, sacrifice);
        return newDamage + sacrifice * 3 as float; 
    }
    return newDamage;
};
sacrificialTrait.register();

val halloweenTrait = TraitBuilder.create("halloween");
halloweenTrait.color = Color.fromHex("fb8c00").getIntColor(); 
halloweenTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.halloweenTrait.name");
halloweenTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.halloweenTrait.desc");
halloweenTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (!isNull(attacker) && !isNull(target) && attacker instanceof IPlayer && target instanceof IEntityMob) {
        if (Math.random() < 0.01) {
            val player as IPlayer = attacker;
            player.give(<item:extrabotany:candybag>);
        }
    }
};
halloweenTrait.register();

val milkyTrait = TraitBuilder.create("milky");
milkyTrait.color = Color.fromHex("ffffff").getIntColor(); 
milkyTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.milkyTrait.name");
milkyTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.milkyTrait.desc");
milkyTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if (!isNull(owner) && owner instanceof IEntityLivingBase) {
        var ownerBase as IEntityLivingBase = owner;
        if (world.getWorldTime() as long % 12000 == 0) {
            ownerBase.clearActivePotions();
        }
    }
};
milkyTrait.register();

val giantslayerTrait = TraitBuilder.create("giantslayer");
giantslayerTrait.color = Color.fromHex("ffb74d").getIntColor(); 
giantslayerTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.giantslayerTrait.name");
giantslayerTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.giantslayerTrait.desc");
giantslayerTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var multiplier = 0.05f * (target.health / attacker.maxHealth) as float;
    if (multiplier < 1.0f) {
        multiplier = 1.0f;
    }
    if (multiplier > 2.5f) { 
        multiplier = 2.5f;
    }
    return newDamage * multiplier as float;
};
giantslayerTrait.register();

val crystalTrait = TraitBuilder.create("crystal_force");
crystalTrait.color = Color.fromHex("18ffff").getIntColor(); 
crystalTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.crystalTrait.name");
crystalTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.crystalTrait.desc");
crystalTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (tool.maxDamage != 0) {
        var dmg as float = 0.0f + tool.damage as float;
        var maxDmg as float = 0.0f + tool.maxDamage as float;
        var durabilityPercent as float = 1.0f - (dmg as float / maxDmg as float) as float;
        var multiplier as float = 0.8f + (durabilityPercent as float * 0.5f) as float;
        return newDamage as float * multiplier as float;
    }
    return newDamage;
};
crystalTrait.register();

val spartanTrait = TraitBuilder.create("spartan");
spartanTrait.color = Color.fromHex("e53935").getIntColor(); 
spartanTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.spartanTrait.name");
spartanTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.spartanTrait.desc");
spartanTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if ((attacker.health as float / attacker.maxHealth as float) as float < 0.33f) {
        var multiplier as float = 1.5f + (1.0f - (attacker.health as float / (attacker.maxHealth as float * 0.33) as float)) * 1.0f;
        return newDamage as float * multiplier as float;
    }
    return newDamage;
};
spartanTrait.register();

val knowledgefulTrait = TraitBuilder.create("knowledgeful");
knowledgefulTrait.color = Color.fromHex("76ff03").getIntColor(); 
knowledgefulTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.knowledgefulTrait.name");
knowledgefulTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.knowledgefulTrait.desc");
knowledgefulTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        val player as IPlayer = attacker;
        var xpLevel = player.xp;
        if (xpLevel > 1000) {
            xpLevel = 1000;
        }
        return newDamage as float * (1.0f + xpLevel as float * 0.0008f) as float;
    }
    return newDamage;
};
knowledgefulTrait.register();

val matterTrait1 = TraitBuilder.create("matter_condensing1");
matterTrait1.color = Color.fromHex("691b9a").getIntColor(); 
matterTrait1.localizedName = game.localize("greedycraft.tconstruct.tool_trait.matterTrait1.name");
matterTrait1.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.matterTrait1.desc");
matterTrait1.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if (attacker instanceof IPlayer && target instanceof IEntityMob) {
        val player as IPlayer = attacker;
        player.personalEMC = (player.personalEMC as long + (Math.floor(damageDealt * 0.1) as long)) as long;
    }
};
matterTrait1.register();

val matterTrait2 = TraitBuilder.create("matter_condensing2");
matterTrait2.color = Color.fromHex("691b9a").getIntColor(); 
matterTrait2.localizedName = game.localize("greedycraft.tconstruct.tool_trait.matterTrait2.name");
matterTrait2.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.matterTrait2.desc");
matterTrait2.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if (attacker instanceof IPlayer && target instanceof IEntityMob) {
        val player as IPlayer = attacker;
        player.personalEMC = (player.personalEMC as long + (Math.floor(damageDealt * 0.25) as long)) as long;
    }
};
matterTrait2.register();

val perfectionist = TraitBuilder.create("perfectionist");
perfectionist.color = Color.fromHex("4caf50").getIntColor(); 
perfectionist.localizedName = game.localize("greedycraft.tconstruct.tool_trait.perfectionist.name");
perfectionist.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.perfectionist.desc");
perfectionist.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    return (Math.round(newDamage as float / 10 as float) as float * 10 as float) as float;
};
perfectionist.register();

val tidal_force = TraitBuilder.create("tidal_force");
tidal_force.color = Color.fromHex("64ffda").getIntColor(); 
tidal_force.localizedName = game.localize("greedycraft.tconstruct.tool_trait.tidal_force.name");
tidal_force.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.tidal_force.desc");
tidal_force.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if (owner instanceof IEntityLivingBase) {
        var ownerBase as IEntityLivingBase = owner;
        if (isSelected) {
            ownerBase.addPotionEffect(<potion:minecraft:water_breathing>.makePotionEffect(50, 0, false, false));
        }
    }
};
tidal_force.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker.isInWater || (attacker.wet)) {
        return newDamage * 1.33;
    } else {
        return newDamage;
    }
};
tidal_force.register();

val holdGroundTrait = TraitBuilder.create("hold_ground");
holdGroundTrait.color = Color.fromHex("f44336").getIntColor(); 
holdGroundTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.holdGroundTrait.name");
holdGroundTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.holdGroundTrait.desc");
holdGroundTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker.isSneaking) {
        return newDamage * 1.25;
    } else {
        return newDamage;
    }
};
holdGroundTrait.onBlock = function(trait, tool, player, event) {
    if (!isNull(player) && player.isSneaking) {
        player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(125, 1, false, false));
    }
};
holdGroundTrait.register();

val motionTrait = TraitBuilder.create("motion");
motionTrait.color = Color.fromHex("ffee58").getIntColor(); 
motionTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.motionTrait.name");
motionTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.motionTrait.desc");
motionTrait.onPlayerHurt = function(trait, tool, player, attacker, event) {
    if (!isNull(player) && player.isSprinting) {
        event.amount = event.amount * 1.5f;
    }
};
motionTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker.isSprinting) {
        return newDamage * 1.33;
    } else {
        return newDamage;
    }
};
motionTrait.calcKnockBack = function(trait, tool, attacker, target, damage, originalKnockBack, newKnockBack, isCritical) {
    if (attacker.isSprinting) {
        return (newKnockBack * 2.5) as float; 
    }
    return newKnockBack;
};
motionTrait.register();

val executionerTrait = TraitBuilder.create("executioner");
executionerTrait.color = Color.fromHex("e53935").getIntColor(); 
executionerTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.executionerTrait.name");
executionerTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.executionerTrait.desc");
executionerTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (isNull(target) || !(target instanceof IEntityLivingBase) || !(attacker instanceof IPlayer) || damage < 0.1) {
        return;
    }
    val player as IPlayer = attacker;
    var threshold as float = 0.2f;
    if (target.isBoss) {
        threshold = 0.1f;
    }
    if ((target.health as float / target.maxHealth as float) as float < threshold) {
        var source as IDamageSource = IDamageSource.createPlayerDamage(player);
        source.setDamageIsAbsolute();
        target.attackEntityFrom(source, 2147483647.0f);
    }
};
executionerTrait.register();

val penetrationTrait = TraitBuilder.create("penetration");
penetrationTrait.color = Color.fromHex("2979ff").getIntColor(); 
penetrationTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.penetrationTrait.name");
penetrationTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.penetrationTrait.desc");
penetrationTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (target.totalArmorValue > 0) {
        var multiplier as float = (target.totalArmorValue as float * 0.02f) as float;
        if (multiplier > 1.0f) {
            multiplier = 1.0f;
        }
        return (newDamage * (1.0f + multiplier) as float) as float;
    } else {
        return newDamage;
    }
};
penetrationTrait.register();

val thronyTrait = TraitBuilder.create("throny");
thronyTrait.color = Color.fromHex("4caf50").getIntColor(); 
thronyTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.thronyTrait.name");
thronyTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.thronyTrait.desc");
thronyTrait.onBlock = function(trait, tool, player, event) {
    if (!isNull(player)) {
        var source as IDamageSource = event.damageSource;
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            var source as IDamageSource = IDamageSource.createThornsDamage(player);
            var dmg as float = player.maxHealth * 0.2;
            attacker.attackEntityFrom(source, dmg);
        }
    }
};
thronyTrait.register();

val nightBaneTrait = TraitBuilder.create("bane_of_night");
nightBaneTrait.color = Color.fromHex("fff176").getIntColor(); 
nightBaneTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.nightBaneTrait.name");
nightBaneTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.nightBaneTrait.desc");
nightBaneTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var lightLevel as int = attacker.world.getBlockLight(attacker.position3f as IBlockPos);
    lightLevel -= 7;
    if (lightLevel < 0) {
        lightLevel = 0;
    }
    return newDamage * (1.0f + 0.025f * lightLevel) as float;
};
nightBaneTrait.register();

val bloodlustTrait = TraitBuilder.create("bloodlust");
bloodlustTrait.color = Color.fromHex("f44336").getIntColor(); 
bloodlustTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.bloodlustTrait.name");
bloodlustTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.bloodlustTrait.desc");
bloodlustTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var ratio as float = target.health as float / target.maxHealth as float;
    return newDamage * (1.0f + (1.0f - ratio) * 0.5f) as float;
};
bloodlustTrait.register();

val assassinTrait = TraitBuilder.create("assassin");
assassinTrait.color = Color.fromHex("fff176").getIntColor(); 
assassinTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.assassinTrait.name");
assassinTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.assassinTrait.desc");
assassinTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val enemyLooking = target.lookingDirection;
    val playerLooking = attacker.lookingDirection;
    if(!isNull(enemyLooking) && !(isNull(playerLooking))) {
        if(enemyLooking.dotProduct(playerLooking) > 0.0) {
            return newDamage * 1.4f;
        }
    }
    return newDamage;
};
assassinTrait.register();


val madnessTrait = TraitBuilder.create("madness");
madnessTrait.color = Color.fromHex("2979ff").getIntColor(); 
madnessTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.madnessTrait.name");
madnessTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.madnessTrait.desc");
madnessTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if (!(owner instanceof IPlayer)) {
        return;
    }
    val player as IPlayer = owner;
    if(isSelected) {
        if(Math.random() < 1.0 / 900.0) {
            player.warpTemporary += 1;
        }
        if(Math.random() < 1.0 / 2400.0) {
            player.warpNormal += 1;
        }
    }
};
madnessTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    
    if (isNull(target) || !(attacker instanceof IPlayer)) {
        return newDamage;
    }
    val player as IPlayer = attacker;
    val warpTotal = player.warpNormal + player.warpTemporary + player.warpPermanent;
    val dmgBoost = Math.sqrt(warpTotal as double) / 40.0;
    return newDamage * (1.0f + dmgBoost as float);
};
madnessTrait.register();

val madness2Trait = TraitBuilder.create("madness2");
madness2Trait.color = Color.fromHex("2979ff").getIntColor(); 
madness2Trait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.madness2Trait.name");
madness2Trait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.madnessTrait.desc");
madness2Trait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if (!(owner instanceof IPlayer)) {
        return;
    }
    val player as IPlayer = owner;
    if(isSelected) {
        if(Math.random() < 1.0 / 600.0) {
            player.warpTemporary += 1;
        }
        if(Math.random() < 1.0 / 1800.0) {
            player.warpNormal += 1;
        }
    }
};
madness2Trait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    
    if (isNull(target) || !(attacker instanceof IPlayer)) {
        return newDamage;
    }
    val player as IPlayer = attacker;
    val warpTotal = player.warpNormal + player.warpTemporary + player.warpPermanent;
    val dmgBoost = Math.sqrt(warpTotal as double) / 25.0;
    return newDamage * (1.0f + dmgBoost as float);
};
madness2Trait.register();

val plasmafusionTrait = TraitBuilder.create("plasmafusion");
plasmafusionTrait.color = Color.fromHex("ffffff").getIntColor(); 
plasmafusionTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.plasmafusionTrait.name");
plasmafusionTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.plasmafusionTrait.desc");
plasmafusionTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer) {
        val player as IPlayer = attacker;
        if (Math.random() < 0.1) {
            mods.contenttweaker.Commands.call("give @p gct_tcon:tinyplasmariumdust 1 0", player, player.world, false, true);
        }
    }   
};
plasmafusionTrait.register();

val abysscallingTrait = TraitBuilder.create("abysscalling");
abysscallingTrait.color = Color.fromHex("ffffff").getIntColor(); 
abysscallingTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.abysscallingTrait.name");
abysscallingTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.abysscallingTrait.desc");
abysscallingTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val player as IPlayer = attacker;
    if (player.getDimension() < 56 && player.getDimension() > 49) {
        return newDamage * 1.5f;
    }
    return newDamage;
};
abysscallingTrait.register();

val elementfriendlyTrait = TraitBuilder.create("elementfriendly");
elementfriendlyTrait.color = Color.fromHex("ffffff").getIntColor(); 
elementfriendlyTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.elementfriendlyTrait.name");
elementfriendlyTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.elementfriendlyTrait.desc");
elementfriendlyTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val player as IPlayer = attacker;
    if (Math.random() <= 0.005) {
        player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(100, 2, false, false));
    }
    if (Math.random() <= 0.005) {
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(100, 2, false, false));
    }
    if (Math.random() <= 0.005) {
        player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(100, 2, false, false));
    }
    if (Math.random() <= 0.005) {
        player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(100, 2, false, false));
    }
    if (Math.random() <= 0.005) {
        player.addPotionEffect(<potion:minecraft:jump_boost>.makePotionEffect(100, 2, false, false));
    }
    if (Math.random() <= 0.005) {
        player.addPotionEffect(<potion:potioncore:diamond_skin>.makePotionEffect(100, 2, false, false));
    }
    if (Math.random() <= 0.005) {
        player.addPotionEffect(<potion:minecraft:absorption>.makePotionEffect(100, 2, false, false));
    }
    if (Math.random() <= 0.005) {
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(100, 2, false, false));
    }
    if (Math.random() <= 0.005) {
        player.addPotionEffect(<potion:minecraft:strong_healing>.makePotionEffect(1, 4, false, false));
    }
    if (Math.random() <= 0.005) {
        player.addPotionEffect(<potion:potioncore:long_purity>.makePotionEffect(100, 2, false, false));
    }
    return newDamage;
};
elementfriendlyTrait.register();

val dnaengineeringTrait = TraitBuilder.create("dnaengineering");
dnaengineeringTrait.color = Color.fromHex("ffffff").getIntColor();
dnaengineeringTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.dnaengineeringTrait.name");
dnaengineeringTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.dnaengineeringTrait.desc");
dnaengineeringTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical)  {
    var amp as float = 1.0f;
    if (target.isPotionActive(<potion:minecraft:speed>)) {
        amp = amp + 0.2f;
    }
    if (target.isPotionActive(<potion:minecraft:strength>)) {
        amp = amp + 0.2f;
    }
    if (target.isPotionActive(<potion:minecraft:regeneration>)) {
        amp = amp + 0.3f;
    }
    if (target.isPotionActive(<potion:minecraft:resistance>)) {
        amp = amp + 0.3f;
    }
    return newDamage * amp;
};
dnaengineeringTrait.register();

val starskyTrait = TraitBuilder.create("starsky");
starskyTrait.color = Color.fromHex("ffffff").getIntColor();
starskyTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.starskyTrait.name");
starskyTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.starskyTrait.desc");
starskyTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical)  {
    var y as double = attacker.getY();
    if (y <= 300) {
        return newDamage * (1 + y / 200);
    } else {
        return newDamage * 2.5f;
    }
};
starskyTrait.register();

val disappearingTrait = TraitBuilder.create("disappearing");
disappearingTrait.color = Color.fromHex("ffffff").getIntColor();
disappearingTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.disappearingTrait.name");
disappearingTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.disappearingTrait.desc");
disappearingTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if (owner instanceof IEntityLivingBase) {
        var ownerBase as IEntityLivingBase = owner;
        if (isSelected) {
            ownerBase.addPotionEffect(<potion:minecraft:invisibility>.makePotionEffect(20, 0, false, false));
        } 
    }
};
disappearingTrait.register();

val twilighthand1Trait = TraitBuilder.create("twilight_hand1");
twilighthand1Trait.color = Color.fromHex("ffffff").getIntColor();
twilighthand1Trait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.twilighthandTrait1.name");
twilighthand1Trait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.twilighthandTrait.desc");
twilighthand1Trait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker.getDimension() == 420||attacker.getDimension() == 421||attacker.getDimension() == 422||attacker.getDimension() == 423||attacker.getDimension() == 424) {
        return newDamage * 1.2f;
    }
    return newDamage;
};
twilighthand1Trait.register();

val twilighthand2Trait = TraitBuilder.create("twilight_hand2");
twilighthand2Trait.color = Color.fromHex("ffffff").getIntColor();
twilighthand2Trait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.twilighthandTrait2.name");
twilighthand2Trait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.twilighthandTrait.desc");
twilighthand2Trait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker.getDimension() == 420||attacker.getDimension() == 421||attacker.getDimension() == 422||attacker.getDimension() == 423||attacker.getDimension() == 424) {
        return newDamage * 1.4f;
    }
    return newDamage;
};
twilighthand2Trait.register();

val twilighthand3Trait = TraitBuilder.create("twilight_hand3");
twilighthand3Trait.color = Color.fromHex("ffffff").getIntColor();
twilighthand3Trait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.twilighthandTrait3.name");
twilighthand3Trait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.twilighthandTrait.desc");
twilighthand3Trait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker.getDimension() == 420||attacker.getDimension() == 421||attacker.getDimension() == 422||attacker.getDimension() == 423||attacker.getDimension() == 424) {
        return newDamage * 1.6f;
    }
    return newDamage;
};
twilighthand3Trait.register();

val twilighthand4Trait = TraitBuilder.create("twilight_hand4");
twilighthand4Trait.color = Color.fromHex("ffffff").getIntColor();
twilighthand4Trait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.twilighthandTrait4.name");
twilighthand4Trait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.twilighthandTrait.desc");
twilighthand4Trait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker.getDimension() == 420||attacker.getDimension() == 421||attacker.getDimension() == 422||attacker.getDimension() == 423||attacker.getDimension() == 424) {
        return newDamage * 1.8f;
    }
    return newDamage;
};
twilighthand4Trait.register();

val twilighthand5Trait = TraitBuilder.create("twilight_hand5");
twilighthand5Trait.color = Color.fromHex("ffffff").getIntColor();
twilighthand5Trait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.twilighthandTrait5.name");
twilighthand5Trait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.twilighthandTrait.desc");
twilighthand5Trait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker.getDimension() == 420||attacker.getDimension() == 421||attacker.getDimension() == 422||attacker.getDimension() == 423||attacker.getDimension() == 424) {
        return newDamage * 2.0f;
    }
    return newDamage;
};
twilighthand5Trait.register();

val worldendTrait = TraitBuilder.create("world_end");
worldendTrait.color = Color.fromHex("ffffff").getIntColor();
worldendTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.worldendTrait.name");
worldendTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.worldendTrait.desc");
worldendTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    target.addPotionEffect(<potion:gct_mobs:anti_anyposion>.makePotionEffect(20, 0, false, false));
    return newDamage;
};
worldendTrait.register();

val nightmareTrait = TraitBuilder.create("nightmare");
nightmareTrait.color = Color.fromHex("ffffff").getIntColor();
nightmareTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.nightmareTrait.name");
nightmareTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.nightmareTrait.desc");
nightmareTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker.getDimension() == 427) {
        return newDamage + (target.maxHealth * 0.03f);
    }
    return newDamage;
};
nightmareTrait.register();

val strongmoonTrait = TraitBuilder.create("strong_moon");
strongmoonTrait.color = Color.fromHex("ffffff").getIntColor(); 
strongmoonTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.strongmoonTrait.name");
strongmoonTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.strongmoonTrait.desc");
strongmoonTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
        val player as IPlayer = attacker;
        if(player.world.isDayTime()==false){
                return newDamage * 2;
        }
                return newDamage / 2;
};
strongmoonTrait.register();

val aurorapowerTrait = TraitBuilder.create("aurora_power");
aurorapowerTrait.color = Color.fromHex("ffffff").getIntColor(); 
aurorapowerTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.aurorapowerTrait.name");
aurorapowerTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.aurorapowerTrait.desc");
aurorapowerTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical){
        var nowMoonPhase as int = attacker.world.getMoonPhase();
        if (attacker.getDimension() == 645){
                return newDamage * 2;
        }else if (nowMoonPhase >= 3 & !attacker.world.isDayTime()){
                return newDamage *(nowMoonPhase /2);
        }
        return newDamage;

};
aurorapowerTrait.register();

val foglightTrait = TraitBuilder.create("fog_light");
foglightTrait.color = Color.fromHex("ffffff").getIntColor();
foglightTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.foglightTrait.name");
foglightTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.foglightTrait.desc");
foglightTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected){
      if (owner instanceof IEntityLivingBase) {
        val player as IPlayer = owner;//所有工具基本都需要声明对象，
        if (isSelected){
              if (player.getDimension() == 69){
                if(player.getY() < 80 ){
                        player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(99, 2, false, false));
                }
        }
        }
      }
};
foglightTrait.register();

val soul_absorbTrait = TraitBuilder.create("soul_absorb");
soul_absorbTrait.color = Color.fromHex("76ff03").getIntColor(); 
soul_absorbTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.soul_absorbTrait.name");
soul_absorbTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.soul_absorbTrait.desc");
soul_absorbTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
        val player as IPlayer = attacker;
          if(!player.world.remote && Math.random() < 0.5 && player.xp >= 30){
            player.xp -= 1;
            return newDamage * 2.5f;
          }
    return newDamage;
};
soul_absorbTrait.register();

val time_turnTrait = TraitBuilder.create("time_turn");
time_turnTrait.color = Color.fromHex("76ff03").getIntColor(); 
time_turnTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.time_turnTrait.name");
time_turnTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.time_turnTrait.desc");
time_turnTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
        val player as IPlayer = attacker;
        if(Math.random()< 0.02){
            mods.contenttweaker.Commands.call("time add 12000",player,player.world,false,true);
        }
    return newDamage;
};
time_turnTrait.register();

val ignitingTrait = TraitBuilder.create("igniting");
ignitingTrait.color = Color.fromHex("76ff03").getIntColor(); 
ignitingTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.ignitingTrait.name");
ignitingTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.ignitingTrait.desc");
ignitingTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
        var entity as IEntityLivingBase = target;
        if(entity.isBurning){
            entity.setFire(15);
            return newDamage * 1.2f;
        }
    return newDamage;
};
ignitingTrait.register();

val freezedTrait = TraitBuilder.create("freezed");
freezedTrait.color = Color.fromHex("76ff03").getIntColor(); 
freezedTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.freezedTrait.name");
freezedTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.freezedTrait.desc");
freezedTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val entity as IEntityLivingBase = target;
        entity.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(60, 3, false, false));
    return newDamage;
};
freezedTrait.register();

val demon_hunterTrait = TraitBuilder.create("demon_hunter");
demon_hunterTrait.color = Color.fromHex("76ff03").getIntColor(); 
demon_hunterTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.demon_hunterTrait.name");
demon_hunterTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.demon_hunterTrait.desc");
demon_hunterTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
        val player as IEntityLivingBase=target;
        if(player.isBoss){
            player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(60, 2, false, false));
            return newDamage *1.5;
        }
    return newDamage;
};
demon_hunterTrait.register();

val self_poisonTrait = TraitBuilder.create("self_poison");
self_poisonTrait.color = Color.fromHex("76ff03").getIntColor(); 
self_poisonTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.self_poisonTrait.name");
self_poisonTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.self_poisonTrait.desc");
self_poisonTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val entity as IEntityLivingBase = target;
    val player as IPlayer = attacker;
    if(Math.random() < 0.1){
        entity.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(200, 1, false, false));
    }
    if(Math.random() < 0.04){
        player.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(100, 1, false, false));
    }
    return newDamage;
};
self_poisonTrait.register();

val babTrait = TraitBuilder.create("battle_and_braver");
babTrait.color = Color.fromHex("ffffff").getIntColor(); 
babTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.battle_and_braverTrait.name");
babTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.battle_and_braverTrait.desc");
babTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer) {
        val player as IPlayer = attacker;
        var level = 1.0 as double;
        if (player.isPotionActive(<potion:minecraft:strength>)) {
            level += (player.getActivePotionEffect(<potion:minecraft:strength>).amplifier) + 1;
        }
        if (Math.random() < (1.0 / level)) {
            player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(60, level - 1, false, false));
        }
    }
};
babTrait.register();

val alkalinityTrait = TraitBuilder.create("alkalinity");
alkalinityTrait.color = Color.fromHex("ffffff").getIntColor(); 
alkalinityTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.alkalinityTrait.name");
alkalinityTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.alkalinityTrait.desc");
alkalinityTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (Math.random() < 0.2) {
        target.addPotionEffect(<potion:gct_tcon:alkalinity>.makePotionEffect(200, 0, false, false));
    }
};
alkalinityTrait.register();

val acidityTrait = TraitBuilder.create("acidity");
acidityTrait.color = Color.fromHex("ffffff").getIntColor(); 
acidityTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.acidityTrait.name");
acidityTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.acidityTrait.desc");
acidityTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (Math.random() < 0.2) {
        target.addPotionEffect(<potion:gct_tcon:acidity>.makePotionEffect(200, 0, false, false));
    }
};
acidityTrait.register();

val packlightTrait = TraitBuilder.create("pack_light");
packlightTrait.color = Color.fromHex("ffffff").getIntColor(); 
packlightTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.packlightTrait.name");
packlightTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.packlightTrait.desc");
packlightTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        val player as IPlayer = attacker;
        if (player.totalArmorValue <= 20) {
            return newDamage * 1.8f;
        }
        if (player.totalArmorValue >= 180) {
            return newDamage * 0.2f;
        }
        return newDamage * (1.0f + ((100.0f - player.totalArmorValue) / 100.0f));
    }
    return newDamage;
};
packlightTrait.register();

val luxuryTrait = TraitBuilder.create("luxury");
luxuryTrait.color = Color.fromHex("ffffff").getIntColor(); 
luxuryTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.luxuryTrait.name");
luxuryTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.luxuryTrait.desc");
luxuryTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer) {
        val player as IPlayer = attacker;
        if (Math.random() < 0.03) {
            mods.contenttweaker.Commands.call("give @p minecraft:gold_ingot 1 0", player, player.world, false, true);
        }
    }
};
luxuryTrait.onBlockHarvestDrops = function(trait, tool, event) {
    val player as IPlayer = event.player;
    if (Math.random() < 0.001) {
        mods.contenttweaker.Commands.call("give @p minecraft:gold_ingot 1 0", player, player.world, false, true);
    }
};
luxuryTrait.register();

val spsTrait = TraitBuilder.create("superposition_state");
spsTrait.color = Color.fromHex("ffffff").getIntColor(); 
spsTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.superposition_stateTrait.name");
spsTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.superposition_stateTrait.desc");
spsTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        val player as IPlayer = attacker;
        if (player.isPotionActive(<potion:gct_tcon:superposition>)) {
            if (player.getActivePotionEffect(<potion:gct_tcon:superposition>).amplifier <= 3) {
                var level = player.getActivePotionEffect(<potion:gct_tcon:superposition>).amplifier;
                player.addPotionEffect(<potion:gct_tcon:superposition>.makePotionEffect(40, level + 1, false, false));
                return newDamage * (0.7f + 0.2f * level);
            } else if (player.getActivePotionEffect(<potion:gct_tcon:superposition>).amplifier >= 4) {
                player.addPotionEffect(<potion:gct_tcon:superposition>.makePotionEffect(40, 4, false, false));
                return newDamage * 1.5f;
            }
            return newDamage;
        } else {
            player.addPotionEffect(<potion:gct_tcon:superposition>.makePotionEffect(40, 0, false, false));
            return newDamage * 0.5f;
        }
        return newDamage;
    }
    return newDamage;
};
spsTrait.register();

val strong_shockTrait = TraitBuilder.create("strong_shock");
strong_shockTrait.color = Color.fromHex("ffffff").getIntColor(); 
strong_shockTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.strong_shockTrait.name");
strong_shockTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.strong_shockTrait.desc");
strong_shockTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected){
    if (owner instanceof IEntityLivingBase) {
        val player as IPlayer = owner;
        if (isSelected) {
            if (!(player.isPotionActive(<potion:gct_tcon:shock>))) {
                if (Math.random() < 0.003) {
                    player.addPotionEffect(<potion:gct_tcon:shock>.makePotionEffect(200, 0, false, false));
                }
            } else {
                player.addPotionEffect(<potion:gct_tcon:shock>.makePotionEffect(200, 0, false, false));
            }
        }
    }
};
strong_shockTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        val player as IPlayer = attacker;
        if (player.isPotionActive(<potion:gct_tcon:shock>)) {
            player.removePotionEffect(<potion:gct_tcon:shock>);
            return newDamage * 2.75f;
        }
        return newDamage;
    }
    return newDamage;
};
strong_shockTrait.onBlockHarvestDrops = function(trait, tool, event) {
    val player as IPlayer = event.player;
    if (player.isPotionActive(<potion:gct_tcon:shock>)) {
        player.removePotionEffect(<potion:gct_tcon:shock>);
        player.addPotionEffect(<potion:minecraft:haste>.makePotionEffect(100, 4, false, false));
    }
};
strong_shockTrait.register();

for i in 2 to 11 {
    TraitBuilder.create("lighting" + i).color = Color.fromHex("ffffff").getIntColor(); 
    TraitBuilder.create("lighting" + i).localizedName = game.localize("greedycraft.tconstruct.tool_trait.lightingTrait" + i + ".name");
    TraitBuilder.create("lighting" + i).localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.lightingTrait.desc");
    TraitBuilder.create("lighting" + i).calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
        val player as IPlayer = attacker;
        if (player.getDimension() < 830 && player.getDimension() > 819) {
            var amp = (1 + 2 * (Math.log(i) / Math.log(10))) as float;
            return newDamage * amp;
        }
        return newDamage;
    };
    TraitBuilder.create("lighting" + i).register();
}

for i in 1 to 7 {
    TraitBuilder.create("active_source" + i).color = Color.fromHex("ffffff").getIntColor(); 
    TraitBuilder.create("active_source" + i).localizedName = "放射源";
    TraitBuilder.create("active_source" + i).localizedDescription = "§o有辐同享！\n§r这件工具拥有放射性！";
    TraitBuilder.create("active_source" + i).onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
        if (owner instanceof IEntityLivingBase) {
            val player as IPlayer = owner;
            player.addRadiation(0.00000012d * pow(20, i - 1), true);
        }
    };
    TraitBuilder.create("active_source" + i).register();
}

val moronismTrait = TraitBuilder.create("moronism");
moronismTrait.color = Color.fromHex("ffffff").getIntColor(); 
moronismTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.moronismTrait.name");
moronismTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.moronismTrait.desc");
moronismTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer) {
        val player as IPlayer = attacker;
        if (Math.random() < 0.2) {
            target.addPotionEffect(<potion:gct_aby:abyssplague>.makePotionEffect(40, 0, false, false));
            target.addPotionEffect(<potion:potioncore:spin>.makePotionEffect(80, 0, false, false));
        }
        if (Math.random() < 0.05) {
            player.addPotionEffect(<potion:gct_aby:abyssplague>.makePotionEffect(40, 0, false, false));
        }
    }
};
moronismTrait.register();

val thousandfaceTrait = TraitBuilder.create("thousand_face");
thousandfaceTrait.color = Color.fromHex("ffffff").getIntColor(); 
thousandfaceTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.thousandfaceTrait.name");
thousandfaceTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.thousandfaceTrait.desc");
thousandfaceTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        val player as IPlayer = attacker;
        return newDamage * (Math.random() + 0.5f);
    }
    return newDamage;
};
thousandfaceTrait.register();

val timeattackTrait = TraitBuilder.create("time_attack");
timeattackTrait.color = Color.fromHex("ffffff").getIntColor(); 
timeattackTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.timeattackTrait.name");
timeattackTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.timeattackTrait.desc");
timeattackTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        var mtp = (attacker.world.getWorldTime() % 240000) / 133333.0d;
        return newDamage * mtp;
    }
    return newDamage;
};
timeattackTrait.register();

val shubTrait = TraitBuilder.create("shub");
shubTrait.color = Color.fromHex("ffffff").getIntColor(); 
shubTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.shubTrait.name");
shubTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.shubTrait.desc");
shubTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if (attacker instanceof IPlayer) {
        if (!(target instanceof IPlayer)) {
            if (Math.random() < 0.2) {
                if (target.health <= (target.maxHealth * 0.2f)) {
                    if (target.isBoss == false) {
                        target.setDead();
                        val player as IPlayer = attacker;
                        mods.contenttweaker.Commands.call("give @p minecraft:wool 2 15", player, player.world, false, true);
                    }
                }
            }
        }
    }
};
shubTrait.register();

val IAmetalTrait = TraitBuilder.create("ia_metals");
IAmetalTrait.color = Color.fromHex("ffffff").getIntColor(); 
IAmetalTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.IAmetalTrait.name");
IAmetalTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.IAmetalTrait.desc");
IAmetalTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        if (target.isInWater) {
            if (attacker.isInWater) {
                return newDamage * 0.8f;
            } else {
                return newDamage * 1.3f;
            }
            return newDamage;
        }
        return newDamage;
    }
    return newDamage;
};
IAmetalTrait.register();

val IAmetal2Trait = TraitBuilder.create("ia_metals2");
IAmetal2Trait.color = Color.fromHex("ffffff").getIntColor(); 
IAmetal2Trait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.IAmetalTrait2.name");
IAmetal2Trait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.IAmetalTrait.desc");
IAmetal2Trait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        if (target.isInWater) {
            if (attacker.isInWater) {
                return newDamage * 0.6f;
            } else {
                return newDamage * 1.8f;
            }
            return newDamage;
        }
        return newDamage;
    }
    return newDamage;
};
IAmetal2Trait.register();

val naturalrefinerTrait = TraitBuilder.create("natural_refiner");
naturalrefinerTrait.color = Color.fromHex("ffffff").getIntColor(); 
naturalrefinerTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.naturalrefinerTrait.name");
naturalrefinerTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.naturalrefinerTrait.desc");
naturalrefinerTrait.onBlockHarvestDrops = function(trait, tool, event) {
    if (event.block.definition.id == "gct_mobs:botanical_stone") {
        mods.contenttweaker.Commands.call("give @p gct_mobs:botanical_soul 1 0", event.player, event.player.world, false, true);
    }
};
naturalrefinerTrait.register();

val light_discoveryTrait = TraitBuilder.create("light_discovery");
light_discoveryTrait.color = Color.fromHex("ffffff").getIntColor(); 
light_discoveryTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.light_discoveryTrait.name");
light_discoveryTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.light_discoveryTrait.desc");
light_discoveryTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    val player as IPlayer = attacker;
    if(Math.random() < 0.15){
        for entity in player.world.getEntitiesInArea(crafttweaker.util.Position3f.create(((player.x)- 32),((player.y)- 32),((player.z)- 32)),crafttweaker.util.Position3f.create(((player.x)+ 32),((player.y)+ 32),((player.z)+ 32))){
    if(entity instanceof IEntityLivingBase && !entity instanceof IPlayer){
        val en as IEntityLivingBase = entity;
        en.addPotionEffect(<potion:minecraft:glowing>.makePotionEffect(600, 0, false, false));
        }
    }
    }
};
light_discoveryTrait.register();

val curseflameTrait = TraitBuilder.create("curseflame");
curseflameTrait.color = Color.fromHex("ffffff").getIntColor(); 
curseflameTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.curseflameTrait.name");
curseflameTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.curseflameTrait.desc");
curseflameTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if(Math.random() < 0.1){
        target.addPotionEffect(<potion:biomesoplenty:curse>.makePotionEffect(100, 0, false, false));
    }
};
curseflameTrait.register();

val swallow_soulTrait = TraitBuilder.create("swallow_soul");
swallow_soulTrait.color = Color.fromHex("ffffff").getIntColor(); 
swallow_soulTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.swallow_soulTrait.name");
swallow_soulTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.swallow_soulTrait.desc");
swallow_soulTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    val player as IPlayer = attacker;
    player.world.drainVis(player.position,5,false);
};
swallow_soulTrait.register();

val below_heavenTrait = TraitBuilder.create("below_heaven");
below_heavenTrait.color = Color.fromHex("ffffff").getIntColor(); 
below_heavenTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.below_heavenTrait.name");
below_heavenTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.below_heavenTrait.desc");
below_heavenTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val player as IPlayer = attacker;
    if(player.world.getDimensionType() != "cave"){
        if(player.getY() > 64){
            if (isCritical) {
        return newDamage * 3.0f;
    }
        }else if(player.getY() < 24 ){
            player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(100, 1, false, false));
            return newDamage;
        }
    }else if(player.world.getDimensionType() == "cave"){
        if(player.getY() > 128){
            if (isCritical) {
        return newDamage * 3.0f;
    }
        }else if(player.getY() < 64 ){
            player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(100, 1, false, false));
            return newDamage;
        }
    }
    return newDamage;
};
below_heavenTrait.register();

val antidropTrait = TraitBuilder.create("antidrop");
antidropTrait.color = Color.fromHex("ffffff").getIntColor(); 
antidropTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.antidropTrait.name");
antidropTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.antidropTrait.desc");
antidropTrait.onBlockHarvestDrops = function(thisTrait, tool, event) {
    if(Math.random() < 0.8){
        event.dropChance = 0;
    }
};
antidropTrait.register();

val ghostyTrait = TraitBuilder.create("ghosty");
ghostyTrait.color = Color.fromHex("ffffff").getIntColor(); 
ghostyTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.ghostyTrait.name");
ghostyTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.ghostyTrait.desc");
ghostyTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    val entity as IEntityLivingBase = target;
    entity.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(100, 4, false, false));
};
ghostyTrait.onUpdate = function(thisTrait, tool, world, entity, itemSlot, isSelected) {
    if(!isSelected){
        if(Math.random() < 0.05){
            val player as IPlayer = entity;
            player.health= player.health-player.health*0.02f;
        }
    }
};
ghostyTrait.register();

val woundedTrait = TraitBuilder.create("wounded");
woundedTrait.color = Color.fromHex("ffffff").getIntColor(); 
woundedTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.woundedTrait.name");
woundedTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.woundedTrait.desc");
woundedTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(isCritical){
        val entity as IEntityLivingBase = target;
        entity.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(60, 126, false, false));
        return newDamage * 0.6f;
    }
    return newDamage;
};
woundedTrait.register();

val cutawayTrait = TraitBuilder.create("cutaway");
cutawayTrait.color = Color.fromHex("ffffff").getIntColor(); 
cutawayTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.cutawayTrait.name");
cutawayTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.cutawayTrait.desc");
cutawayTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if(Math.random() < 0.0001){
        val player as IPlayer = attacker;
        player.setDimension(426);
    }
};
cutawayTrait.register();

val artTrait = TraitBuilder.create("arty");
artTrait.color = Color.fromHex("5d4037").getIntColor(); 
artTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.artTrait.name");
artTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.artTrait.desc");
artTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer && target instanceof IEntityMob) {
        if (Math.random() < 0.1) {
            val player as IPlayer = attacker;
            if(Math.random() < 0.0625){
            player.give(itemUtils.getItem("botania:petal"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:1"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:2"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:3"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:4"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:5"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:6"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:7"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:8"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:9"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:10"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:11"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:12"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:13"));
            }else if(Math.random() < 0.0625){
                player.give(itemUtils.getItem("botania:petal:14"));
            }else{
                player.give(itemUtils.getItem("botania:petal:15"));
            }
        }
    }
};
artTrait.register();

val cooperationTrait = TraitBuilder.create("cooperation");
cooperationTrait.color = Color.fromHex("5d4037").getIntColor(); 
cooperationTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.cooperationTrait.name");
cooperationTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.cooperationTrait.desc");
cooperationTrait.onUpdate = function(thisTrait, tool, world, entity, itemSlot, isSelected) {
    if (entity instanceof IPlayer) {
        val player as IPlayer = entity;
        if (isSelected) {
            player.addPotionEffect(<potion:gct_tcon:cooperation_1>.makePotionEffect(20, 0, false, false));
        }
        if (player.isPotionActive(<potion:gct_tcon:cooperation_1>) && player.isPotionActive(<potion:gct_tcon:cooperation_2>)) {
            player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(20, 4, false, false));
        }
    }
};
cooperationTrait.register();

val lucklessTrait = TraitBuilder.create("luckless");
lucklessTrait.color = Color.fromHex("5d4037").getIntColor(); 
lucklessTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.lucklessTrait.name");
lucklessTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.lucklessTrait.desc");
lucklessTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer && target instanceof IEntityMob) {
        if (Math.random() < 0.33) {
            val player as IPlayer = attacker;
            player.addPotionEffect(<potion:potioncore:chance>.makePotionEffect(100, 0, false, false));
        }
    }
};
lucklessTrait.register();

val trapTrait = TraitBuilder.create("trap");
trapTrait.color = Color.fromHex("ffffff").getIntColor(); 
trapTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.trapTrait.name");
trapTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.trapTrait.desc");
trapTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit)  {
        val entity as IEntityLivingBase = target;
        if(Math.random() < 0.02){
        entity.addPotionEffect(<potion:gct_aby:stop>.makePotionEffect(100, 0, false, false));
        }
};
trapTrait.register();

val make_believeTrait = TraitBuilder.create("make_believe");
make_believeTrait.color = Color.fromHex("ffffff").getIntColor(); 
make_believeTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.make_believeTrait.name");
make_believeTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.make_believeTrait.desc");
make_believeTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(Math.random() < 0.3){
        return newDamage * 0.1f;
    }
    return newDamage;
};
make_believeTrait.register();

val pain_hitTrait = TraitBuilder.create("pain_hit");
pain_hitTrait.color = Color.fromHex("ffffff").getIntColor(); 
pain_hitTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.pain_hitTrait.name");
pain_hitTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.pain_hitTrait.desc");
pain_hitTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    attacker.health -= (originalDamage * 0.15f);
    return newDamage + originalDamage * 1.0f;
};
pain_hitTrait.register();

val extinctionTrait = TraitBuilder.create("extinction");
extinctionTrait.color = Color.fromHex("ffffff").getIntColor(); 
extinctionTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.extinctionTrait.name");
extinctionTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.extinctionTrait.desc");
extinctionTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val entity as IEntityLivingBase = target;
    var x = entity.health * (0.03f + Math.random() * 0.02f) as float;
    return newDamage + x;
};
extinctionTrait.register();

val cutdownTrait = TraitBuilder.create("cutdown");
cutdownTrait.color = Color.fromHex("ffffff").getIntColor(); 
cutdownTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.cutdownTrait.name");
cutdownTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.cutdownTrait.desc");
cutdownTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    val entity as IEntityLivingBase = target;
    if(Math.random() < 0.03){
        entity.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(60, 29, false, false));
        entity.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(60, 29, false, false));
    }
};
cutdownTrait.register();

val choice_of_godsTrait = TraitBuilder.create("choice_of_gods");
choice_of_godsTrait.color = Color.fromHex("ffffff").getIntColor(); 
choice_of_godsTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.choice_of_godsTrait.name");
choice_of_godsTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.choice_of_godsTrait.desc");
choice_of_godsTrait.getMiningSpeed = function(thisTrait, tool, event) {
    val player as IPlayer = event.player;
    if(event.block.definition.id == "chancecubes:chance_cube"){
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(100, 3, false, false));
        player.addPotionEffect(<potion:minecraft:absorption>.makePotionEffect(100, 5, false, false));

    }
};
choice_of_godsTrait.register();

val weatherturnTrait = TraitBuilder.create("weatherturn");
weatherturnTrait.color = Color.fromHex("ffffff").getIntColor(); 
weatherturnTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.weatherturnTrait.name");
weatherturnTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.weatherturnTrait.desc");
weatherturnTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    val player as IPlayer = attacker;
    if(Math.random() < 0.03){
        mods.contenttweaker.Commands.call("toggledownfall", player, player.world, false, true);
    }
};
weatherturnTrait.register();

val meteor_fallTrait = TraitBuilder.create("meteor_fall");
meteor_fallTrait.color = Color.fromHex("5d4037").getIntColor(); 
meteor_fallTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.meteor_fallTrait.name");
meteor_fallTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.meteor_fallTrait.desc");
meteor_fallTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer && target instanceof IEntityMob) {
        if (Math.random() < 0.02) {
            val player as IPlayer = attacker;
            player.give(itemUtils.getItem("nyx:fallen_star"));
        }
    }
};
meteor_fallTrait.register();

val inserveTrait = TraitBuilder.create("inserve");
inserveTrait.color = Color.fromHex("5d4037").getIntColor(); 
inserveTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.inserveTrait.name");
inserveTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.inserveTrait.desc");
inserveTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if (owner instanceof IEntityLivingBase) {
        val player as IPlayer = owner;
    if(Math.random() < 0.0005){
        player.addPotionEffect(<potion:potioncore:invert>.makePotionEffect(20, 0, false, false));
    }
    }
};
inserveTrait.register();

val relifeTrait = TraitBuilder.create("relife");
relifeTrait.color = Color.fromHex("5d4037").getIntColor(); 
relifeTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.relifeTrait.name");
relifeTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.relifeTrait.desc");
relifeTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val player as IPlayer = attacker;
    val entity as IEntityMob = target;
    if(player.health < player.health * 0.15f){
        player.addPotionEffect(<potion:minecraft:fire_resistance>.makePotionEffect(20, 0, false, false));
        entity.setFire(10);
        if(entity.isBurning){
            return newDamage * 2.5f;
        }
    }
    return newDamage;
};
relifeTrait.register();

val depth_abyssTrait = TraitBuilder.create("depth_abyss");
depth_abyssTrait.color = Color.fromHex("5d4037").getIntColor(); 
depth_abyssTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.depth_abyssTrait.name");
depth_abyssTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.depth_abyssTrait.desc");
depth_abyssTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    val entity as IEntityLivingBase = target;
    val x = damage * 0.5f;
    if(Math.random() < 0.03){
       entity.health -= x;
    }
};
depth_abyssTrait.register();

val disorientedTrait = TraitBuilder.create("disoriented");
disorientedTrait.color = Color.fromHex("5d4037").getIntColor(); 
disorientedTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.disorientedTrait.name");
disorientedTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.disorientedTrait.desc");
disorientedTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val entity as IEntityLivingBase = target;
    entity.addPotionEffect(<potion:potioncore:spin>.makePotionEffect(100, 2, false, false));
    return newDamage;
};
disorientedTrait.register();

val killallTrait = TraitBuilder.create("killall");
killallTrait.color = Color.fromHex("5d4037").getIntColor(); 
killallTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.killallTrait.name");
killallTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.killallTrait.desc");
killallTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val entity as IEntityLivingBase = target;
    if(entity.health > entity.maxHealth * 0.9f){
        return newDamage + entity.maxHealth * 0.1f;
    }
    return newDamage;
};
killallTrait.register();

val true_damageTrait = TraitBuilder.create("true_damage");
true_damageTrait.color = Color.fromHex("5d4037").getIntColor(); 
true_damageTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.true_damageTrait.name");
true_damageTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.true_damageTrait.desc");
true_damageTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (target.health > 150) {
        target.health -= 150.0f;
        return newDamage * 0.0f;
    } else {
        return 100000.0f;
    }
    return newDamage;
};
true_damageTrait.register();

val blue_screenTrait = TraitBuilder.create("blue_screen");
blue_screenTrait.color = Color.fromHex("5d4037").getIntColor(); 
blue_screenTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.blue_screenTrait.name");
blue_screenTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.blue_screenTrait.desc");
blue_screenTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer) {
        if (Math.random() < 0.3f) {
            target.addPotionEffect(<potion:gct_mobs:blue_screen>.makePotionEffect(100, 0, false, false));
        }
    }
};
blue_screenTrait.register();

val vigorousTrait = TraitBuilder.create("vigorous");
vigorousTrait.color = Color.fromHex("5d4037").getIntColor(); 
vigorousTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.vigorousTrait.name");
vigorousTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.vigorousTrait.desc");
vigorousTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val entity as IEntityLivingBase = target;
    entity.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(100, 1, false, false));
    return newDamage * 1.2f;
};
vigorousTrait.register();

val sky_shockingTrait = TraitBuilder.create("sky_shocking");
sky_shockingTrait.color = Color.fromHex("ffee58").getIntColor(); 
sky_shockingTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.sky_shockingTrait.name");
sky_shockingTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.sky_shockingTrait.desc");
sky_shockingTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if (attacker instanceof IPlayer && wasHit && target instanceof IEntityMob) {
        target.world.addWeatherEffect(target.world.createLightningBolt(target.x, target.y, target.z, false));
    }
};
sky_shockingTrait.register();

val peakTrait = TraitBuilder.create("peak");
peakTrait.color = Color.fromHex("ffee58").getIntColor(); 
peakTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.peakTrait.name");
peakTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.peakTrait.desc");
peakTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        var mtp = target.world.getBiome(attacker.getPosition3f()).heightVariation as float;
        return newDamage * mtp;
    }
    return newDamage;
};
peakTrait.register();

val fihTrait = TraitBuilder.create("fire_in_heart");
fihTrait.color = Color.fromHex("ffee58").getIntColor(); 
fihTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.fihTrait.name");
fihTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.fihTrait.desc");
fihTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        var player as IPlayer = attacker;
        if (!(player.isPotionActive(<potion:gct_tcon:angry_accumulation>))) {
            player.addPotionEffect(<potion:gct_tcon:angry_accumulation>.makePotionEffect(60, 0, false, false));
            if (player.isPotionActive(<potion:gct_tcon:angry>)) {
                return newDamage * (1.0f + 0.03f * (player.getActivePotionEffect(<potion:gct_tcon:angry>).amplifier + 1));
            } else {
                return newDamage;
            }
        } else if (player.getActivePotionEffect(<potion:gct_tcon:angry_accumulation>).amplifier < 7) {
            player.addPotionEffect(<potion:gct_tcon:angry_accumulation>.makePotionEffect(60, player.getActivePotionEffect(<potion:gct_tcon:angry_accumulation>).amplifier + 1, false, false));
            if (player.isPotionActive(<potion:gct_tcon:angry>)) {
                return newDamage * (1.0f + 0.03f * (player.getActivePotionEffect(<potion:gct_tcon:angry>).amplifier + 1));
            } else {
                return newDamage;
            }
        } else {
            player.removePotionEffect(<potion:gct_tcon:angry_accumulation>);
            if (!(player.isPotionActive(<potion:gct_tcon:angry>))) {
                player.addPotionEffect(<potion:gct_tcon:angry>.makePotionEffect(200, 0, false, false));
                return newDamage * 1.03f;
            } else if (player.getActivePotionEffect(<potion:gct_tcon:angry>).amplifier < 7) {
                player.addPotionEffect(<potion:gct_tcon:angry>.makePotionEffect(200, player.getActivePotionEffect(<potion:gct_tcon:angry>).amplifier + 1, false, false));
                return newDamage * (1.0f + 0.03f * (player.getActivePotionEffect(<potion:gct_tcon:angry>).amplifier + 1));
            } else {
                player.addPotionEffect(<potion:gct_tcon:angry>.makePotionEffect(200, 7, false, false));
                return newDamage * 1.24f;
            }
        }
    }
    return newDamage;
};
fihTrait.register();

val vowelTrait = TraitBuilder.create("vowel");
vowelTrait.color = Color.fromHex("ffee58").getIntColor(); 
vowelTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.vowelTrait.name");
vowelTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.vowelTrait.desc");
vowelTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        var player as IPlayer = attacker;
        var name as string = player.name;
        if ((name has "a") || (name has "e") || (name has "i") || (name has "o") || (name has "u") || (name has "A") || (name has "E") || (name has "I") || (name has "O") || (name has "U")) {
            return newDamage * 1.1f;
        }
        return newDamage;
    }
    return newDamage;
};
vowelTrait.register();

val sacrificeTrait = TraitBuilder.create("sacrifice");
sacrificeTrait.color = Color.fromHex("ffee58").getIntColor(); 
sacrificeTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.sacrificeTrait.name");
sacrificeTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.sacrificeTrait.desc");
sacrificeTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if (attacker instanceof IPlayer) {
        var player as IPlayer = attacker;
        player.health -= (player.maxHealth * 0.05f);
        return newDamage * 1.8f;
    }
    return newDamage;
};
sacrificeTrait.register();

val transmigrationTrait = TraitBuilder.create("transmigration");
transmigrationTrait.color = Color.fromHex("ffee58").getIntColor(); 
transmigrationTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.transmigrationTrait.name");
transmigrationTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.transmigrationTrait.desc");
transmigrationTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer && target instanceof IEntityMob) {
        var player as IPlayer = attacker;
        if (!(target.isBoss) && (target.health <= (target.maxHealth * 0.2f))) {
            if (Math.random() < 0.15) {
                target.posY = -10;
                target.setDead();
            }
        }
    }
};
transmigrationTrait.register();



val blood_reaperTrait = TraitBuilder.create("blood_reaper");
blood_reaperTrait.color = Color.fromHex("ffee58").getIntColor(); 
blood_reaperTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.blood_reaperTrait.name");
blood_reaperTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.blood_reaperTrait.desc");
blood_reaperTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    val entity as IEntityLivingBase = target;
    if (entity.isPotionActive(<potion:moretcon:bleeding>)) {
        return newDamage * 1.3f;
    }
    return newDamage;
};
blood_reaperTrait.register();

val crystalystTrait = TraitBuilder.create("crystalyst");
crystalystTrait.color = Color.fromHex("ffee58").getIntColor(); 
crystalystTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.crystalystTrait.name");
crystalystTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.crystalystTrait.desc");
crystalystTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if (attacker instanceof IPlayer && target instanceof IEntityMob) {
        if (Math.random() < 0.01) {
            val player as IPlayer = attacker;
            player.give(itemUtils.getItem("additions:greedycraft-catalyst_star_shard"));
        }
    }
};
crystalystTrait.register();
