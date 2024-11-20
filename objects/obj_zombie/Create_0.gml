/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61F40FC5
/// @DnDArgument : "var" "instance_exists(obj_player)"
/// @DnDArgument : "value" "true"
if(instance_exists(obj_player) == true){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 3FE1C0AC
	/// @DnDParent : 61F40FC5
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 518EE753
	/// @DnDParent : 61F40FC5
	/// @DnDArgument : "speed" "3"
	speed = 3;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 549190B6
/// @DnDArgument : "var" "face"
face = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 594531EA
/// @DnDArgument : "expr" "spr_zombie"
/// @DnDArgument : "var" "sprite[0]"
sprite[0] = spr_zombie;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48BB951F
/// @DnDArgument : "expr" "spr_zombieDead"
/// @DnDArgument : "var" "sprite[1]"
sprite[1] = spr_zombieDead;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4256A0F3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "dead"
dead = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6CFC62BA
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "destroy"
destroy = false;