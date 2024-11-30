/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 104CA7BA
/// @DnDArgument : "expr" "obj_spawner_zombie.mul"
/// @DnDArgument : "var" "mul"
mul = obj_spawner_zombie.mul;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 33AE4F05
/// @DnDArgument : "steps" "30 * mul"
alarm_set(0, 30 * mul);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0D756382
/// @DnDArgument : "steps" "room_speed * 5"
/// @DnDArgument : "alarm" "1"
alarm_set(1, room_speed * 5);