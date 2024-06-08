##展示实体和交互实体
execute if data storage qiq2i_map2 map{id:"xiao_qi_zi"} unless entity @e[type=interaction,tag=qiq2i_map2.rest.start] run summon interaction 62.5 -57.0 56.0 {Tags:["qiq2i_map2.rest.start","qiq2i_map2.rest"]}
execute if data storage qiq2i_map2 map{id:"xiao_qi_zi"} unless entity @e[type=text_display,tag=qiq2i_map2.rest.text.1] run summon text_display 62.5 -56.5 56.0 {view_range:1f,width:1f,height:1f,billboard:"center",Tags:["qiq2i_map2.rest.text.1","qiq2i_map2.rest"],text:'[{"text":"右键点击开始"}]'}
execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} unless entity @e[type=interaction,tag=qiq2i_map2.rest.start] run summon interaction 10 66 15 {Tags:["qiq2i_map2.rest.start","qiq2i_map2.rest"]}
execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} unless entity @e[type=text_display,tag=qiq2i_map2.rest.text.1] run summon text_display 10 66.5 15 {view_range:1f,width:1f,height:1f,billboard:"center",Tags:["qiq2i_map2.rest.text.1","qiq2i_map2.rest"],text:'[{"text":"右键点击开始"}]'}

##村民测试员
execute if data storage qiq2i_map2 map{id:"xiao_qi_zi"} unless entity @e[type=interaction,tag=qiq2i_map2.rest.villager] run summon interaction 61 -57 52 {Tags:["qiq2i_map2.rest.villager","qiq2i_map2.rest"]}
execute if data storage qiq2i_map2 map{id:"xiao_qi_zi"} unless entity @e[type=text_display,tag=qiq2i_map2.rest.text.villager] run summon text_display 61 -56.5 52 {view_range:1f,width:1f,height:1f,billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]},Tags:["qiq2i_map2.rest.text.villager","qiq2i_map2.rest"],text:'[{"text":"右键召唤测试员村民\\n当人数不满4人时村民会加入"}]'}
execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} unless entity @e[type=interaction,tag=qiq2i_map2.rest.villager] run summon interaction 14 66 22 {Tags:["qiq2i_map2.rest.villager","qiq2i_map2.rest"]}
execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} unless entity @e[type=text_display,tag=qiq2i_map2.rest.text.villager] run summon text_display 14 66.5 22 {view_range:1f,width:1f,height:1f,billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[0.5f,0.5f,0.5f]},Tags:["qiq2i_map2.rest.text.villager","qiq2i_map2.rest"],text:'[{"text":"右键召唤测试员村民\\n当人数不满4人时村民会加入"}]'}

##交互实体特效
execute as @e[type=interaction] at @s run particle happy_villager ~ ~ ~ 0.3 0.05 0.3 0 1

##右键交互实体开始游戏
execute as @e[type=interaction,tag=qiq2i_map2.rest.start] if data entity @s interaction run function qiq2i_map2:game_state/rest/interaction/start with entity @s interaction

##右键交互实体召唤测试员村民
execute as @e[type=interaction,tag=qiq2i_map2.rest.villager] at @s if data entity @s interaction run function qiq2i_map2:game_state/rest/interaction/villager