##Id
execute store result entity @s data.id byte 1 run scoreboard players get #qiq2i_marker qiq2i_1

##玩家信息
data modify entity @s data.name set value "测试员村民"

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{qiq2i_map2:{item:"get_player_head"}}}}}]
execute as @e[tag=qiq2i_marker_1,limit=1] run loot spawn 0 -60 0 loot qiq2i_map2:get_player_head

data modify entity @s data.name set from entity @e[type=item,limit=1,nbt={Item:{components:{"minecraft:custom_data":{qiq2i_map2:{item:"get_player_head"}}}}}] Item.components."minecraft:profile".name
data modify entity @s data.uuid set from entity @e[tag=qiq2i_marker_1,limit=1] UUID

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{qiq2i_map2:{item:"get_player_head"}}}}}]

##状态
data modify entity @s data.state set value "play"

##颜色
function qiq2i_map2:game_state/rest/interaction/start/join/color_name with entity @s data

##标签
tag @s add qiq2i_map2.player
$tag @s add qiq2i_map2.player.$(id)