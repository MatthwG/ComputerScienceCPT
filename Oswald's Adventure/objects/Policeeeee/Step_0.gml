/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 412F72D5
/// @DnDArgument : "var" "Oswald.x - Policeeeee.x"
/// @DnDArgument : "op" "1"
if(Oswald.x - Policeeeee.x < 0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 011A7DB4
	/// @DnDParent : 412F72D5
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4A52934D
	/// @DnDParent : 412F72D5
	/// @DnDArgument : "speed" "1"
	speed = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B252889
	/// @DnDParent : 412F72D5
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = -1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07BC90EC
/// @DnDArgument : "var" "Oswald.x - Policeeeee.x"
/// @DnDArgument : "op" "2"
if(Oswald.x - Policeeeee.x > 0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 54EB04EC
	/// @DnDParent : 07BC90EC
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0BF296CE
	/// @DnDParent : 07BC90EC
	/// @DnDArgument : "speed" "1"
	speed = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01F8A4DB
	/// @DnDParent : 07BC90EC
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E4D1D15
/// @DnDArgument : "var" "Oswald.x - Policeeeee.x"
if(Oswald.x - Policeeeee.x == 0){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 5DACA089
	/// @DnDParent : 3E4D1D15
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 61DC436E
	/// @DnDParent : 3E4D1D15
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C25C456
	/// @DnDParent : 3E4D1D15
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 712F0EFA
/// @DnDArgument : "var" "health"
/// @DnDArgument : "op" "3"
if(health <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2A3DC889
	/// @DnDParent : 712F0EFA
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "PoliceDedSprite"
	/// @DnDSaveInfo : "spriteind" "PoliceDedSprite"
	sprite_index = PoliceDedSprite;
	image_index += 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0E0739C6
	/// @DnDParent : 712F0EFA
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AD94655
	/// @DnDParent : 712F0EFA
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_speed"
	image_speed = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 135DE1A5
	/// @DnDParent : 712F0EFA
	/// @DnDArgument : "var" "image_index"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "19"
	if(image_index >= 19){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 11B4023A
		/// @DnDParent : 135DE1A5
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4873F8A3
		/// @DnDParent : 135DE1A5
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-20"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "DaggerIconObject"
		/// @DnDArgument : "layer" ""TopLayer""
		/// @DnDSaveInfo : "objectid" "DaggerIconObject"
		instance_create_layer(x + 0, y + -20, "TopLayer", DaggerIconObject);}}