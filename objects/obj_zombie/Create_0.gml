/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61F40FC5
/// @DnDArgument : "var" "instance_exists(obj_character1)"
/// @DnDArgument : "value" "true"
if(instance_exists(obj_player) == true){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 497583F5
	/// @DnDParent : 61F40FC5
	/// @DnDArgument : "x" "obj_character1.x"
	/// @DnDArgument : "y" "obj_character1.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4CB8D73C
	/// @DnDParent : 61F40FC5
	/// @DnDArgument : "speed" "6"
	speed = 6;}