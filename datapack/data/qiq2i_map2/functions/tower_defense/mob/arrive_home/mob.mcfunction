##怪物实体执行，mob_Owner_id为怪物所属玩家的编号
$execute if data entity @e[type=marker,tag=qiq2i_map2.player.$(home_Owner_id),limit=1] data{state:"play"} run scoreboard players add @e[type=marker,tag=qiq2i_map2.player.$(mob_Owner_id)] qiq2i_map2.health 1

##显示消息
$execute if data entity @e[type=marker,tag=qiq2i_map2.player.$(home_Owner_id),limit=1] data{state:"play"} run function qiq2i_map2:tower_defense/mob/arrive_home/tellraw.1 with storage qiq2i_map2 marker