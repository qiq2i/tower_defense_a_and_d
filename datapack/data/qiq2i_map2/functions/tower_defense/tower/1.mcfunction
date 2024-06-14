##防御塔本体执行

##获取数据
data remove storage qiq2i_map2 tower_data_temp
execute store result storage qiq2i_map2 tower_data_temp.num long 1 run scoreboard players get @s qiq2i_map2.tower.id
execute store result storage qiq2i_map2 tower_data_temp.level long 1 run scoreboard players get @s qiq2i_map2.tower.level
execute store result storage qiq2i_map2 tower_data_temp.id long 1 run scoreboard players get @s qiq2i_map2.tower.player

##减速与失灵
execute if score @s qiq2i_map2.tower.js matches 1.. run scoreboard players remove @s qiq2i_map2.tower.js 1
execute if score @s qiq2i_map2.tower.sl matches 1.. run scoreboard players remove @s qiq2i_map2.tower.sl 1
execute if score @s qiq2i_map2.tower.js matches 20.. at @s positioned ~ ~2 ~ unless entity @e[distance=..1,limit=1,type=block_display,nbt={block_state:{Name:"minecraft:cobweb"}},tag=qiq2i_map2.block_display.1] run function qiq2i_map2:function/block_display/input_block {block:"minecraft:cobweb"}
execute if score @s qiq2i_map2.tower.sl matches 20.. at @s positioned ~ ~2 ~ unless entity @e[distance=..1,limit=1,type=block_display,nbt={block_state:{Name:"minecraft:glass"}},tag=qiq2i_map2.block_display.1] run function qiq2i_map2:function/block_display/input_block {block:"minecraft:glass"}

execute unless score @s qiq2i_map2.tower.sl matches 1.. run function qiq2i_map2:tower_defense/tower/2 with storage qiq2i_map2 tower_data_temp