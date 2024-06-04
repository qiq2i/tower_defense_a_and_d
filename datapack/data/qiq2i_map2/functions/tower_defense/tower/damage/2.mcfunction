##对应玩家编号的存储标记加钱
scoreboard players operation @e[type=marker,tag=qiq2i_map2.player.1] qiq2i_map2.money += @s qiq2i_tower.mob.money

##金币显示
execute store result storage qiq2i_map2 tower_data_temp.display long 1 run scoreboard players get @s qiq2i_tower.mob.money
execute at @s positioned ~ ~1 ~ run function qiq2i_map2:tower_defense/tower/damage/3 with storage qiq2i_map2 tower_data_temp

kill @s