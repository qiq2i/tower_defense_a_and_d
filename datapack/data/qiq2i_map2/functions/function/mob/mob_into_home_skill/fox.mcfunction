##要夺取的资金
data remove storage qiq2i_map2 marker.1
scoreboard players reset #qiq2i_marker.1 qiq2i_1
$execute store result storage qiq2i_map2 marker.1 long 0.1 run scoreboard players get @e[type=marker,limit=1,tag=qiq2i_map2.player.$(home_Owner_id)] qiq2i_map2.money 
execute store result score #qiq2i_marker.1 qiq2i_1 run data get storage qiq2i_map2 marker.1

##终点归属的玩家扣钱
$scoreboard players operation @e[type=marker,limit=1,tag=qiq2i_map2.player.$(home_Owner_id)] qiq2i_map2.money -= #qiq2i_marker.1 qiq2i_1

##怪物归属的玩家加钱
$scoreboard players operation @e[type=marker,limit=1,tag=qiq2i_map2.player.$(mob_Owner_id)] qiq2i_map2.money += #qiq2i_marker.1 qiq2i_1

##消息显示
$tellraw @a[tag=!qiq2i_map2.selector.text.1] [{"entity":"@e[type=marker,tag=qiq2i_map2.player.$(mob_Owner_id)]","nbt":"data.color_name"},{"text":"窃取了"},{"entity":"@e[type=marker,tag=qiq2i_map2.player.$(home_Owner_id)]","nbt":"data.color_name"},{"score":{"name":"#qiq2i_marker.1","objective":"qiq2i_1"}},{"text":"个金币"}]