
// destroy by being shot
if destroy == true
{
	global.player_score += 10;
	
	global.enemyKillCount++;
	global.zombieKilled++;
	//Determine if we should drop ammo
	if global.enemyKillCount % 10 == 0 {
		global.enemyKillCount = global.enemyKillCount % 10;
		instance_create_depth(x, y, depth, obj_mag);
	}
	
	instance_destroy();
}