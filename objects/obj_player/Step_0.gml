//get input
	right_key = keyboard_check(ord("D"));
	left_key = keyboard_check(ord("A"));
	up_key = keyboard_check(ord("W"));
	down_key = keyboard_check(ord("S"));
	shoot_key = mouse_check_button(mb_left);

//player movement
#region
	var _horizontal_key = right_key - left_key;
	var _vertical_key = down_key - up_key;
	move_dir = point_direction(0, 0, _horizontal_key, _vertical_key);

	var _distance = point_distance(0, 0, _horizontal_key, _vertical_key);
	_distance = clamp(_distance, 0, 1);
	var _speed = _distance * move_speed
	
	//get x and y speed
	xspeed = lengthdir_x(_speed, move_dir);
	yspeed = lengthdir_y(_speed, move_dir);
	
	//move the player
	x += xspeed;
	y += yspeed;
	
	//depth
	depth = -y;

#endregion


//sprite control
	//player aiming
		centerY = y + centerY_offset;
	
		//aim
		aim_dir = point_direction(x, centerY, mouse_x, mouse_y);
	//face direction
		face = round(aim_dir / 180);
		if face >= 2
		{
			face = 0;
		}
	
	//use the idle animation when not walking
		if xspeed == 0 && yspeed == 0
		{
			idle = true;
			if face == 0 {sprite_index = spr_playerIdleRight;}
			if face == 1 {sprite_index = spr_playerIdleLeft;}
		}
		else {idle = false;}
	//set player sprite if not idle
		if idle == false{sprite_index = sprite[face];}
	

//shoot weapon
	if shoot_timer > 0
	{
		shoot_timer--;
	}
	if shoot_key && shoot_timer <= 0
	{
		//reset shoot timer
		shoot_timer = shoot_cooldown
		
		//create bullet
		var _xOffset = lengthdir_x(weapon_length + weapon_offset, aim_dir);
		var _yOffset = lengthdir_y(weapon_length + weapon_offset, aim_dir);
		var _inst_bullet = instance_create_depth(x + _xOffset, centerY + _yOffset, depth-100, bulletObj);
		
		//change bullet's direction
		with (_inst_bullet)
		{
			dir = other.aim_dir;
		}
	}

//death
	if(__dnd_lives <= 0)
	{
		instance_create_layer(0, 0, "Instances", obj_Gameover);

		instance_destroy();
	}