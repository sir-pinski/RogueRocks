/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A7CEC1C
/// @DnDArgument : "var" "gameActive"
/// @DnDArgument : "value" "1"
if(gameActive == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6259EFF1
	/// @DnDParent : 7A7CEC1C
	/// @DnDArgument : "expr" "instance_number(obj_rock_large)<1 && instance_number(obj_rock_small)<1"
	if(instance_number(obj_rock_large)<1 && instance_number(obj_rock_small)<1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6992AD69
		/// @DnDParent : 6259EFF1
		/// @DnDArgument : "var" "gameActive"
		gameActive = 0;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 344C96BE
		/// @DnDParent : 6259EFF1
		/// @DnDArgument : "function" "newLevel"
		newLevel();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D4DD9B8
	/// @DnDInput : 4
	/// @DnDParent : 7A7CEC1C
	/// @DnDArgument : "expr" "delta_time/1000000"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "shotCurrCooling"
	/// @DnDArgument : "expr_2" "inst_player.x - 30"
	/// @DnDArgument : "expr_3" "inst_player.y + 50"
	/// @DnDArgument : "var" "shotCurrCooling"
	/// @DnDArgument : "var_1" "shot_bar.curr_value"
	/// @DnDArgument : "var_2" "shot_bar.x"
	/// @DnDArgument : "var_3" "shot_bar.y"
	shotCurrCooling += delta_time/1000000;
	shot_bar.curr_value = shotCurrCooling;
	shot_bar.x = inst_player.x - 30;
	shot_bar.y = inst_player.y + 50;
}