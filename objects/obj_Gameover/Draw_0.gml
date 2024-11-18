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
var gameoverOffset = -32;
draw_text_transformed(camX + camW/2, camY + camH/2 + gameoverOffset, "Game over", 3, 3, 0);

//left click to restart
var cur_color = draw_get_color();

draw_set_color(c_white);
var restartOffset = 80;
draw_text_transformed(camX + camW/2, camY + camH/2 + restartOffset, "- Left click to restart the game -", 1, 1, 0);

//reset draw settings
draw_set_color(cur_color);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
