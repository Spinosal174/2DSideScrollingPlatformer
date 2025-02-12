/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4F5B2D35
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_player"
var l4F5B2D35_0 = false;
l4F5B2D35_0 = instance_exists(obj_player);
if(!l4F5B2D35_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 49E10ACC
	/// @DnDParent : 4F5B2D35
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0BAD4B59
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7DCE6EE1
/// @DnDArgument : "font" "font_opensans"
/// @DnDSaveInfo : "font" "font_opensans"
draw_set_font(font_opensans);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0EC383C2
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-15"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Coins: ""
/// @DnDArgument : "var" "obj_player.coins"
draw_text(x + 30, y + -15, string("Coins: ") + string(obj_player.coins));