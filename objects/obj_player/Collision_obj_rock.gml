/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 1F837C07
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "3"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
effect_create_above(3, x + 0, y + 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 54A78BF0
/// @DnDInput : 2
/// @DnDArgument : "value" "-500"
/// @DnDArgument : "value_1" "-500"
/// @DnDArgument : "instvar_1" "1"
x = -500;
y = -500;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 05EF8466
/// @DnDArgument : "expr" "false"
if(false)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7B46B007
	/// @DnDParent : 05EF8466
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "instvar" "6"
	visible = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 033ED40E
	/// @DnDParent : 05EF8466
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "inst_player.playerActive"
	inst_player.playerActive = false;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 359D040D
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 05EF8466
	/// @DnDArgument : "steps" "120"
	with(obj_game) {
	alarm_set(0, 120);
	
	}
}