$execute as @e[type=marker,tag=qiq2i_map2.ui] if data entity @s data{uuid:$(uuid)} run kill @s

kill @e[type=interaction,tag=qiq2i_map2.ui.interaction,distance=..2]
kill @e[type=minecraft:text_display,tag=qiq2i_map2.ui.text,sort=nearest,distance=..2]
$execute as @e[type=item_display,tag=qiq2i_map2.ui] if data entity @s item.components.minecraft:custom_data{uuid:$(uuid)} run kill @s

playsound block.chest.close ambient @s