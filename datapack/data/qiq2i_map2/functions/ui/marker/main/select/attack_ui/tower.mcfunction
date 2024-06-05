
$execute if data storage qiq2i_map2 temp_ui_select{ui_id:"tower.1"} run function qiq2i_map2:function/tower_build/input_uuid {uuid:$(uuid),tower_id:"$(ui_id)",x:$(facing_pos_x),y:$(facing_pos_y),z:$(facing_pos_z)}

##获取建好的防御塔的uuid
$execute on vehicle on passengers if entity @s[type=marker,tag=qiq2i_map2.ui.main] positioned $(facing_pos_x) $(facing_pos_y) $(facing_pos_z) positioned ~ ~1 ~ run data modify entity @s data.tower_uuid set from entity @e[distance=..1,tag=qiq2i_map2.tower,limit=1] UUID