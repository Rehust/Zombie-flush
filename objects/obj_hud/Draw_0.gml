//get cam coordinates
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);


if (instance_exists(obj_player)){
	//draw player's hp
	var _border = 8;
	draw_sprite(spr_healthBar, 0, _camX + _border, _camY + _border);

	for (var i = 0; i < playerMaxHp; i++)
	{
		///shor current hp
		var _image = 1;
		if i + 1 <= playerHp {_image = 2;}
	
		var _separation = 5;
		draw_sprite(spr_healthBar, _image, _camX + _border + _separation * i, _camY + _border);
	}


	//draw score
		//draw sprite score
		var _sepScore = 35;
		draw_sprite(spr_score, 0, _camX + _border, _camY + _border + _sepScore);
	
		//draw text score
		draw_set_font(fon_live);
		draw_set_colour(c_red & $ffffff);
		draw_set_alpha(1);
		draw_text_transformed(_camX + _border + 30, _camY + _border + _sepScore + 7, string(player_score), 0.3, 0.3, image_angle);
}