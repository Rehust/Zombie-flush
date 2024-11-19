__dnd_lives = real(10);

//variables for movement
	xspeed = 0;
	yspeed = 0;
	move_speed = 3;
	move_dir = 0;

//sprite control
	centerY_offset = -20;
	centerY = y + centerY_offset;

	weapon_offset = 0;
	aim_dir = 0;
	
	face = 0;
	sprite[0] = spr_playerRight;	
	sprite[1] = spr_playerLeft;
	
	sprite_index = sprite[face];
	
//weapon info
	shoot_timer = 0;
	shoot_cooldown = 20;
	
	bulletObj = obj_bullet;
	weapon_length = sprite_get_bbox_right(spr_ak47Shoot) - sprite_get_xoffset(spr_ak47Shoot);
	
	
//weapon sprite
	ak47_face = 0;
	ak47[0] = spr_ak47Shoot;
	ak47[1] = spr_ak47Empty;
	ak47[2] = spr_ak47Reload;