summon area_effect_cloud ~ ~1 ~ {Tags:["area_random"],Age:1}
execute store result score @s rng run data get entity @e[type=area_effect_cloud,tag=area_random,limit=1] UUIDMost 0.00000000023283064
scoreboard players operation @s rng %= $Var32 blkbroken
kill @e[type=area_effect_cloud,tag=area_random]

execute as @a[scores={blkbroken=1..}] at @s run function blockbreak:giveeffect
scoreboard players set @a[scores={blkbroken=1..}] blkbroken 0