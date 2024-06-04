##判断玩家是否倒下了
$execute if entity @e[type=marker,tag=qiq2i_map2.player,nbt=!{data:{state:"play"}},nbt={data:{id:$(id)b}},limit=1] run return run tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§c你未处于游玩游戏的状态！"}]

##减去金钱
scoreboard players reset #qiq2i_map2.tower_build_temp.1 qiq2i_1
execute store result score #qiq2i_map2.tower_build_temp.1 qiq2i_1 run data get storage qiq2i_map2 tower_build_temp.buy_money
$execute if score @e[type=marker,tag=qiq2i_map2.player,nbt={data:{id:$(id)b}},limit=1] qiq2i_map2.money < #qiq2i_map2.tower_build_temp.1 qiq2i_1 as @a[nbt={UUID:$(uuid)}] at @s run playsound block.calcite.break ambient @s
$execute if score @e[type=marker,tag=qiq2i_map2.player,nbt={data:{id:$(id)b}},limit=1] qiq2i_map2.money < #qiq2i_map2.tower_build_temp.1 qiq2i_1 run return run tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§c金币不足！"}]
$scoreboard players operation @e[type=marker,tag=qiq2i_map2.player,nbt={data:{id:$(id)b}},limit=1] qiq2i_map2.money -= #qiq2i_map2.tower_build_temp.1 qiq2i_1

##防御塔等级提升！
$scoreboard players set @e[nbt={UUID:$(tower_uuid)}] qiq2i_map2.tower.level $(up_level)
$tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§a成功将防御塔§e$(name)§a从§e$(now_level)级§a升级至§e$(up_level)级§a，花费了§e$(buy_money)金币§a。"}]