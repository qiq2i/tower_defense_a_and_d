$data merge entity @s {item_display:"gui",width:1f,height:2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,$(y)f,4f],scale:[0.8f,0.8f,0.8f]},item:{id:"$(item)",count:1,components:{"minecraft:custom_data":{id:"$(id)",x:$(x),y:$(y),uuid:$(uuid)},"minecraft:enchantment_glint_override":$(enchant)}},Tags:["qiq2i_map2.ui"],Rotation:$(Rotation)}

##骑乘至该标记所骑乘的展示实体
ride @s mount @e[type=block_display,tag=qiq2i_map2.temp_summoning_ui.ride,limit=1,sort=nearest]