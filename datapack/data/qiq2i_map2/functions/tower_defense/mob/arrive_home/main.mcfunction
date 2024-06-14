data remove storage qiq2i_map2 marker
#终点实体id
execute store result storage qiq2i_map2 marker.home_Owner_id byte 1 run data get entity @e[type=marker,tag=qiq2i_map2.home,distance=..1.6,limit=1,sort=nearest] data.id
#怪物所属id
execute store result storage qiq2i_map2 marker.mob_Owner_id byte 1 run attribute @s generic.max_health get 1


##终点对应编号的储存实体 - 1
function qiq2i_map2:tower_defense/mob/arrive_home/home with storage qiq2i_map2 marker

##怪物所属编号的存储实体 + 1
function qiq2i_map2:tower_defense/mob/arrive_home/mob with storage qiq2i_map2 marker

##抵达终点的特殊技能
function qiq2i_map2:function/mob/mob_into_home_skill with storage qiq2i_map2 marker

##特技：攻入终点后不会消失，会回到起点继续行动。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.skeleton] run return run function qiq2i_map2:tower_defense/mob/arrive_home/comeback with storage qiq2i_map2 marker
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.cat] run return run function qiq2i_map2:tower_defense/mob/arrive_home/comeback with storage qiq2i_map2 marker

##自灭
tp @s ~ -64 ~
kill @s

##侧边显示血量
function qiq2i_map2:function/health_display