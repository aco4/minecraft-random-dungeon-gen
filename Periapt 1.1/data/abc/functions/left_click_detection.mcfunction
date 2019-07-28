execute at @a run tp @e[tag=leftClickSlime] ^ ^1 ^.5
execute if entity @a[nbt={SelectedItem:{id:"minecraft:stick",Count:1b}}] run execute as @e[tag=leftClickSlime,nbt={HurtTime:10s}] run function abc:wand
