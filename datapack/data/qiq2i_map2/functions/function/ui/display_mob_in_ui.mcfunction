####$(mob_id)为怪物数据包识别ID，$(uuid)为玩家id
##重载数据
$function qiq2i_map2:function/reload_mob_data {uuid:$(uuid),mob_id:"$(mob_id)"}

##展示
data remove storage qiq2i_map2 display_mob_in_ui_temp 
$data modify storage qiq2i_map2 display_mob_in_ui_temp set from entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"$(mob_id)"}]

$execute on vehicle on passengers if entity @s[type=text_display,tag=qiq2i_map2.ui.text] run data modify entity @s text set value '[{"nbt":"mob[{id:$(mob_id)}].name","storage":"qiq2i_map2","color":"yellow"},{"text":"\\n§f血量："},{"nbt":"display_mob_in_ui_temp.health","storage":"qiq2i_map2"},{"text":"\\n§f移动速度："},{"nbt":"mob[{id:$(mob_id)}].move_speed","storage":"qiq2i_map2"},{"text":"§f 格/秒"},{"text":"\\n"},{"text":"\\n§f释放-花费金币："},{"nbt":"display_mob_in_ui_temp.buy_money","storage":"qiq2i_map2"},{"text":"\\n§f释放-增加收入："},{"nbt":"display_mob_in_ui_temp.income","storage":"qiq2i_map2"},{"text":"\\n"},{"text":"\\n§f击败-掉落金币："},{"nbt":"display_mob_in_ui_temp.loot_money","storage":"qiq2i_map2"},{"text":"\\n左键-召怪至其他玩家的起点"},{"text":"\\n右键-开启自动召怪模式"}]'