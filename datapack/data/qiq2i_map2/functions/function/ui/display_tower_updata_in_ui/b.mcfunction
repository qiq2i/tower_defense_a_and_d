

$execute on vehicle on passengers if entity @s[type=text_display,tag=qiq2i_map2.ui.text] run data modify entity @s text set value '[{"text":"§a升级 - "},{"nbt":"tower[{id:$(tower_id)}].name","storage":"qiq2i_map2","color":"yellow"},{"text":" §f $(now_level) → $(up_level)"},{"text":"\\n§f伤害："},{"nbt":"tower[{id:$(tower_id)}].level.$(now_level).damage","storage":"qiq2i_map2","color":"yellow"},{"text":"§f → "},{"nbt":"tower[{id:$(tower_id)}].level.$(up_level).damage","storage":"qiq2i_map2","color":"yellow"},{"text":"\\n§f攻速："},{"nbt":"tower[{id:$(tower_id)}].level.$(now_level).speed","storage":"qiq2i_map2","color":"yellow"},{"text":"§f → "},{"nbt":"tower[{id:$(tower_id)}].level.$(up_level).speed","storage":"qiq2i_map2","color":"yellow"},{"text":"§f次/秒"},{"text":"\\n§f范围："},{"nbt":"tower[{id:$(tower_id)}].level.$(now_level).range","storage":"qiq2i_map2","color":"yellow"},{"text":"§f → "},{"nbt":"tower[{id:$(tower_id)}].level.$(up_level).range","storage":"qiq2i_map2","color":"yellow"},{"text":"§f次/秒"},{"text":"\\n\\n§f花费金币："},{"nbt":"tower[{id:$(tower_id)}].level.$(up_level).money","storage":"qiq2i_map2","color":"yellow"}]'