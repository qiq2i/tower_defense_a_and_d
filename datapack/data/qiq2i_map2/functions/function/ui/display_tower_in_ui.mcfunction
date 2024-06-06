####$(ui_id)为防御塔数据包识别ID，$(uuid)为玩家id
##展示
#data remove storage qiq2i_map2 display_tower_in_ui_temp 
#$data modify storage qiq2i_map2 display_tower_in_ui_temp set from entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.tower[{id:"$(ui_id)"}]

$execute on vehicle on passengers if entity @s[type=text_display,tag=qiq2i_map2.ui.text] run data modify entity @s text set value '[{"nbt":"tower[{id:$(ui_id)}].name","storage":"qiq2i_map2","color":"yellow"},{"text":"\\n§f伤害："},{"nbt":"tower[{id:$(ui_id)}].level.1.damage","storage":"qiq2i_map2","color":"yellow"},{"text":"\\n§f攻速："},{"nbt":"tower[{id:$(ui_id)}].level.1.speed","storage":"qiq2i_map2","color":"yellow"},{"text":"次/秒\\n§f攻击范围："},{"nbt":"tower[{id:$(ui_id)}].level.1.range","storage":"qiq2i_map2","color":"yellow"},{"text":"格"},{"text":"\\n§f单次攻击目标数："},{"nbt":"tower[{id:$(ui_id)}].level.1.target_count","storage":"qiq2i_map2","color":"yellow"}]'