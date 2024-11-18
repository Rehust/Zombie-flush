/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 221BB689
/// @DnDArgument : "var" "__dnd_lives"
/// @DnDArgument : "op" "3"
if(__dnd_lives <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1E0AE866
	/// @DnDParent : 221BB689
	/// @DnDArgument : "objectid" "obj_Gameover"
	/// @DnDSaveInfo : "objectid" "obj_Gameover"
	instance_create_layer(0, 0, "Instances", obj_Gameover);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 52751494
	/// @DnDParent : 221BB689
	instance_destroy();}