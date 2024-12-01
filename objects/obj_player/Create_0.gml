maxHp = 10;
__dnd_lives = maxHp;

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
	
	ak47_face = 0;
	ak47[0] = spr_ak47;
	ak47[1] = spr_ak47Shoot;
	
	ammo = 60;
	weapon_frame = 0;
	
//Indication for losing health
	flicker = false;
	flicker_timer = 10;