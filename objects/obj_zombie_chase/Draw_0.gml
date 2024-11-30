
//Flip zombie 
	var _zombie_xscale = 1;
	if (dir > 90 && dir < 270) {
		_zombie_xscale = -1;	
	}
	
//draw zombie
	draw_sprite_ext(sprite_index, image_index, x, y, _zombie_xscale, 1, 0, c_white, 1);
	