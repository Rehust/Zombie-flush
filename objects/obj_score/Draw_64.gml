// Draw score
if instance_exists(obj_character1){
	draw_set_font(fon_live);
	draw_set_colour(c_red & $ffffff);draw_set_alpha(1);

	draw_text(10, 10, "Lives: " + string(obj_character1.__dnd_lives));
	draw_text(10, 50, "Score: " + string(score));
}