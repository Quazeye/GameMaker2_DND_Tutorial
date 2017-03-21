/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 39D972EA
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemyspawn"
/// @DnDArgument : "layer" ""Layer_Enemy""
/// @DnDSaveInfo : "objectid" "be1fd25d-8c13-4bd3-bf1c-f7d57fcc8492"
instance_create_layer(random(room_width), random(room_height), "Layer_Enemy", obj_enemyspawn); 

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1120CCA2
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);


