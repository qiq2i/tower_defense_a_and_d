##游戏状态-无
execute unless data storage qiq2i_map2 game_state.value run data modify storage qiq2i_map2 game_state.value set value "rest"

##游戏状态-等待
execute if data storage qiq2i_map2 game_state{value:"rest"} run function qiq2i_map2:game_state/rest/tick20

##游戏状态-开始
execute if data storage qiq2i_map2 game_state{value:"start"} run function qiq2i_map2:game_state/start/tick20

##ui
function qiq2i_map2:ui/main