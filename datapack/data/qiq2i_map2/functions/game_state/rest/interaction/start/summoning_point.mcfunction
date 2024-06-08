
##生成刷怪点
$execute if data storage qiq2i_map2 map{id:"xiao_qi_zi"} run summon marker ~43 ~2 ~4 {Tags:["qiq2i_map2.summoning.$(id)","qiq2i_map2.summoning"],data:{id:$(id)}}

$execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} if entity @s[tag=qiq2i_map2.player.1] positioned -2 29 -43 run summon marker ~ ~ ~ {Tags:["qiq2i_map2.summoning.$(id)","qiq2i_map2.summoning"],data:{id:$(id)}}
$execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} if entity @s[tag=qiq2i_map2.player.2] positioned 33 29 74 run summon marker ~ ~ ~ {Tags:["qiq2i_map2.summoning.$(id)","qiq2i_map2.summoning"],data:{id:$(id)}}
$execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} if entity @s[tag=qiq2i_map2.player.3] positioned 74 29 -2 run summon marker ~ ~ ~ {Tags:["qiq2i_map2.summoning.$(id)","qiq2i_map2.summoning"],data:{id:$(id)}}
$execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} if entity @s[tag=qiq2i_map2.player.4] positioned -43 29 33 run summon marker ~ ~ ~ {Tags:["qiq2i_map2.summoning.$(id)","qiq2i_map2.summoning"],data:{id:$(id)}}
##怪物终点
$execute if data storage qiq2i_map2 map{id:"xiao_qi_zi"} run summon marker ~4 ~2 ~4 {Tags:["qiq2i_map2.home.$(id)","qiq2i_map2.home"],data:{id:$(id)}}

$execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} if entity @s[tag=qiq2i_map2.player.1] positioned -6 29 -3 run summon marker ~ ~ ~ {Tags:["qiq2i_map2.home.$(id)","qiq2i_map2.home"],data:{id:$(id)}}
$execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} if entity @s[tag=qiq2i_map2.player.2] positioned 37 29 34 run summon marker ~ ~ ~ {Tags:["qiq2i_map2.home.$(id)","qiq2i_map2.home"],data:{id:$(id)}}
$execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} if entity @s[tag=qiq2i_map2.player.3] positioned 34 29 -6 run summon marker ~ ~ ~ {Tags:["qiq2i_map2.home.$(id)","qiq2i_map2.home"],data:{id:$(id)}}
$execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} if entity @s[tag=qiq2i_map2.player.4] positioned -3 29 37 run summon marker ~ ~ ~ {Tags:["qiq2i_map2.home.$(id)","qiq2i_map2.home"],data:{id:$(id)}}