tag @s add qiq2i_map2.tower
$tag @s add qiq2i_map2.tower.$(id)

$scoreboard players set @s qiq2i_map2.tower.id $(num)
scoreboard players set @s qiq2i_map2.tower.level 1
$scoreboard players set @s qiq2i_map2.tower.player $(id)

data modify entity @s NoAI set value 1
data modify entity @s Invulnerable set value 1
data modify entity @s DeathLootTable set value ""
data modify entity @s PersistenceRequired set value 1
$data modify entity @s CustomName set value '{"text":"$(name) 1级"}'
$attribute @s minecraft:generic.scale base set $(scale)

##抗性
effect give @s resistance infinite 5 true