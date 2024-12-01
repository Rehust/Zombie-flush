//Prevent resetting image_index when already shot
if (is_shot == false) {
	is_shot = true;
	sprite_index = spr_zombieDead;
	image_index = 0;
	speed = 0;
	
	//Destroy bullet here so it doesn't hit already-shot zombie
	with (other) {
		destroy = true;
	}
}