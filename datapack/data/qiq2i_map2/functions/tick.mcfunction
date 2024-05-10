##qiq2i_boss
function qiq2i_boss:main
##qiq2i_items
function qiq2i_items:tick

##游戏启动及重启
#function qiq2i_map1:main/game_start
execute if score #qiq2i_map1 qiq2i_1 matches 1 positioned -41.0 63 19.0 run function qiq2i_map1:main/state

##物品堆叠数修改
execute as @a if items entity @s container.* minecraft:iron_nugget[!max_stack_size=99] run function qiq2i_map1:max_stack_replace/iron_nugget
execute as @a if items entity @s container.* minecraft:iron_ingot[!max_stack_size=99] run function qiq2i_map1:max_stack_replace/iron_ingot
execute as @a if items entity @s container.* minecraft:iron_block[!max_stack_size=99] run function qiq2i_map1:max_stack_replace/iron_block
execute as @a if items entity @s container.* minecraft:wind_charge[!max_stack_size=99] run function qiq2i_map1:max_stack_replace/wind_charge