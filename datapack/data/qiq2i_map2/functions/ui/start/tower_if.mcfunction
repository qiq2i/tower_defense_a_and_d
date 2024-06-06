####$(x)、$(y)、$(z)为坐标
data modify storage qiq2i_map2 marker.tower_uuid set from entity @e[distance=..1,tag=qiq2i_map2.tower,limit=1] UUID

data modify storage qiq2i_map2 marker.facing_pos_x set from storage qiq2i_map2 select_point.x
data modify storage qiq2i_map2 marker.facing_pos_y set from storage qiq2i_map2 select_point.y
data modify storage qiq2i_map2 marker.facing_pos_z set from storage qiq2i_map2 select_point.z

scoreboard players set @s qiq2i_map2.ui 2
##若该处方块不是指定方块
$execute positioned $(x) $(y) $(z) unless block ~ ~ ~ lime_concrete run scoreboard players set @s qiq2i_map2.ui 3

##若该处没有防御塔
$execute if score @s qiq2i_map2.ui matches 3 positioned $(x) $(y) $(z) positioned ~ ~1 ~ unless entity @e[distance=..2,tag=qiq2i_map2.tower] run scoreboard players set @s qiq2i_map2.ui 0

##若该处已有防御塔
$execute positioned $(x) $(y) $(z) positioned ~ ~1 ~ if entity @e[distance=..2,tag=qiq2i_map2.tower] run scoreboard players set @s qiq2i_map2.ui 3



$execute positioned $(x) $(y) $(z) positioned ~ ~1 ~ run data modify storage qiq2i_map2 marker.tower_uuid set from entity @e[distance=..2,tag=qiq2i_map2.tower,limit=1] UUID