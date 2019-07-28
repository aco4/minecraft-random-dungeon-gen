team remove leftClickDetect
team add leftClickDetect
team join leftClickDetect @a
team modify leftClickDetect collisionRule never
team modify leftClickDetect seeFriendlyInvisibles false
execute at @e[tag=dungeonNWCorner] run summon minecraft:slime ~ ~ ~ {Silent:1b,HurtTime:0,NoAI:1b,CanPickUpLoot:0b,AbsorptionAmount:100000f,Size:2,Tags:["leftClickSlime"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}]}
