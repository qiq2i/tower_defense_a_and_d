##num：防御塔数字id

##level：防御塔等级

##id：防御塔所属玩家编号

##damage：防御塔伤害

##speed：攻速 次/0.2秒

scoreboard players add @s qiq2i_map2.tower.tick 100

##攻击！攻击！
$execute if score @s qiq2i_map2.tower.tick matches $(speed).. if entity @e[tag=qiq2i_map2.tower_defense.mob,distance=..$(range)] run function qiq2i_map2:tower_defense/tower/damage with storage qiq2i_map2 tower_data_temp
$execute if score @s qiq2i_map2.tower.tick matches $(speed).. run scoreboard players remove @s qiq2i_map2.tower.tick $(speed)