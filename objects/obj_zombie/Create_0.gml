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
/// @DnDHash : 4256A0F3
/// @DnDInput : 2
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "var" "is_shot"
/// @DnDArgument : "var_1" "destroy"
is_shot = false;
destroy = false;