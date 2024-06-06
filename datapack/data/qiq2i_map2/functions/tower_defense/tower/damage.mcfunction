##execute as @e[type=marker,limit=1,nbt={data:{id:$(id)b}}]

##防御塔特效
$execute facing entity @e[tag=qiq2i_map2.tower_defense.mob,distance=..$(range),limit=1,sort=nearest] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
$execute facing entity @e[tag=qiq2i_map2.tower_defense.mob,distance=..$(range),limit=1,sort=nearest] feet rotated ~ 0 run particle block{block_state:"redstone_block"} ^ ^ ^1 0.3 0.3 0.3 0 40 normal

##怪物执行
$execute as @e[tag=qiq2i_map2.tower_defense.mob,distance=..$(range),limit=$(target_count),sort=nearest] run function qiq2i_map2:tower_defense/tower/damage/1 with storage qiq2i_map2 tower_data_temp