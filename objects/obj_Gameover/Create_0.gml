// Fade in
alpha = 0;
alphaspd = 1 / 75;
alphaMul = 0.6;

// Timer for restart
timer = 5;
checkTimer = false;

depth = -10000;

// Ensure High Score is saved once
global.high_score_saved = false;

// Check and update High Score
if (global.player_score > global.high_score) {
    global.high_score = global.player_score;
    show_debug_message("New High Score: " + string(global.high_score));
}

// Save High Score
ini_open("save_datazbflush.ini");
ini_write_real("Game", "HighScore", global.high_score);
ini_close();
show_debug_message("High Score saved during Create.");
