/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 317FF946
/// @DnDInput : 3
/// @DnDArgument : "expr" "fade_max"
/// @DnDArgument : "expr_1" "wham_start"
/// @DnDArgument : "expr_2" "start_speed*random_range(0.9,1.1)"
/// @DnDArgument : "var" "fade_curr"
/// @DnDArgument : "var_1" "wham_timer"
/// @DnDArgument : "var_2" "curr_speed"
fade_curr = fade_max;
wham_timer = wham_start;
curr_speed = start_speed*random_range(0.9,1.1);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 64270DDE
/// @DnDInput : 2
/// @DnDArgument : "value" "curr_speed"
/// @DnDArgument : "value_1" "random_range(80,100)"
/// @DnDArgument : "instvar" "3"
/// @DnDArgument : "instvar_1" "2"
speed = curr_speed;
direction = random_range(80,100);