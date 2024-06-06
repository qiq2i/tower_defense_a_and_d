##由核心标记qiq2i_map2.ui.main执行
data modify entity @s data.page set value "tower_build"

##清空物品展示实体
execute on vehicle on passengers if entity @s[type=item_display] run kill @s

##清除ui图标
$execute as @e[type=item_display,tag=qiq2i_map2.ui] if data entity @s item.components.minecraft:custom_data{uuid:$(uuid)} run kill @s

##生成ui图标guardian
function qiq2i_map2:ui/summoning_ui {id:"tower.1",x:-1,y:1,item:"minecraft:porkchop",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"tower.2",x:0,y:1,item:"minecraft:bee_nest",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:1,y:1,item:"minecraft:glass_pane",enchant:0}