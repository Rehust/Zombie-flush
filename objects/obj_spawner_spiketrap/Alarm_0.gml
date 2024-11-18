/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1FD3588C
/// @DnDArgument : "var" "instance_exists(obj_character1)"
/// @DnDArgument : "value" "true"
if(instance_exists(obj_character1) == true){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3006598C
	/// @DnDParent : 1FD3588C
	/// @DnDArgument : "xpos" "irandom_range(1550,50)"
	/// @DnDArgument : "ypos" "irandom_range(0, 175)"
	/// @DnDArgument : "objectid" "obj_spiketrap"
	/// @DnDSaveInfo : "objectid" "obj_spiketrap"
	instance_create_layer(irandom_range(1550,50), irandom_range(0, 175), "Instances", obj_spiketrap);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2DE0C84B
	/// @DnDParent : 1FD3588C
	/// @DnDArgument : "steps" "22"
	alarm_set(0, 22);}