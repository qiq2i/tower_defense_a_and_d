####玩家脱离骑乘
$execute as @a[nbt={UUID:$(uuid)},limit=1] unless data entity @s RootVehicle.Entity{id:"minecraft:block_display"} run function qiq2i_map2:ui/close {uuid:$(uuid)}

####检测指向

##局部存储
data remove storage qiq2i_map2 temp_ui_select

##原点角度Origin_Rotation
data modify storage qiq2i_map2 temp_ui_select.Origin_Rotation set value [0.0f,0.0f]
scoreboard players reset #qiq2i_map2.temp_ui_select.1 qiq2i_1
execute store result score #qiq2i_map2.temp_ui_select.1 qiq2i_1 run data get entity @s data.Rotation[0] 100
scoreboard players set #qiq2i_map2.temp_ui_select.2 qiq2i_1 600
scoreboard players operation #qiq2i_map2.temp_ui_select.1 qiq2i_1 -= #qiq2i_map2.temp_ui_select.2 qiq2i_1
execute store result storage qiq2i_map2 temp_ui_select.Origin_Rotation[0] float 0.01 run scoreboard players get #qiq2i_map2.temp_ui_select.1 qiq2i_1

data modify storage qiq2i_map2 temp_ui_select.Origin_Rotation[1] set from entity @s data.Rotation[1]

##玩家的角度Rotation
$data modify storage qiq2i_map2 temp_ui_select.Rotation set from entity @a[nbt={UUID:$(uuid)},limit=1] Rotation

##选中UI的x值
scoreboard players reset #qiq2i_map2.temp_ui_select.1 qiq2i_1
scoreboard players reset #qiq2i_map2.temp_ui_select.2 qiq2i_1
execute store result score #qiq2i_map2.temp_ui_select.1 qiq2i_1 run data get storage qiq2i_map2 temp_ui_select.Origin_Rotation[0] 1
execute store result score #qiq2i_map2.temp_ui_select.2 qiq2i_1 run data get storage qiq2i_map2 temp_ui_select.Rotation[0] 1
scoreboard players operation #qiq2i_map2.temp_ui_select.2 qiq2i_1 -= #qiq2i_map2.temp_ui_select.1 qiq2i_1

#若值大于180
execute if score #qiq2i_map2.temp_ui_select.2 qiq2i_1 matches 180.. run function qiq2i_map2:ui/marker/rotation.180
#若值小于-180
execute if score #qiq2i_map2.temp_ui_select.2 qiq2i_1 matches ..-180 run function qiq2i_map2:ui/marker/rotation.f180

scoreboard players set #qiq2i_map2.temp_ui_select.1 qiq2i_1 12
scoreboard players operation #qiq2i_map2.temp_ui_select.2 qiq2i_1 /= #qiq2i_map2.temp_ui_select.1 qiq2i_1

execute store result storage qiq2i_map2 temp_ui_select.x byte 1 run scoreboard players get #qiq2i_map2.temp_ui_select.2 qiq2i_1

##选中UI的y值
scoreboard players reset #qiq2i_map2.temp_ui_select.1 qiq2i_1
execute store result score #qiq2i_map2.temp_ui_select.1 qiq2i_1 run data get storage qiq2i_map2 temp_ui_select.Rotation[1] 100
execute unless score #qiq2i_map2.temp_ui_select.1 qiq2i_1 matches -2150..2150 run data modify storage qiq2i_map2 temp_ui_select.y set value -1
execute if score #qiq2i_map2.temp_ui_select.1 qiq2i_1 matches -2150..-650 run data modify storage qiq2i_map2 temp_ui_select.y set value 2
execute if score #qiq2i_map2.temp_ui_select.1 qiq2i_1 matches -650..750 run data modify storage qiq2i_map2 temp_ui_select.y set value 1
execute if score #qiq2i_map2.temp_ui_select.1 qiq2i_1 matches 750..2150 run data modify storage qiq2i_map2 temp_ui_select.y set value 0

##玩家uuid
$data modify storage qiq2i_map2 temp_ui_select.uuid set value $(uuid)

##选择的地点-来自核心标记
execute on vehicle on passengers if entity @s[type=marker,tag=qiq2i_map2.ui.main] run data modify storage qiq2i_map2 temp_ui_select.facing_pos_x set from entity @s data.facing_pos_x
execute on vehicle on passengers if entity @s[type=marker,tag=qiq2i_map2.ui.main] run data modify storage qiq2i_map2 temp_ui_select.facing_pos_y set from entity @s data.facing_pos_y
execute on vehicle on passengers if entity @s[type=marker,tag=qiq2i_map2.ui.main] run data modify storage qiq2i_map2 temp_ui_select.facing_pos_z set from entity @s data.facing_pos_z
##选择的防御塔-来自核心标记
execute on vehicle on passengers if entity @s[type=marker,tag=qiq2i_map2.ui.main] run data modify storage qiq2i_map2 temp_ui_select.tower_uuid set from entity @s data.tower_uuid

##选中！
function qiq2i_map2:ui/marker/main/select with storage qiq2i_map2 temp_ui_select