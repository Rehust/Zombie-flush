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
	if timer % 60 == 0 {
		player_score += 5;
	}
}
