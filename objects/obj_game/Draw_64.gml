/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 45EE2702
/// @DnDArgument : "font" "fnt_menu"
/// @DnDSaveInfo : "font" "fnt_menu"
draw_set_font(fnt_menu);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 24EF7B64
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 61C9B69E
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" "global.points"
draw_text(10, 10, string(global.points) + "");