data remove entity @s interaction
execute as @e[type=villager] run tp @s ~ ~-100 ~
execute as @e[type=villager] run kill @s
summon villager ~ ~ ~ {Health:0.1f}
summon villager ~ ~ ~ {Health:0.1f}
summon villager ~ ~ ~ {Health:0.1f}