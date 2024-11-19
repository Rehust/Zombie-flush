/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61F40FC5
/// @DnDArgument : "var" "instance_exists(obj_player)"
/// @DnDArgument : "value" "true"
if(instance_exists(obj_player) == true){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6B35EEF1
	/// @DnDParent : 61F40FC5
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 077B905A
	/// @DnDParent : 61F40FC5
	/// @DnDArgument : "speed" "3"
	speed = 3;}