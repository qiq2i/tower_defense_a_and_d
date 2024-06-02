##获取玩家指向的方块（空气除外）的坐标，存至qiq2i_map2 select_point

##最远距离
scoreboard players set #qiq2i_map2.get_player_facing_pos.1 qiq2i_1 255

execute at @s positioned ~ ~1.625 ~ run function qiq2i_map2:function/get_player_facing_pos/a