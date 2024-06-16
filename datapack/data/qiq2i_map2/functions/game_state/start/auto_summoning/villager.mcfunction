##简易放怪模式 - 某些特技重要则特殊调整
$execute if score @s qiq2i_map2.income matches ..300 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"zombie",tellraw:0}
$execute if score @s qiq2i_map2.income matches ..450 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"guardian",tellraw:0}
$execute if score @s qiq2i_map2.income matches ..1000 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"goat",tellraw:0}
$execute if score @s qiq2i_map2.income matches ..51000 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"trader_llama",tellraw:0}
$execute if score @s qiq2i_map2.income matches ..15000 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"chicken",tellraw:0}
$function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"spider",tellraw:0}
$execute if score @s qiq2i_map2.income matches ..140000 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"pillager",tellraw:0}
$execute if score @s qiq2i_map2.income matches ..180000 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"villager",tellraw:0}
$execute if score @s qiq2i_map2.income matches ..51000 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"skeleton",tellraw:0}
$execute if score @s qiq2i_map2.income matches ..90000 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"zombie_villager",tellraw:0}
$execute if score @s qiq2i_map2.income matches ..120000 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"sheep",tellraw:0}
$execute if score @s qiq2i_map2.income matches ..140000 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"cow",tellraw:0}
$execute if score @s qiq2i_map2.income matches ..500000 run function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"wandering_trader",tellraw:0}
$function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"horse",tellraw:0}
$function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"creeper",tellraw:0}
$function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"fox",tellraw:0}
$function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"allay",tellraw:0}
$function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"cat",tellraw:0}
$function qiq2i_map2:function/summon/input_uuid {uuid:$(uuid),mob_id:"wither_skeleton",tellraw:0}