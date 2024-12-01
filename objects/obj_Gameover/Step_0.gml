var _left_click = mouse_check_button_pressed(mb_left);
var _menu = keyboard_check(ord("M"));

// Fade in
alpha += alphaspd;
alpha = clamp(alpha, 0, 1);

// Timer for restart
if (_left_click) checkTimer = true;
if (checkTimer) timer--;

// Restart logic
if (alpha >= 1 && timer < 0) {
    if (!global.high_score_saved) {
        // Check and update High Score
        if (global.player_score > global.high_score) {
            global.high_score = global.player_score;
            show_debug_message("New High Score: " + string(global.high_score));
        }

        // Save High Score
        ini_open("save_datazbflush.ini");
        ini_write_real("Game", "HighScore", global.high_score);
        ini_close();

        global.high_score_saved = true;
        show_debug_message("High Score saved during Step.");
    }

    room_restart();
}

// Go to menu
if (_menu && alpha >= 1) {
    if (!global.high_score_saved) {
        // Check and update High Score
        if (global.player_score > global.high_score) {
            global.high_score = global.player_score;
            show_debug_message("New High Score: " + string(global.high_score));
        }

        // Save High Score
        ini_open("save_datazbflush.ini");
        ini_write_real("Game", "HighScore", global.high_score);
        ini_close();

        global.high_score_saved = true;
        show_debug_message("High Score saved when going to menu.");
    }

    room_goto(rm_menu);
}
