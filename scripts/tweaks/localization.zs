/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 800
#no_fix_recipe_book

import crafttweaker.game.IGame;

import scripts.util.lang as LangUtil;

val localizationMap as string[string][string] = {
    zh_cn: {
        "tile.modularcontroller.controller_builder_basic.name": "基础装配核心",
        "dragon.minion": "龙之侍从",
        "dragon.larva": "龙之幼体",
        "wither.minion": "凋灵侍从",
        "material.adamant.name": "精金",
        "tile.adamant_block.name": "精金块",
        "tile.adamant_ore.name": "精金矿石",
        "item.adamant_nugget.name": "精金粒",
        "item.adamant_dust.name": "精金粉",
        "item.adamant_ingot.name": "精金锭",
        "fluid.tconstruct.adamant_fluid.name": "熔融精金",
        "tile.thaumadditions:adaminite_smelter.name": "铿金源质冶炼厂",
        "tile.thaumadditions:jar_adaminite.name": "铿金源质罐子",
        "tile.thaumadditions:adaminite_block.name": "铿金块",
        "item.thaumadditions:adaminite_nugget.name": "铿金粒",
        "item.thaumadditions:adaminite_ingot.name": "铿金锭",
        "item.thaumadditions:adaminite_plate.name": "铿金板",
        "item.thaumadditions:adaminite_nugget.name": "铿金粒",
        "item.thaumadditions:adaminite_fabric.name": "铿金布匹",
        "item.thaumadditions:adaminite_sword.name": "铿金剑",
        "item.thaumadditions:adaminite_hood.name": "铿金神秘使兜帽",
        "item.thaumadditions:adaminite_robe.name": "铿金神秘使法袍",
        "item.thaumadditions:adaminite_belt.name": "铿金神秘使腰带",
        "item.thaumadditions:adaminite_boots.name": "铿金神秘使靴子",
        "research_name.thaumadditions:adaminite": "铿金金属",
        "research_stage.thaumadditions:adaminite.2": "我的实验已大获成功！书中它这种新造物称之为“铿金”。我都要疯了！我听说过灵液，神之血，但我认为这金属要远比灵液好，尽管它存在于这世上的任何地方。",
        "research_name.thaumadditions:adaminite_smelter": "铿金源质冶炼厂",
        "research_stage.thaumadditions:adaminite_smelter.2": "好啊！铿金似乎更好更高效！铿金源质冶炼厂现在能多产生 20% 源质。这意味着我可以更少的冶炼源质了。",
        "research_stage.thaumadditions:mithminite_smelter.1": "我想要改进铿金源质冶炼厂的质量并让它更快并且经常产生额外的源质。我知道秘金应该能有所帮助，并且我需要一点实验来确认我的想法是正确的。",
        "research_name.thaumadditions:adaminite_smelter": "铿金源质冶炼厂",
        "research_name.thaumadditions:adaminite_jar": "铿金源质罐子",
        "research_stage.thaumadditions:mithminite_jar.2": "我的结论是正确的，铿金罐子可以被秘金合金用一中复杂的注魔来觉醒, 这种新的（我希望是最终的）罐子可以装 4000 点源质，是铿金源质罐子的两倍。 我同时也注意到这罐子能销毁流入的多余源质，这可能对我的那些旧的虚空罐子是应该很不错的升级，而且这也不会因为源质溢出而爆炸。",
        "research_stage.thaumadditions:adaminite_jar.2": "铿金非常独特！我认为这个罐子可以容纳 2000 点源质，这使得它内部空间的源质十分稠密。",
        "research_stage.thaumadditions:adaminite_jar.3": "铿金非常独特！我认为这个罐子可以容纳 2000 点源质，这使得它内部空间的源质十分稠密。我听到一个叫泽尔西伦的人的声音，他是其中一位创世者，曾创造了这个世界。他轻声低语道：“这个罐子密度太大了，也许在某些特定的情况下会不稳定。我不认为把它完全装满源质是一个好主意...”。我从他的话语中也听出他非常惊讶于我所完成的这一艰难的挑战。",
        "research_stage.thaumadditions:mithminite_jar.1": "既然已我知晓了用秘银和一些水银可能可以觉醒铿金，我只需知道我能否负担得起这些秘金源质罐子。",
        "modifier.mutate.name": "突变",
        "modifier.mutate.desc": "似乎有什么在变化？",
        "material.prometheum.name": "普罗姆",
        "tile.prometheum_block.name": "普罗姆块",
        "tile.prometheum_ore.name": "普罗姆矿石",
        "item.prometheum_nugget.name": "普罗姆粒",
        "item.prometheum_dust.name": "普罗姆粉",
        "item.prometheum_ingot.name": "普罗姆锭",
        "fluid.tconstruct.prometheum_fluid.name": "熔融普罗姆",
        "material.duranite.name": "耐力金属",
        "tile.duranite_block.name": "耐力金属块",
        "tile.duranite_ore.name": "耐力金属矿石",
        "item.duranite_nugget.name": "耐力金属粒",
        "item.duranite_dust.name": "耐力金属粉",
        "item.duranite_ingot.name": "耐力金属锭",
        "fluid.tconstruct.duranite_fluid.name": "熔融耐力金属",
        "material.niob.name": "尼博",
        "tile.niob_block.name": "尼博块",
        "item.niob_nugget.name": "尼博粒",
        "item.niob_dust.name": "尼博粉",
        "item.niob_ingot.name": "尼博锭",
        "fluid.tconstruct.niob_fluid.name": "熔融尼博",
        "jaopca.entry.Ambrosium": "神能晶",
        "thaumicaugmentation.text.entered_void": "你拜访了无尽的虚空。",
        "thaumicaugmentation.text.mountain": "你拜访了一座高山。",
        "thaumicaugmentation.text.desert": "你拜访了一片荒漠。",
        "thaumicaugmentation.text.ocean": "你拜访了一片大海。",
        "thaumicaugmentation.text.forest": "你拜访了一片森林。",
        "thaumicaugmentation.text.impetus_damage": "你感受到了冲力带来的震撼。",
        "thaumicaugmentation.text.long_time_in_water": "你逐渐地适应了深水的压力。",
        "thaumicaugmentation.text.entered_spire": "你发现了%s。",
        "thaumicaugmentation.text.boss_room_spire": "你发现了尖塔的核心。",
        "death.attack.cinderSpark": "%s被%s的火球烧成了灰烬。",
        "botania_tweaks.entrodupe.nicetry": "TNT复制机？给爷爪巴。爷不吃这套。",
        "fluid.fusion_matrix": "熔融聚合矩阵",
        "fluid.insanium": "熔融究极精华",
        "jaopca.entry.Infernium": "永燃",
        "jaopca.entry.Titanium": "钛",
        "jaopca.entry.LiquifiedCoralium": "精炼珊瑚",
        "fluid.cryonium": "熔融极寒",
        "jaopca.entry.Cryonium": "极寒",
        "jaopca.entry.Experience": "知识精华",
        "fluid.ethaxium": "熔融伊桑斯",
        "jaopca.entry.Cytosinite": "胞嘧",
        "jaopca.entry.Umbrium": "影素",
        "jaopca.entry.Hephaestite": "赫菲斯辛",
        "jaopca.entry.Scarlite": "绯红宝石",
        "jaopca.entry.Chromium": "铬",
        "jaopca.entry.Aqualite": "水华",
        "fluid.mithrillium": "熔融秘银",
        "fluid.adaminite": "熔融铿金",
        "fluid.mithminite": "熔融秘金",
        "fluid.ravaging": "毁灭流质",
        "fluid.gaia": "熔融盖亚魂锭",
        "fluid.terra_alloy": "熔融大地合金",
        "fluid.cosmilite": "寰宇超流体",
        "fluid.astral_metal": "星辰涌流",
        "fluid.orichalcos": "熔融奥利哈刚",
        "fluid.netherite": "熔融下界合金",
        "fluid.ancient_debris": "熔融远古残骸",
        "fluid.scorched": "熔融高炉砖",
        "fluid.organic_fluid": "有机液",
        "fluid.poison": "毒液",
        "fluid.modularium": "熔融模块化合金",
        "fluid.meteor": "熔融陨星",
        "fluid.stainless_steel": "熔融不锈钢",
        "fluid.protonium": "极密质子流体",
        "fluid.electronium": "粘性电子流质",
        "fluid.crimsonite": "猩红浆液",
        "fluid.manganese_steel": "熔融锰钢",
        "fluid.durasteel": "熔融耐钢",
        "fluid.aeonsteel": "熔融恒钢",
        "fluid.chromasteel": "熔融炫钢",
        "fluid.spectre": "灵魂之泉",
        "fluid.gaiasteel": "熔融盖亚钢",
        "fluid.blackiron": "熔融黑铁",
        "fluid.heavenite": "熔融穹金",
        "fluid.ghostite": "熔融鬼金",
        "fluid.waringlium": "熔融瓦伦格尔",
        "fluid.tierite": "熔融缠绕合金",
        "fluid.cheatieum": "熔融诡术合金",
        "fluid.idiessite": "熔融伊迪斯",
        "fluid.cthoghate": "熔融克图格亚",
        "fluid.ranglium": "熔融峦金",
        "fluid.godiarite": "熔融天佑合金",
        "fluid.rainite": "熔融暴雨合金",
        "fluid.panloeseum": "熔融潘洛斯",
        "fluid.husturite": "熔融哈斯塔",
        "fluid.fallenium": "熔融落金",
        "fluid.phoenixite": "熔融凤凰合金",
        "fluid.depthite": "熔融深邃合金",
        "fluid.lovaquite": "熔融洛瓦克",
        "fluid.rangolarite": "熔融朗格拉",
        "fluid.clearite": "熔融晴天合金",
        "fluid.wefenium": "熔融尖晶",
        "fluid.errorite": "熔融错误合金",
        "fluid.numbereum": "熔融数字合金",
        "fluid.babyrite": "熔融宝金",
        "fluid.leadite": "熔融导金",
        "fluid.martisite": "熔融战神合金",
        "fluid.flashite": "熔融闪金",
        "fluid.overlaite": "熔融叠金",
        "fluid.rupee": "熔融卢比",
        "fluid.realmite": "熔融诺米特",
        "fluid.arlemite": "熔融阿勒米特",
        "fluid.shadow_bar": "熔融阴影",
        "fluid.hellstone": "熔融罪恶",
        "fluid.lava_solid": "熔融固态岩浆",
        "fluid.aquatic": "熔融海洋结晶",
        "fluid.balancite": "熔融守恒合金",
        "fluid.glowing_signalum": "熔融荧光信素",
        "fluid.fallen_metal": "堕落聚合物",
        "fluid.relifed_metal": "重生聚合物",
        "fluid.stormy_metal": "风暴解构质",
        "fluid.ordered_metal": "秩序超流质",
        "fluid.finallium": "终焉灵体液",
        "fluid.eden": "熔融伊甸",
        "fluid.wildwood": "熔融原始",
        "fluid.apalachia": "熔融阿帕拉契亚",
        "fluid.skythern": "熔融冰刺",
        "fluid.mortum": "熔融黑金",
        "fluid.twilight_crystal": "熔融暮光结晶",
        "fluid.hellcrust":"熔融焦岩",
        "fluid.umbra":"熔融本影",
        "fluid.crystalline":"熔融月凝晶",
        "fluid.aurorianite":"熔融极光",
        "fluid.niobium":"熔融铌",
        "fluid.horizonite":"熔融炎铁",
        "fluid.falsite":"熔融伪匿",
        "fluid.ventium":"熔融风腾",
        "jaopca.entry.Dilithium": "双锂",
        "jaopca.entry.Asgardium": "神金",
        "jaopca.entry.Shadowium": "暗影",
        "jaopca.entry.Aeroite": "云浮",
        "jaopca.entry.AncientDebris": "远古残骸",
        "jaopca.entry.Meteor": "陨星",
        "jaopca.entry.Manganese": "锰",
        "jaopca.entry.Aetherium": "以太",
        "jaopca.entry.Canopium": "苍穹",
        "jaopca.entry.Mistium": "缥缈",
        "jaopca.entry.Thyminite": "胸腺嘧",
        "jaopca.entry.Lavarite": "熔浆",
        "jaopca.entry.Plasmarite": "等离子",
        "jaopca.entry.Bnightium": "夜明",
        "jaopca.entry.Guaninite": "鸟嘌呤晶",
        "jaopca.entry.Snowingium": "碎雪",
        "jaopca.entry.Freezite": "封晶",
        "jaopca.entry.Oceanium": "浩瀚",
        "jaopca.entry.Adeninite": "腺嘌呤晶",
        "jaopca.entry.Harcadium": "末晶",
        "jaopca.entry.VoidEssence": "虚空精华",
        "jaopca.entry.Adamantium": "艾德曼合金",
        "jaopca.entry.Abyssalnite": "渊素",
        "jaopca.entry.Swinium": "辉铜",
        "jaopca.entry.Manarium": "魔金",
        "jaopca.entry.Lighteum": "明铁",
        "jaopca.entry.Stripium": "纹金",
        "jaopca.entry.Dimesium": "维度金属",
        "jaopca.entry.Cloudite": "云银",
        "jaopca.entry.Mangisite": "曼切斯特",
        "jaopca.entry.Soilium": "索里姆",
        "jaopca.entry.Vanadium": "钒",
        "jaopca.entry.Oneo": "壹素",
        "jaopca.entry.Togrium": "托格姆",
        "jaopca.entry.Yoggleseum": "约格斯",
        "jaopca.entry.Breakium": "断金",
        "jaopca.entry.Molybdenum": "钼",
        "jaopca.entry.Gallium": "镓",
        "jaopca.entry.Dawnium": "陨灵金",
        "jaopca.entry.Fenzium": "丰金",
        "jaopca.entry.Xenidium": "玄银",
        "jaopca.entry.Sissidium": "希斯蒂姆",
        "jaopca.entry.Ttwo": "贰素",
        "jaopca.entry.Losessium": "残念金属",
        "jaopca.entry.Indium": "铟",
        "jaopca.entry.Technetium": "锝",
        "jaopca.entry.Antimony": "锑",
        "jaopca.entry.Rubidium": "铷",
        "jaopca.entry.Rapesesium": "拉普西斯",
        "jaopca.entry.Circlium": "环金",
        "jaopca.entry.Caesium": "铯",
        "jaopca.entry.Francium": "钫",
        "jaopca.entry.Fierymetal": "炽铁",
        "jaopca.entry.Knightmetal": "骑士金属",
        "jaopca.entry.Arlemite": "阿勒米特",
        "jaopca.entry.Rupee": "卢比",
        "jaopca.entry.Realmite": "诺米特",
        "jaopca.entry.LavaSolid": "熔岩",
        "jaopca.entry.Durasteel": "耐钢",
        "jaopca.entry.Aeonsteel": "恒钢",
        "jaopca.entry.Chromasteel": "炫钢",
        "jaopca.entry.Cosmilite": "寰宇",
        "jaopca.entry.Manasteel": "魔力钢",
        "jaopca.entry.ManaDiamond": "魔力钻石",
        "jaopca.entry.ManaLapis": "魔力青金石",
        "jaopca.entry.ManaQuartz": "魔力石英",
        "jaopca.entry.Elementium": "源质钢",
        "jaopca.entry.Terrasteel": "泰拉钢",
        "jaopca.entry.Gaiasteel": "盖亚钢",
        "jaopca.entry.Orichalcos": "奥利哈刚",
        "jaopca.entry.Osgloglas": "锇荧黑曜合金",
        "jaopca.entry.Alumite": "耐酸铝",
        "jaopca.entry.Osmiridium": "铱锇合金",
        "jaopca.entry.Mirion": "蕴魔结晶",
        "jaopca.entry.Sodium": "钠",
        "jaopca.entry.Iciricium": "冰纹金",
        "jaopca.entry.Elfsteel": "精灵钢",
        "jaopca.entry.Chillinium": "寒心铁",
        "jaopca.entry.Aurorianite": "极光",
        "jaopca.entry.Crystalline": "月凝晶",
        "jaopca.entry.Umbra": "本影",
        "jaopca.entry.StainlessSteel": "不锈钢",
        "jaopca.entry.Niobium": "铌",
        "jaopca.entry.Manyullyn": "玛玉灵",
        "jaopca.entry.ShadowBar": "阴影",
        "jaopca.entry.Eden": "伊甸",
        "jaopca.entry.Wildwood": "原始",
        "jaopca.entry.Apalachia": "阿帕拉契亚",
        "jaopca.entry.Skythern": "冰刺",
        "jaopca.entry.Mortum": "黑金",
        "jaopca.entry.Prudentium": "初级精华",
        "jaopca.entry.Intermedium": "中级精华",
        "jaopca.entry.Superium": "高级精华",
        "jaopca.entry.Supremium": "终极精华",
        "jaopca.entry.Insanium": "究极精华",
        "jaopca.entry.Witherium": "凋灵",
        "jaopca.entry.Dullium": "沉黯",
        "jaopca.entry.Falsite": "伪匿",
        "jaopca.entry.Ventium": "风腾",
        "jaopca.entry.Horizonite": "炎铁",
        "jaopca.entry.Daynight": "昼夜合金",
        "jaopca.entry.Blackiron": "黑铁",
        "jer.worldgen.averageChunk": "平均每区块方块数",
        "death.attack.curse": "%s死于腐化的诅咒。",
        "craftcheck.failure.item.input": "缺少物品输入！",
        "craftcheck.failure.item.output.space": "没有足够的空间以供输出物品！",
        "craftcheck.failure.fluid.input": "缺少流体输入！",
        "craftcheck.failure.fluid.output.space": "没有足够的空间以供输出流体！",
        "craftcheck.failure.gas.input": "缺少气体输入！",
        "craftcheck.failure.gas.output.space": "没有足够的空间以供输出气体！",
        "craftcheck.failure.energy.input": "缺少能量输入！",
        "component.missing.modularmachinery.energy.output": "没有找到能量输出仓！",
        "component.missing.modularmachinery.energy.input": "没有找到能量输入仓！",
        "component.missing.modularmachinery.fluid.output": "没有找到流体输出仓！",
        "component.missing.modularmachinery.fluid.input": "没有找到流体输入仓！",
        "component.missing.modularmachinery.gas.output": "没有找到流体输出仓以供输出气体！",
        "component.missing.modularmachinery.gas.input": "没有找到流体输入仓以供输入气体！",
        "component.missing.modularmachinery.item.output": "没有找到物品输出仓！",
        "component.missing.modularmachinery.item.input": "没有找到物品输入仓！",
        "item.aether_portal_frame.name": "一键式天境传送门",
        "modifier.tconevo.crystalline.desc": "§c§n[已禁用]§r\n该特性将不会出现在工具或盔甲上。",
        "modifier.tconevo.will_strength_armor.desc": "§c§n[已禁用]§r\n该特性将不会出现在工具或盔甲上。",
        "tconevo.info.cannot_replace": "§c无法替换该部件。\n§e拥有进化属性的工具的部件无法被替换。",
        "tconevo.info.artifact_sealed": "§c无法改动未启封的“匠心之作”！\n§e要想改动该工具，请用工具锻造台将工具和§5启封之板§e合成。",
        "text.component.animus.transposition.cleared": "移位标记已清除！",
        "item.bloodmagic.alchemic_vial.base.name": "炼金之瓶",
        "tile.bloodarsenal.slate..name": "石板砖",
        "message.touhou_little_maid.change_model.disabled": "§e皮肤切换功能已被禁止，请使用§6扭蛋机§e抽取女仆皮肤！",
        "entity.Dummy.name": "训练用假人",
        "item.bountifulbaubles.trinketAnkhCharm.name": "安赫护符",
        "item.heart_food.name": "§c心之容器 EX§r",
        "tooltip.itemstages.name.default": "§5§ka§r §d未知物品 §5§ka§r",
        "commands.publish.started": "§e已在端口§6%s§e上开启局域网游戏。 \n§7(如果需要非正版玩家登录，请在整合包根目录的config/serverGlobalConfig.properties中把online-mode后面的true改成false)",
        "betterfoliage.rendererror": "§a[更好的树叶]§f 在渲染原木方块 %s §9@ §7(§6%s§7)§r 时出错。§7（该提示一般可忽略）",
        "potion.saturation": "饱腹",
        "tile.quark:monster_box.name": "§c陷阱刷怪笼",
        "tile.monster_box.name": "§c陷阱刷怪笼",
        "mob_effect.netherex:fire_burning": "极寒之焰",
        "info.nyx.blood_moon_sleeping": "§c你无法在血色之月的阴霾下安心入睡。",
        "tile.torchmaster.mega_torch.lit.tooltip": "§e正道的光，照在了大地上！",
        "entity.quazar.name": "§9史莱姆之神§r",
        "entity.champions.cinder_spark.name": "精英怪范围伤害",
        "vanillafix.gui.failed": "获取崩溃报告链接失败，请手动发送该报告",
        "dc.message.death": "§c[死亡次数统计] §e你已经阵亡§c§l%s§r§e次。",
        "dc.message.deathAndRank": "死亡次数: %1$s排名: %2$s",
        "dc.command.leaderboard": "§a========== §e死亡排行榜 §a==========",
        "ac.ritual.abyssalite": "渊素转化",
        "ac.ritual.abyssalite.desc": "使用阴影宝石将铁矿石变成渊素矿石！",
        "reskillable.skill.reskillable.mining": "挖掘 §7[§2+攻速§7]§r",
        "reskillable.skill.reskillable.gathering": "采集 §7[§2+幸运§7]§r",
        "reskillable.skill.reskillable.attack": "攻击 §7[§2+伤害§7]§r",
        "reskillable.skill.reskillable.defense": "防御 §7[§2+盔甲§7]§r",
        "reskillable.skill.reskillable.building": "建造 §7[§2+韧性§7]§r",
        "reskillable.skill.reskillable.farming": "农耕 §7[§2+生命§7]§r",
        "reskillable.skill.reskillable.agility": "敏捷 §7[§2+移速§7]§r",
        "reskillable.skill.reskillable.magic": "魔法 §7[§2+经验§7]§r",
        "message.died": "§e%s §7逝世于 %s §9(破坏坟墓以取回物品)",
        "death.attack.outOfWorld": "实体%1$s被从埃拉西亚公共界面移除",
        "material.extrabotany:ingotorichalcos.name": "§c[已禁用]",
        "material.extrabotany:ingotshadowium.name": "§c[已禁用]",
        "memorycleaner.gc.start": "§a[内存清理] §f正在清理内存，可能会导致卡顿！\n§7(如果这造成了较长时间的卡顿，请使用我们GitHub Wiki页面推荐的JVM参数。)",
        "item.draconicadditions:chaos_heart.name": "混沌龙心",
        "tile.denseneutroncollectors:compressed_neutron_collector.name": "聚合中子素收集器",
        "tile.denseneutroncollectors:double_compressed_neutron_collector.name": "质子中子素收集器",
        "tile.denseneutroncollectors:triple_compressed_neutron_collector.name": "平衡中子素收集器",
        "container.compressed_neutron_collector": "聚合中子素收集器",
        "container.double_compressed_neutron_collector": "质子中子素收集器",
        "container.triple_compressed_neutron_collector": "平衡中子素收集器",
        "entity.WitherBossCommandBlockHelpful.name": "凋灵风暴（初始阶段）",
        "entity.WitherStormBossHelpful.name": "凋灵风暴（完全阶段）",
        "entity.WitherStormBossTentacleHelpful.name": "凋灵风暴触手",
        "entity.WitherStormBossHeadHelpful.name": "凋灵风暴头",
        "entity.WitherStormBossTentacleDevourerHelpful.name": "凋灵风暴触手",
        "greedycraft.tconstruct.material.titanium.name": "钛",
        "greedycraft.tconstruct.material.manganese.name": "锰",
        "greedycraft.tooltip.command_block": "§e该方块属于技术性方块，无法在生存模式被放置\n§e如果因意外导致方块被放在地上，可以使用命令拆除扳手右键拆除",
        "greedycraft.tooltip.modularmachinery.itemblueprint.2": "机器工作需要蓝图，JEI可以查询其配方以及多方块结构",
        "greedycraft.tooltip.odct": "§e此物品可能具有多个ID，合成可能会发生冲突\n§e可以直接放入工作台或扔在地上转化为同名物品",
        "greedycraft.tooltip.contenttweaker.modularblock": "§c如果不会搭建模块化机器，可以在整合包手册中查看",
        "greedycraft.tooltip.conductive": "导电铁粒的熔点为575K，可以使用加热器搭配微型冶炼炉熔化",
        "greedycraft.tooltip.lumps": "法球可以通过探索梦魇世界地牢和击杀梦魇BOSS获得"
    },
    en_us: {
        "modifier.mutate.name": "Mutating",
        "modifier.mutate.desc": "Looks like something is changing?",
        "death.attack.cinderSpark": "%s was burnt to ashes by %s's fireball.'",
        "botania_tweaks.entrodupe.nicetry": "Get rid of your stupid TNT duplicator, we don't do that here.",
        "fluid.fusion_matrix": "Molten Coalescence Matrix",
        "fluid.insanium": "Molten Insanium",
        "fluid.cryonium": "Molten Cryonium",
        "fluid.ethaxium": "Ethaxium Fluid",
        "fluid.mithrillium": "Molten Mithrillium",
        "fluid.adaminite": "Molten Adaminite",
        "fluid.mithminite": "Molten Mithminite",
        "fluid.ravaging": "Ravaging Fluid",
        "fluid.gaia": "Gaian Mana",
        "fluid.terra_alloy": "Molten Terra Alloy",
        "fluid.cosmilite": "Cosmilite Hyperfluid",
        "fluid.astral_metal": "Astral Pulse",
        "fluid.orichalcos": "Molten Orichalcos",
        "fluid.netherite": "Molten Netherite",
        "fluid.ancient_debris": "Molten Ancient Debris",
        "fluid.scorched": "Molten Scorched Brick",
        "fluid.organic_fluid": "Organic Fluid",
        "fluid.poison": "Liquid Poison",
        "fluid.modularium": "Molten Modularium",
        "fluid.meteor": "Molten Meteor",
        "fluid.stainless_steel": "Molten Stainless Steel",
        "fluid.protonium": "Superdense Protonium Fluid",
        "fluid.electronium": "Viscous Electronium Fluid",
        "fluid.crimsonite": "Crimsonite Juice",
        "fluid.manganese_steel": "Molten Manganese Steel",
        "fluid.durasteel": "Molten Durasteel",
        "fluid.aeonsteel": "Molten Aeonsteel",
        "fluid.chromasteel": "Molten Chromasteel",
        "fluid.spectre": "Soul Springs",
        "fluid.gaiasteel": "Molten Gaiasteel",
        "death.attack.curse": "%s died from the curse of corruption.",
        "item.aether_portal_frame.name": "The Key To Heaven",
        "modifier.tconevo.crystalline.desc": "§c§n[Disabled]§r\nThis trait will not appear on tools or armors.",
        "modifier.tconevo.will_strength_armor.desc": "§c§n[Disabled]§r\nThis trait will not appear on tools or armors.",
        "tconevo.info.cannot_replace": "§cCannot replace this part.\n§eYou cannot replace parts with the Evolving trait.",
        "tconevo.info.artifact_sealed": "§cCannot modify a sealed artifact!\n§eTo modify this tool, unseal it with a Plate of Unsealing.",
        "text.component.animus.transposition.cleared": "Transposition mark cleared!",
        "item.bloodmagic.alchemic_vial.base.name": "Alchemic Vial",
        "tile.bloodarsenal.slate..name": "Slate",
        "message.touhou_little_maid.change_model.disabled": "§eSkin switching has been turned off, use the gashapon machine to get skins.",
        "entity.Dummy.name": "Training Dummy",
        "item.heart_food.name": "§cHeart Container EX§r",
        "tooltip.itemstages.name.default": "§5§ka§r §dUnknown Item §5§ka§r",
        "betterfoliage.rendererror": "§a[Better Foliage]§f Error rendering block %s §9@ §7(§6%s§7)§r. §7(This can be ignored)",
        "potion.saturation": "Saturation",
        "tile.quark:monster_box.name": "§cMonster Box",
        "tile.monster_box.name": "§cMonster Box",
        "mob_effect.netherex:fire_burning": "Frostflame",
        "info.nyx.blood_moon_sleeping": "§cYou cannot fall asleep under the shades of a blood moon.",
        "tile.torchmaster.mega_torch.lit.tooltip": "§eAnd God says there will be light.",
        "entity.quazar.name": "§9The Slime God§r",
        "entity.champions.cinder_spark.name": "Cinder Spark",
        "vanillafix.gui.failed": "Error fetching crash report link, please manually upload it.",
        "dc.message.death": "§c[Death Counter] §eYou have died §c§l%s§r§e times.",
        "dc.message.deathAndRank": "Deaths: %1$s Rank: %2$s",
        "dc.command.leaderboard": "§a========== §eDeath Leaderboard §a==========",
        "ac.ritual.abyssalite": "Abyssalite Conversion",
        "ac.ritual.abyssalite.desc": "Turn iron ores into abyssalite ores with these gems!",
        "reskillable.skill.reskillable.mining": "Mining §7[§2+ATKSpeed§7]§r",
        "reskillable.skill.reskillable.gathering": "Gathering §7[§2+Luck§7]§r",
        "reskillable.skill.reskillable.attack": "Attack §7[§2+Damage§7]§r",
        "reskillable.skill.reskillable.defense": "Defense §7[§2+Armor§7]§r",
        "reskillable.skill.reskillable.building": "Building §7[§2+Toughness§7]§r",
        "reskillable.skill.reskillable.farming": "Farming §7[§2+Health§7]§r",
        "reskillable.skill.reskillable.agility": "Agility §7[§2+Speed§7]§r",
        "reskillable.skill.reskillable.magic": "Magic §7[§2+XPGain§7]§r",
        "message.died": "§e%s §7Died on §a%s §9(Break the grave to retrieve items)",
        "pouchofunknown.destroy_message": "The %s you have just picked up has been destroyed. %sTo hold this item either acquire the required game stage or keep a §dPouch of Unknown§e in your inventory to hold it.",
        "death.attack.outOfWorld": "Entity %1$s was removed from the Elysian Public Interface",
        "material.extrabotany:ingotorichalcos.name": "§c[Disabled]",
        "material.extrabotany:ingotshadowium.name" : "§c[Disabled]",
        "memorycleaner.gc.start": "§a[MemoryCleaner] §fCleaning memory, this might cause some lag!\n§7(If your game pauses for a long time when this happens, please use the recommended JVM arguments in the installation guide which can be found on our GitHub wiki.)"
    }
};

val blueprintDesc as string[] = [
    "item.tconstruct.longsword.desc",
    "item.tconstruct.rapier.desc",
    "item.tconstruct.cleaver.desc",
    "item.tconstruct.shuriken.desc",
    "item.tconevo:tool_sceptre.desc",
    "item.katana.desc",
    "item.laser_gun.desc"
];

for lang, entries in localizationMap {
    for k, v in entries {
        game.setLocalization(lang, k, v);
    }
}

for key in blueprintDesc {
    game.setLocalization(key, game.localize(key) + "\n" + game.localize("greedycraft.tooltip.constant.blueprint_required"));
}
