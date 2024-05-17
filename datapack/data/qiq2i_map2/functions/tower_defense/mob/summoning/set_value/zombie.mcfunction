##标签
tag @s add qiq2i_map2.tower_defense.mob.zombie
tag @s add qiq2i_map2.tower_defense.mob

##最大生命值
scoreboard players set @s qiq2i_tower.mob.Hmax 10

##生命值
scoreboard players set @s qiq2i_tower.mob.H 10

##移动速度
scoreboard players set @s qiq2i_tower.mob.M 2

##money
scoreboard players set @s qiq2i_tower.mob.money 4

##所属玩家编号
$attribute @s generic.max_health base set $(id)

##其他属性
data modify entity @s NoAI set value 1
data modify entity @s Invulnerable set value 1
data modify entity @s DeathLootTable set value ""
data modify entity @s PersistenceRequired set value 1