

//move
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

x += xspd;
y += yspd;


//collision
	if place_meeting(x, y, obj_tree)
	{
		destroy = true;
	}
	if place_meeting(x, y, obj_river)
	{
		destroy = true;
	}
//bullet out of range
	if point_distance(xstart, ystart, x, y) > max_dist
	{
		destroy = true;
	}
	
