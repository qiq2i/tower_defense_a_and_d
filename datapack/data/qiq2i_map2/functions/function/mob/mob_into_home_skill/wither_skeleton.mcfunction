
$scoreboard players remove @e[type=marker,limit=1,tag=qiq2i_map2.player.$(home_Owner_id)] qiq2i_map2.health 1

##消息显示
$tellraw @a[tag=!qiq2i_map2.selector.text.1] [{"entity":"@e[type=marker,tag=qiq2i_map2.player.$(mob_Owner_id)]","nbt":"data.color_name"},{"text":"释放的怪物让"},{"entity":"@e[type=marker,tag=qiq2i_map2.player.$(home_Owner_id)]","nbt":"data.color_name"},{"text":"多减少了1点生命值。"}]