//draw player's weapon
function draw_player_weapon()
{
	//offset weapon from player
	var _xOffset = lengthdir_x(weapon_offset, aim_dir);
	var _yOffset = lengthdir_y(weapon_offset, aim_dir);
	
	//flip weapon
	var _weapon_yscale = 1;
	if (aim_dir > 90 && aim_dir < 270) {
		_weapon_yscale = -1;	
	}
	draw_sprite_ext(ak47[ak47_face], image_index, x + _xOffset, centerY + _yOffset, 1, _weapon_yscale, aim_dir, c_white, 1);
}