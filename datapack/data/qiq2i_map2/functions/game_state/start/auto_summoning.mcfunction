$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"zombie",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"zombie",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"guardian",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"guardian",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"goat",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"goat",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"trader_llama",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"trader_llama",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"chicken",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"chicken",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"spider",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"spider",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"pillager",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"pillager",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"villager",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"villager",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"skeleton",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"skeleton",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"zombie_villager",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"zombie_villager",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"sheep",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"sheep",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"cow",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"cow",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"wandering_trader",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"wandering_trader",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"horse",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"horse",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"creeper",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"creeper",tellraw:0}
##测试员村民自动放怪
$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{name:"测试员村民"}}] run function qiq2i_map2:game_state/start/auto_summoning/villager {uuid:$(uuid)}