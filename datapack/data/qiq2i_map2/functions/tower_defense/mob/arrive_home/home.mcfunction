##终点实体执行，home_Owner_id为终点的编号
$execute if data entity @e[type=marker,tag=qiq2i_map2.player.$(home_Owner_id),limit=1] data{state:"play"} run scoreboard players remove @e[type=marker,tag=qiq2i_map2.player.$(home_Owner_id)] qiq2i_map2.health 1