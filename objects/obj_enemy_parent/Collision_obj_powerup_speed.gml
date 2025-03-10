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

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4B87B1CD
/// @DnDArgument : "colour" "$FFA0FFA2"
image_blend = $FFA0FFA2 & $ffffff;
image_alpha = ($FFA0FFA2 >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 494832B9
/// @DnDApplyTo : other
with(other) instance_destroy();