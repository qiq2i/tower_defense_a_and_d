tag @s add qiq2i_map2.ui.main
tag @s add qiq2i_map2.ui
tag @s add qiq2i_map2.ui.temp.start

data modify entity @s data.Rotation_h set from storage qiq2i_map2 marker.Rotation[0]
data modify entity @s data.Rotation_s set from storage qiq2i_map2 marker.Rotation[1]
data modify entity @s data.Rotation set from storage qiq2i_map2 marker.Rotation
data modify entity @s data.uuid set from storage qiq2i_map2 marker.uuid
data modify entity @s data.facing_pos_x set from storage qiq2i_map2 marker.facing_pos_x
data modify entity @s data.facing_pos_y set from storage qiq2i_map2 marker.facing_pos_y
data modify entity @s data.facing_pos_z set from storage qiq2i_map2 marker.facing_pos_z
data modify entity @s data.tower_uuid set from storage qiq2i_map2 marker.tower_uuid

ride @s mount @e[type=block_display,limit=1,sort=nearest,tag=qiq2i_map2.ui.ride,tag=qiq2i_map2.ui.temp.start]

#打开界面if data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"zombie",auto:"1"}]
#function qiq2i_map2:ui/pages/summoning/open with entity @s data