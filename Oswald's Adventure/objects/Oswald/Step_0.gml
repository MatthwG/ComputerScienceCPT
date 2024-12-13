/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 31556A68
/// @DnDInput : 6
/// @DnDArgument : "var" "right"
/// @DnDArgument : "value" "keyboard_check(vk_right)"
/// @DnDArgument : "var_1" "left"
/// @DnDArgument : "value_1" "keyboard_check(vk_left)"
/// @DnDArgument : "var_2" "up"
/// @DnDArgument : "value_2" "keyboard_check(vk_up)"
/// @DnDArgument : "var_3" "down"
/// @DnDArgument : "value_3" "keyboard_check(vk_down)"
/// @DnDArgument : "var_4" "xinput"
/// @DnDArgument : "value_4" "right-left"
/// @DnDArgument : "var_5" "yinput"
/// @DnDArgument : "value_5" "down-up"
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var xinput = right-left;
var yinput = down-up;

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 15354DBD
/// @DnDArgument : "xvel" "xinput*my_speed"
/// @DnDArgument : "yvel" "yinput * my_speed"
/// @DnDArgument : "object" "Floor"
/// @DnDSaveInfo : "object" "Floor"
move_and_collide(xinput*my_speed, yinput * my_speed, Floor,4,0,0,-1,-1);