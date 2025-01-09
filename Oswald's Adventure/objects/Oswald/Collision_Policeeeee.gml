/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5CFFE9E1
/// @DnDArgument : "expr" "-0.1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.OswaldHealth"
global.OswaldHealth += -0.1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37400F03
/// @DnDArgument : "var" "global.OswaldHealth"
/// @DnDArgument : "op" "3"
if(global.OswaldHealth <= 0){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 29D8B69F
	/// @DnDParent : 37400F03
	/// @DnDArgument : "room" "Arrested"
	/// @DnDSaveInfo : "room" "Arrested"
	room_goto(Arrested);}