data remove storage qiq2i_map2 tower
##防御塔频率为tick5,每0.2秒执行，故速度最大为5 次/秒。
##speed单位 次/秒
data modify storage qiq2i_map2 tower append value {id:"tower.1",num:1,name:"单体塔",entity_id:"pig",level:{1:{money:20,damage:5,speed:1,range:10,scale:0.8,target_count:1},2:{money:20,damage:10,speed:1,range:10,scale:0.9,target_count:1},3:{money:40,damage:20,speed:1,range:10,scale:1.0,target_count:1},4:{money:80,damage:40,speed:1,range:10,scale:1.1,target_count:1}}}