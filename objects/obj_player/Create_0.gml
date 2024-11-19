__dnd_lives = real(10);

//variables for movement
	xspeed = 0;
	yspeed = 0;
	move_speed = 5;
	move_dir = 0;

//sprite control
	aim_dir = 0;
	centerY_offset = -11;
	centerY = y + centerY_offset;

	face = 0;
	sprite[0] = spr_playerRight;
	sprite[1] = spr_playerLeft;
	
	sprite_index = sprite[face];