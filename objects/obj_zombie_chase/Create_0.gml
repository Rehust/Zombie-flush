if(instance_exists(obj_player) == true)
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	speed = 3;
}

dead = false;
destroy = false;

face = 0;
sprite[0] = spr_zombie;
sprite[1] = spr_zombieDead;

dir = direction;