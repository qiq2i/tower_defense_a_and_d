##核心标记执行

##获取选择ui的id和附魔光效
$execute on vehicle on passengers if data entity @s[type=item_display,tag=qiq2i_map2.ui] item.components."minecraft:custom_data"{uuid:$(uuid),x:$(x),y:$(y)} run data modify storage qiq2i_map2 temp_ui_select.ui_id set from entity @s item.components."minecraft:custom_data".id
$execute on vehicle on passengers if data entity @s[type=item_display,tag=qiq2i_map2.ui] item.components."minecraft:custom_data"{uuid:$(uuid),x:$(x),y:$(y)} run data modify storage qiq2i_map2 temp_ui_select.enchant set from entity @s item.components."minecraft:enchantment_glint_override"

##清空文本实体
execute on vehicle on passengers if entity @s[type=text_display,tag=qiq2i_map2.ui.text] run data modify entity @s text set value '[{"text":" "}]'

##发光Glowing:1b
$execute on vehicle on passengers if entity @s[type=item_display,tag=qiq2i_map2.ui] unless data entity @s item.components."minecraft:custom_data"{uuid:$(uuid),x:$(x),y:$(y)} run data modify entity @s Glowing set value 0
$execute on vehicle on passengers if entity @s[type=item_display,tag=qiq2i_map2.ui] if data entity @s item.components."minecraft:custom_data"{uuid:$(uuid),x:$(x),y:$(y)} run data modify entity @s Glowing set value 1

##当玩家左键了，以被选中的ui展示实体执行
$execute on vehicle on passengers if data entity @s[type=interaction,tag=qiq2i_map2.ui.interaction] attack{player:$(uuid)} run function qiq2i_map2:ui/marker/main/select/attack_ui with storage qiq2i_map2 temp_ui_select

##当玩家右键了，以被选中的ui展示实体执行
$execute on vehicle on passengers if data entity @s[type=interaction,tag=qiq2i_map2.ui.interaction] interaction{player:$(uuid)} run function qiq2i_map2:ui/marker/main/select/interaction_ui with storage qiq2i_map2 temp_ui_select

####文本显示

##获取玩家选取-怪物
$execute on vehicle on passengers if data entity @s[type=item_display,tag=qiq2i_map2.ui] item.components."minecraft:custom_data"{uuid:$(uuid),x:$(x),y:$(y),id:"summoning.zombie"} run function qiq2i_map2:function/ui/display_mob_in_ui {uuid:$(uuid),mob_id:"zombie"}
$execute on vehicle on passengers if data entity @s[type=item_display,tag=qiq2i_map2.ui] item.components."minecraft:custom_data"{uuid:$(uuid),x:$(x),y:$(y),id:"summoning.guardian"} run function qiq2i_map2:function/ui/display_mob_in_ui {uuid:$(uuid),mob_id:"guardian"}

##获取玩家选取-建设防御塔
$execute on vehicle on passengers if data entity @s[type=item_display,tag=qiq2i_map2.ui] item.components."minecraft:custom_data"{uuid:$(uuid),x:$(x),y:$(y),id:"tower.1"} run function qiq2i_map2:function/ui/display_tower_in_ui with storage qiq2i_map2 temp_ui_select

##获取玩家选取-升级防御塔
$execute on vehicle on passengers if data entity @s[type=item_display,tag=qiq2i_map2.ui] item.components."minecraft:custom_data"{uuid:$(uuid),x:$(x),y:$(y),id:"updata"} run function qiq2i_map2:function/ui/display_tower_updata_in_ui with storage qiq2i_map2 temp_ui_select

##获取玩家选取-移除防御塔
$execute on vehicle on passengers if data entity @s[type=item_display,tag=qiq2i_map2.ui] item.components."minecraft:custom_data"{uuid:$(uuid),x:$(x),y:$(y),id:"remove"} on vehicle on passengers if entity @s[type=text_display,tag=qiq2i_map2.ui.text] run data modify entity @s text set value '[{"text":"§c移除防御塔"}]'