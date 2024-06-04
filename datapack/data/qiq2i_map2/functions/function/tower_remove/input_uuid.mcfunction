####$(uuid)为玩家id，$(tower_uuid)为防御塔的uuid

data remove storage qiq2i_map2 tower_remove_temp
##存储获取的数据
$data modify storage qiq2i_map2 tower_remove_temp.uuid set value $(uuid)
$data modify storage qiq2i_map2 tower_remove_temp.tower_uuid set value $(tower_uuid)
$data modify storage qiq2i_map2 tower_remove_temp.id set from entity @e[type=marker,limit=1,nbt={data:{uuid:$(uuid)}}] data.id
$execute store result storage qiq2i_map2 tower_remove_temp.num long 1 run scoreboard players get @e[nbt={UUID:$(tower_uuid)},limit=1] qiq2i_map2.tower.id

##获取防御塔等级
$execute store result storage qiq2i_map2 tower_remove_temp.now_level long 1 run scoreboard players get @e[nbt={UUID:$(tower_uuid)},limit=1] qiq2i_map2.tower.level

function qiq2i_map2:function/tower_remove/common.1 with storage qiq2i_map2 tower_remove_temp