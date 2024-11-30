
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
if (destroy == true)
=======
>>>>>>> Stashed changes
//destroy by being shot
if destroy == true 
>>>>>>> 06b078761bfb5d95fe5a036b6cc030dd2c563042
{
	global.player_score += 10;
	
	global.enemyKillCount++;
	global.zombieKilled++;
	//Determine if we should drop ammo
	if global.enemyKillCount mod 10 == 0 {
		global.enemyKillCount %= 10;
		instance_create_depth(x, y, depth, obj_mag);
	}
	
	instance_destroy();
}
