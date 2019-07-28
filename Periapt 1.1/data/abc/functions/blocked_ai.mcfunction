execute at @e[tag=mazeGenerator] run execute if block ~ ~ ~-3 air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["BRNG","nBRNG"]}
execute at @e[tag=mazeGenerator] run execute if block ~3 ~ ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["BRNG","eBRNG"]}
execute at @e[tag=mazeGenerator] run execute if block ~ ~ ~3 air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["BRNG","sBRNG"]}
execute at @e[tag=mazeGenerator] run execute if block ~-3 ~ ~ air run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["BRNG","wBRNG"]}
#
execute at @e[tag=mazeGenerator] run setblock ~ ~ ~ red_concrete
#
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=BRNG,sort=random,limit=1] RNG 0
execute if entity @e[tag=nBRNG,scores={RNG=0}] run execute at @e[tag=mazeGenerator] run tp @e[tag=mazeGenerator] ~ ~ ~-3
execute if entity @e[tag=eBRNG,scores={RNG=0}] run execute at @e[tag=mazeGenerator] run tp @e[tag=mazeGenerator] ~3 ~ ~
execute if entity @e[tag=sBRNG,scores={RNG=0}] run execute at @e[tag=mazeGenerator] run tp @e[tag=mazeGenerator] ~ ~ ~3
execute if entity @e[tag=wBRNG,scores={RNG=0}] run execute at @e[tag=mazeGenerator] run tp @e[tag=mazeGenerator] ~-3 ~ ~
scoreboard objectives remove RNG
kill @e[tag=BRNG]
kill @e[tag=PRNG]
