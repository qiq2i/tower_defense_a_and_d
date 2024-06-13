##$(score_name)为记分板名称，$(score_set)为计算符(如add、set或remove)，$(score_value)分数值
data remove storage qiq2i_map2 set_mob_owner_score_temp

$data modify storage qiq2i_map2 set_mob_owner_score_temp.score_name set value "$(score_name)"
$data modify storage qiq2i_map2 set_mob_owner_score_temp.score_set set value "$(score_set)"
$data modify storage qiq2i_map2 set_mob_owner_score_temp.score_value set value "$(score_value)"

##由怪物执行
execute store result storage qiq2i_map2 set_mob_owner_score_temp.id byte 1 run attribute @s generic.max_health get 1

function qiq2i_map2:function/mob/set_mob_owner_score/1 with storage qiq2i_map2 set_mob_owner_score_temp