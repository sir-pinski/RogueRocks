/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 573CB3C8
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C21B7B1
/// @DnDInput : 2
/// @DnDBreak : 1

/// @DnDArgument : "expr" "max_large_hp"
/// @DnDArgument : "expr_1" "max_large_hp"
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_1" "max_hp"
hp = max_large_hp;
max_hp = max_large_hp;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6448A508
/// @DnDArgument : "funcName" "destroyRock"
function destroyRock() 
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 04C04632
	/// @DnDParent : 6448A508
	/// @DnDArgument : "value" "50"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" " points"
	global. points += 50;

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 787BAF54
	/// @DnDParent : 6448A508
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "2"
	effect_create_above(0, x + 0, y + 0, 2, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 46C82B47
	/// @DnDParent : 6448A508
	/// @DnDArgument : "soundid" "big_crack_1"
	/// @DnDSaveInfo : "soundid" "big_crack_1"
	audio_play_sound(big_crack_1, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 22CACA90
	/// @DnDParent : 6448A508
	/// @DnDArgument : "xpos" "random_range(-20,5)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "random_range(-20,5)"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_rock_small"
	/// @DnDSaveInfo : "objectid" "obj_rock_small"
	instance_create_layer(x + random_range(-20,5), y + random_range(-20,5), "Instances", obj_rock_small);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4660DF27
	/// @DnDParent : 6448A508
	/// @DnDArgument : "xpos" "random_range(-5,20)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "random_range(-5,20)"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_rock_small"
	/// @DnDSaveInfo : "objectid" "obj_rock_small"
	instance_create_layer(x + random_range(-5,20), y + random_range(-5,20), "Instances", obj_rock_small);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61FFE625
	/// @DnDParent : 6448A508
	instance_destroy();
}