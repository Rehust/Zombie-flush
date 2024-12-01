// Check and load High Score from file
if (file_exists("save_datazbflush.ini")) {
    ini_open("save_datazbflush.ini");
    global.high_score = ini_read_real("Game", "HighScore", 0); // Default to 0 if no score exists
    ini_close();
    show_debug_message("Loaded High Score: " + string(global.high_score));
} else {
    global.high_score = 0; // Default High Score
    show_debug_message("No High Score file found. Defaulting to 0.");
}
