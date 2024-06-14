scoreboard objectives add qiq2i_1 dummy
scoreboard objectives add qiq2i_kill dummy
scoreboard objectives add qiq2i_tower.mob.Hmax dummy
scoreboard objectives add qiq2i_tower.mob.H dummy
#scoreboard objectives add qiq2i_tower.mob.M dummy
scoreboard objectives add qiq2i_tower.mob.money dummy
scoreboard objectives add qiq2i_tower.mob.fx dummy
scoreboard objectives add qiq2i_map2.tower.id dummy
scoreboard objectives add qiq2i_map2.tower.level dummy
scoreboard objectives add qiq2i_map2.tower.player dummy
scoreboard objectives add qiq2i_map2.tower.tick dummy
scoreboard objectives add qiq2i_map2.tower.js dummy
scoreboard objectives add qiq2i_map2.tower.sl dummy
scoreboard objectives add qiq2i_map2.ui trigger
scoreboard objectives add qiq2i_map2.use.coas minecraft.used:minecraft.carrot_on_a_stick

setworldspawn 55 -59 55
gamerule mobGriefing false
gamerule keepInventory true

##tick
function qiq2i_map2:tick10
function qiq2i_map2:tick5
function qiq2i_map2:tick4
function qiq2i_map2:tick1

##存储更新
function qiq2i_map2:storage

####地图适配
data remove storage qiq2i_map2 map
data modify storage qiq2i_map2 map.id set value "HL_JingYu_LN"

##强制加载
execute if data storage qiq2i_map2 map{id:"HL_JingYu_LN"} run forceload add -48 -48 48 48
execute if data storage qiq2i_map2 map{id:"xiao_qi_zi"} run forceload add 0 0 111 111