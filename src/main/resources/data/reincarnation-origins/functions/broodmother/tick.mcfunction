#teleport minions to you
execute at @a as @e[tag=carn.brood,tag=carn.summon] if score @s[distance=18..] carn.broodID = @p carn.broodID run tp @s ~.3 ~ ~