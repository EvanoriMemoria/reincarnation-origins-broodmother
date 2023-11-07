gamerule showDeathMessages false
execute as @e[tag=carn.brood,tag=carn.summon,type=cave_spider] if score @s carn.broodID = @p carn.broodID run tp @s ~ -100 ~
execute as @e[tag=carn.brood,tag=carn.summon,type=cave_spider] if score @s carn.broodID = @p carn.broodID run kill @s
scoreboard players reset @s carn.broodID
gamerule showDeathMessages true