
if(instance_exists(obj_player) == true)
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	speed = 3;
}

is_shot = false;
destroy = false;
