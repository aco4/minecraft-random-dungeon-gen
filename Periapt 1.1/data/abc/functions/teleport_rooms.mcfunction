#Teleport 1 of the rooms above the stair room
execute if entity @e[tag=mostRecent] run scoreboard objectives add RNG dummy
scoreboard players add @e[tag=room,limit=1,sort=random] RNG 0
execute if entity @e[tag=room,scores={RNG=0},tag=3x3] run tag @e[tag=3x3] remove nonStairRoom
execute if entity @e[tag=room,scores={RNG=0},tag=3x4N] run tag @e[tag=3x4N] remove nonStairRoom
execute if entity @e[tag=room,scores={RNG=0},tag=3x4E] run tag @e[tag=3x4E] remove nonStairRoom
execute if entity @e[tag=room,scores={RNG=0},tag=3x5N] run tag @e[tag=3x5N] remove nonStairRoom
execute if entity @e[tag=room,scores={RNG=0},tag=3x5E] run tag @e[tag=3x5E] remove nonStairRoom
execute if entity @e[tag=room,scores={RNG=0},tag=4x4] run tag @e[tag=4x4] remove nonStairRoom
execute if entity @e[tag=room,scores={RNG=0},tag=4x5N] run tag @e[tag=4x5N] remove nonStairRoom
execute if entity @e[tag=room,scores={RNG=0},tag=4x5E] run tag @e[tag=4x5E] remove nonStairRoom
execute if entity @e[tag=room,scores={RNG=0},tag=5x5] run tag @e[tag=5x5] remove nonStairRoom
scoreboard objectives remove RNG
#
execute at @e[tag=mostRecent] run tp @e[tag=room,tag=!nonStairRoom] ~ ~ ~
kill @e[tag=mostRecent]
execute at @e[tag=room,tag=!nonStairRoom] run execute positioned ~-16 ~ ~-16 run tag @e[tag=cloudGrid,tag=validRoom,dx=32,dz=32] remove validRoom
#
#Teleport the remaining rooms(after random amount were killed and teleported to stair room) to a random position in the map, and remove valid rooms around it
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=validRoom,limit=1,sort=random] RNG 0
execute at @e[tag=validRoom,scores={RNG=0}] run tp @e[tag=nonStairRoom,tag=3x3] ~ ~ ~
execute at @e[tag=3x3,tag=nonStairRoom] run execute positioned ~-16 ~ ~-16 run tag @e[tag=cloudGrid,tag=validRoom,dx=32,dz=32] remove validRoom
scoreboard objectives remove RNG
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=validRoom,limit=1,sort=random] RNG 0
execute at @e[tag=validRoom,scores={RNG=0}] run tp @e[tag=nonStairRoom,tag=3x4N] ~ ~ ~
execute at @e[tag=3x4N,tag=nonStairRoom] run execute positioned ~-16 ~ ~-16 run tag @e[tag=cloudGrid,tag=validRoom,dx=32,dz=32] remove validRoom
scoreboard objectives remove RNG
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=validRoom,limit=1,sort=random] RNG 0
execute at @e[tag=validRoom,scores={RNG=0}] run tp @e[tag=nonStairRoom,tag=3x4E] ~ ~ ~
execute at @e[tag=3x4E,tag=nonStairRoom] run execute positioned ~-16 ~ ~-16 run tag @e[tag=cloudGrid,tag=validRoom,dx=32,dz=32] remove validRoom
scoreboard objectives remove RNG
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=validRoom,limit=1,sort=random] RNG 0
execute at @e[tag=validRoom,scores={RNG=0}] run tp @e[tag=nonStairRoom,tag=3x5N] ~ ~ ~
execute at @e[tag=3x5N,tag=nonStairRoom] run execute positioned ~-16 ~ ~-16 run tag @e[tag=cloudGrid,tag=validRoom,dx=32,dz=32] remove validRoom
scoreboard objectives remove RNG
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=validRoom,limit=1,sort=random] RNG 0
execute at @e[tag=validRoom,scores={RNG=0}] run tp @e[tag=nonStairRoom,tag=3x5E] ~ ~ ~
execute at @e[tag=3x5E,tag=nonStairRoom] run execute positioned ~-16 ~ ~-16 run tag @e[tag=cloudGrid,tag=validRoom,dx=32,dz=32] remove validRoom
scoreboard objectives remove RNG
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=validRoom,limit=1,sort=random] RNG 0
execute at @e[tag=validRoom,scores={RNG=0}] run tp @e[tag=nonStairRoom,tag=4x4] ~ ~ ~
execute at @e[tag=4x4,tag=nonStairRoom] run execute positioned ~-16 ~ ~-16 run tag @e[tag=cloudGrid,tag=validRoom,dx=32,dz=32] remove validRoom
scoreboard objectives remove RNG
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=validRoom,limit=1,sort=random] RNG 0
execute at @e[tag=validRoom,scores={RNG=0}] run tp @e[tag=nonStairRoom,tag=4x5N] ~ ~ ~
execute at @e[tag=4x5N,tag=nonStairRoom] run execute positioned ~-16 ~ ~-16 run tag @e[tag=cloudGrid,tag=validRoom,dx=32,dz=32] remove validRoom
scoreboard objectives remove RNG
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=validRoom,limit=1,sort=random] RNG 0
execute at @e[tag=validRoom,scores={RNG=0}] run tp @e[tag=nonStairRoom,tag=4x5E] ~ ~ ~
execute at @e[tag=4x5E,tag=nonStairRoom] run execute positioned ~-16 ~ ~-16 run tag @e[tag=cloudGrid,tag=validRoom,dx=32,dz=32] remove validRoom
scoreboard objectives remove RNG
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=validRoom,limit=1,sort=random] RNG 0
execute at @e[tag=validRoom,scores={RNG=0}] run tp @e[tag=nonStairRoom,tag=5x5] ~ ~ ~
execute at @e[tag=5x5,tag=nonStairRoom] run execute positioned ~-16 ~ ~-16 run tag @e[tag=cloudGrid,tag=validRoom,dx=32,dz=32] remove validRoom
scoreboard objectives remove RNG
#
