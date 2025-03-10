/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 21A75DC0
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "walk_speed"
walk_speed += 8;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4C9F7EAA
/// @DnDArgument : "steps" "5 * 60"
alarm_set(0, 5 * 60);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 7CC8EDC7
/// @DnDArgument : "soundid" "PowerupSFX"
/// @DnDSaveInfo : "soundid" "PowerupSFX"
audio_play_sound(PowerupSFX, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4B87B1CD
/// @DnDArgument : "colour" "$FF56FF9A"
image_blend = $FF56FF9A & $ffffff;
image_alpha = ($FF56FF9A >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 494832B9
/// @DnDApplyTo : other
with(other) instance_destroy();