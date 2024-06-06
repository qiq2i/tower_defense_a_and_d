##死亡
execute if score @s qiq2i_tower.mob.H matches ..0 run kill @s

##改变朝向
execute if block ~ -60 ~ minecraft:magenta_glazed_terracotta[facing=west] run scoreboard players set @s qiq2i_tower.mob.fx 1
execute if block ~ -60 ~ minecraft:magenta_glazed_terracotta[facing=south] run scoreboard players set @s qiq2i_tower.mob.fx 2
execute if block ~ -60 ~ minecraft:magenta_glazed_terracotta[facing=east] run scoreboard players set @s qiq2i_tower.mob.fx 3
execute if block ~ -60 ~ minecraft:magenta_glazed_terracotta[facing=north] run scoreboard players set @s qiq2i_tower.mob.fx 4
#execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @s ~ ~ ~ -90 0
#execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~ -180 0
#execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @s ~ ~ ~ 90 0
#execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~ 0 0

##向前移动
data remove storage qiq2i_map2 mob_data_temp.move_speed
execute store result storage qiq2i_map2 mob_data_temp.move_speed float 0.1 run scoreboard players get @s qiq2i_tower.mob.M
execute at @s if score @s qiq2i_tower.mob.fx matches 1 rotated -90 0 run function qiq2i_map2:tower_defense/mob/move with storage qiq2i_map2 mob_data_temp
execute at @s if score @s qiq2i_tower.mob.fx matches 2 rotated -180 0 run function qiq2i_map2:tower_defense/mob/move with storage qiq2i_map2 mob_data_temp
execute at @s if score @s qiq2i_tower.mob.fx matches 3 rotated 90 0 run function qiq2i_map2:tower_defense/mob/move with storage qiq2i_map2 mob_data_temp
execute at @s if score @s qiq2i_tower.mob.fx matches 4 rotated 0 0 run function qiq2i_map2:tower_defense/mob/move with storage qiq2i_map2 mob_data_temp

##抵达终点（待）
execute if entity @e[tag=qiq2i_map2.home,distance=..1.6] run function qiq2i_map2:tower_defense/mob/arrive_home/main