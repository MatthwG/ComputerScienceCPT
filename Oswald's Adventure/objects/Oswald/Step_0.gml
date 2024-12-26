/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75770C70
/// @DnDInput : 2
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "expr_1" "move_x * move_speed"
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "var_1" "move_x"
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x = move_x * move_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 47EC289F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "obj_wall"
var l47EC289F_0 = instance_place(x + 0, y + 2, [obj_wall]);if ((l47EC289F_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 355C39F5
	/// @DnDParent : 47EC289F
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3B4FB801
	/// @DnDParent : 47EC289F
	var l3B4FB801_0;l3B4FB801_0 = keyboard_check(vk_space);if (l3B4FB801_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7168537C
		/// @DnDParent : 3B4FB801
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7F13C7C3
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36904E34
	/// @DnDParent : 7F13C7C3
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2ACA6169
		/// @DnDParent : 36904E34
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 6FE46D98
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "5"
/// @DnDArgument : "maxymove" "7"
/// @DnDArgument : "object" "obj_wall"
/// @DnDSaveInfo : "object" "obj_wall"
move_and_collide(move_x, move_y, obj_wall,4,0,0,5,7);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 15E03555
/// @DnDArgument : "var" "move_x"
if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 51E5E41D
	/// @DnDParent : 15E03555
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "PlayerIdle"
	/// @DnDSaveInfo : "spriteind" "PlayerIdle"
	sprite_index = PlayerIdle;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A220070
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "not" "1"
if(!(move_x == 0)){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 27811BC3
	/// @DnDParent : 5A220070
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "PlayerRun"
	/// @DnDSaveInfo : "spriteind" "PlayerRun"
	sprite_index = PlayerRun;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 256E31E1
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "not" "1"
if(!(move_x == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 145169ED
	/// @DnDParent : 256E31E1
	/// @DnDArgument : "expr" "sign(move_x) *1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = sign(move_x) *1;}