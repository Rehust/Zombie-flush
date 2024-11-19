// Move
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

x += xspd;
y += yspd;

// Collision
if place_meeting(x, y, obj_tree) || place_meeting(x, y, obj_river)
{
    destroy = true;
}
if place_meeting(x, y, obj_zombie)
{
    score += 10;
}

// Bullet out of range
if point_distance(xstart, ystart, x, y) > max_dist
{
    destroy = true;
}