draw_set_alpha(1);  
draw_set_font(fon_live);
draw_text_transformed(30, 100, "Highest Score: " + string(global.high_score), 1.5, 1.5, image_angle);
draw_set_color(c_red);