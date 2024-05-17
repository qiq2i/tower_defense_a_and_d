##时间
scoreboard players add #qiq2i_map2.game_time qiq2i_map2 1

##时间轴
execute if score #qiq2i_map2.game_time qiq2i_map2 matches 1 run function qiq2i_map2:game_state/start/game_time/1

##失败条件判据
execute as @e[type=marker,tag=qiq2i_map2.player] if data entity @s data{state:"play"} if score @s qiq2i_map2.health matches ..0 run function qiq2i_map2:game_state/start/player_fail with entity @s data