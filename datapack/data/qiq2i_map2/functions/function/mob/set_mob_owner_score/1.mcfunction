
$scoreboard players $(score_set) @e[type=marker,limit=1,tag=qiq2i_map2.player.$(id)] $(score_name) $(score_value)
$execute as @a run scoreboard players get @e[type=marker,limit=1,tag=qiq2i_map2.player.$(id)] $(score_name)