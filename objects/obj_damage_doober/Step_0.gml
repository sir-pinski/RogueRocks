/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 34D32F4E
draw_self();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3725F8BC
/// @DnDInput : 4
/// @DnDArgument : "expr" "-fade_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "-wham_speed"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_2" "max(wham_max*(1+min(0,wham_timer)),wham_min)"
/// @DnDArgument : "expr_3" "-friction"
/// @DnDArgument : "expr_relative_3" "1"
/// @DnDArgument : "var" "fade_curr"
/// @DnDArgument : "var_1" "wham_timer"
/// @DnDArgument : "var_2" "scale_curr"
/// @DnDArgument : "var_3" "curr_speed"
fade_curr += -fade_speed;
wham_timer += -wham_speed;
scale_curr = max(wham_max*(1+min(0,wham_timer)),wham_min);
curr_speed += -friction;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 10B9BE2E
/// @DnDArgument : "value" "max(1,curr_speed)"
/// @DnDArgument : "instvar" "3"
speed = max(1,curr_speed);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 286F5183
/// @DnDArgument : "var" "fade_curr"
/// @DnDArgument : "op" "3"
if(fade_curr <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D8A0916
	/// @DnDParent : 286F5183
	instance_destroy();
}