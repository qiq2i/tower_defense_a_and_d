##设置state
data modify entity @s data.state set value "die"

##统计存活玩家数
execute store result score #qiq2i_map2.player_count qiq2i_map2 run function qiq2i_map2:function/get_alive_players_count

##清除怪物生成点和终点
$kill @e[type=marker,tag=qiq2i_map2.summoning.$(id)]

##消息
$tellraw @a [{"entity":"@e[type=marker,tag=qiq2i_map2.player.$(id)]","nbt":"data.color_name"},{"text":"§e被打穿了！"}]

$title @a title [{"entity":"@e[type=marker,tag=qiq2i_map2.player.$(id)]","nbt":"data.color_name"},{"text":"§e被打穿了！"}]

playsound entity.wither.death ambient @a ~ ~ ~ 1000