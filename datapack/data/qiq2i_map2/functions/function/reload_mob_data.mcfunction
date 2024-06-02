##$(uuid)为玩家UUID，$(mob_id)为召唤怪物的数据包识别id
data remove storage qiq2i_map2 reload_mob_data

##若未存储过，则
$execute unless data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}] run data modify entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob append value {id:"$(mob_id)",count:0}

##获取释放怪物个数
scoreboard players set #qiq2i_map2.reload_mob_data.1 qiq2i_1 0
$execute store result score #qiq2i_map2.reload_mob_data.1 qiq2i_1 run data get entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].count
scoreboard players add #qiq2i_map2.reload_mob_data.1 qiq2i_1 20

##获取怪物属性
##获取怪物属性
$data modify storage qiq2i_map2 reload_mob_data.health_max set from storage qiq2i_map2 mob[{id:"$(mob_id)"}].health_max
$data modify storage qiq2i_map2 reload_mob_data.health set from storage qiq2i_map2 mob[{id:"$(mob_id)"}].health
$data modify storage qiq2i_map2 reload_mob_data.buy_money set from storage qiq2i_map2 mob[{id:"$(mob_id)"}].buy_money
$data modify storage qiq2i_map2 reload_mob_data.loot_money set from storage qiq2i_map2 mob[{id:"$(mob_id)"}].loot_money
$data modify storage qiq2i_map2 reload_mob_data.income set from storage qiq2i_map2 mob[{id:"$(mob_id)"}].income
$data modify storage qiq2i_map2 reload_mob_data.move_speed set from storage qiq2i_map2 mob[{id:"$(mob_id)"}].move_speed
$data modify storage qiq2i_map2 reload_mob_data.scale set from storage qiq2i_map2 mob[{id:"$(mob_id)"}].scale

##精度0.01

##health_max
scoreboard players set #qiq2i_map2.reload_mob_data.2 qiq2i_1 0
execute store result score #qiq2i_map2.reload_mob_data.2 qiq2i_1 run data get storage qiq2i_map2 reload_mob_data.health_max 5
scoreboard players operation #qiq2i_map2.reload_mob_data.2 qiq2i_1 *= #qiq2i_map2.reload_mob_data.1 qiq2i_1
$execute store result entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].health_max float 0.01 run scoreboard players get #qiq2i_map2.reload_mob_data.2 qiq2i_1

##health
scoreboard players set #qiq2i_map2.reload_mob_data.2 qiq2i_1 0
execute store result score #qiq2i_map2.reload_mob_data.2 qiq2i_1 run data get storage qiq2i_map2 reload_mob_data.health 5
scoreboard players operation #qiq2i_map2.reload_mob_data.2 qiq2i_1 *= #qiq2i_map2.reload_mob_data.1 qiq2i_1
$execute store result entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].health float 0.01 run scoreboard players get #qiq2i_map2.reload_mob_data.2 qiq2i_1

##buy_money
scoreboard players set #qiq2i_map2.reload_mob_data.2 qiq2i_1 0
execute store result score #qiq2i_map2.reload_mob_data.2 qiq2i_1 run data get storage qiq2i_map2 reload_mob_data.buy_money 5
scoreboard players operation #qiq2i_map2.reload_mob_data.2 qiq2i_1 *= #qiq2i_map2.reload_mob_data.1 qiq2i_1
$execute store result entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].buy_money int 0.01 run scoreboard players get #qiq2i_map2.reload_mob_data.2 qiq2i_1

##loot_money
scoreboard players set #qiq2i_map2.reload_mob_data.2 qiq2i_1 0
execute store result score #qiq2i_map2.reload_mob_data.2 qiq2i_1 run data get storage qiq2i_map2 reload_mob_data.loot_money 5
scoreboard players operation #qiq2i_map2.reload_mob_data.2 qiq2i_1 *= #qiq2i_map2.reload_mob_data.1 qiq2i_1
$execute store result entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].loot_money int 0.01 run scoreboard players get #qiq2i_map2.reload_mob_data.2 qiq2i_1

##income
scoreboard players set #qiq2i_map2.reload_mob_data.2 qiq2i_1 0
execute store result score #qiq2i_map2.reload_mob_data.2 qiq2i_1 run data get storage qiq2i_map2 reload_mob_data.income 5
scoreboard players operation #qiq2i_map2.reload_mob_data.2 qiq2i_1 *= #qiq2i_map2.reload_mob_data.1 qiq2i_1
$execute store result entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].income int 0.01 run scoreboard players get #qiq2i_map2.reload_mob_data.2 qiq2i_1