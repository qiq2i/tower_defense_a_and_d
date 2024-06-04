##获取数据
$data modify storage qiq2i_map2 tower_data_temp.damage set from storage qiq2i_map2 tower[{num:$(num)}].level.$(level).damage
$data modify storage qiq2i_map2 tower_data_temp.range set from storage qiq2i_map2 tower[{num:$(num)}].level.$(level).range

##速度换算公式 y=5/x，从 1次/秒 换算成 5倍的1x0.2秒/次，并多乘100倍，因为记分板数据类型为Int
scoreboard players set #qiq2i_map2.tower_data_temp.1 qiq2i_1 500
scoreboard players set #qiq2i_map2.tower_data_temp.2 qiq2i_1 0
$execute store result score #qiq2i_map2.tower_data_temp.2 qiq2i_1 run data get storage qiq2i_map2 tower[{num:$(num)}].level.$(level).speed

scoreboard players operation #qiq2i_map2.tower_data_temp.1 qiq2i_1 /= #qiq2i_map2.tower_data_temp.2 qiq2i_1
execute store result storage qiq2i_map2 tower_data_temp.speed long 1 run scoreboard players get #qiq2i_map2.tower_data_temp.1 qiq2i_1

function qiq2i_map2:tower_defense/tower/3 with storage qiq2i_map2 tower_data_temp