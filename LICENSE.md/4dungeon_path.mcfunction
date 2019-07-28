execute at @e[tag=mazeGenerator] run execute if blocks -4 1 -7 4 1 -2 ~-4 ~ ~-7 all run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["PRNG","nPRNG"]}
execute at @e[tag=mazeGenerator] run execute if blocks 2 1 -4 7 1 4 ~2 ~ ~-4 all run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["PRNG","ePRNG"]}
execute at @e[tag=mazeGenerator] run execute if blocks -4 1 2 4 1 7 ~-4 ~ ~2 all run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["PRNG","sPRNG"]}
execute at @e[tag=mazeGenerator] run execute if blocks -7 1 -4 -2 1 4 ~-7 ~ ~-4 all run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["PRNG","wPRNG"]}
#
execute unless entity @e[tag=PRNG] run function abc:blocked_ai
execute if entity @e[tag=PRNG] run function abc:path_ai
execute at @e[tag=mazeGenerator] run execute if block ~ ~ ~ red_concrete run function abc:5dungeon_finish
