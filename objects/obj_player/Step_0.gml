//get input
	right_key = keyboard_check(ord("D"));
	left_key = keyboard_check(ord("A"));
	up_key = keyboard_check(ord("W"));
	down_key = keyboard_check(ord("S"));
	shoot_key = mouse_check_button(mb_left);


//Limit Hp
	__dnd_lives = clamp(__dnd_lives, 0, 10);
	
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
		if face == 2 
		{
			face = 0;
		}
	
	//stop the animation when not walking
		if xspeed == 0 && yspeed == 0
		{
			image_index = 0;	
		}
	//set player sprite
		sprite_index = sprite[face];
	

//shoot weapon
if shoot_timer > 0
{
    shoot_timer--;
}
if shoot_key == 1 && shoot_timer <= 0 && ammo > 0
{
    //reset shoot timer
    shoot_timer = shoot_cooldown;
    ammo -= 1;
	firing = true;
    //create bullet
    var _xOffset = lengthdir_x(weapon_length + weapon_offset, aim_dir);
    var _yOffset = lengthdir_y(weapon_length + weapon_offset, aim_dir);
    var _inst_bullet = instance_create_depth(x + _xOffset, centerY + _yOffset, depth-100, bulletObj);
	var _inst_bulletFx = instance_create_depth(x + _xOffset - 2, centerY + _yOffset - 2, depth-100, obj_bulletFx)
    audio_play_sound(snd_bullet, 1, false);
	
    //change bullet's direction
    with (_inst_bullet)
    {
        dir = other.aim_dir;
    }
	with (_inst_bulletFx)
	{
		image_angle = other.aim_dir;
	}
}
else {
	firing = false;
}

if (firing == true){
	ak47_face = 1;
}
else {
	ak47_face = 0;
}

//Indication that player lose health
	if flicker == true && flicker_timer > 0
	{
		flicker_timer--; 
		
		if flicker_timer mod 3 = 0
		{
			if image_alpha == 1 
			{
				image_alpha = 0;
			} else {
				image_alpha = 1;
			}
		}
	}
	if flicker_timer <= 0
	{
		image_alpha = 1;
	}
	

//death
	if(__dnd_lives <= 0)
	{
		instance_create_layer(0, 0, "Instances_1", obj_Gameover);

		instance_destroy();
	}