##$(uuid)为玩家的uuid，$(mob_id)为释放怪物的数据包识别ID，$(count)为增加的数
data remove storage qiq2i_map2 add_summon_data

##若未存储过，则
$execute unless data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}] run data modify entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob append value {id:"$(mob_id)",count:0}

##获取释放怪物个数
scoreboard players set #qiq2i_map2.add_summon_data.1 qiq2i_1 0
$execute store result score #qiq2i_map2.add_summon_data.1 qiq2i_1 run data get entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].count
$scoreboard players add #qiq2i_map2.add_summon_data.1 qiq2i_1 $(count)

$execute store result entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}].count long 1 run scoreboard players get #qiq2i_map2.add_summon_data.1 qiq2i_1