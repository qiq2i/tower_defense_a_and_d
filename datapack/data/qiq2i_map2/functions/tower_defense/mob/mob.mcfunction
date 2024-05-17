##死亡
execute if score @s qiq2i_tower.mob.H matches ..0 run kill @s

##改变朝向
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @s ~ ~ ~ -90 0
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~ -180 0
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @s ~ ~ ~ 90 0
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~ 0 0

##向前移动
execute at @s run tp @s ^ ^ ^0.5 ~ ~

##抵达终点（待）
execute if entity @e[tag=qiq2i_map2.home,distance=..1.6] run function qiq2i_map2:tower_defense/mob/arrive_home/main