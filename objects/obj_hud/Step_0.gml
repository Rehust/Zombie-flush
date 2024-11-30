//get player's hp
if instance_exists(obj_player)
{
	playerMaxHp = obj_player.maxHp;
	playerHp = obj_player.__dnd_lives;
}
else {
	playerHp = 0;
}


//score
if instance_exists(obj_player){
	timer += 1;
	//every 60 frames (1 second) -> + 1 score
	if timer % 60 == 0 {
		global.player_score += 5;
	}
}

//get ammo
if (instance_exists(obj_player)){
	ammo = obj_player.ammo;
}