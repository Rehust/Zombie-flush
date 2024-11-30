//dead (collide with bullet)
	//Run through dead animation 
	if (is_shot && image_index >= image_number - 1) 
	{
		destroy = true;
	}


//clean up zombie out of border
	if x < -300 || x > room_width + 500
	{
		instance_destroy();
	}
	if y < -300 || y > room_height + 500
	{
		instance_destroy();
	}
