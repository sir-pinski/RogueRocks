/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2BFB674B
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C21B7B1
/// @DnDInput : 2
/// @DnDArgument : "expr" "max_small_hp"
/// @DnDArgument : "expr_1" "max_hp"
/// @DnDArgument : "var" "max_hp"
/// @DnDArgument : "var_1" "hp"
max_hp = max_small_hp;
hp = max_hp;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6448A508
/// @DnDArgument : "funcName" "destroyRock"
function destroyRock() 
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0EEC31BE
	/// @DnDParent : 6448A508
	/// @DnDArgument : "soundid" "big_crack_2"
	/// @DnDSaveInfo : "soundid" "big_crack_2"
	audio_play_sound(big_crack_2, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 04C04632
	/// @DnDParent : 6448A508
	/// @DnDArgument : "value" "20"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" " points"
	global. points += 20;

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 787BAF54
	/// @DnDParent : 6448A508
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61FFE625
	/// @DnDParent : 6448A508
	instance_destroy();
}