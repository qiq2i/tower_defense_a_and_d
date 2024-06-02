##判断玩家是否倒下了
$execute if entity @e[type=marker,tag=qiq2i_map2.player,nbt=!{data:{state:"play"}},nbt={data:{id:$(id)b}},limit=1] run return run execute if data storage qiq2i_map2 summoning_mob_temp{tellraw:"1"} run tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§c你未处于游玩游戏的状态！"}]

##减去金钱
scoreboard players reset #qiq2i_map2.summoning_mob_temp.1 qiq2i_1
execute store result score #qiq2i_map2.summoning_mob_temp.1 qiq2i_1 run data get storage qiq2i_map2 summoning_mob_temp.buy_money
$execute if score @e[type=marker,tag=qiq2i_map2.player,nbt={data:{id:$(id)b}},limit=1] qiq2i_map2.money < #qiq2i_map2.summoning_mob_temp.1 qiq2i_1 as @a[nbt={UUID:$(uuid)}] at @s run playsound block.calcite.break ambient @s
$execute if score @e[type=marker,tag=qiq2i_map2.player,nbt={data:{id:$(id)b}},limit=1] qiq2i_map2.money < #qiq2i_map2.summoning_mob_temp.1 qiq2i_1 run return run execute if data storage qiq2i_map2 summoning_mob_temp{tellraw:"1"} run tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§c金币不足！"}]
$scoreboard players operation @e[type=marker,tag=qiq2i_map2.player,nbt={data:{id:$(id)b}},limit=1] qiq2i_map2.money -= #qiq2i_map2.summoning_mob_temp.1 qiq2i_1

##增加收入
scoreboard players reset #qiq2i_map2.summoning_mob_temp.1 qiq2i_1
execute store result score #qiq2i_map2.summoning_mob_temp.1 qiq2i_1 run data get storage qiq2i_map2 summoning_mob_temp.income
$scoreboard players operation @e[type=marker,tag=qiq2i_map2.player,nbt={data:{id:$(id)b}},limit=1] qiq2i_map2.income += #qiq2i_map2.summoning_mob_temp.1 qiq2i_1

##增加释放该怪物的数量
$function qiq2i_map2:function/add_summon_mob_count {uuid:$(uuid),mob_id:$(mob_id),count:1}

##在其他玩家地盘召唤怪物
$execute as @e[type=marker,tag=qiq2i_map2.summoning,tag=!qiq2i_map2.summoning.$(id)] at @s summon minecraft:$(entity_id) run function qiq2i_map2:function/summon/common.2 with storage qiq2i_map2 summoning_mob_temp