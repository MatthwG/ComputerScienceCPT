/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1DD7A369
/// @DnDArgument : "var" "image_speed"
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 77E402D6
/// @DnDArgument : "imageind" "4"
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "ROMSprite"
/// @DnDSaveInfo : "spriteind" "ROMSprite"
sprite_index = ROMSprite;
image_index += 4;

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 72B10452
/// @DnDArgument : "room" "Room2"
/// @DnDSaveInfo : "room" "Room2"
room_goto(Room2);