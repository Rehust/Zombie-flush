// Get camera coordinates
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

if (instance_exists(obj_player)) {
    // Draw player's HP
    var _border = 8;
    draw_sprite(spr_healthBar, 0, _camX + _border, _camY + _border);

    for (var i = 0; i < playerMaxHp; i++) {
        // Show current HP
        var _image = 1;
        if (i + 1 <= playerHp) _image = 2;

        var _separation = 5;
        draw_sprite(spr_healthBar, _image, _camX + _border + _separation * i, _camY + _border);
    }

    // Draw score
    var _sepScore = 35;

    // Draw sprite for score
    draw_sprite(spr_score, 0, _camX + _border, _camY + _border + _sepScore);

    // Draw text for score
    draw_set_font(fon_live);
    draw_set_colour(c_white);
    draw_set_alpha(1);
    draw_text_transformed(_camX + _border + 30, _camY + _border + _sepScore + 7, string(global.player_score), 0.3, 0.3, image_angle);

    // Draw highest score
    draw_text_transformed(_camX + _border + 80, _camY + _border + _sepScore + 7, "Highest Score: " + string(global.high_score), 0.5, 0.5, image_angle);

    // Draw ammo
    draw_sprite(spr_bulletHud, image_index, _camX + _border, _camY + _border + _sepScore * 2);
    draw_set_color(c_yellow);
    draw_text_transformed(_camX + _border + 11, _camY + _border + _sepScore * 2 + 3, "x" + string(ammo), 0.5, 0.5, image_angle);
    draw_set_color(c_red);
}
