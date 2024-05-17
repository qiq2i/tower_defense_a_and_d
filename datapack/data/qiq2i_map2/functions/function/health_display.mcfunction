scoreboard objectives remove qiq2i_map2.display.1
scoreboard objectives add qiq2i_map2.display.1 dummy {"text":"生命值"}

execute as @e[type=marker,tag=qiq2i_map2.player] run function qiq2i_map2:function/health_display/a with entity @s data

scoreboard objectives setdisplay sidebar qiq2i_map2.display.1