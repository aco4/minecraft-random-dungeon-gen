execute as @e[tag=nOffset] run execute at @s run clone -2 57 -4 -1 61 0 ~ ~ ~
execute as @e[tag=eOffset] run execute at @s run clone 0 57 -2 4 61 -1 ~ ~ ~ 
execute as @e[tag=sOffset] run execute at @s run clone 1 57 0 2 61 4 ~ ~ ~
execute as @e[tag=sOffset] run execute at @s run clone -4 57 1 0 61 2 ~ ~ ~
execute at @e[tag=dungeonNWCorner] run fill ~ ~ ~ ~124 ~ ~124 sandstone
kill @e[tag=dungeonNWCorner]
kill @e[tag=stairMarker]
kill @e[tag=mostRecent]
