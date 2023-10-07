$execute at @s if score @s meow_click matches 1.. run playsound minecraft:paint_meow neutral @a ~ ~ ~ 16 $(meow_pitch) 1
scoreboard players set @s bark_click 0
scoreboard players set @s meow_click 0