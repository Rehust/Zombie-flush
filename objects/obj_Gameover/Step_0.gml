var left_click = mouse_check_button_pressed(mb_left);

//fade in
alpha += alphaspd;
alpha = clamp(alpha, 0 , 1);

with (obj_zombie){
	instance_destroy();
}

//restart
if left_click = true && alpha >= 1 {
	room_restart();
}