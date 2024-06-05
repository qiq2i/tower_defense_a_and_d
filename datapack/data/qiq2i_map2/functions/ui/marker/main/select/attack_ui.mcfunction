##交互实体
$execute on vehicle on passengers as @s[type=interaction,tag=qiq2i_map2.ui.interaction,nbt={attack:{player:$(uuid)}}] run data remove entity @s attack

##召唤僵尸
$execute if data storage qiq2i_map2 temp_ui_select{ui_id:"summoning.zombie"} run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"zombie",tellraw:1}
##召唤鲶鱼
$execute if data storage qiq2i_map2 temp_ui_select{ui_id:"summoning.guardian"} run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"guardian",tellraw:1}

##建防御塔
#1
function qiq2i_map2:ui/marker/main/select/attack_ui/tower with storage qiq2i_map2 temp_ui_select

##升级防御塔
execute if data storage qiq2i_map2 temp_ui_select{ui_id:"updata"} run function qiq2i_map2:ui/marker/main/select/attack_ui/tower_updata with storage qiq2i_map2 temp_ui_select

##移除防御塔
execute if data storage qiq2i_map2 temp_ui_select{ui_id:"remove"} run function qiq2i_map2:ui/marker/main/select/attack_ui/tower_remove with storage qiq2i_map2 temp_ui_select

##重开界面
$execute on vehicle on passengers if entity @s[type=marker,tag=qiq2i_map2.ui.main] run function qiq2i_map2:ui/pages/$(page)/open with entity @s data
#建防御塔界面切换至升级该防御塔界面
execute if data storage qiq2i_map2 temp_ui_select{page:"tower_build"} on vehicle on passengers if entity @s[type=marker,tag=qiq2i_map2.ui.main] run function qiq2i_map2:ui/pages/tower_updata/open with entity @s data

##音效
$execute as @a[nbt={UUID:$(uuid)}] at @s run playsound ui.button.click ambient @s