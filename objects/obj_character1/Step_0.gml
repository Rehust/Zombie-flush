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
	var _speed = _distance * move_speed;
	xspeed = lengthdir_x(_speed, move_dir);
	yspeed = lengthdir_y(_speed, move_dir);
//move the player
	x += xspeed;
	y += yspeed;


if(__dnd_lives <= 0)
{
	instance_create_layer(0, 0, "Instances", obj_Gameover);

	instance_destroy();
}