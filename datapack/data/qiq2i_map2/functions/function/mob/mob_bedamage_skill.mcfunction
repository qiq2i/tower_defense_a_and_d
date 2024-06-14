####怪物受到防御塔的攻击时执行

##山羊 自身受到伤害后，移速变为5格/秒。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.goat] run attribute @s generic.movement_speed base set 5

##行商羊驼 自身受到到伤害后，释放者的收入+1。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.trader_llama] run function qiq2i_map2:function/mob/set_mob_owner_score {score_name:"qiq2i_map2.income",score_set:"add",score_value:"1"}

##蜘蛛 自身受到到伤害后，让4格内所有防御塔的攻速减半，持续5秒。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.spider] at @s run scoreboard players set @e[tag=qiq2i_map2.tower,distance=..8] qiq2i_map2.tower.js 25

##牛 自身受到伤害后，移速变为8格/秒。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.cow] run attribute @s generic.movement_speed base set 8

##流浪商人 自身受到到伤害后，释放者的收入+170。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.wandering_trader] run function qiq2i_map2:function/mob/set_mob_owner_score {score_name:"qiq2i_map2.income",score_set:"add",score_value:"170"}