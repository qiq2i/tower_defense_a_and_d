scoreboard players enable @a qiq2i_map2.ui
##玩家打开UI
execute as @a if score @s qiq2i_map2.ui matches 1.. at @s run function qiq2i_map2:ui/start
execute as @a if score @s qiq2i_map2.ui matches 1.. run scoreboard players reset @s qiq2i_map2.ui

##主要标记执行
execute as @e[type=marker,tag=qiq2i_map2.ui.main] at @s run function qiq2i_map2:ui/marker/main with entity @s data

##方块展示实体qiq2i_map2.ui.ride
execute as @e[type=block_display,tag=qiq2i_map2.ui.ride] at @s unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:block_display"}}},distance=..2] on passengers run kill @s[type=!player]
execute as @e[type=block_display,tag=qiq2i_map2.ui.ride] at @s unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:block_display"}}},distance=..2] run kill @s