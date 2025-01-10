/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 25A03F9E
/// @DnDArgument : "font" "fnt_menu"
/// @DnDSaveInfo : "font" "fnt_menu"
draw_set_font(fnt_menu);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 244A5282
/// @DnDArgument : "x" "Oswald.x-3"
/// @DnDArgument : "y" "Oswald.y - 38"
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
/// @DnDArgument : "caption" " global.ammo"
draw_text_transformed(Oswald.x-3, Oswald.y - 38, string( global.ammo) + "", 0.5, 0.5, 0);