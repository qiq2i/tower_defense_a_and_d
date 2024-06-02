##宏变量，$(id)、$(x)、$(y)、$(item)。本函数由核心标记执行

####局部存储
data remove storage qiq2i_map temp_summoning_ui
##原点朝向 - 来自核心标记Rotation
data modify storage qiq2i_map temp_summoning_ui.Origin_Rotation set from entity @s data.Rotation
data modify storage qiq2i_map temp_summoning_ui.Origin_Rotation_h set from entity @s data.Rotation_h
data modify storage qiq2i_map temp_summoning_ui.Origin_Rotation_s set from entity @s data.Rotation_s
##uuid
data modify storage qiq2i_map temp_summoning_ui.uuid set from entity @s data.uuid
##传入的变量id、x、y、item
$data modify storage qiq2i_map temp_summoning_ui.id set value "$(id)"
$data modify storage qiq2i_map temp_summoning_ui.x set value $(x)
$data modify storage qiq2i_map temp_summoning_ui.y set value $(y)
$data modify storage qiq2i_map temp_summoning_ui.item set value "$(item)"
$data modify storage qiq2i_map temp_summoning_ui.enchant set value $(enchant)

##展示实体角度设置Rotation
scoreboard players reset #qiq2i_map2.temp_summoning_ui.1 qiq2i_1
scoreboard players reset #qiq2i_map2.temp_summoning_ui.2 qiq2i_1

execute store result score #qiq2i_map2.temp_summoning_ui.1 qiq2i_1 run data get storage qiq2i_map temp_summoning_ui.Origin_Rotation[0] 100
execute store result score #qiq2i_map2.temp_summoning_ui.2 qiq2i_1 run data get storage qiq2i_map temp_summoning_ui.x 1
scoreboard players set #qiq2i_map2.temp_summoning_ui.3 qiq2i_1 1200
scoreboard players operation #qiq2i_map2.temp_summoning_ui.2 qiq2i_1 *= #qiq2i_map2.temp_summoning_ui.3 qiq2i_1
scoreboard players operation #qiq2i_map2.temp_summoning_ui.1 qiq2i_1 += #qiq2i_map2.temp_summoning_ui.2 qiq2i_1

data modify storage qiq2i_map temp_summoning_ui.Rotation set value [0.0f,0.0f]

execute store result storage qiq2i_map temp_summoning_ui.Rotation[0] float 0.01 run scoreboard players get #qiq2i_map2.temp_summoning_ui.1 qiq2i_1
data modify storage qiq2i_map temp_summoning_ui.Rotation[1] set value 0

##标记骑乘展示实体
tag @e[tag=qiq2i_map2.temp_summoning_ui.ride] remove qiq2i_map2.temp_summoning_ui.ride
execute on vehicle run tag @s add qiq2i_map2.temp_summoning_ui.ride

####召唤！！！
execute summon item_display run function qiq2i_map2:ui/summoning_ui/item_display with storage qiq2i_map temp_summoning_ui

##清除局部标记
tag @e[tag=qiq2i_map2.temp_summoning_ui.ride] remove qiq2i_map2.temp_summoning_ui.ride