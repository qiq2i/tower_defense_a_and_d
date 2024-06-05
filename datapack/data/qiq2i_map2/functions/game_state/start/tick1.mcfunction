##倒计时-计时器qiq2i_map2.time.1
scoreboard players remove #qiq2i_map2.time.1 qiq2i_1 1
execute if score #qiq2i_map2.time.1 qiq2i_1 matches ..0 as @e[type=marker,tag=qiq2i_map2.player] if data entity @s data{state:"play"} run scoreboard players operation @s qiq2i_map2.money += @s qiq2i_map2.income
execute if score #qiq2i_map2.time.1 qiq2i_1 matches ..0 as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute if score #qiq2i_map2.time.1 qiq2i_1 matches ..0 run scoreboard players set #qiq2i_map2.time.1 qiq2i_1 10

####自动刷怪
##僵尸
execute as @e[type=marker,tag=qiq2i_map2.player] run function qiq2i_map2:game_state/start/auto_summoning with entity @s data

##胜利判据
execute if score #qiq2i_map2.player_count qiq2i_map2 matches ..1 run function qiq2i_map2:game_state/start/win with entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{state:"play"}},limit=1] data