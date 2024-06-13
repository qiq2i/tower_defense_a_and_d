##塔防tower_defense
execute if data storage qiq2i_map2 game_state{value:"start"} run function qiq2i_map2:game_state/start/tick1

##function
function qiq2i_map2:function/text_display/text_display
function qiq2i_map2:function/block_display/block_display
function qiq2i_map2:function/mob/mob_tick1_skill

##game_state
function qiq2i_map2:game_state/rest/tick1_bc

##破坏地图权限
execute as @a[tag=qiq2i_admin] run attribute @s minecraft:player.block_interaction_range base set 256
execute as @a[tag=!qiq2i_admin] run attribute @s minecraft:player.block_interaction_range base set 0

##初进的玩家
execute if data storage qiq2i_map2 map{id:"xiao_qi_zi"} as @a[tag=!qiq2i_map2.1_join] run tp @s 56 -56 56
execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} as @a[tag=!qiq2i_map2.1_join] run tp @s 16.0 65 16.0
execute as @a[tag=!qiq2i_map2.1_join] run tag @s add qiq2i_map2.1_join
execute if data storage qiq2i_map2 map{id:"xiao_qi_zi"} positioned 56 -56 56 run spawnpoint @a ~ ~ ~
execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} positioned 16.0 65 16.0 run spawnpoint @a ~ ~ ~


schedule function qiq2i_map2:tick1 1s replace