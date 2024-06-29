/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C21B7B1
/// @DnDInput : 5
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "global.stage*50 + 200"
/// @DnDArgument : "expr_2" "global.stage*25+25"
/// @DnDArgument : "expr_3" "max_large_hp"
/// @DnDArgument : "expr_4" "max_hp"
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "var_1" "max_large_hp"
/// @DnDArgument : "var_2" "max_small_hp"
/// @DnDArgument : "var_3" "max_hp"
/// @DnDArgument : "var_4" "hp"
speed = 1;
max_large_hp = global.stage*50 + 200;
max_small_hp = global.stage*25+25;
max_hp = max_large_hp;
hp = max_hp;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 15306424
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 417B6796
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "max" "360"
image_angle = (random_range(0, 360));