####$(uuid)为玩家id，$(tower_uuid)为防御塔的uuid

data remove storage qiq2i_map2 display_tower_updata_in_ui_temp
##存储获取的数据
$data modify storage qiq2i_map2 display_tower_updata_in_ui_temp.uuid set value $(uuid)
$data modify storage qiq2i_map2 display_tower_updata_in_ui_temp.id set from entity @e[type=marker,limit=1,nbt={data:{uuid:$(uuid)}}] data.id
$execute store result storage qiq2i_map2 display_tower_updata_in_ui_temp.num long 1 run scoreboard players get @e[nbt={UUID:$(tower_uuid)},limit=1] qiq2i_map2.tower.id

##获取防御塔等级
$execute store result storage qiq2i_map2 display_tower_updata_in_ui_temp.now_level long 1 run scoreboard players get @e[nbt={UUID:$(tower_uuid)},limit=1] qiq2i_map2.tower.level
scoreboard players reset #qiq2i_map2.tower_updata.1 qiq2i_1
$scoreboard players operation #qiq2i_map2.tower_updata.1 qiq2i_1 = @e[nbt={UUID:$(tower_uuid)},limit=1] qiq2i_map2.tower.level
scoreboard players add #qiq2i_map2.tower_updata.1 qiq2i_1 1
execute store result storage qiq2i_map2 display_tower_updata_in_ui_temp.up_level long 1 run scoreboard players get #qiq2i_map2.tower_updata.1 qiq2i_1

function qiq2i_map2:function/ui/display_tower_updata_in_ui/a with storage qiq2i_map2 display_tower_updata_in_ui_temp