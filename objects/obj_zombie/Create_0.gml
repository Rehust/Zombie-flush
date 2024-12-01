//Get direction to player
if(instance_exists(obj_player) == true)
{
	var _dirToPlayer = point_direction(x, y, obj_player.x, obj_player.y);
	if _dirToPlayer > 90 && _dirToPlayer < 270 {
		direction = 180;
	}
	else {
		direction = 0;
	}

	speed = 3;
}

is_shot = false;
destroy = false;