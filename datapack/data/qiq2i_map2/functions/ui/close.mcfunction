$execute as @e[type=marker,tag=qiq2i_map2.ui] if data entity @s data{uuid:$(uuid)} run kill @s

execute on vehicle on passengers as @s[type=player] run ride @s dismount

execute on vehicle on passengers run kill @s[type=!player]
execute on vehicle run kill @s[type=!player]

#kill @e[type=interaction,tag=qiq2i_map2.ui.interaction,distance=..2]
#kill @e[type=minecraft:text_display,tag=qiq2i_map2.ui.text,sort=nearest,distance=..2]
#$execute as @e[type=item_display,tag=qiq2i_map2.ui] if data entity @s item.components.minecraft:custom_data{uuid:$(uuid)} run kill @s

playsound block.chest.close ambient @s