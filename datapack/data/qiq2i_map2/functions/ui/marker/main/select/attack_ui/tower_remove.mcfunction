$function qiq2i_map2:function/tower_remove/input_uuid {uuid:$(uuid),tower_uuid:"$(tower_uuid)"}

##关闭ui
$execute as @a[nbt={UUID:$(uuid)},limit=1] run function qiq2i_map2:ui/close {uuid:$(uuid)}