#NORTH:Offset -3x
execute if entity @e[tag=stairOffsetRNG,tag=-3x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~-3 ~ ~-2 {Duration:2147483647,Tags:["nOffset","stairMarker"]}
execute if entity @e[tag=stairOffsetRNG,tag=-3x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~-3 ~5 ~-3 {Duration:2147483647,Tags:["mostRecent","roomAboveMarker"]}
#NORTH:Offset -2x
execute if entity @e[tag=stairOffsetRNG,tag=-2x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~-2 ~ ~-2 {Duration:2147483647,Tags:["nOffset","stairMarker"]}
execute if entity @e[tag=stairOffsetRNG,tag=-2x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~-3 ~5 ~-3 {Duration:2147483647,Tags:["mostRecent","roomAboveMarker"]}
#NORTH:Offset -1x
execute if entity @e[tag=stairOffsetRNG,tag=-1x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~-1 ~ ~-2 {Duration:2147483647,Tags:["nOffset","stairMarker"]}
execute if entity @e[tag=stairOffsetRNG,tag=-1x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~ ~5 ~-3 {Duration:2147483647,Tags:["mostRecent","roomAboveMarker"]}
#NORTH:Offset +1x
execute if entity @e[tag=stairOffsetRNG,tag=+1x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~ ~ ~-2 {Duration:2147483647,Tags:["nOffset","stairMarker"]}
execute if entity @e[tag=stairOffsetRNG,tag=+1x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~ ~5 ~-3 {Duration:2147483647,Tags:["mostRecent","roomAboveMarker"]}
#NORTH:Offset +2x
execute if entity @e[tag=stairOffsetRNG,tag=+2x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~1 ~ ~-2 {Duration:2147483647,Tags:["nOffset","stairMarker"]}
execute if entity @e[tag=stairOffsetRNG,tag=+2x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~3 ~5 ~-3 {Duration:2147483647,Tags:["mostRecent","roomAboveMarker"]}
#NORTH:Offset +3x
execute if entity @e[tag=stairOffsetRNG,tag=+3x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~2 ~ ~-2 {Duration:2147483647,Tags:["nOffset","stairMarker"]}
execute if entity @e[tag=stairOffsetRNG,tag=+3x] run execute at @e[tag=stairsUpRoom] run summon minecraft:area_effect_cloud ~3 ~5 ~-3 {Duration:2147483647,Tags:["mostRecent","roomAboveMarker"]}
