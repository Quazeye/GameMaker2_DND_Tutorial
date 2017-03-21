/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AC2FD98
/// @DnDArgument : "var" "vc"
/// @DnDArgument : "value" "view_camera[0]"
var vc = view_camera[0];


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 123ADACB
/// @DnDArgument : "var" "cx"
/// @DnDArgument : "value" "camera_get_view_x(vc)"
var cx = camera_get_view_x(vc);


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BC94F03
/// @DnDArgument : "var" "cy"
/// @DnDArgument : "value" "camera_get_view_y(vc)"
var cy = camera_get_view_y(vc);


/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 376C6C46
/// @DnDArgument : "var" "cw"
/// @DnDArgument : "value" "camera_get_view_width(vc)"
var cw = camera_get_view_width(vc);


/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5BE4ACFB
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "d7239de3-51b9-41f6-9fb9-54dd36b187ce"

{
	draw_set_font(fnt_score);
}

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1
/// @DnDHash : 052B7194
/// @DnDArgument : "halign" "1"

{
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 209B43A2
draw_set_colour($FFFFFFFF & $ffffff);
draw_set_alpha(($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7616EC29
/// @DnDArgument : "x" "cx + (cw / 2)"
/// @DnDArgument : "y" "cy + 32"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "thescore"

{
	var l7616EC29_0 = cx + (cw / 2);
	var l7616EC29_1 = cy + 32;
	draw_text(l7616EC29_0, l7616EC29_1, string("Score: ") + string(thescore));
}

