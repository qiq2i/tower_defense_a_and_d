##home_Owner_id为终点的编号，mob_Owner_id为怪物所属玩家的编号
$tellraw @a [{"entity":"@e[type=marker,tag=qiq2i_map2.player.$(mob_Owner_id)]","nbt":"data.color_name"},{"text":"释放的怪物夺取了"},{"entity":"@e[type=marker,tag=qiq2i_map2.player.$(home_Owner_id)]","nbt":"data.color_name"},{"text":"的1点生命值"}]

playsound entity.player.hurt ambient @a ~ ~ ~ 1000