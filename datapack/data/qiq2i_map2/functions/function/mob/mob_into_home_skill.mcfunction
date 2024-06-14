##$(home_Owner_id)为终点实体id，$(mob_Owner_id)为实体所属的id，存储地址

##掠夺者 攻入终点后，可窃取其拥有金币数的5%。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.pillager] run function qiq2i_map2:function/mob/mob_into_home_skill/pillager with storage qiq2i_map2 marker

##狐狸 攻入终点后，可窃取其拥有金币数的5%。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.fox] run function qiq2i_map2:function/mob/mob_into_home_skill/fox with storage qiq2i_map2 marker

##凋灵骷髅 攻入终点后，可让目标多失去1点生命值。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.wither_skeleton] run function qiq2i_map2:function/mob/mob_into_home_skill/wither_skeleton with storage qiq2i_map2 marker