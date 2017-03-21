/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 0B719CB0
/// @DnDArgument : "xscale" "0.02"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0.02"
/// @DnDArgument : "yscale_relative" "1"

{
	image_xscale += 0.02;
	image_yscale += 0.02;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F58008E
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(image_xscale >= 1)
{
	

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 560D7AF9
	/// @DnDParent : 7F58008E
	
	{
		image_xscale = 1;
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3FB0A38A
	/// @DnDParent : 7F58008E
	/// @DnDArgument : "objind" "obj_enemy"
	/// @DnDSaveInfo : "objind" "cd05c0a7-d461-44cb-b2bc-db1391059b84"
	instance_change(obj_enemy, true);


}

