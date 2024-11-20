var _left_click = mouse_check_button_pressed(mb_left);
var _menu = keyboard_check(ord("M"));
//fade in
alpha += alphaspd;
alpha = clamp(alpha, 0 , 1);

//destroy all the zombie
with (obj_zombie){
	instance_destroy();
}

//restart
if _left_click = true && alpha >= 1 
{
	room_restart();
}

if _menu = true && alpha >= 1
{
	room_goto(rm_menu);
}