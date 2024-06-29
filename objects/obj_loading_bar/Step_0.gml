/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7717DDC2
/// @DnDInput : 4
/// @DnDArgument : "expr" "x"
/// @DnDArgument : "expr_1" "y"
/// @DnDArgument : "expr_2" "x"
/// @DnDArgument : "expr_3" "y"
/// @DnDArgument : "var" "border.x"
/// @DnDArgument : "var_1" "border.y"
/// @DnDArgument : "var_2" "fill.x"
/// @DnDArgument : "var_3" "fill.y"
border.x = x;
border.y = y;
fill.x = x;
fill.y = y;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AB6B0F1
/// @DnDArgument : "var" "max_value"
/// @DnDArgument : "op" "2"
if(max_value > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35B24A62
	/// @DnDParent : 4AB6B0F1
	/// @DnDArgument : "expr" "min(60,60*curr_value/max_value)"
	/// @DnDArgument : "var" "fill.image_xscale"
	fill.image_xscale = min(60,60*curr_value/max_value);
}