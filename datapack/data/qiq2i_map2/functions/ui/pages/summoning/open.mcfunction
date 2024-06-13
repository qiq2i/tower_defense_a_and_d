##由核心标记qiq2i_map2.ui.main执行
data modify entity @s data.page set value "summoning"

##清空物品展示实体
execute on vehicle on passengers if entity @s[type=item_display] run kill @s

##清除ui图标
$execute as @e[type=item_display,tag=qiq2i_map2.ui] if data entity @s item.components.minecraft:custom_data{uuid:$(uuid)} run kill @s

##生成ui图标guardian
$execute if data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"zombie",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"zombie",x:-4,y:2,item:"minecraft:zombie_spawn_egg",enchant:1}
$execute unless data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"zombie",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"zombie",x:-4,y:2,item:"minecraft:zombie_spawn_egg",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:-4,y:0,item:"minecraft:glass_pane",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:-4,y:1,item:"minecraft:glass_pane",enchant:0}

$execute if data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"guardian",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"guardian",x:-3,y:2,item:"minecraft:guardian_spawn_egg",enchant:1}
$execute unless data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"guardian",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"guardian",x:-3,y:2,item:"minecraft:guardian_spawn_egg",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:-3,y:0,item:"minecraft:glass_pane",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:-3,y:1,item:"minecraft:glass_pane",enchant:0}

$execute if data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"goat",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"goat",x:-2,y:2,item:"minecraft:goat_spawn_egg",enchant:1}
$execute unless data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"goat",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"goat",x:-2,y:2,item:"minecraft:goat_spawn_egg",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:-2,y:0,item:"minecraft:glass_pane",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:-2,y:1,item:"minecraft:glass_pane",enchant:0}

$execute if data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"trader_llama",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"trader_llama",x:-1,y:2,item:"minecraft:trader_llama_spawn_egg",enchant:1}
$execute unless data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"trader_llama",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"trader_llama",x:-1,y:2,item:"minecraft:trader_llama_spawn_egg",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:-1,y:0,item:"minecraft:glass_pane",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:-1,y:1,item:"minecraft:glass_pane",enchant:0}

$execute if data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"chicken",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"chicken",x:0,y:2,item:"minecraft:chicken_spawn_egg",enchant:1}
$execute unless data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"chicken",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"chicken",x:0,y:2,item:"minecraft:chicken_spawn_egg",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:0,y:0,item:"minecraft:glass_pane",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:0,y:1,item:"minecraft:glass_pane",enchant:0}

$execute if data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"spider",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"spider",x:1,y:2,item:"minecraft:spider_spawn_egg",enchant:1}
$execute unless data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"spider",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"spider",x:1,y:2,item:"minecraft:spider_spawn_egg",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:1,y:1,item:"minecraft:glass_pane",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:1,y:0,item:"minecraft:glass_pane",enchant:0}

$execute if data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"pillager",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"pillager",x:2,y:2,item:"minecraft:pillager_spawn_egg",enchant:1}
$execute unless data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"pillager",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"pillager",x:2,y:2,item:"minecraft:pillager_spawn_egg",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:2,y:1,item:"minecraft:glass_pane",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:2,y:0,item:"minecraft:glass_pane",enchant:0}

$execute if data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"villager",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"villager",x:3,y:2,item:"minecraft:villager_spawn_egg",enchant:1}
$execute unless data entity @e[type=marker,tag=qiq2i_map2.player,nbt={data:{uuid:$(uuid)}},limit=1] data.mob[{id:"villager",auto:"1"}] run function qiq2i_map2:ui/summoning_ui {id:"villager",x:3,y:2,item:"minecraft:villager_spawn_egg",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:3,y:1,item:"minecraft:glass_pane",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:3,y:0,item:"minecraft:glass_pane",enchant:0}

function qiq2i_map2:ui/summoning_ui {id:"none",x:4,y:0,item:"minecraft:glass_pane",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:4,y:1,item:"minecraft:glass_pane",enchant:0}
function qiq2i_map2:ui/summoning_ui {id:"none",x:4,y:2,item:"minecraft:glass_pane",enchant:0}