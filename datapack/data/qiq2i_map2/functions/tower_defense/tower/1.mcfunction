##防御塔本体执行

##获取数据
data remove storage qiq2i_map2 tower_data_temp
execute store result storage qiq2i_map2 tower_data_temp.num long 1 run scoreboard players get @s qiq2i_map2.tower.id
execute store result storage qiq2i_map2 tower_data_temp.level long 1 run scoreboard players get @s qiq2i_map2.tower.level
execute store result storage qiq2i_map2 tower_data_temp.id long 1 run scoreboard players get @s qiq2i_map2.tower.player

function qiq2i_map2:tower_defense/tower/2 with storage qiq2i_map2 tower_data_temp