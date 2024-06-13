##怪物执行

##怪物扣血
$scoreboard players remove @s qiq2i_tower.mob.H $(damage)
damage @s 0.000000000001 qiq2i_map2:mob

##名称重现
function qiq2i_map2:function/mob/display_mob_name_and_health_in_customname

##受伤怪物特技
function qiq2i_map2:function/mob/mob_bedamage_skill

##若怪物死亡
execute if score @s qiq2i_tower.mob.H matches ..0 run function qiq2i_map2:tower_defense/tower/damage/2 with storage qiq2i_map2 tower_data_temp