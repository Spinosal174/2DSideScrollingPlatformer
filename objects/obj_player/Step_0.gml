/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 47860B89
/// @DnDComment : 1 would be pressing right$(13_10)-1 would be pressing left$(13_10)0 would be no input
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 382B6C21
/// @DnDArgument : "expr" "keyboard_check(vk_left)||(gamepad_button_check(0,gp_padl))||(gamepad_axis_value(0,gp_axislh) <-0.2)"
/// @DnDArgument : "var" "controls_input_left"
controls_input_left = keyboard_check(vk_left)||(gamepad_button_check(0,gp_padl))||(gamepad_axis_value(0,gp_axislh) <-0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48998673
/// @DnDArgument : "expr" "keyboard_check(vk_right)||(gamepad_button_check(0,gp_padr))||(gamepad_axis_value(0,gp_axislh) >0.2)"
/// @DnDArgument : "var" "controls_input_right"
controls_input_right = keyboard_check(vk_right)||(gamepad_button_check(0,gp_padr))||(gamepad_axis_value(0,gp_axislh) >0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3493EC7F
/// @DnDArgument : "expr" "controls_input_right - controls_input_left"
/// @DnDArgument : "var" "move_x"
move_x = controls_input_right - controls_input_left;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 28A03988
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 408219E3
/// @DnDDisabled : 1
/// @DnDArgument : "msg" "move_x"


/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 785AF0C1
/// @DnDComment : If we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l785AF0C1_0 = instance_place(x + 0, y + 2, [collision_tilemap]);
if ((l785AF0C1_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56437D2E
	/// @DnDComment : Reset the falling speed$(13_10)on movement y$(13_10)when you landed on ground
	/// @DnDParent : 785AF0C1
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 1442041A
	/// @DnDParent : 785AF0C1
	var l1442041A_0;
	l1442041A_0 = keyboard_check_pressed(vk_space);
	if (l1442041A_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2BD61F0D
		/// @DnDComment : Jump
		/// @DnDParent : 1442041A
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 23A35492
	/// @DnDParent : 785AF0C1
	/// @DnDArgument : "btn" "gp_face1"
	var l23A35492_0 = 0;
	var l23A35492_1 = gp_face1;
	if(gamepad_is_connected(l23A35492_0) && gamepad_button_check_pressed(l23A35492_0, l23A35492_1))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BA3C22B
		/// @DnDComment : Jump
		/// @DnDParent : 23A35492
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 397FEAD0
/// @DnDComment : If you're not$(13_10)on the ground
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C1C3339
	/// @DnDComment : If we are$(13_10)falling after$(13_10)a jump
	/// @DnDParent : 397FEAD0
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6CDF0343
		/// @DnDComment : Add gravity
		/// @DnDParent : 6C1C3339
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 5AA0BD49
/// @DnDComment : 1st object is$(13_10)the object to avoid
/// @DnDApplyTo : {obj_player}
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,4,0,0,walk_speed,jump_speed);