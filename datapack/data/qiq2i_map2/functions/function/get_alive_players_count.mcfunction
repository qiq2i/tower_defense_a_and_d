####获取存活玩家数

##局部变量
scoreboard players set #qiq2i_map2.get_alive_players_count.1 qiq2i_1 0
data remove storage qiq2i_map2 marker

##检测，及+1
execute as @e[tag=qiq2i_map2.player] if data entity @s data{state:"play"} run scoreboard players add #qiq2i_map2.get_alive_players_count.1 qiq2i_1 1

##返回
return run scoreboard players get #qiq2i_map2.get_alive_players_count.1 qiq2i_1