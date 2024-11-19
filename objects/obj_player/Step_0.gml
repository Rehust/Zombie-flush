//get input
	right_key = keyboard_check(ord("D"));
	left_key = keyboard_check(ord("A"));
	up_key = keyboard_check(ord("W"));
	down_key = keyboard_check(ord("S"));


//player movement
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
//player aiming
	centerY = y + centerY_offset;
	
	//aim
	aim_dir = point_direction(x, centerY, mouse_x, mouse_y);

//sprite control
	//face direction
	face = round(aim_dir / 180);
	if face == 2 
	{
		face = 0;
	}
	
	//stop the animation when not walking
	if xspeed == 0 and yspeed == 0
	{
		image_index = 0;	
	}
	//set player sprite
	sprite_index = sprite[face];
	

//death
if(__dnd_lives <= 0)
{
	instance_create_layer(0, 0, "Instances", obj_Gameover);

	instance_destroy();
}