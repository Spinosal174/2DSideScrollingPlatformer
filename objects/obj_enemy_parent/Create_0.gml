/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F652DA6
/// @DnDArgument : "expr" "layer_tilemap_get_id("Tiles")"
/// @DnDArgument : "var" "collision_tilemap "
collision_tilemap  = layer_tilemap_get_id("Tiles");

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 52999A6A
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;