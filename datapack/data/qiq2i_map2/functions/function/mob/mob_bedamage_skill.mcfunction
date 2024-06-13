####怪物受到防御塔的攻击时执行

##山羊 自身受到伤害后，移速变为5格/秒。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.goat] run scoreboard players set @s qiq2i_tower.mob.M 5

##行商羊驼 自身受到到伤害后，释放者的收入+1。
execute if entity @s[tag=qiq2i_map2.tower_defense.mob.trader_llama] run function qiq2i_map2:function/mob/set_mob_owner_score {score_name:"qiq2i_map2.income",score_set:"add",score_value:"1"}