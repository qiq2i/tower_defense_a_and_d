##塔防tower_defense
execute if data storage qiq2i_map2 game_state{value:"start"} run function qiq2i_map2:game_state/start/tick1

##function
function qiq2i_map2:function/text_display/text_display

schedule function qiq2i_map2:tick1 1s replace