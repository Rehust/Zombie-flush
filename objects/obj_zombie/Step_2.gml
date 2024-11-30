
//destroy by being shot
if destroy == true 
{
	global.player_score += 10;
	show_debug_message("destroy zombie");
	global.enemyKillCount++;
	global.zombieKilled++;
	//Determine if we should drop ammo
	if global.enemyKillCount mod 10 == 0 {
		global.enemyKillCount %= 10;
		instance_create_depth(x, y, depth, obj_mag);
	}
	
	instance_destroy();
}