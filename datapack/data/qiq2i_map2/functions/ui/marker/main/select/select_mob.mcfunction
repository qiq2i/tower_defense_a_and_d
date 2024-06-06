##获取mob_id
data modify storage qiq2i_map2 temp_ui_select.mob_id set from entity @s item.components."minecraft:custom_data".id

function qiq2i_map2:function/ui/display_mob_in_ui with storage qiq2i_map2 temp_ui_select