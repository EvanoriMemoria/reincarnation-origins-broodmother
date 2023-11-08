function reincarnation-origins:broodmother/kill_brood

summon cave_spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",Tags:["carn.brood","carn.summon","carn.temp"],CustomName:'{"text":"Steeve"}',HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}},{}],active_effects:[{id:"minecraft:resistance",amplifier:2b,duration:999999,show_particles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.75f},"pehkui:height":{scale:0.75f},"pehkui:hitbox_width":{scale:0.75f}}}
summon cave_spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",Tags:["carn.brood","carn.summon","carn.temp"],CustomName:'{"text":"Webber"}',active_effects:[{id:"minecraft:speed",amplifier:5b,duration:999999,show_particles:0b},{id:"minecraft:haste",amplifier:5b,duration:999999,show_particles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.5f},"pehkui:height":{scale:0.5f},"pehkui:hitbox_width":{scale:0.5f}}}
summon cave_spider ~ ~0.5 ~ {DeathLootTable:"minecraft:empty",Team:"carn.all_summoners_team",Tags:["carn.brood","carn.summon","carn.temp"],CustomName:'{"text":"Spicey"}',HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}},{}],active_effects:[{id:"minecraft:speed",amplifier:2b,duration:999999,show_particles:0b},{id:"minecraft:strength",amplifier:2b,duration:999999,show_particles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:1}],"pehkui:scale_data_types":{"pehkui:width":{scale:0.5f},"pehkui:height":{scale:0.5f},"pehkui:hitbox_width":{scale:0.5f}}}

team join carn.all_summoners_team @e[tag=carn.brood]
team join carn.all_summoners_team @s
playsound entity.spider.ambient player @s

scoreboard objectives add carn.broodID dummy
scoreboard players operation @s carn.broodID += carn.broodCounter carn.broodID
scoreboard players operation @e[tag=carn.brood,tag=carn.temp,limit=3] carn.broodID += carn.broodCounter carn.broodID
execute as @e[type=minecraft:cave_spider,tag=carn.temp,tag=carn.brood,tag=carn.summon,limit=3] if score @s carn.broodID = carn.broodCounter carn.broodID run tag @s remove carn.temp
execute as @e[type=minecraft:cave_spider,tag=carn.brood,tag=carn.summon,limit=1] if score @s carn.broodID = carn.broodCounter carn.broodID run scoreboard players add carn.broodCounter carn.broodID 1

execute as @e[type=minecraft:cave_spider,tag=carn.brood,tag=carn.summon,limit=3] run power grant @s reincarnation-origins:broodmother/spider_minion_powers