##塔防tower_defense
execute if data storage qiq2i_map2 game_state{value:"start"} run function qiq2i_map2:game_state/start/tick1

##function
function qiq2i_map2:function/text_display/text_display

##game_state
function qiq2i_map2:game_state/rest/tick1_bc

##破坏地图权限
execute as @a[tag=qiq2i_admin] run attribute @s minecraft:player.block_interaction_range base set 256
execute as @a[tag=!qiq2i_admin] run attribute @s minecraft:player.block_interaction_range base set 0

schedule function qiq2i_map2:tick1 1s replace