var _left_click = mouse_check_button_pressed(mb_left);

var _menu = keyboard_check(ord("M"));
//fade in
alpha += alphaspd;
alpha = clamp(alpha, 0 , 1);

//Take score
if (instance_exists(obj_hud)){
	player_score = obj_hud.player_score;
}

//timer for restart
if _left_click == true {checkTimer = true;}
if checkTimer == true {timer--;}

//restart
if alpha >= 1 && timer < 0
{
	room_restart();
}

if _menu == true && alpha >= 1
{
	room_goto(rm_menu);
}