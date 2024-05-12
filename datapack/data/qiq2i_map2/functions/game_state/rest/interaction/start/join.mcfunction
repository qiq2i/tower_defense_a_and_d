#qiq2i_marker在qiq2i_1的分 作为 加入人数的局部变量
scoreboard players set #qiq2i_marker qiq2i_1 0

##初始化参与人员列表
data modify storage qiq2i_map2 player set value []

##玩家
execute as @a run function qiq2i_map2:game_state/rest/interaction/start/join/player

##测试村民
execute as @e[type=villager] run function qiq2i_map2:game_state/rest/interaction/start/join/villager