/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1A09D1BC
/// @DnDArgument : "font" "fnt_damage_doober"
/// @DnDSaveInfo : "font" "fnt_damage_doober"
draw_set_font(fnt_damage_doober);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 6D0A14EB
/// @DnDArgument : "alpha" "min(fade_curr,1)"
draw_set_alpha(min(fade_curr,1));

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 24A928D3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "scale_curr"
/// @DnDArgument : "yscale" "scale_curr"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text_value"
/// @DnDArgument : "angle" "direction - 90"
draw_text_transformed(x + 0, y + 0, "" + string(text_value), scale_curr, scale_curr, direction - 90);