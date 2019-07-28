scoreboard objectives add RNG dummy
scoreboard players add @e[tag=PRNG,sort=random,limit=1] RNG 0
execute if entity @e[tag=nPRNG,scores={RNG=0}] run execute at @e[tag=mazeGenerator] run tp @e[tag=mazeGenerator] ~ ~ ~-3
execute if entity @e[tag=ePRNG,scores={RNG=0}] run execute at @e[tag=mazeGenerator] run tp @e[tag=mazeGenerator] ~3 ~ ~
execute if entity @e[tag=sPRNG,scores={RNG=0}] run execute at @e[tag=mazeGenerator] run tp @e[tag=mazeGenerator] ~ ~ ~3
execute if entity @e[tag=wPRNG,scores={RNG=0}] run execute at @e[tag=mazeGenerator] run tp @e[tag=mazeGenerator] ~-3 ~ ~
scoreboard objectives remove RNG
kill @e[tag=PRNG]
kill @e[tag=BRNG]
execute at @e[tag=mazeGenerator] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
