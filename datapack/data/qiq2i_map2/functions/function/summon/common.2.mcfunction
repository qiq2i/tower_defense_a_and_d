####召唤的怪物执行

##标签
$tag @s add qiq2i_map2.tower_defense.mob.$(mob_id)
tag @s add qiq2i_map2.tower_defense.mob

##最大生命值
execute store result score @s qiq2i_tower.mob.Hmax run data get storage qiq2i_map2 summoning_mob_temp.health_max

##生命值
execute store result score @s qiq2i_tower.mob.H run data get storage qiq2i_map2 summoning_mob_temp.health

##移动速度
execute store result score @s qiq2i_tower.mob.M run data get storage qiq2i_map2 summoning_mob_temp.move_speed

##money
execute store result score @s qiq2i_tower.mob.money run data get storage qiq2i_map2 summoning_mob_temp.loot_money

##所属玩家编号
$attribute @s generic.max_health base set $(id)

##其他属性
data modify entity @s NoAI set value 1
data modify entity @s Invulnerable set value 1
data modify entity @s DeathLootTable set value ""
data modify entity @s PersistenceRequired set value 1
$data modify entity @s CustomName set value '{"text":"$(color_name) §c♥$(health)"}'
data modify entity @s CustomNameVisible set value 1
$attribute @s minecraft:generic.scale base set $(scale)