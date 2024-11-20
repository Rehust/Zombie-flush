var camX = camera_get_view_x(view_camera[0]);
var camW = camera_get_view_width(view_camera[0]);
var camY = camera_get_view_y(view_camera[0]);
var camH = camera_get_view_height(view_camera[0]);

//draw a black rectangle over screen
draw_set_alpha(alpha * alphaMul)
draw_rectangle_color(camX, camY, camX + camW, camY + camH, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

//draw text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_alpha(alpha);
var _gameoverOffset = -32;
draw_text_transformed(camX + camW/2, camY + camH/2 + _gameoverOffset, "Game over!", 2, 2, 0);


var _cur_color = draw_get_color();
//left click to restart
draw_set_color(c_white);
var _restartOffset = 40;
draw_text_transformed(camX + camW/2, camY + camH/2 + _restartOffset, "- Left click to restart the game -", 0.5, 0.5, 0);

//draw "Press M to go to menu"
draw_text_transformed(camX + camW/2, camY + camH/2 + _restartOffset * 2, "- Press M to go to menu -", 0.5, 0.5, 0);

//reset draw settings
draw_set_color(_cur_color);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
