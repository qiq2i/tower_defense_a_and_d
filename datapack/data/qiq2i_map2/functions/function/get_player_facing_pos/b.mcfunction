data remove storage qiq2i_map2 select_point

kill @e[type=marker,tag=qiq2i_map2.get_player_facing_pos.1]
execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["qiq2i_map2.get_player_facing_pos.1"]}

execute store result storage qiq2i_map2 select_point.x float 1 run data get entity @e[type=marker,tag=qiq2i_map2.get_player_facing_pos.1,limit=1] Pos[0]
execute store result storage qiq2i_map2 select_point.y float 1 run data get entity @e[type=marker,tag=qiq2i_map2.get_player_facing_pos.1,limit=1] Pos[1]
execute store result storage qiq2i_map2 select_point.z float 1 run data get entity @e[type=marker,tag=qiq2i_map2.get_player_facing_pos.1,limit=1] Pos[2]

kill @e[type=marker,tag=qiq2i_map2.get_player_facing_pos.1]