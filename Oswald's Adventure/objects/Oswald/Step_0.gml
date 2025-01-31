/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 14CDB5E8
/// @DnDArgument : "var" "getjumpedboi"
global.getjumpedboi = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 352B2CD3
/// @DnDInput : 2
/// @DnDArgument : "var" "left"
left = 0;
variable = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2E107ECC
/// @DnDArgument : "var" "right"
right = 0;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 66F9A367
/// @DnDArgument : "key" "ord("D")"
var l66F9A367_0;l66F9A367_0 = keyboard_check(ord("D"));if (l66F9A367_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BA0902F
	/// @DnDParent : 66F9A367
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "right"
	right = 1;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 36D67448
/// @DnDArgument : "key" "ord("A")"
var l36D67448_0;l36D67448_0 = keyboard_check(ord("A"));if (l36D67448_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DA1B7F2
	/// @DnDParent : 36D67448
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "left"
	left = 1;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75770C70
/// @DnDInput : 2
/// @DnDArgument : "expr" "right-left"
/// @DnDArgument : "expr_1" "move_x * move_speed"
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "var_1" "move_x"
move_x = right-left;
move_x = move_x * move_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 47EC289F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "WalkingBox"
/// @DnDSaveInfo : "object" "WalkingBox"
var l47EC289F_0 = instance_place(x + 0, y + 2, [WalkingBox]);if ((l47EC289F_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
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
	/// @DnDArgument : "value" "5"
	if(move_y < 5){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2ACA6169
		/// @DnDParent : 36904E34
		/// @DnDArgument : "expr" "0.7"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 0.7;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 6FE46D98
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "xoff" "2"
/// @DnDArgument : "yoff" "2"
/// @DnDArgument : "maxxmove" "5"
/// @DnDArgument : "maxymove" "50"
/// @DnDArgument : "object" "WalkingBox"
/// @DnDSaveInfo : "object" "WalkingBox"
move_and_collide(move_x, move_y, WalkingBox,4,2,2,5,50);

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
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1902B8E4
	/// @DnDParent : 15E03555
	/// @DnDArgument : "var" "global.Punching"
	global.Punching = 0;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1158EA33
/// @DnDArgument : "key" "ord("W")"
var l1158EA33_0;l1158EA33_0 = keyboard_check(ord("W"));if (l1158EA33_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 107AFDA5
	/// @DnDParent : 1158EA33
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "PlayerPunch"
	/// @DnDSaveInfo : "spriteind" "PlayerPunch"
	sprite_index = PlayerPunch;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5FDCA1B5
	/// @DnDParent : 1158EA33
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.Punching"
	global.Punching = 1;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2EAB9D7E
/// @DnDArgument : "key" "ord("D")"
var l2EAB9D7E_0;l2EAB9D7E_0 = keyboard_check(ord("D"));if (l2EAB9D7E_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 506C03B2
	/// @DnDParent : 2EAB9D7E
	/// @DnDArgument : "key" "ord("W")"
	/// @DnDArgument : "not" "1"
	var l506C03B2_0;l506C03B2_0 = keyboard_check(ord("W"));if (!l506C03B2_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 1D96F353
		/// @DnDParent : 506C03B2
		/// @DnDArgument : "key" "ord("E")"
		/// @DnDArgument : "not" "1"
		var l1D96F353_0;l1D96F353_0 = keyboard_check(ord("E"));if (!l1D96F353_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 27811BC3
			/// @DnDParent : 1D96F353
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "PlayerRun"
			/// @DnDSaveInfo : "spriteind" "PlayerRun"
			sprite_index = PlayerRun;
			image_index += 0;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 7CA3184C
			/// @DnDParent : 1D96F353
			/// @DnDArgument : "var" "global.Punching"
			global.Punching = 0;}}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 200CB6FA
/// @DnDArgument : "key" "ord("A")"
var l200CB6FA_0;l200CB6FA_0 = keyboard_check(ord("A"));if (l200CB6FA_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 68FFA121
	/// @DnDParent : 200CB6FA
	/// @DnDArgument : "key" "ord("W")"
	/// @DnDArgument : "not" "1"
	var l68FFA121_0;l68FFA121_0 = keyboard_check(ord("W"));if (!l68FFA121_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 2C6C3A35
		/// @DnDParent : 68FFA121
		/// @DnDArgument : "key" "ord("E")"
		/// @DnDArgument : "not" "1"
		var l2C6C3A35_0;l2C6C3A35_0 = keyboard_check(ord("E"));if (!l2C6C3A35_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1B8D01F2
			/// @DnDParent : 2C6C3A35
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "PlayerRun"
			/// @DnDSaveInfo : "spriteind" "PlayerRun"
			sprite_index = PlayerRun;
			image_index += 0;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 52D9338A
			/// @DnDParent : 2C6C3A35
			/// @DnDArgument : "var" "global.Punching"
			global.Punching = 0;}}}

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
	image_xscale = sign(move_x) *1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 440DE609
	/// @DnDParent : 256E31E1
	/// @DnDArgument : "value" "Oswald.image_xscale"
	/// @DnDArgument : "var" "flipped"
	global.flipped = Oswald.image_xscale;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 04B689B9
/// @DnDArgument : "key" "ord("E")"
var l04B689B9_0;l04B689B9_0 = keyboard_check(ord("E"));if (l04B689B9_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28415535
	/// @DnDParent : 04B689B9
	/// @DnDArgument : "var" "global.ammo"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "3"
	if(!(global.ammo <= 0)){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6C4E8727
		/// @DnDParent : 28415535
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "OswaldDaggerSprite"
		/// @DnDSaveInfo : "spriteind" "OswaldDaggerSprite"
		sprite_index = OswaldDaggerSprite;
		image_index += 0;}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 4B999634
/// @DnDArgument : "key" "ord("E")"
var l4B999634_0;l4B999634_0 = keyboard_check_released(ord("E"));if (l4B999634_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6184D704
	/// @DnDParent : 4B999634
	/// @DnDArgument : "var" "global.ammo"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "3"
	if(!(global.ammo <= 0)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6230CDFA
		/// @DnDParent : 6184D704
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "Dagger"
		/// @DnDArgument : "layer" ""TopLayer""
		/// @DnDSaveInfo : "objectid" "Dagger"
		instance_create_layer(x + 0, y + 0, "TopLayer", Dagger);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5061B931
/// @DnDArgument : "var" "global.swordhit"
/// @DnDArgument : "value" "1"
if(global.swordhit == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3BC97794
	/// @DnDParent : 5061B931
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "TeleportAway"
	/// @DnDSaveInfo : "spriteind" "TeleportAway"
	sprite_index = TeleportAway;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DB6FBEF
	/// @DnDParent : 5061B931
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_speed"
	image_speed = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7661D676
	/// @DnDParent : 5061B931
	/// @DnDArgument : "var" "image_index"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "6"
	if(image_index >= 6){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 4670E6D6
		/// @DnDParent : 7661D676
		/// @DnDArgument : "room" "Room3"
		/// @DnDSaveInfo : "room" "Room3"
		room_goto(Room3);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 77471794
		/// @DnDParent : 7661D676
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "global.getjumpedboi"
		global.getjumpedboi = 1;}}