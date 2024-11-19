/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6FDC1084
/// @DnDArgument : "var" "instance_exists(obj_character1)"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(instance_exists(obj_character1) == true)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3006598C
	/// @DnDParent : 6FDC1084
	/// @DnDArgument : "xpos" "irandom(1400)+200"
	/// @DnDArgument : "ypos" "irandom_range(500, 800)"
	/// @DnDArgument : "objectid" "obj_zombie"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "obj_zombie"
	instance_create_layer(irandom(1400)+200, irandom_range(500, 800), "Instances_1", obj_zombie);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 678F1CED
	/// @DnDParent : 6FDC1084
	alarm_set(0, 30);}