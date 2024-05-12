scoreboard players add #qiq2i_map2.get_alive_players_count.1 qiq2i_1 1
execute unless score #qiq2i_map2.get_alive_players_count.1 qiq2i_1 matches ..4 run return fail

execute store result storage qiq2i_map2 marker.id byte 1 run scoreboard players get #qiq2i_map2.get_alive_players_count.1 qiq2i_1

function qiq2i_map2:function/get_alive_players_count/add.2 with storage qiq2i_map2 marker
function qiq2i_map2:function/get_alive_players_count/add.1 