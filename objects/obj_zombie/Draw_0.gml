
//Flip zombie 
	var _zombie_xscale = 1;
	if (direction > 90 && direction < 270) {
		_zombie_xscale = -1;	
	}
	
//draw zombie
	draw_sprite_ext(sprite[face], image_index, x, y, _zombie_xscale, 1, 0, c_white, 1);
	