//get cam coordinates
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);


//draw player's hp
var _border = 8;
draw_sprite(spr_healthBar, 0, _camX + _border, _camY + _border);

for (var i = 0; i < playerMaxHp; i++)
{
	///shor current hp
	var _image = 1;
	if i + 1 <= playerHp {_image = 2;}
	
	var _separation = 5;
	draw_sprite(spr_healthBar, _image, _camX + _border + _separation * i, _camY + _border);
}