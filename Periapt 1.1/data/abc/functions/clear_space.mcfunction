execute at @e[tag=clearSpace] run fill ~ ~ ~ ~127 ~ ~127 air
execute at @e[tag=clearSpace] run tp @e[tag=clearSpace] ~ ~1 ~
scoreboard players add @e[tag=clearSpace] clearY 1
execute unless entity @e[tag=clearSpace,scores={clearY=256}] run function abc:clear_space
