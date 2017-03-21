/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 104AF6CB
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "39af5087-af5e-4c54-bc9f-8935ad42a82e"
var l104AF6CB_0 = false;
l104AF6CB_0 = instance_exists(obj_player);
if(l104AF6CB_0)
{
	

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5DBE9414
	/// @DnDParent : 104AF6CB
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	
	{
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 025B19D3
	/// @DnDParent : 104AF6CB
	/// @DnDArgument : "speed" "spd"
	
	{
		speed = spd;
	}


}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 2700DB6D
/// @DnDArgument : "angle" "direction"

{
	image_angle = direction;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59FFABF2
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 059D1459
	/// @DnDApplyTo : 2dec2a26-e789-4075-ab2f-57ac73aa2419
	/// @DnDParent : 59FFABF2
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 0F9AC9F9
	/// @DnDParent : 59FFABF2
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "random_range(0.8, 1.2)"
	/// @DnDSaveInfo : "sound" "0c142070-7b9a-4284-8505-87ed34cfeeb3"
	
	{
		audio_sound_pitch(snd_death, random_range(0.8, 1.2));
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 488C5762
	/// @DnDParent : 59FFABF2
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "0c142070-7b9a-4284-8505-87ed34cfeeb3"
	
	{
		audio_play_sound(snd_death, 0, 0);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5E79F589
	/// @DnDParent : 59FFABF2
	instance_destroy();


}

