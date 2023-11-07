#nearby spiders are on your team
tag @e[distance=..32,type=#reincarnation-origins:spiders] add carn.brood
team join carn.all_summoners_team @e[distance=..32,tag=carn.brood]

tag @e[distance=32..,type=#reincarnation-origins:spiders] remove carn.brood
team leave @e[distance=32..,tag=!carn.summon,type=#reincarnation-origins:spiders]