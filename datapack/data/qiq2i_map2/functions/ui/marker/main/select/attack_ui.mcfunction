##交互实体
$execute on vehicle on passengers as @s[type=interaction,tag=qiq2i_map2.ui.interaction,nbt={attack:{player:$(uuid)}}] run data remove entity @s attack

##召唤僵尸
$execute if data storage qiq2i_map2 temp_ui_select{ui_id:"summoning.zombie"} run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"zombie",tellraw:1}
##召唤鲶鱼
$execute if data storage qiq2i_map2 temp_ui_select{ui_id:"summoning.guardian"} run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"guardian",tellraw:1}

##重开界面
execute on vehicle on passengers if entity @s[type=marker,tag=qiq2i_map2.ui.main] run function qiq2i_map2:ui/pages/summoning/open with entity @s data

##音效
$execute as @a[nbt={UUID:$(uuid)}] at @s run playsound ui.button.click ambient @s