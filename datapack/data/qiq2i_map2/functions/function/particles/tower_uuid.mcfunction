##$(tower_uuid)$(uuid)
$execute as @e[nbt={UUID:$(tower_uuid)},limit=1] at @s run particle happy_villager ~ ~ ~ 0 24 0 0 480 normal @a[nbt={UUID:$(uuid)}]
$execute as @e[nbt={UUID:$(tower_uuid)},limit=1] at @s run particle happy_villager ~ ~ ~ 1 1 1 0 480 normal @a[nbt={UUID:$(uuid)}]
$effect give @e[nbt={UUID:$(tower_uuid)},limit=1] glowing 3 0 true