/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 716BAF88
/// @DnDArgument : "var" "global.OswaldHealth"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "2"
if(global.OswaldHealth <= 2){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4D47648B
	/// @DnDParent : 716BAF88
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5AAAE4A1
/// @DnDArgument : "expr" "Oswald.x +7"
/// @DnDArgument : "var" "x"
x = Oswald.x +7;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D0D7B57
/// @DnDArgument : "expr" "Oswald.y - 23"
/// @DnDArgument : "var" "y"
y = Oswald.y - 23;