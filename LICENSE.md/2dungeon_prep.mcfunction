tellraw @p {"text":"=============================================","color":"blue","bold":true}
tellraw @p ""
tellraw @p {"text":"Starting dungeon generation...","color":"aqua"}
tellraw @p {"text":"* Expect lag and extreme drops in tps! *","color":"aqua"}
tellraw @p ""
tellraw @p {"text":"=============================================","color":"blue","bold":true}
#Teleport worldSetup to y level 1 (just above bedrock)
execute at @e[tag=worldSetup] run tp @e[tag=worldSetup] ~ 1 ~
#Forceload the dungeon's chunks
execute at @e[tag=worldSetup] run forceload add ~ ~ ~112 ~112
#Fill the area above the dungeon with air, for /spreadplayers
execute at @e[tag=worldSetup] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["clearSpace"]}
scoreboard objectives add clearY dummy
scoreboard players add @e[tag=clearSpace] clearY 0
function abc:clear_space
scoreboard objectives remove clear_space
#How many floors there should be(fakePlayerEnd-1) and current floor counter(fakeplayer)
scoreboard objectives remove levelCount
scoreboard objectives add levelCount dummy
scoreboard players add fakePlayer levelCount 0
scoreboard players add fakePlayerEnd levelCount 25
#
kill @e[type=!player,tag=!worldSetup]
#Summon the dungeon's NW corner at worldSetup
execute at @e[tag=worldSetup] run summon minecraft:area_effect_cloud ~1 ~ ~1 {Duration:999999,Tags:["dungeonNWCorner"]}
function abc:3create_floor
function abc:4dungeon_path
