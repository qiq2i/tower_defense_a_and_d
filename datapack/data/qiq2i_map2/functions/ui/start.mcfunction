##trigger重置
execute if entity @e[type=marker,tag=qiq2i_map2.ui.main,distance=..8] run return run tellraw @s [{"text":"§c附近有玩家打开UI"}]

####局部存储玩家数据
data remove storage qiq2i_map2 marker 

##存储玩家数据
data modify storage qiq2i_map2 marker.Rotation set from entity @s Rotation
data modify storage qiq2i_map2 marker.uuid set from entity @s UUID

##获取指向的坐标qiq2i_map2 select_point{x,y,z}
execute if score @s qiq2i_map2.ui matches 2..3 run function qiq2i_map2:function/get_player_facing_pos
execute if score @s qiq2i_map2.ui matches 2..3 run function qiq2i_map2:ui/start/tower_if with storage qiq2i_map2 select_point
execute if score @s qiq2i_map2.ui matches 2..3 run data modify storage qiq2i_map2 marker.facing_pos_x set from storage qiq2i_map2 select_point.x
execute if score @s qiq2i_map2.ui matches 2..3 run data modify storage qiq2i_map2 marker.facing_pos_y set from storage qiq2i_map2 select_point.y
execute if score @s qiq2i_map2.ui matches 2..3 run data modify storage qiq2i_map2 marker.facing_pos_z set from storage qiq2i_map2 select_point.z

execute if score @s qiq2i_map2.ui matches 0 run return run tellraw @s [{"text":"§c该点不能处理防御塔！"}]

##局部tag清除
tag @e[tag=qiq2i_map2.ui.temp.start] remove qiq2i_map2.ui.temp.start

##方块展示实体，用于骑乘
summon block_display ~ ~0.625 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-1.0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:glass"},Tags:["qiq2i_map2.ui.ride","qiq2i_map2.ui.temp.start","qiq2i_map2.ui"]}

##玩家 骑乘 上展示实体
ride @s mount @e[type=block_display,limit=1,sort=nearest,tag=qiq2i_map2.ui.ride,tag=qiq2i_map2.ui.temp.start]

##主要标记
execute summon marker run function qiq2i_map2:ui/start/ui.main

##文本实体
summon text_display ~ ~ ~ {view_range:1f,shadow_strength:1f,width:0.6f,height:1.5f,billboard:"center",alignment:"left",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.0f,1.0f,-2.8f],scale:[0.6f,0.6f,0.6f]},background:-16777216,Tags:["qiq2i_map2.ui.text","qiq2i_map2.ui.temp.start","qiq2i_map2.ui"]}

##交互实体
summon interaction ~ ~ ~ {width:1f,height:2f,Tags:["qiq2i_map2.ui.interaction","qiq2i_map2.ui.temp.start","qiq2i_map2.ui"]}

##令以上生成的 实体 骑乘上方块展示实体
execute as @e[type=!block_display,tag=qiq2i_map2.ui.temp.start] run ride @s mount @e[type=block_display,limit=1,sort=nearest,tag=qiq2i_map2.ui.ride,tag=qiq2i_map2.ui.temp.start]

####打开界面
execute if score @s qiq2i_map2.ui matches 1 on vehicle on passengers as @s[tag=qiq2i_map2.ui.main,type=marker] run function qiq2i_map2:ui/pages/summoning/open with entity @s data
execute if score @s qiq2i_map2.ui matches 2 on vehicle on passengers as @s[tag=qiq2i_map2.ui.main,type=marker] run function qiq2i_map2:ui/pages/tower_build/open with entity @s data
execute if score @s qiq2i_map2.ui matches 3 on vehicle on passengers as @s[tag=qiq2i_map2.ui.main,type=marker] run function qiq2i_map2:ui/pages/tower_updata/open with entity @s data

##选点特效
execute if score @s qiq2i_map2.ui matches 0 run function qiq2i_map2:function/particles/select_point with storage qiq2i_map2 marker
execute if score @s qiq2i_map2.ui matches 2 run function qiq2i_map2:function/particles/select_point with storage qiq2i_map2 marker
execute if score @s qiq2i_map2.ui matches 3 run function qiq2i_map2:function/particles/tower_uuid with storage qiq2i_map2 marker

##声音
playsound block.chest.open ambient @s

##局部tag清除
tag @e[tag=qiq2i_map2.ui.temp.start] remove qiq2i_map2.ui.temp.start