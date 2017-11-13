/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3AD8EE4B
/// @DnDArgument : "steps" "900"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 900);

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 74B07BB0
audio_stop_all();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76B2FED7
/// @DnDArgument : "var" "global.playerDeath"
/// @DnDArgument : "value" "1"
if(global.playerDeath == 1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7DAAE7CA
	/// @DnDParent : 76B2FED7
	/// @DnDArgument : "soundid" "se_deathScream"
	/// @DnDSaveInfo : "soundid" "25301cb4-f510-457b-aa25-4ea428d2bde0"
	audio_play_sound(se_deathScream, 0, 0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 207F9AF3
	/// @DnDParent : 76B2FED7
	/// @DnDArgument : "soundid" "se_deathExplosion"
	/// @DnDSaveInfo : "soundid" "f59e61d2-9fd5-4553-9ddc-144cfe529e03"
	audio_play_sound(se_deathExplosion, 0, 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0D56AA52
else
{
	/// @DnDAction : YoYo Games.Audio.Audio_Set_Position
	/// @DnDVersion : 1
	/// @DnDHash : 594F60D6
	/// @DnDParent : 0D56AA52
	/// @DnDArgument : "sound" "mus_protovision"
	/// @DnDArgument : "time" "9.8"
	/// @DnDSaveInfo : "sound" "d2c82a91-c15a-4ff6-a05c-4bf46d4dcab6"
	audio_sound_set_track_position(mus_protovision, 9.8);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4E070E39
	/// @DnDParent : 0D56AA52
	/// @DnDArgument : "soundid" "mus_protovision"
	/// @DnDSaveInfo : "soundid" "d2c82a91-c15a-4ff6-a05c-4bf46d4dcab6"
	audio_play_sound(mus_protovision, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 765EDEE5
	/// @DnDParent : 0D56AA52
	/// @DnDArgument : "xpos" "512"
	/// @DnDArgument : "ypos" "384"
	/// @DnDArgument : "objectid" "obj_victory"
	/// @DnDSaveInfo : "objectid" "143b30cb-ae1c-41d4-a072-bfcf2ab43dc8"
	instance_create_layer(512, 384, "Instances", obj_victory);
}