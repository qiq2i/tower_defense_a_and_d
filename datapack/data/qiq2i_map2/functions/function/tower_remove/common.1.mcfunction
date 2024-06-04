##判断该防御塔是不是该玩家的
$execute unless entity @e[tag=qiq2i_map2.tower.$(id),nbt={UUID:$(tower_uuid)}] run return run tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§c这个防御塔不是你的！"}]

##移除防御塔
$kill @e[nbt={UUID:$(tower_uuid)}]

$tellraw @a[nbt={UUID:$(uuid)}] [{"text":"§a成功移除防御塔。"}]