##玩家名称
$data modify storage qiq2i_map2 display_mob_name_and_health_in_customname_temp.color_name set from entity @e[type=marker,tag=qiq2i_map2.player.$(id),limit=1] data.color_name

##
function qiq2i_map2:function/mob/display_mob_name_and_health_in_customname/2 with storage qiq2i_map2 display_mob_name_and_health_in_customname_temp