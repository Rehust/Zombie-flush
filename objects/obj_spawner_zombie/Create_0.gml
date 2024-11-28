/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B00D0AD
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "mul"
mul = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 33AE4F05
/// @DnDArgument : "steps" "30 * mul"
alarm_set(0, 30 * mul);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7389AA84
/// @DnDArgument : "steps" "room_speed * 5"
/// @DnDArgument : "alarm" "1"
alarm_set(1, room_speed * 5);