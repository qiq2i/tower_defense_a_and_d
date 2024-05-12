##展示实体和交互实体
execute unless entity @e[type=interaction,tag=qiq2i_map2.rest.start] run summon interaction 0 -55 0 {Tags:["qiq2i_map2.rest.start","qiq2i_map2.rest"]}
execute unless entity @e[type=text_display,tag=qiq2i_map2.rest.text.1] run summon text_display 0 -55 0 {view_range:1f,width:1f,height:1f,billboard:"center",Tags:["qiq2i_map2.rest.text.1","qiq2i_map2.rest"],text:'[{"text":"右键点击开始 "}]'}

##右键交互实体开始游戏
execute as @e[type=interaction,tag=qiq2i_map2.rest.start] if data entity @s interaction run function qiq2i_map2:game_state/rest/interaction/start