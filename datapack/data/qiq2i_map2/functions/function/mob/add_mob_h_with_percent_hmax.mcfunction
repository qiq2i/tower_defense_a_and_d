##加血，$(bfb)为最大生命值的倍率
data remove storage qiq2i_map2 marker.1
scoreboard players reset #qiq2i_marker.1 qiq2i_1
$execute store result storage qiq2i_map2 marker.1 long $(bfb) run scoreboard players get @s qiq2i_tower.mob.Hmax
execute store result score #qiq2i_marker.1 qiq2i_1 run data get storage qiq2i_map2 marker.1

scoreboard players operation @s qiq2i_tower.mob.H += #qiq2i_marker.1 qiq2i_1
execute if score @s qiq2i_tower.mob.Hmax < @s qiq2i_tower.mob.H run scoreboard players operation @s qiq2i_tower.mob.H = @s qiq2i_tower.mob.Hmax

##特效
execute at @s run particle heart ~ ~1 ~ 0.2 0.2 0.2 0 1

##怪物血量显示
function qiq2i_map2:function/mob/display_mob_name_and_health_in_customname