## Minecraft load time benchmark


---

<p align="center" style="font-size:160%;">
MC total load time:<br>
956.06 sec
<br>
<sup><sub>(
15:56 min
)</sub></sup>
</p>

<br>


<p align="center">
<img src="https://quickchart.io/chart?w=400&h=30&c={%20type:%20'horizontalBar',%20data:%20{%20datasets:%20[%20{label:%20'MODS:',%20data:%20[518.10]},%20{label:%20'FML%20stuff:',%20data:%20[437.96]}%20]%20},%20options:%20{%20scales:%20{%20xAxes:%20[{display:%20false,stacked:%20true}],%20yAxes:%20[{display:%20false,stacked:%20true}],%20},%20elements:%20{rectangle:%20{borderWidth:%202}},%20legend:%20{display:%20false,},%20plugins:%20{datalabels:%20{color:%20'white',formatter:%20(value,%20context)%20=>%20[context.dataset.label,%20value].join('%20')%20}}%20}%20}"/>
</p>

<br>

# Mods Loading Time
<p align="center">
<img src="https://quickchart.io/chart?w=400&h=300&c={%20type:%20'outlabeledPie',%20options:%20{%20cutoutPercentage:%2025,%20plugins:%20{%20legend:%20!1,%20outlabels:%20{%20stretch:%205,%20padding:%201,%20text:%20(v,i)=>[%20v.labels[v.dataIndex],'%20',%20(v.percent*1000|0)/10,%20String.fromCharCode(37)].join('')%20}%20}%20},%20data:%20{...%20`%20436e17%2076.04s%20Had%20Enough%20Items;%203C6315%2046.16s%20Had%20Enough%20Items%20(Plugins);%20516fa8%2020.19s%20Ender%20IO;%204e2164%2016.29s%20Sampling%20Performance%20Profiler;%20438f30%2013.07s%20The%20Betweenlands;%205161a8%2010.93s%20CraftTweaker2;%20495797%2012.19s%20CraftTweaker2%20(Script%20Loading);%2057176e%208.68s%20Additions;%20219e4b%208.28s%20Multiblock'd;%202d6421%208.10s%20AbyssalCraft;%208f6c30%207.40s%20Dynamic%20Surroundings;%20cd872c%206.38s%20Expanded%20Equivalence;%205b219e%206.20s%20BiomeTweaker;%206e175e%206.04s%20Recurrent%20Complex;%208f304e%205.78s%20Astral%20Sorcery;%20cd922c%205.13s%20NuclearCraft;%202c5a3a%205.03s%20ExtraBotany;%20213664%204.87s%20Forestry;%20216364%204.53s%20Thermal%20Expansion;%209e2174%204.01s%20Tinkers'%20Construct;%209e9c21%203.91s%20Biomes%20O'%20Plenty;%205177a8%203.84s%20Misty%20World;%20444444%20121.45s%2063%20Other%20mods;%20333333%20123.09s%20461%20'Fast'%20mods%20(load%201.0s%20-%200.1s);%20222222%202.72s%2050%20'Instant'%20mods%20(load%20%3C%200.1s)%20`%20.split(';').reduce((a,%20l)%20=>%20{%20l.match(/(\w{6})%20*(\d*\.\d*)s%20(.*)/)%20.slice(1).map((a,%20i)%20=>%20[[String.fromCharCode(35),a].join(''),%20parseFloat(a),%20a][i])%20.forEach((s,%20i)%20=>%20[a.datasets[0].backgroundColor,%20a.datasets[0].data,%20a.labels][i].push(s)%20);%20return%20a%20},%20{%20labels:%20[],%20datasets:%20[{%20backgroundColor:%20[],%20data:%20[],%20borderColor:%20'rgba(22,22,22,0.3)',%20borderWidth:%201%20}]%20})%20}%20}"/>
</p>

<br>

# Top Mods Details (except JEI, FML and Forge)
<p align="center">
<img src="https://quickchart.io/chart?w=400&h=450&c={%20options:%20{%20scales:%20{%20xAxes:%20[{stacked:%20true}],%20yAxes:%20[{stacked:%20true}],%20},%20plugins:%20{%20datalabels:%20{%20anchor:%20'end',%20align:%20'top',%20color:%20'white',%20backgroundColor:%20'rgba(46,%20140,%20171,%200.6)',%20borderColor:%20'rgba(41,%20168,%20194,%201.0)',%20borderWidth:%200.5,%20borderRadius:%203,%20padding:%200,%20font:%20{size:10},%20formatter:%20(v,ctx)%20=>%20ctx.datasetIndex!=ctx.chart.data.datasets.length-1%20?%20null%20:%20[((ctx.chart.data.datasets.reduce((a,b)=>a-%20-b.data[ctx.dataIndex],0)*10)|0)/10,'s'].join('')%20},%20colorschemes:%20{%20scheme:%20'office.Damask6'%20}%20}%20},%20type:%20'bar',%20data:%20{...(()%20=>%20{%20let%20a%20=%20{%20labels:%20[],%20datasets:%20[]%20};%20`%201:%20Construction;%202:%20Loading%20Resources;%203:%20PreInitialization;%204:%20Initialization;%205:%20InterModComms$IMC;%206:%20PostInitialization;%207:%20LoadComplete;%208:%20ModIdMapping%20`%20.split(';')%20.map(l%20=>%20l.match(/\d:%20(.*)/).slice(1))%20.forEach(([name])%20=>%20a.datasets.push({%20label:%20name,%20data:%20[]%20}));%20`%201%202%203%204%205%206%207%208%20;%20Ender%20IO%20|%201.34|%200.02|%203.47|%200.49|%208.70|%200.16|%200.02|%205.99;%20Sampling%20Performance%20Profiler%20|%2016.25|%200.00|%200.04|%200.00|%200.00|%200.00|%200.00|%200.00;%20The%20Betweenlands%20|%200.62|%200.04|%2010.28|%201.68|%200.00|%200.44|%200.02|%200.00;%20CraftTweaker2%20|%200.52|%200.01|%204.48|%200.16|%200.00|%205.75|%200.02|%200.00;%20Additions%20|%200.08|%200.00|%208.10|%200.45|%200.00|%200.02|%200.02|%200.00;%20Multiblock'd%20|%200.07|%200.00|%206.16|%200.38|%200.00|%201.64|%200.03|%200.00;%20AbyssalCraft%20|%200.54|%200.02|%203.39|%204.05|%200.01|%200.06|%200.03|%200.00;%20Dynamic%20Surroundings%20|%200.20|%200.01|%200.25|%200.14|%200.00|%200.05|%206.75|%200.00;%20Expanded%20Equivalence%20|%200.23|%200.00|%200.80|%200.02|%200.00|%200.41|%204.92|%200.00;%20BiomeTweaker%20|%200.05|%200.00|%200.40|%200.02|%200.00|%200.02|%205.71|%200.00;%20Recurrent%20Complex%20|%200.24|%200.01|%200.63|%200.95|%200.00|%204.19|%200.02|%200.00;%20Astral%20Sorcery%20|%200.17|%200.01|%203.73|%201.28|%200.00|%200.56|%200.02|%200.00%20`%20.split(';').slice(1)%20.map(l%20=>%20l.split('|').map(s%20=>%20s.trim()))%20.forEach(([name,%20...arr],%20i)%20=>%20{%20a.labels.push(name);%20arr.forEach((v,%20j)%20=>%20a.datasets[j].data[i]%20=%20v)%20});%20return%20a%20})()}%20}"/>
</p>

<br>

# TOP JEI Registered Plugis
<p align="center">
<img src="https://quickchart.io/chart?w=700&c={%20options:%20{%20elements:%20{%20rectangle:%20{%20borderWidth:%201%20}%20},%20legend:%20false%20},%20type:%20'horizontalBar',%20data:%20{...(()%20=>%20{%20let%20a%20=%20{%20labels:%20[],%20datasets:%20[{%20backgroundColor:%20'rgba(0,%2099,%20132,%200.5)',%20borderColor:%20'rgb(0,%2099,%20132)',%20data:%20[]%20}]%20};%20`%2012.45:%20cofh.thermalexpansion.plugins.jei.JEIPluginTE;%206.20:%20forestry.factory.recipes.jei.FactoryJeiPlugin;%205.05:%20jeresources.jei.JEIConfig;%204.97:%20crazypants.enderio.machines.integration.jei.MachinesPlugin;%203.08:%20com.existingeevee.moretcon.other.MoreTConJEIPlugin;%202.46:%20binnie.extratrees.integration.jei.ExtraTreesJeiPlugin;%202.19:%20mezz.jei.plugins.vanilla.VanillaPlugin;%201.05:%20com.cleanroommc.multiblocked.jei.JeiPlugin;%200.62:%20com.buuz135.thaumicjei.ThaumcraftJEIPlugin;%200.61:%20nc.integration.jei.NCJEI;%200.52:%20com.shinoow.abyssalcraft.integration.jei.ACJEIPlugin;%200.48:%20crazypants.enderio.base.integration.jei.JeiPlugin;%200.47:%20thebetweenlands.compat.jei.BetweenlandsJEIPlugin;%200.44:%20tinker_io.plugins.jei.JEIPlugin;%200.37:%20net.bdew.jeibees.BeesJEIPlugin;%205.20:%20Other%20135%20Plugins%20`%20.split(';')%20.map(l%20=>%20l.split(':'))%20.forEach(([time,%20name])%20=>%20{%20a.labels.push(name);%20a.datasets[0].data.push(time)%20})%20;%20return%20a%20})()%20}%20}"/>
</p>

<br>

# FML Stuff
<p align="center">
<img src="https://quickchart.io/chart?w=500&h=400&c={%20options:%20{%20rotation:%20Math.PI,%20cutoutPercentage:%2055,%20plugins:%20{%20legend:%20!1,%20outlabels:%20{%20stretch:%205,%20padding:%201,%20text:%20(v)=>v.labels%20},%20doughnutlabel:%20{%20labels:%20[%20{%20text:%20'FML%20stuff:',%20color:%20'rgba(128,%20128,%20128,%200.5)',%20font:%20{size:%2018}%20},%20{%20text:%20[437.96,'s'].join(''),%20color:%20'rgba(128,%20128,%20128,%201)',%20font:%20{size:%2022}%20}%20]%20},%20}%20},%20type:%20'outlabeledPie',%20data:%20{...(()%20=>%20{%20let%20a%20=%20{%20labels:%20[],%20datasets:%20[{%20backgroundColor:%20[],%20data:%20[],%20borderColor:%20'rgba(22,22,22,0.3)',%20borderWidth:%202%20}]%20};%20`%20993A00%203.30s%20Loading%20sounds;%20994400%203.40s%20Loading%20Resource%20-%20SoundHandler;%20994F00%2051.10s%20ModelLoader:%20blocks;%20995900%2047.11s%20ModelLoader:%20items;%20996300%2018.72s%20ModelLoader:%20baking;%20996D00%200.07s%20Applying%20remove%20recipe%20actions;%20997700%200.02s%20Applying%20remove%20furnace%20recipe%20actions;%20998200%202.66s%20Indexing%20ingredients;%20444444%20311.59s%20Other%20`%20.split(';')%20.map(l%20=>%20l.match(/(\w{6})%20*(\d*\.\d*)s%20(.*)/))%20.forEach(([,%20col,%20time,%20name])%20=>%20{%20a.labels.push([name,%20'%20',%20time,%20's'].join(''));%20a.datasets[0].data.push(parseFloat(time));%20a.datasets[0].backgroundColor.push([String.fromCharCode(35),%20col].join(''))%20})%20;%20return%20a%20})()}%20}"/>
</p>

<br>
