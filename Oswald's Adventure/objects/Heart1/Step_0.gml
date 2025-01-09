/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25F00EC1
/// @DnDArgument : "var" "global.OswaldHealth"
/// @DnDArgument : "op" "3"
if(global.OswaldHealth <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7E03493A
	/// @DnDParent : 25F00EC1
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C244728
/// @DnDArgument : "expr" "Oswald.x - 13"
/// @DnDArgument : "var" "x"
x = Oswald.x - 13;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 709B5FE5
/// @DnDArgument : "expr" "Oswald.y - 23"
/// @DnDArgument : "var" "y"
y = Oswald.y - 23;