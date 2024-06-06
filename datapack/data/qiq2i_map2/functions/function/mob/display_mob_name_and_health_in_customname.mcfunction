##由怪物执行

##存储数据
data remove storage qiq2i_map2 display_mob_name_and_health_in_customname_temp

##玩家编号
execute store result storage qiq2i_map2 display_mob_name_and_health_in_customname_temp.id long 1 run attribute @s generic.max_health get 1
##血量
execute store result storage qiq2i_map2 display_mob_name_and_health_in_customname_temp.health long 1 run scoreboard players get @s qiq2i_tower.mob.H

##
function qiq2i_map2:function/mob/display_mob_name_and_health_in_customname/1 with storage qiq2i_map2 display_mob_name_and_health_in_customname_temp