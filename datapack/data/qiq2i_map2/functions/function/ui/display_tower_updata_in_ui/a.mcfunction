####$(uuid)为玩家id，$(tower_uuid)为防御塔的uuid

####$(num)为防御塔编号，$(now_level)$(up_level)为防御塔等级

##获取防御塔基础数据
$data modify storage qiq2i_map2 display_tower_updata_in_ui_temp.tower_id set from storage qiq2i_map2 tower[{num:$(num)}].id
$data modify storage qiq2i_map2 display_tower_updata_in_ui_temp.name set from storage qiq2i_map2 tower[{num:$(num)}].name

function qiq2i_map2:function/ui/display_tower_updata_in_ui/b with storage qiq2i_map2 display_tower_updata_in_ui_temp