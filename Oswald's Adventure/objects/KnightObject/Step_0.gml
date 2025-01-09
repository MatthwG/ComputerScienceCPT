/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 19338B2D
/// @DnDArgument : "var" "Oswald.x - KnightObject.x"
/// @DnDArgument : "op" "1"
if(Oswald.x - KnightObject.x < 0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 231C8010
	/// @DnDParent : 19338B2D
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 57381C04
	/// @DnDParent : 19338B2D
	/// @DnDArgument : "speed" "1"
	speed = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51C985CA
	/// @DnDParent : 19338B2D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 26DB320F
/// @DnDArgument : "var" "Oswald.x - KnightObject.x"
/// @DnDArgument : "op" "2"
if(Oswald.x - KnightObject.x > 0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 34D8BFBA
	/// @DnDParent : 26DB320F
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 76F69AA3
	/// @DnDParent : 26DB320F
	/// @DnDArgument : "speed" "1"
	speed = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58BF7D54
	/// @DnDParent : 26DB320F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = -1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01996CA1
/// @DnDArgument : "var" "Oswald.x - KnightObject.x"
if(Oswald.x - KnightObject.x == 0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 16E82BC2
	/// @DnDParent : 01996CA1
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 63CA4F34
	/// @DnDParent : 01996CA1
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C3A7AE8
	/// @DnDParent : 01996CA1
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = -1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 388B2543
/// @DnDArgument : "var" "health"
/// @DnDArgument : "op" "3"
if(health <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2E5EB284
	/// @DnDParent : 388B2543
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "KnightDead"
	/// @DnDSaveInfo : "spriteind" "KnightDead"
	sprite_index = KnightDead;
	image_index += 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 675284EB
	/// @DnDParent : 388B2543
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04D94EBF
	/// @DnDParent : 388B2543
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_speed"
	image_speed = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69A42AB4
	/// @DnDParent : 388B2543
	/// @DnDArgument : "var" "image_index"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "image_number-1"
	if(image_index >= image_number-1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3F3BB4F1
		/// @DnDParent : 69A42AB4
		instance_destroy();}}