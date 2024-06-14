####怪物被防御塔打没血时执行

##苦力怕 自身死亡后，让8格内所有防御塔失灵，持续5秒。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.creeper] at @s run scoreboard players set @e[tag=qiq2i_map2.tower,distance=..8] qiq2i_map2.tower.sl 25