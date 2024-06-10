advancement revoke @s only qiq2i_map2:text.1
execute unless entity @s[tag=qiq2i_map2.selector.text.1] run tellraw @s [{"text":"§c怪物攻入家园的信息显示关闭！"}]
execute unless entity @s[tag=qiq2i_map2.selector.text.1] run return run tag @s add qiq2i_map2.selector.text.1
execute if entity @s[tag=qiq2i_map2.selector.text.1] run tellraw @s [{"text":"§a怪物攻入家园的信息显示开启！"}]
execute if entity @s[tag=qiq2i_map2.selector.text.1] run return run tag @s remove qiq2i_map2.selector.text.1