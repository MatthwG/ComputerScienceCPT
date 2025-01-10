/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 001CE1FC
/// @DnDArgument : "var" "global.OswaldHealth"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "1"
if(global.OswaldHealth <= 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6CE11130
	/// @DnDParent : 001CE1FC
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7C1A0FA2
/// @DnDArgument : "expr" "Oswald.x - 3"
/// @DnDArgument : "var" "x"
x = Oswald.x - 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E56322D
/// @DnDArgument : "expr" "Oswald.y - 23"
/// @DnDArgument : "var" "y"
y = Oswald.y - 23;