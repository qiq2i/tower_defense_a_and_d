####$(x)、$(y)、$(z)为坐标
data modify storage qiq2i_map2 marker.tower_uuid set from entity @e[distance=..1,tag=qiq2i_map2.tower,limit=1] UUID
##若该处方块不是指定方块
$execute positioned $(x) $(y) $(z) unless block ~ ~ ~ lime_concrete run return run scoreboard players set @s qiq2i_map2.ui 0

##若该处已有防御塔
scoreboard players set @s qiq2i_map2.ui 2
$execute positioned $(x) $(y) $(z) positioned ~ ~1 ~ if entity @e[distance=..1,tag=qiq2i_map2.tower] run scoreboard players set @s qiq2i_map2.ui 3

data modify storage qiq2i_map2 marker.tower_uuid set from entity @e[distance=..1,tag=qiq2i_map2.tower,limit=1] UUID