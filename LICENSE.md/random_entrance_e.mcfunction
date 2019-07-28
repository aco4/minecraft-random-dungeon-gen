execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999,Tags:["eRNG","1"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999,Tags:["eRNG","2"]}
scoreboard objectives add eRNG dummy
scoreboard players add @e[tag=eRNG,limit=1,sort=random] eRNG 0
execute if entity @e[tag=eRNG,tag=2,scores={eRNG=0}] run execute at @s run tp @s ~ ~ ~-1
scoreboard objectives remove eRNG
execute at @s run fill ~1 ~ ~ ~-1 ~2 ~1 air
execute at @s run fill ~1 ~2 ~ ~-1 ~2 ~ stone_brick_stairs[half=top]
execute at @s run fill ~1 ~2 ~1 ~-1 ~2 ~1 stone_brick_stairs[facing=south,half=top]
kill @e[tag=eRNG]
