##检测
execute unless block ~ ~ ~ air run function qiq2i_map2:function/get_player_facing_pos/b
execute unless block ~ ~ ~ air run return 1

scoreboard players remove #qiq2i_map2.get_player_facing_pos.1 qiq2i_1 1
execute if score #qiq2i_map2.get_player_facing_pos.1 qiq2i_1 matches 0.. positioned ^ ^ ^0.2 run function qiq2i_map2:function/get_player_facing_pos/a