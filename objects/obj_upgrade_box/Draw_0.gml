/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 2ECF20F1
/// @DnDArgument : "alpha" "mouse_over?1:0.75"
draw_set_alpha(mouse_over?1:0.75);

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 45D4C402
/// @DnDArgument : "alpha" "mouse_over?1:0.75"
image_alpha = mouse_over?1:0.75;

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4A07B2C8
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5B90E08E
/// @DnDArgument : "font" "fnt_upgrade_title"
/// @DnDSaveInfo : "font" "fnt_upgrade_title"
draw_set_font(fnt_upgrade_title);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 465A8795
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68550AD3
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext(x+sprite_width/2,y+40,title,40,200);"
/// @description Execute Code
draw_text_ext(x+sprite_width/2,y+40,title,40,200);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 17765FC2
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5C681954
/// @DnDArgument : "font" "fnt_upgrade_desc"
/// @DnDSaveInfo : "font" "fnt_upgrade_desc"
draw_set_font(fnt_upgrade_desc);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4354AE57
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_text_ext(x+10,y+80,description,20,240);"
/// @description Execute Code
draw_text_ext(x+10,y+80,description,20,240);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 6F33A20F
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 671CB70C
image_alpha = 1;