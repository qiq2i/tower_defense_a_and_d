$execute at @e[type=marker,limit=1,tag=qiq2i_map2.summoning.$(home_Owner_id)] run tp @s ~ ~ ~ ~ ~ 
$execute unless entity @e[type=marker,limit=1,tag=qiq2i_map2.summoning.$(home_Owner_id)] run kill @s
##侧边显示血量
function qiq2i_map2:function/health_display