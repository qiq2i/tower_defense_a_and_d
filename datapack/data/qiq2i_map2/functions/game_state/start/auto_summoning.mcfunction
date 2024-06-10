$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"zombie",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"zombie",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"guardian",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"guardian",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"goat",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"goat",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"trader_llama",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"trader_llama",tellraw:0}

$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"chicken",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"chicken",tellraw:0}

##测试员村民自动放怪
$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{name:"测试员村民"}}] run function qiq2i_map2:game_state/start/auto_summoning/villager {uuid:$(uuid)}