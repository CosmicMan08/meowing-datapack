#Turn the placeholder eggs for crafting into the real item
execute as @a[nbt={Inventory:[{id:"minecraft:cat_spawn_egg"}]}] run function meowy:give_meow
execute as @a[nbt={Inventory:[{id:"minecraft:wolf_spawn_egg"}]}] run function meowy:give_bark

#Store the player's head pitch
execute as @a store result score @s meow_pitch run data get entity @s Rotation[1] -10000
scoreboard players operation @a meow_pitch /= @a the_number_ninety
scoreboard players add @a meow_pitch 10000
execute as @a store result storage meow:pitch meow_pitch float 0.0001 run scoreboard players get @s meow_pitch
#say meow_pitch

#run Test if you have a paint cat
#execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3163163}}}] run function meowy:meow {pitch:scoreboard players get @s meow_pitch}
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:3163163}}}] run function meowy:meow with storage meow:pitch

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2018508}}}] run function meowy:bark with storage meow:pitch