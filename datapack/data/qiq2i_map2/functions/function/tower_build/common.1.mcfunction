##检查位置
$execute positioned $(x) $(y) $(z) unless entity @e[type=marker,tag=qiq2i_map2.player.$(id),limit=1,dx=-47,dy=-47,dz=-47] run return run tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§c这个点不处于你所在的场地！"}] 

##判断玩家是否倒下了
$execute if entity @e[type=marker,tag=qiq2i_map2.player,nbt=!{data:{state:"play"}},nbt={data:{id:$(id)b}},limit=1] run return run execute if data storage qiq2i_map2 tower_build_temp{tellraw:"1"} run tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§c你未处于游玩游戏的状态！"}]

##减去金钱
scoreboard players reset #qiq2i_map2.tower_build_temp.1 qiq2i_1
execute store result score #qiq2i_map2.tower_build_temp.1 qiq2i_1 run data get storage qiq2i_map2 tower_build_temp.buy_money
$execute if score @e[type=marker,tag=qiq2i_map2.player,nbt={data:{id:$(id)b}},limit=1] qiq2i_map2.money < #qiq2i_map2.tower_build_temp.1 qiq2i_1 as @a[nbt={UUID:$(uuid)}] at @s run playsound block.calcite.break ambient @s
$execute if score @e[type=marker,tag=qiq2i_map2.player,nbt={data:{id:$(id)b}},limit=1] qiq2i_map2.money < #qiq2i_map2.tower_build_temp.1 qiq2i_1 run return run execute if data storage qiq2i_map2 tower_build_temp{tellraw:"1"} run tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§c金币不足！"}]
$scoreboard players operation @e[type=marker,tag=qiq2i_map2.player,nbt={data:{id:$(id)b}},limit=1] qiq2i_map2.money -= #qiq2i_map2.tower_build_temp.1 qiq2i_1

##生成防御塔
$execute positioned $(x) $(y) $(z) positioned ~ ~1 ~ if data storage qiq2i_map2 tower_build_temp{tower_id:"tower.1"} summon minecraft:pig run function qiq2i_map2:function/tower_build/common.2 with storage qiq2i_map2 tower_build_temp

$tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§a成功建造防御塔§e$(name)§a，花费了§e$(buy_money)金币§a。"}]