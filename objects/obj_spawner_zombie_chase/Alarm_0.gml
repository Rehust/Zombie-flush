/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6FDC1084
/// @DnDArgument : "var" "instance_exists(obj_player)"
/// @DnDArgument : "value" "true"
if(instance_exists(obj_player) == true){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3006598C
	/// @DnDParent : 6FDC1084
	/// @DnDArgument : "xpos" "830"
	/// @DnDArgument : "ypos" "irandom_range(125, 310)"
	/// @DnDArgument : "objectid" "obj_zombie_chase"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "obj_zombie_chase"
	instance_create_layer(830, irandom_range(125, 310), "Instances_1", obj_zombie_chase);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 678F1CED
	/// @DnDParent : 6FDC1084
	alarm_set(0, 30);}