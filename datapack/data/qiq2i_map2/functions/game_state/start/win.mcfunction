$tellraw @a [{"text":"游戏结束！$(color_name)获得了游戏的胜利！"}]
execute as @a at @s run playsound entity.ender_dragon.death ambient @s
data modify storage qiq2i_map2 game_state.value set value "rest"