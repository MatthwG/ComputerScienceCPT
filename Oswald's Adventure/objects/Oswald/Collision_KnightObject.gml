/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3F0926B7
/// @DnDArgument : "expr" "-0.1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.OswaldHealth"
global.OswaldHealth += -0.1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D561FD2
/// @DnDArgument : "var" "global.OswaldHealth"
/// @DnDArgument : "op" "3"
if(global.OswaldHealth <= 0){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 32B04A7B
	/// @DnDParent : 7D561FD2
	/// @DnDArgument : "room" "Arrested"
	/// @DnDSaveInfo : "room" "Arrested"
	room_goto(Arrested);}