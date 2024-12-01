if (instance_exists(obj_player) == true)
{
	var _leftRight = irandom(1); //0 is left, 1 is right
	var _spawnX;
	if _leftRight == 0 {
		_spawnX = -10;
	} 
	else {
		_spawnX = 830;
	}
	
	instance_create_layer(_spawnX, irandom_range(110, 310), "Instances_1", obj_zombie);

	alarm_set(0, 30 * mul);
}