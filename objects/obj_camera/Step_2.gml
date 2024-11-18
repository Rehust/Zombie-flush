//get camera width and height
var camW = camera_get_view_width(view_camera[0]);
var camH = camera_get_view_height(view_camera[0]);

//center on the player
if instance_exists(obj_character1){
	x = obj_character1.x - camW/2;
	y = obj_character1.y - camH/2;
}


//clamp cam position to room borders
x = clamp(x, 0, room_width - camW);
y = clamp(y, 0, room_height - camH);

//set the camera position
camera_set_view_pos( view_camera[0], x, y );