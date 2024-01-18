summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Xiachied"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.50f},"pehkui:height":{scale:0.50f},"pehkui:hitbox_width":{scale:0.50f}}}
summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Cexar"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.25f},"pehkui:height":{scale:0.25f},"pehkui:hitbox_width":{scale:0.25f}}}
summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Lainchex"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:1.50f},"pehkui:height":{scale:1.50f},"pehkui:hitbox_width":{scale:1.50f}}}
summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Viola"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.75f},"pehkui:height":{scale:0.75f},"pehkui:hitbox_width":{scale:0.75f}}}
summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Fabian"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.50f},"pehkui:height":{scale:0.50f},"pehkui:hitbox_width":{scale:0.50f}}}
summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Bianca"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:1.50f},"pehkui:height":{scale:1.50f},"pehkui:hitbox_width":{scale:1.50f}}}
summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Portia"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:1.00f},"pehkui:height":{scale:1.00f},"pehkui:hitbox_width":{scale:1.00f}}}
summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Zheshasneth"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.25f},"pehkui:height":{scale:0.25f},"pehkui:hitbox_width":{scale:0.25f}}}
summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Zeethusno"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.75f},"pehkui:height":{scale:0.75f},"pehkui:hitbox_width":{scale:0.75f}}}
summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Chairti"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:1.25f},"pehkui:height":{scale:1.25f},"pehkui:hitbox_width":{scale:1.25f}}}
summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Lizsee"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:1.25f},"pehkui:height":{scale:1.25f},"pehkui:hitbox_width":{scale:1.25f}}}
summon spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.broodmother_team",Tags:["carn.brood","carn.summon"],CustomName:'{"text":"Arnis"}',Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:1.75f},"pehkui:height":{scale:1.75f},"pehkui:hitbox_width":{scale:1.75f}}}

team join carn.broodmother_team @e[tag=carn.brood]
team join carn.broodmother_team @s
particle minecraft:dust 1 1 1 1 ~ ~ ~ 2 3 2 0.1 2000 force
playsound item.totem.use player @s ~ ~ ~ 10

scoreboard objectives add carn.broodID dummy
scoreboard players operation @s carn.broodID += carn.broodCounter carn.broodID
scoreboard players operation @e[tag=carn.brood,tag=carn.summon,limit=15] carn.broodID += carn.broodCounter carn.broodID
execute as @e[type=minecraft:spider,tag=carn.brood,tag=carn.summon,limit=1] if score @s carn.broodID = carn.broodCounter carn.broodID run scoreboard players add carn.broodCounter carn.broodID 1

execute at @e[distance=1..15] run setblock ~ ~ ~ origins:temporary_cobweb keep
execute at @e[distance=1..15] run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.3 0 0.3 0.001 100 normal