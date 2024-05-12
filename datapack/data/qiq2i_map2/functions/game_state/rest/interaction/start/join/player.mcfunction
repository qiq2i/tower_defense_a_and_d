scoreboard players add #qiq2i_marker qiq2i_1 1

##局部标记
tag @e[tag=qiq2i_marker_1] remove qiq2i_marker_1
tag @s add qiq2i_marker_1

##局部存储-编号id
execute store result storage qiq2i_map2 marker.id byte 1 run scoreboard players get #qiq2i_marker qiq2i_1

##人数限制 打断施法
execute unless score #qiq2i_marker qiq2i_1 matches ..4 run return fail

##生成标记实体-用于存储
execute summon marker run function qiq2i_map2:game_state/rest/interaction/start/join/summoning_marker with storage qiq2i_map2 marker

##发消息
tellraw @a [{"selector":"@s"},{"text":" 加入游戏，编号为"},{"score":{"name":"#qiq2i_marker","objective":"qiq2i_1"}}]

##储存进列表
data modify storage qiq2i_map2 player append from storage qiq2i_map2 marker

##局部标记清理
tag @e[tag=qiq2i_marker_1] remove qiq2i_marker_1