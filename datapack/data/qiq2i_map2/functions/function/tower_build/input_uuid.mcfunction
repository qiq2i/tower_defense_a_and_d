####塔防召唤怪物
##$(uuid)为召唤的玩家的UUID，$(tower_id)为防御塔的识别id，$(x)$(y)$(z)为坐标

####宏存储
data remove storage qiq2i_map2 tower_build_temp 
##存储获取的数据
$data modify storage qiq2i_map2 tower_build_temp.uuid set value $(uuid)
$data modify storage qiq2i_map2 tower_build_temp.id set from entity @e[type=marker,limit=1,nbt={data:{uuid:$(uuid)}}] data.id
$data modify storage qiq2i_map2 tower_build_temp.tower_id set value "$(tower_id)"
$data modify storage qiq2i_map2 tower_build_temp.num set from storage qiq2i_map2 tower[{id:$(tower_id)}].num
$data modify storage qiq2i_map2 tower_build_temp.name set from storage qiq2i_map2 tower[{id:$(tower_id)}].name
$data modify storage qiq2i_map2 tower_build_temp.entity_id set from storage qiq2i_map2 tower[{id:$(tower_id)}].entity_id
$data modify storage qiq2i_map2 tower_build_temp.scale set from storage qiq2i_map2 tower[{id:$(tower_id)}].level.1.scale
$data modify storage qiq2i_map2 tower_build_temp.buy_money set from storage qiq2i_map2 tower[{id:$(tower_id)}].level.1.money
$data modify storage qiq2i_map2 tower_build_temp.x set value "$(x)"
$data modify storage qiq2i_map2 tower_build_temp.y set value "$(y)"
$data modify storage qiq2i_map2 tower_build_temp.z set value "$(z)"

function qiq2i_map2:function/tower_build/common.1 with storage qiq2i_map2 tower_build_temp