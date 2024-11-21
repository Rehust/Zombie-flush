//get player's hp
if instance_exists(obj_player)
{
	playerMaxHp = obj_player.maxHp;
	playerHp = obj_player.__dnd_lives;
}
else {
	playerHp = 0;
}