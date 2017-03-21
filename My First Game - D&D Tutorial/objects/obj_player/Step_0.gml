/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 474B41B1
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"

{
	direction = point_direction(x, y, mouse_x, mouse_y);
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 4659A6FF
/// @DnDArgument : "angle" "direction"

{
	image_angle = direction;
}

