####塔防召唤怪物
##$(id)为召唤的玩家的编号，$(mob_id)为召唤怪物的识别id

####宏存储
data remove storage qiq2i_map2 summoning_mob_temp 
##存储获取的数据
$data modify storage qiq2i_map2 summoning_mob_temp.uuid set from entity @e[type=marker,limit=1,nbt={data:{id:$(id)b}}] data.uuid
$data modify storage qiq2i_map2 summoning_mob_temp.id set value $(id)
$data modify storage qiq2i_map2 summoning_mob_temp.color_name set from entity @e[type=marker,limit=1,nbt={data:{id:$(id)b}}] data.color_name
$data modify storage qiq2i_map2 summoning_mob_temp.mob_id set value $(mob_id)
$data modify storage qiq2i_map2 summoning_mob_temp.tellraw set value "$(tellraw)"

##刷新怪物数据
function qiq2i_map2:function/reload_mob_data with storage qiq2i_map2 summoning_mob_temp

##获取怪物属性
$data modify storage qiq2i_map2 summoning_mob_temp.entity_id set from storage qiq2i_map2 mob[{id:"$(mob_id)"}].entity_id
$data modify storage qiq2i_map2 summoning_mob_temp.health_max set from entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].health_max
$data modify storage qiq2i_map2 summoning_mob_temp.health set from entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].health
$data modify storage qiq2i_map2 summoning_mob_temp.buy_money set from entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].buy_money
$data modify storage qiq2i_map2 summoning_mob_temp.loot_money set from entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].loot_money
$data modify storage qiq2i_map2 summoning_mob_temp.income set from entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].income
$data modify storage qiq2i_map2 summoning_mob_temp.move_speed set from storage qiq2i_map2 mob[{id:"$(mob_id)"}].move_speed
$data modify storage qiq2i_map2 summoning_mob_temp.scale set from storage qiq2i_map2 mob[{id:"$(mob_id)"}].scale

function qiq2i_map2:function/summon/common.1 with storage qiq2i_map2 summoning_mob_temp