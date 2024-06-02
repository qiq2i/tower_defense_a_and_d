##僵尸
$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"zombie",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"zombie",tellraw:0}

##鲶鱼
$execute if entity @s[type=marker,tag=qiq2i_map2.player,nbt={data:{mob:[{id:"guardian",auto:"1"}]}}] run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"guardian",tellraw:0}