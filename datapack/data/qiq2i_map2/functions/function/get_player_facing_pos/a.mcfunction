##检测
execute unless block ~ ~ ~ air run function qiq2i_map2:function/get_player_facing_pos/b
execute unless block ~ ~ ~ air run return 1

scoreboard players set #qiq2i_map2.get_player_facing_pos.1 qiq2i_1 255
execute if score #qiq2i_map2.get_player_facing_pos.1 qiq2i_1 matches ..255 positioned ^ ^ ^0.9 run function qiq2i_map2:function/get_player_facing_pos/a