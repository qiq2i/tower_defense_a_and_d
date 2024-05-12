##operator值(set、add、remove)、id为玩家编号、scoreboard值{income:收入点,money:金钱,health:生命值}、score为分数
$scoreboard players $(operator) #qiq2i_map2.player_$(id) qiq2i_map2.$(scoreboard) $(score)
$return run scoreboard players get #qiq2i_map2.player_$(id) qiq2i_map2.$(scoreboard) $(score)