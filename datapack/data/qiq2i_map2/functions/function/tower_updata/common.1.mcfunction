##判断该防御塔是不是该玩家的
$execute unless entity @e[tag=qiq2i_map2.tower.$(id),nbt={UUID:$(tower_uuid)}] run return run tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§c这个防御塔不是你的！"}]

##获取防御塔基础数据
$data modify storage qiq2i_map2 tower_updata_temp.tower_id set from storage qiq2i_map2 tower[{num:$(num)}].id
$data modify storage qiq2i_map2 tower_updata_temp.name set from storage qiq2i_map2 tower[{num:$(num)}].name
$data modify storage qiq2i_map2 tower_updata_temp.buy_money set from storage qiq2i_map2 tower[{num:$(num)}].level.$(up_level).money
$data modify storage qiq2i_map2 tower_updata_temp.scale set from storage qiq2i_map2 tower[{num:$(num)}].level.$(up_level).scale

function qiq2i_map2:function/tower_updata/common.2 with storage qiq2i_map2 tower_updata_temp