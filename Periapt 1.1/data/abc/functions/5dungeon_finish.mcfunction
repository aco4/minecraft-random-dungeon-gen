kill @e[tag=mazeGenerator]
#3x3
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~-3 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~ ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~3 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~6 ~ ~-3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~6 ~ ~ {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~6 ~ ~3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~-3 ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~ ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~3 ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~-6 ~ ~-3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~-6 ~ ~ {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x3] run summon minecraft:area_effect_cloud ~-6 ~ ~3 {Duration:999999,Tags:["roomWall","westSide"]}
#
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
#
kill @e[tag=roomWall,tag=!validEntrance]
#
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=northSide,limit=1,sort=random] RNG 0
tag @e[tag=northSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=eastSide,limit=1,sort=random] RNG 0
tag @e[tag=eastSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=southSide,limit=1,sort=random] RNG 0
tag @e[tag=southSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=westSide,limit=1,sort=random] RNG 0
tag @e[tag=westSide,scores={RNG=0}] add chosenEntrance
scoreboard objectives remove RNG
#
scoreboard objectives add EntranceCount dummy
scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 0
execute as @e[tag=chosenEntrance] run scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 1
execute if entity @e[tag=dungeonNWCorner,scores={EntranceCount=4}] run kill @e[tag=chosenEntrance,limit=2,sort=random]
scoreboard objectives remove EntranceCount
#
execute as @e[tag=chosenEntrance,tag=northSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=eastSide] run execute at @s run function abc:random_entrance_e
execute as @e[tag=chosenEntrance,tag=southSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=westSide] run execute at @s run function abc:random_entrance_e
#
kill @e[tag=roomWall]
#3x4N
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~-3 ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~ ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~3 ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~6 ~ ~-6 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~6 ~ ~-3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~6 ~ ~ {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~6 ~ ~3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~3 ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~ ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~-3 ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~-6 ~ ~3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~-6 ~ ~ {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~-6 ~ ~-3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x4N] run summon minecraft:area_effect_cloud ~-6 ~ ~-6 {Duration:999999,Tags:["roomWall","westSide"]}
#
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
#
kill @e[tag=roomWall,tag=!validEntrance]
#
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=northSide,limit=1,sort=random] RNG 0
tag @e[tag=northSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=eastSide,limit=1,sort=random] RNG 0
tag @e[tag=eastSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=southSide,limit=1,sort=random] RNG 0
tag @e[tag=southSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=westSide,limit=1,sort=random] RNG 0
tag @e[tag=westSide,scores={RNG=0}] add chosenEntrance
scoreboard objectives remove RNG
#
scoreboard objectives add EntranceCount dummy
scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 0
execute as @e[tag=chosenEntrance] run scoreboard players operation @e[tag=dungeonNWCorner] EntranceCount += dummyPlayerCounter1 EntranceCount
execute if entity @e[tag=dungeonNWCorner,scores={EntranceCount=4}] run kill @e[tag=chosenEntrance,limit=2,sort=random]
scoreboard objectives remove EntranceCount
#
execute as @e[tag=chosenEntrance,tag=northSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=eastSide] run execute at @s run function abc:random_entrance_e
execute as @e[tag=chosenEntrance,tag=southSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=westSide] run execute at @s run function abc:random_entrance_e
#
kill @e[tag=roomWall]
#3x4E
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~-6 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~-3 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~ ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~3 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~6 ~ ~-3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~6 ~ ~ {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~6 ~ ~3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~3 ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~ ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~-3 ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~-6 ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~-9 ~ ~3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~-9 ~ ~ {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x4E] run summon minecraft:area_effect_cloud ~-9 ~ ~-3 {Duration:999999,Tags:["roomWall","westSide"]}
#
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
#
kill @e[tag=roomWall,tag=!validEntrance]
#
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=northSide,limit=1,sort=random] RNG 0
tag @e[tag=northSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=eastSide,limit=1,sort=random] RNG 0
tag @e[tag=eastSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=southSide,limit=1,sort=random] RNG 0
tag @e[tag=southSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=westSide,limit=1,sort=random] RNG 0
tag @e[tag=westSide,scores={RNG=0}] add chosenEntrance
scoreboard objectives remove RNG
#
scoreboard objectives add EntranceCount dummy
scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 0
execute as @e[tag=chosenEntrance] run scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 1
execute if entity @e[tag=dungeonNWCorner,scores={EntranceCount=4}] run kill @e[tag=chosenEntrance,limit=2,sort=random]
scoreboard objectives remove EntranceCount
#
execute as @e[tag=chosenEntrance,tag=northSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=eastSide] run execute at @s run function abc:random_entrance_e
execute as @e[tag=chosenEntrance,tag=southSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=westSide] run execute at @s run function abc:random_entrance_e
#
kill @e[tag=roomWall]
#3x5N
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~-3 ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~ ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~3 ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~6 ~ ~-6 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~6 ~ ~-3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~6 ~ ~ {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~6 ~ ~3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~6 ~ ~6 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~3 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~ ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~-3 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~-6 ~ ~6 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~-6 ~ ~3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~-6 ~ ~ {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~-6 ~ ~-3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x5N] run summon minecraft:area_effect_cloud ~-6 ~ ~-6 {Duration:999999,Tags:["roomWall","westSide"]}
#
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
#
kill @e[tag=roomWall,tag=!validEntrance]
#
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=northSide,limit=1,sort=random] RNG 0
tag @e[tag=northSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=eastSide,limit=1,sort=random] RNG 0
tag @e[tag=eastSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=southSide,limit=1,sort=random] RNG 0
tag @e[tag=southSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=westSide,limit=1,sort=random] RNG 0
tag @e[tag=westSide,scores={RNG=0}] add chosenEntrance
scoreboard objectives remove RNG
#
scoreboard objectives add EntranceCount dummy
scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 0
execute as @e[tag=chosenEntrance] run scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 1
execute if entity @e[tag=dungeonNWCorner,scores={EntranceCount=4}] run kill @e[tag=chosenEntrance,limit=2,sort=random]
scoreboard objectives remove EntranceCount
#
execute as @e[tag=chosenEntrance,tag=northSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=eastSide] run execute at @s run function abc:random_entrance_e
execute as @e[tag=chosenEntrance,tag=southSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=westSide] run execute at @s run function abc:random_entrance_e
#
kill @e[tag=roomWall]
#3x5E
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~-6 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~-3 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~ ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~3 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~6 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~9 ~ ~-3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~9 ~ ~ {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~9 ~ ~3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~-6 ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~-3 ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~ ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~3 ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~6 ~ ~6 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~-9 ~ ~-3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~-9 ~ ~ {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=3x5E] run summon minecraft:area_effect_cloud ~-9 ~ ~3 {Duration:999999,Tags:["roomWall","westSide"]}
#
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
#
kill @e[tag=roomWall,tag=!validEntrance]
#
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=northSide,limit=1,sort=random] RNG 0
tag @e[tag=northSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=eastSide,limit=1,sort=random] RNG 0
tag @e[tag=eastSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=southSide,limit=1,sort=random] RNG 0
tag @e[tag=southSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=westSide,limit=1,sort=random] RNG 0
tag @e[tag=westSide,scores={RNG=0}] add chosenEntrance
scoreboard objectives remove RNG
#
scoreboard objectives add EntranceCount dummy
scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 0
execute as @e[tag=chosenEntrance] run scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 1
execute if entity @e[tag=dungeonNWCorner,scores={EntranceCount=4}] run kill @e[tag=chosenEntrance,limit=2,sort=random]
scoreboard objectives remove EntranceCount
#
execute as @e[tag=chosenEntrance,tag=northSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=eastSide] run execute at @s run function abc:random_entrance_e
execute as @e[tag=chosenEntrance,tag=southSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=westSide] run execute at @s run function abc:random_entrance_e
#
kill @e[tag=roomWall]
#4x4
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~-3 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~ ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~3 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~6 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~9 ~ ~-3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~9 ~ ~ {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~9 ~ ~3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~9 ~ ~6 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~6 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~3 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~ ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~-3 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~-6 ~ ~6 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~-6 ~ ~3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~-6 ~ ~ {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=4x4] run summon minecraft:area_effect_cloud ~-6 ~ ~-3 {Duration:999999,Tags:["roomWall","westSide"]}
#
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
#
kill @e[tag=roomWall,tag=!validEntrance]
#
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=northSide,limit=1,sort=random] RNG 0
tag @e[tag=northSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=eastSide,limit=1,sort=random] RNG 0
tag @e[tag=eastSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=southSide,limit=1,sort=random] RNG 0
tag @e[tag=southSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=westSide,limit=1,sort=random] RNG 0
tag @e[tag=westSide,scores={RNG=0}] add chosenEntrance
scoreboard objectives remove RNG
#
scoreboard objectives add EntranceCount dummy
scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 0
execute as @e[tag=chosenEntrance] run scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 1
execute if entity @e[tag=dungeonNWCorner,scores={EntranceCount=4}] run kill @e[tag=chosenEntrance,limit=2,sort=random]
scoreboard objectives remove EntranceCount
#
execute as @e[tag=chosenEntrance,tag=northSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=eastSide] run execute at @s run function abc:random_entrance_e
execute as @e[tag=chosenEntrance,tag=southSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=westSide] run execute at @s run function abc:random_entrance_e
#
kill @e[tag=roomWall]
#4x5N
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~-3 ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~ ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~3 ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~6 ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~9 ~ ~-6 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~9 ~ ~-3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~9 ~ ~ {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~9 ~ ~3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~9 ~ ~6 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~-3 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~ ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~3 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~6 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~-6 ~ ~6 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~-6 ~ ~3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~-6 ~ ~ {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~-6 ~ ~-3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=4x5N] run summon minecraft:area_effect_cloud ~-6 ~ ~-6 {Duration:999999,Tags:["roomWall","westSide"]}
#
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
#
kill @e[tag=roomWall,tag=!validEntrance]
#
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=northSide,limit=1,sort=random] RNG 0
tag @e[tag=northSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=eastSide,limit=1,sort=random] RNG 0
tag @e[tag=eastSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=southSide,limit=1,sort=random] RNG 0
tag @e[tag=southSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=westSide,limit=1,sort=random] RNG 0
tag @e[tag=westSide,scores={RNG=0}] add chosenEntrance
scoreboard objectives remove RNG
#
scoreboard objectives add EntranceCount dummy
scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 0
execute as @e[tag=chosenEntrance] run scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 1
execute if entity @e[tag=dungeonNWCorner,scores={EntranceCount=4}] run kill @e[tag=chosenEntrance,limit=2,sort=random]
scoreboard objectives remove EntranceCount
#
execute as @e[tag=chosenEntrance,tag=northSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=eastSide] run execute at @s run function abc:random_entrance_e
execute as @e[tag=chosenEntrance,tag=southSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=westSide] run execute at @s run function abc:random_entrance_e
#
kill @e[tag=roomWall]
#4x5E
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~-6 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~-3 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~ ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~3 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~6 ~ ~-6 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~9 ~ ~-3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~9 ~ ~ {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~9 ~ ~3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~9 ~ ~6 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~-6 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~-3 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~ ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~3 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~6 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~-9 ~ ~-3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~-9 ~ ~ {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~-9 ~ ~3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=4x5E] run summon minecraft:area_effect_cloud ~-9 ~ ~6 {Duration:999999,Tags:["roomWall","westSide"]}
#
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
#
kill @e[tag=roomWall,tag=!validEntrance]
#
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=northSide,limit=1,sort=random] RNG 0
tag @e[tag=northSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=eastSide,limit=1,sort=random] RNG 0
tag @e[tag=eastSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=southSide,limit=1,sort=random] RNG 0
tag @e[tag=southSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=westSide,limit=1,sort=random] RNG 0
tag @e[tag=westSide,scores={RNG=0}] add chosenEntrance
scoreboard objectives remove RNG
#
scoreboard objectives add EntranceCount dummy
scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 0
execute as @e[tag=chosenEntrance] run scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 1
execute if entity @e[tag=dungeonNWCorner,scores={EntranceCount=4}] run kill @e[tag=chosenEntrance,limit=2,sort=random]
scoreboard objectives remove EntranceCount
#
execute as @e[tag=chosenEntrance,tag=northSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=eastSide] run execute at @s run function abc:random_entrance_e
execute as @e[tag=chosenEntrance,tag=southSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=westSide] run execute at @s run function abc:random_entrance_e
#
kill @e[tag=roomWall]
#5x5
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~-6 ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~-3 ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~ ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~3 ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~6 ~ ~-9 {Duration:999999,Tags:["roomWall","northSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~9 ~ ~-6 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~9 ~ ~-3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~9 ~ ~ {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~9 ~ ~3 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~9 ~ ~6 {Duration:999999,Tags:["roomWall","eastSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~-6 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~-3 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~ ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~3 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~6 ~ ~9 {Duration:999999,Tags:["roomWall","southSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~-9 ~ ~-6 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~-9 ~ ~-3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~-9 ~ ~ {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~-9 ~ ~3 {Duration:999999,Tags:["roomWall","westSide"]}
execute at @e[tag=room,tag=5x5] run summon minecraft:area_effect_cloud ~-9 ~ ~6 {Duration:999999,Tags:["roomWall","westSide"]}
#
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=northSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~-3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=eastSide,tag=!validEntrance] run execute at @s run execute if block ~3 ~ ~ red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=southSide,tag=!validEntrance] run execute at @s run execute if block ~ ~ ~3 red_concrete run tag @s add validEntrance
#
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
execute as @e[tag=roomWall,tag=westSide,tag=!validEntrance] run execute at @s run execute if block ~-3 ~ ~ red_concrete run tag @s add validEntrance
#
kill @e[tag=roomWall,tag=!validEntrance]
#
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=northSide,limit=1,sort=random] RNG 0
tag @e[tag=northSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=eastSide,limit=1,sort=random] RNG 0
tag @e[tag=eastSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=southSide,limit=1,sort=random] RNG 0
tag @e[tag=southSide,scores={RNG=0}] add chosenEntrance
scoreboard players add @e[tag=westSide,limit=1,sort=random] RNG 0
tag @e[tag=westSide,scores={RNG=0}] add chosenEntrance
scoreboard objectives remove RNG
#
scoreboard objectives add EntranceCount dummy
scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 0
execute as @e[tag=chosenEntrance] run scoreboard players add @e[tag=dungeonNWCorner] EntranceCount 1
execute if entity @e[tag=dungeonNWCorner,scores={EntranceCount=4}] run kill @e[tag=chosenEntrance,limit=2,sort=random]
scoreboard objectives remove EntranceCount
#
execute as @e[tag=chosenEntrance,tag=northSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=eastSide] run execute at @s run function abc:random_entrance_e
execute as @e[tag=chosenEntrance,tag=southSide] run execute at @s run function abc:random_entrance_n
execute as @e[tag=chosenEntrance,tag=westSide] run execute at @s run function abc:random_entrance_e
#
kill @e[tag=roomWall]
#
#
#
#
#
#random staircase aka ending room
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=structurePotential,limit=1,sort=random] RNG 0
tag @e[tag=structurePotential,scores={RNG=0}] add stairsUpRoom
tag @e[tag=structurePotential,scores={RNG=0}] remove structurePotential
kill @e[tag=room,tag=!stairsUpRoom]
scoreboard objectives remove RNG
execute at @e[tag=stairsUpRoom] run summon minecraft:silverfish ~ ~ ~ {Invulnerable:1b,NoAI:1b,Tags:["debug"]}
#
#random stairs
#
execute at @e[tag=dungeonNWCorner] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["stairOffsetRNG","-3x"]}
execute at @e[tag=dungeonNWCorner] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["stairOffsetRNG","-2x"]}
execute at @e[tag=dungeonNWCorner] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["stairOffsetRNG","-1x"]}
execute at @e[tag=dungeonNWCorner] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["stairOffsetRNG","+1x"]}
execute at @e[tag=dungeonNWCorner] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["stairOffsetRNG","+2x"]}
execute at @e[tag=dungeonNWCorner] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["stairOffsetRNG","+3x"]}
#
kill @e[tag=stairOffsetRNG,limit=5,sort=random]
#
execute at @e[tag=dungeonNWCorner] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["stairDirectionRNG","nStairs"]}
execute at @e[tag=dungeonNWCorner] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["stairDirectionRNG","eStairs"]}
execute at @e[tag=dungeonNWCorner] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["stairDirectionRNG","sStairs"]}
execute at @e[tag=dungeonNWCorner] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["stairDirectionRNG","wStairs"]}
#
kill @e[tag=stairDirectionRNG,limit=3,sort=random]
#
execute if entity @e[tag=stairDirectionRNG,tag=nStairs] run function abc:level_stairs_n
execute if entity @e[tag=stairDirectionRNG,tag=eStairs] run function abc:level_stairs_e
execute if entity @e[tag=stairDirectionRNG,tag=sStairs] run function abc:level_stairs_s
execute if entity @e[tag=stairDirectionRNG,tag=wStairs] run function abc:level_stairs_w
#
kill @e[tag=stairsUpRoom]
kill @e[tag=stairDirectionRNG]
kill @e[tag=stairOffsetRNG]
#
#Fill in dead ends
execute at @e[tag=dungeonNWCorner] run fill ~1 ~1 ~1 ~123 ~1 ~123 minecraft:air replace red_concrete
execute as @e[tag=cloudGrid] run execute at @s run execute if blocks -4 1 -4 4 1 1 ~-4 ~ ~-4 all run fill ~-1 ~ ~-1 ~1 ~2 ~1 stone_bricks
execute as @e[tag=cloudGrid] run execute at @s run execute if blocks -1 1 -4 4 1 4 ~-1 ~ ~-4 all run fill ~-1 ~ ~-1 ~1 ~2 ~1 stone_bricks
execute as @e[tag=cloudGrid] run execute at @s run execute if blocks -4 1 -1 4 1 4 ~-4 ~ ~-1 all run fill ~-1 ~ ~-1 ~1 ~2 ~1 stone_bricks
execute as @e[tag=cloudGrid] run execute at @s run execute if blocks -4 1 -4 1 1 4 ~-4 ~ ~-4 all run fill ~-1 ~ ~-1 ~1 ~2 ~1 stone_bricks
#
execute as @e[tag=cloudGrid] run execute at @s run execute if blocks -4 1 -4 4 1 1 ~-4 ~ ~-4 all run fill ~-1 ~ ~-1 ~1 ~2 ~1 stone_bricks
execute as @e[tag=cloudGrid] run execute at @s run execute if blocks -1 1 -4 4 1 4 ~-1 ~ ~-4 all run fill ~-1 ~ ~-1 ~1 ~2 ~1 stone_bricks
execute as @e[tag=cloudGrid] run execute at @s run execute if blocks -4 1 -1 4 1 4 ~-4 ~ ~-1 all run fill ~-1 ~ ~-1 ~1 ~2 ~1 stone_bricks
execute as @e[tag=cloudGrid] run execute at @s run execute if blocks -4 1 -4 1 1 4 ~-4 ~ ~-4 all run fill ~-1 ~ ~-1 ~1 ~2 ~1 stone_bricks
kill @e[tag=cloudGrid]
#
#Random block variation
#
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["block_variator"]}
#1
execute at @e[tag=block_variator] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["block_variator"]}
#2
execute at @e[tag=block_variator] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["block_variator"]}
#4
execute at @e[tag=block_variator] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["block_variator"]}
#8
execute at @e[tag=block_variator] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["block_variator"]}
#16
execute at @e[tag=block_variator] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["block_variator"]}
#32
execute at @e[tag=block_variator] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["block_variator"]}
#64
execute at @e[tag=block_variator] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["block_variator"]}
#128
execute at @e[tag=block_variator] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["block_variator"]}
#256
execute at @e[tag=block_variator] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["block_variator"]}
#512
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ mossy_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ cracked_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ polished_andesite replace stone_bricks
#
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ mossy_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ cracked_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ polished_andesite replace stone_bricks
#
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ mossy_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ cracked_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ polished_andesite replace stone_bricks
#
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~ ~-3 ~-1 stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=south]
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~1 ~-3 ~ stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=west]
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~ ~-3 ~1 stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=north]
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~-1 ~-3 ~ stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=east]
#
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-3 ~ ~ ~-3 ~ mossy_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-3 ~ ~ ~-3 ~ cracked_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-3 ~ ~ ~-3 ~ polished_andesite replace stone_bricks
#
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-3 ~ ~ ~-3 ~ mossy_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-3 ~ ~ ~-3 ~ cracked_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-3 ~ ~ ~-3 ~ polished_andesite replace stone_bricks
#
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-3 ~ ~ ~-3 ~ mossy_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-3 ~ ~ ~-3 ~ cracked_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-3 ~ ~ ~-3 ~ polished_andesite replace stone_bricks
#
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~ ~-3 ~-1 stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=south]
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~1 ~-3 ~ stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=west]
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~ ~-3 ~1 stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=north]
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~-1 ~-3 ~ stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=east]
#
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-4 ~ ~ ~-4 ~ mossy_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-4 ~ ~ ~-4 ~ cracked_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-4 ~ ~ ~-4 ~ polished_andesite replace stone_bricks
#
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-4 ~ ~ ~-4 ~ mossy_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-4 ~ ~ ~-4 ~ cracked_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-4 ~ ~ ~-4 ~ polished_andesite replace stone_bricks
#
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-4 ~ ~ ~-4 ~ mossy_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-4 ~ ~ ~-4 ~ cracked_stone_bricks replace stone_bricks
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-4 ~ ~ ~-4 ~ polished_andesite replace stone_bricks
#
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~ ~-3 ~-1 stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=south]
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~1 ~-3 ~ stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=west]
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~ ~-3 ~1 stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=north]
execute at @e[tag=block_variator,sort=random] run execute if block ~ ~-3 ~ air run execute if block ~-1 ~-3 ~ stone_bricks run setblock ~ ~-3 ~ minecraft:redstone_wall_torch[facing=east]
#
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=0]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=1]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=2]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=3]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=4]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=5]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=6]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=7]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=8]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=9]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=10]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=11]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=12]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=13]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=14]
execute at @e[tag=block_variator,sort=random,limit=5] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:skeleton_skull[rotation=15]
#
execute at @e[tag=block_variator,sort=random,limit=75] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:brown_mushroom
execute at @e[tag=block_variator,sort=random,limit=75] run execute if block ~ ~-4 ~ air run setblock ~ ~-4 ~ minecraft:red_mushroom
#
kill @e[tag=block_variator]
#
execute at @e[tag=dungeonNWCorner] run tp @e[tag=dungeonNWCorner] ~ ~5 ~
scoreboard players add fakePlayer levelCount 1
execute if score fakePlayer levelCount < fakePlayerEnd levelCount run function abc:3create_floor
execute if score fakePlayer levelCount = fakePlayerEnd levelCount run function abc:6finalize
