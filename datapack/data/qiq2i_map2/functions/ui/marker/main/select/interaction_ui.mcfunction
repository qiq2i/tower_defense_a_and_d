##交互实体
$execute on vehicle on passengers as @s[type=interaction,tag=qiq2i_map2.ui.interaction,nbt={interaction:{player:$(uuid)}}] run data remove entity @s interaction

##召唤僵尸
$execute if data storage qiq2i_map2 temp_ui_select{ui_id:"summoning.zombie",enchant:0b} run data modify entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"zombie"}].auto set value "1"
$execute if data storage qiq2i_map2 temp_ui_select{ui_id:"summoning.zombie",enchant:1b} run data modify entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"zombie"}].auto set value "0"

##召唤鲶鱼
$execute if data storage qiq2i_map2 temp_ui_select{ui_id:"summoning.guardian",enchant:0b} run data modify entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"guardian"}].auto set value "1"
$execute if data storage qiq2i_map2 temp_ui_select{ui_id:"summoning.guardian",enchant:1b} run data modify entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"guardian"}].auto set value "0"

##重开界面
execute on vehicle on passengers if entity @s[type=marker,tag=qiq2i_map2.ui.main] run function qiq2i_map2:ui/pages/summoning/open with entity @s data

##音效
$execute as @a[nbt={UUID:$(uuid)}] at @s run playsound ui.button.click ambient @s