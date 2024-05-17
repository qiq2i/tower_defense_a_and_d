data remove storage qiq2i_map2 marker
#终点实体id
execute store result storage qiq2i_map2 marker.home_Owner_id byte 1 run data get entity @e[type=marker,tag=qiq2i_map2.home,distance=..1.6,limit=1,sort=nearest] data.id
#怪物所属id
execute store result storage qiq2i_map2 marker.mob_Owner_id byte 1 run attribute @s generic.max_health get 1


##终点对应编号的储存实体 - 1
function qiq2i_map2:tower_defense/mob/arrive_home/home with storage qiq2i_map2 marker

##怪物所属编号的存储实体 + 1
function qiq2i_map2:tower_defense/mob/arrive_home/mob with storage qiq2i_map2 marker

##自灭
tp @s ~ -64 ~
kill @s

##侧边显示血量
function qiq2i_map2:function/health_display