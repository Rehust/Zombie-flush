// Draw score
if instance_exists(obj_player){
	draw_set_font(fon_live);
	draw_set_colour(c_red & $ffffff);draw_set_alpha(1);

	draw_text(10, 100, "Score: " + string(score));
}