/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 65F5B6F9
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;__dnd_lives += real(-1);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 61F2D91D
/// @DnDApplyTo : other
with(other) instance_destroy();