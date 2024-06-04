execute as @a[scores={qiq2i_map2.use.coas=1..}] if data entity @s SelectedItem.components.minecraft:custom_data{qiq2i_map2:"summoning"} at @s run trigger qiq2i_map2.ui set 1
execute as @a[scores={qiq2i_map2.use.coas=1..}] if data entity @s SelectedItem.components.minecraft:custom_data{qiq2i_map2:"building"} at @s run trigger qiq2i_map2.ui set 2

##胡萝卜钓竿使用清空
scoreboard players reset @a qiq2i_map2.use.coas