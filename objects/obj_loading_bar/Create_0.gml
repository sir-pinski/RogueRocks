/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 56C8C3D6
/// @DnDArgument : "xpos" "-10"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "var" "border"
/// @DnDArgument : "objectid" "obj_loading_bar_border"
/// @DnDSaveInfo : "objectid" "obj_loading_bar_border"
border = instance_create_layer(x + -10, 0, "Instances", obj_loading_bar_border);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 26587B4A
/// @DnDArgument : "xpos" "-10"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "var" "fill"
/// @DnDArgument : "objectid" "obj_loading_bar_interior"
/// @DnDSaveInfo : "objectid" "obj_loading_bar_interior"
fill = instance_create_layer(x + -10, 0, "Instances", obj_loading_bar_interior);