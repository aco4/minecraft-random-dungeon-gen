#create the floor's outer bedrock walls
execute at @e[tag=dungeonNWCorner] run fill ~ ~ ~ ~124 ~ ~124 minecraft:bedrock
execute at @e[tag=dungeonNWCorner] run fill ~ ~1 ~ ~124 ~1 ~124 minecraft:bedrock
execute at @e[tag=dungeonNWCorner] run fill ~ ~2 ~ ~124 ~2 ~124 minecraft:bedrock
execute at @e[tag=dungeonNWCorner] run fill ~ ~3 ~ ~124 ~3 ~124 minecraft:bedrock
execute at @e[tag=dungeonNWCorner] run fill ~ ~4 ~ ~124 ~4 ~124 minecraft:bedrock
#create the floor's stone floor and stone ceiling
execute at @e[tag=dungeonNWCorner] run fill ~1 ~ ~1 ~123 ~ ~123 minecraft:stone 
execute at @e[tag=dungeonNWCorner] run fill ~1 ~4 ~1 ~123 ~4 ~123 minecraft:stone 
#fill in the floor with stone_bricks
execute at @e[tag=dungeonNWCorner] run fill ~1 ~1 ~1 ~123 ~1 ~123 minecraft:stone_bricks
execute at @e[tag=dungeonNWCorner] run fill ~1 ~2 ~1 ~123 ~2 ~123 minecraft:stone_bricks
execute at @e[tag=dungeonNWCorner] run fill ~1 ~3 ~1 ~123 ~3 ~123 minecraft:stone_bricks
#Summon first cloud row 40x1
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~2 ~1 ~2 {Duration:999999,Tags:["cloudGrid","invalidRoom","row0"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~5 ~1 ~2 {Duration:999999,Tags:["cloudGrid","invalidRoom","cloud1","row0"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~8 ~1 ~2 {Duration:999999,Tags:["cloudGrid","invalidRoom","cloud1","row0"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~11 ~1 ~2 {Duration:999999,Tags:["cloudGrid","invalidRoom","cloud1","row0"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~14 ~1 ~2 {Duration:999999,Tags:["cloudGrid","invalidRoom","cloud1","row0"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~17 ~1 ~2 {Duration:999999,Tags:["cloudGrid","invalidRoom","cloud1","row0"]}
#
execute at @e[tag=cloud1] run summon minecraft:area_effect_cloud ~15 ~ ~ {Duration:999999,Tags:["cloudGrid","invalidRoom","cloud1","row0"]}
execute at @e[tag=cloud1] run summon minecraft:area_effect_cloud ~30 ~ ~ {Duration:999999,Tags:["cloudGrid","invalidRoom","cloud1","row0"]}
execute at @e[tag=cloud1] run summon minecraft:area_effect_cloud ~60 ~ ~ {Duration:999999,Tags:["cloudGrid","invalidRoom","cloud1","row0"]}
#Summon cloud grid 40x40
execute at @e[tag=row0] run summon minecraft:area_effect_cloud ~ ~ ~3 {Duration:999999,Tags:["cloudGrid","invalidRoom","row1"]}
execute at @e[tag=row0] run summon minecraft:area_effect_cloud ~ ~ ~6 {Duration:999999,Tags:["cloudGrid","invalidRoom","row1"]}
execute at @e[tag=row0] run summon minecraft:area_effect_cloud ~ ~ ~9 {Duration:999999,Tags:["cloudGrid","invalidRoom","row1"]}
execute at @e[tag=row0] run summon minecraft:area_effect_cloud ~ ~ ~12 {Duration:999999,Tags:["cloudGrid","invalidRoom","row1"]}
execute at @e[tag=row0] run summon minecraft:area_effect_cloud ~ ~ ~15 {Duration:999999,Tags:["cloudGrid","invalidRoom","row1"]}
#
execute at @e[tag=row1] run summon minecraft:area_effect_cloud ~ ~ ~15 {Duration:999999,Tags:["cloudGrid","invalidRoom","row1"]}
execute at @e[tag=row1] run summon minecraft:area_effect_cloud ~ ~ ~30 {Duration:999999,Tags:["cloudGrid","invalidRoom","row1"]}
execute at @e[tag=row1] run summon minecraft:area_effect_cloud ~ ~ ~60 {Duration:999999,Tags:["cloudGrid","invalidRoom","row1"]}
#Assign validRoom or invalidRoom (outer edge invalid, inside is valid)
execute at @e[tag=dungeonNWCorner] run execute positioned ~10 ~1 ~10 run tag @e[tag=invalidRoom,dx=103,dz=103] add validRoom
execute at @e[tag=dungeonNWCorner] run execute positioned ~10 ~1 ~10 run tag @e[tag=invalidRoom,dx=103,dz=103] remove invalidRoom
#Summon random room markers
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["room","structurePotential","nonStairRoom"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["room","structurePotential","nonStairRoom"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["room","structurePotential","nonStairRoom"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["room","structurePotential","nonStairRoom"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["room","structurePotential","nonStairRoom"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["room","structurePotential","nonStairRoom"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["room","structurePotential","nonStairRoom"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["room","structurePotential","nonStairRoom"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["room","structurePotential","nonStairRoom"]}
#Summon random room deletion markers
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["KRNG","1"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["KRNG","2"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["KRNG","3"]}
execute at @e[tag=dungeonNWCorner] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["KRNG","4"]}
#Kill a random amount of rooms
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=KRNG,limit=1,sort=random] RNG 0
execute if entity @e[tag=KRNG,scores={RNG=0},tag=1] run kill @e[tag=room,limit=1,sort=random]
execute if entity @e[tag=KRNG,scores={RNG=0},tag=2] run kill @e[tag=room,limit=2,sort=random]
execute if entity @e[tag=KRNG,scores={RNG=0},tag=3] run kill @e[tag=room,limit=3,sort=random]
execute if entity @e[tag=KRNG,scores={RNG=0},tag=4] run kill @e[tag=room,limit=4,sort=random]
scoreboard objectives remove RNG
kill @e[tag=KRNG]
#
function abc:teleport_rooms
#
execute at @e[tag=3x3] run fill ~4 ~2 ~4 ~-4 ~ ~-4 air
execute at @e[tag=3x4N] run fill ~4 ~2 ~4 ~-4 ~ ~-7 air
execute at @e[tag=3x4E] run fill ~4 ~2 ~4 ~-7 ~ ~-4 air
execute at @e[tag=3x5N] run fill ~4 ~2 ~7 ~-4 ~ ~-7 air
execute at @e[tag=3x5E] run fill ~7 ~2 ~4 ~-7 ~ ~-4 air
execute at @e[tag=4x4] run fill ~7 ~2 ~7 ~-4 ~ ~-4 air
execute at @e[tag=4x5N] run fill ~7 ~2 ~7 ~-4 ~ ~-7 air
execute at @e[tag=4x5E] run fill ~7 ~2 ~7 ~-7 ~ ~-4 air
execute at @e[tag=5x5] run fill ~7 ~2 ~7 ~-7 ~ ~-7 air
#Add lanterns to the rooms
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
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ lantern[hanging=true] replace air
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ lantern[hanging=true] replace air
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ lantern[hanging=true] replace air
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
execute at @e[tag=block_variator] run fill ~ ~-2 ~ ~ ~-2 ~ lantern[hanging=true] replace air
execute at @e[tag=dungeonNWCorner] run spreadplayers ~62 ~62 1 61 false @e[tag=block_variator]
#
execute at @e[tag=block_variator,sort=random,limit=16] run fill ~ ~-4 ~ ~ ~-4 ~ chest[facing=north] replace air
execute at @e[tag=block_variator,sort=random,limit=16] run fill ~ ~-4 ~ ~ ~-4 ~ chest[facing=east] replace air
execute at @e[tag=block_variator,sort=random,limit=16] run fill ~ ~-4 ~ ~ ~-4 ~ chest[facing=south] replace air
execute at @e[tag=block_variator,sort=random,limit=16] run fill ~ ~-4 ~ ~ ~-4 ~ chest[facing=west] replace air
kill @e[tag=block_variator]
#
scoreboard objectives add RNG dummy
scoreboard players add @e[tag=validRoom,limit=1,sort=random] RNG 0
execute at @e[tag=validRoom,scores={RNG=0}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["mazeGenerator"]}
execute at @e[tag=mazeGenerator] run fill ~1 ~2 ~1 ~-1 ~ ~-1 air
scoreboard objectives remove RNG
