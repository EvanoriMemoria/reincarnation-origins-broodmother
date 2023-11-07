function reincarnation-origins:broodmother/kill_brood

summon minecraft:cave_spider ~ ~0.5 ~ {CustomName:'[{"text":"Steeve"}]',Tags:["carn.brood","carn.summon","carn.temp"],Attributes:[{Name:generic.knockback_resistance,Base:1}],Team:carn.all_summoners_team,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:stone_axe",tag:{Enchantments:[{id:"minecraft:knockback",lvl:1}]}},{}],ActiveEffects:[{Id:11,Amplifier:2,Duration:999999,ShowParticles:0b}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.75f},"pehkui:height":{scale:0.75f},"pehkui:hitbox_width":{scale:0.75f}}}
summon minecraft:cave_spider ~ ~0.5 ~ {CustomName:'[{"text":"Webber"}]',Tags:["carn.brood","carn.summon","carn.temp"],Attributes:[{Name:generic.knockback_resistance,Base:1}],Team:carn.all_summoners_team,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:3,Amplifier:5,Duration:999999,ShowParticles:0b},{Id:1,Amplifier:5,Duration:999999,ShowParticles:0b}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.5f},"pehkui:height":{scale:0.5f},"pehkui:hitbox_width":{scale:0.5f}}}
summon minecraft:cave_spider ~ ~0.5 ~ {CustomName:'[{"text":"Spicey"}]',Tags:["carn.brood","carn.summon","carn.temp"],Attributes:[{Name:generic.knockback_resistance,Base:1}],Team:carn.all_summoners_team,DeathLootTable:"minecraft:empty",HandItems:[{Count:1,id:"minecraft:iron_axe"},{}],ActiveEffects:[{Id:5,Amplifier:2,Duration:999999,ShowParticles:0b},{Id:1,Amplifier:2,Duration:999999,ShowParticles:0b}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.5f},"pehkui:height":{scale:0.5f},"pehkui:hitbox_width":{scale:0.5f}}}

team join carn.all_summoners_team @e[tag=carn.brood]
team join carn.all_summoners_team @s
playsound entity.spider.ambient player @s

scoreboard objectives add carn.broodID dummy
scoreboard players operation @s carn.broodID += carn.broodCounter carn.broodID
scoreboard players operation @e[tag=carn.brood,tag=carn.temp,limit=3] carn.broodID += carn.broodCounter carn.broodID
execute as @e[type=minecraft:cave_spider,tag=carn.temp,tag=carn.brood,tag=carn.summon,limit=3] if score @s carn.broodID = carn.broodCounter carn.broodID run tag @s remove carn.temp
execute as @e[type=minecraft:cave_spider,tag=carn.brood,tag=carn.summon,limit=1] if score @s carn.broodID = carn.broodCounter carn.broodID run scoreboard players add carn.broodCounter carn.broodID 1

execute as @e[type=minecraft:cave_spider,tag=carn.brood,tag=carn.summon,limit=3] run power grant @s reincarnation-origins:broodmother/spider_minion_powers