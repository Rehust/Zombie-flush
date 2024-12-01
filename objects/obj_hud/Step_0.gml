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
	// Kiểm tra và cập nhật điểm cao nhất
	if (score > global.high_score) {
	 global.high_score = score;

    // Lưu điểm cao nhất vào tệp
		ini_open("save_datazbflush.ini");
		ini_write_real("Game", "HighScore", global.high_score);
		ini_close();
	
	 // Hiển thị thông báo (tùy chọn)
			show_debug_message("New High Score: " + string(global.high_score));
	}
}


//get ammo
if (instance_exists(obj_player)){
	ammo = obj_player.ammo;
}