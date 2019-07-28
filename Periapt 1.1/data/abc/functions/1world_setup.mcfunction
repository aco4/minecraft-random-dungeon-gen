give @a minecraft:ghast_spawn_egg{display:{Name:"{\"text\":\"Dungeon Corner\",\"color\":\"gold\",\"bold\":false}",Lore:["{\"text\":\"Place this at the Northwest corner of your dungeon\"}"]},EntityTag:{id:"minecraft:area_effect_cloud",Radius:0f,RadiusPerTick:0f,Duration:2147483647,Age:0,WaitTime:0,Tags:["worldSetup"]}} 1
gamerule commandBlockOutput false
gamerule doMobSpawning false
gamerule naturalRegeneration false
#path detection
fill -7 1 -7 7 1 7 minecraft:stone_bricks
fill -7 1 -7 -5 1 -5 air
fill 7 1 -7 5 1 -5 air
fill 7 1 7 5 1 5 air
fill -7 1 7 -5 1 5 air
fill -1 1 -1 1 1 1 air
#north stairs (for clone)
fill -2 57 0 -1 57 0 minecraft:stone_stairs[facing=north,half=bottom]
fill -2 58 -1 -1 58 -1 minecraft:stone_stairs[facing=north,half=bottom]
fill -2 59 -2 -1 59 -2 minecraft:stone_stairs[facing=north,half=bottom]
fill -2 60 -3 -1 60 -3 minecraft:stone_stairs[facing=north,half=bottom]
fill -2 61 -4 -1 61 -4 minecraft:stone_stairs[facing=north,half=bottom]
#
fill -2 57 -1 -1 57 -1 minecraft:stone_stairs[facing=south,half=top]
fill -2 58 -2 -1 58 -2 minecraft:stone_stairs[facing=south,half=top]
fill -2 59 -3 -1 59 -3 minecraft:stone_stairs[facing=south,half=top]
fill -2 60 -4 -1 60 -4 minecraft:stone
#east stairs (for clone)
fill 0 57 -2 0 57 -1 stone_stairs[facing=east,half=bottom]
fill 1 58 -2 1 58 -1 stone_stairs[facing=east,half=bottom]
fill 2 59 -2 2 59 -1 stone_stairs[facing=east,half=bottom]
fill 3 60 -2 3 60 -1 stone_stairs[facing=east,half=bottom]
fill 4 61 -2 4 61 -1 stone_stairs[facing=east,half=bottom]
#
fill 1 57 -2 1 57 -1 stone_stairs[facing=west,half=top]
fill 2 58 -2 2 58 -1 stone_stairs[facing=west,half=top]
fill 3 59 -2 3 59 -1 stone_stairs[facing=west,half=top]
fill 4 60 -2 4 60 -1 stone
#south stairs (for clone)
fill 1 57 0 2 57 0 minecraft:stone_stairs[facing=south,half=bottom]
fill 1 58 1 2 58 1 minecraft:stone_stairs[facing=south,half=bottom]
fill 1 59 2 2 59 2 minecraft:stone_stairs[facing=south,half=bottom]
fill 1 60 3 2 60 3 minecraft:stone_stairs[facing=south,half=bottom]
fill 1 61 4 2 61 4 minecraft:stone_stairs[facing=south,half=bottom]
#
fill 1 57 1 2 57 1 minecraft:stone_stairs[facing=north,half=top]
fill 1 58 2 2 58 2 minecraft:stone_stairs[facing=north,half=top]
fill 1 59 3 2 59 3 minecraft:stone_stairs[facing=north,half=top]
fill 1 60 4 2 60 4 minecraft:stone
#west stairs (for clone)
fill 0 57 1 0 57 2 minecraft:stone_stairs[facing=west,half=bottom]
fill -1 58 1 -1 58 2 minecraft:stone_stairs[facing=west,half=bottom]
fill -2 59 1 -2 59 2 minecraft:stone_stairs[facing=west,half=bottom]
fill -3 60 1 -3 60 2 minecraft:stone_stairs[facing=west,half=bottom]
fill -4 61 1 -4 61 2 minecraft:stone_stairs[facing=west,half=bottom]
#
fill -1 57 1 -1 57 2 minecraft:stone_stairs[facing=east,half=top]
fill -2 58 1 -2 58 2 minecraft:stone_stairs[facing=east,half=top]
fill -3 59 1 -3 59 2 minecraft:stone_stairs[facing=east,half=top]
fill -4 60 1 -4 60 2 minecraft:stone
setblock 0 2 0 minecraft:repeating_command_block[facing=up]{Command:"execute if entity @e[tag=mazeGenerator] run function abc:4dungeon_path",auto:1b} replace
setblock 0 3 0 minecraft:chain_command_block[facing=up]{Command:"execute if entity @e[tag=mazeGenerator] run function abc:4dungeon_path",auto:1b} replace
