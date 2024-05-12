##游戏状态修改
data modify storage qiq2i_map2 game_state.value set value "start"

##删除重创记分板
scoreboard objectives remove qiq2i_map2
scoreboard objectives add qiq2i_map2 dummy
scoreboard objectives remove qiq2i_map2.income
scoreboard objectives add qiq2i_map2.income dummy
scoreboard objectives remove qiq2i_map2.money
scoreboard objectives add qiq2i_map2.money dummy
scoreboard objectives remove qiq2i_map2.health
scoreboard objectives add qiq2i_map2.health dummy

##清除实体
kill @e[tag=qiq2i_map2.rest]

##存储和记录 参加玩家和村民（测试村民）
kill @e[type=marker,tag=qiq2i_map2.player]
function qiq2i_map2:game_state/rest/interaction/start/join

##将存储标记传送至对应场地坐标
execute as @e[tag=qiq2i_map2.player.1] run tp @s 0 -60 0
execute as @e[tag=qiq2i_map2.player.2] run tp @s 64 -60 0
execute as @e[tag=qiq2i_map2.player.3] run tp @s 0 -60 64
execute as @e[tag=qiq2i_map2.player.4] run tp @s 64 -60 64

##统计存活玩家数
execute store result score #qiq2i_map2.player_count qiq2i_map2 run function qiq2i_map2:function/get_alive_players_count

##每个编号设置初始income,money,health
execute as @e[tag=qiq2i_map2.player] run scoreboard players set @s qiq2i_map2.income 10
execute as @e[tag=qiq2i_map2.player] run scoreboard players set @s qiq2i_map2.money 100
execute as @e[tag=qiq2i_map2.player] run scoreboard players set @s qiq2i_map2.health 20

##怪物起点与终点
kill @e[tag=qiq2i_map2.summoning]
kill @e[tag=qiq2i_map2.home]
execute as @e[tag=qiq2i_map2.player] at @s run function qiq2i_map2:game_state/rest/interaction/start/summoning_point with entity @s data