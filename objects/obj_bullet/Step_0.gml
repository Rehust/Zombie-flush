
// Move
xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);

x += xspd;
y += yspd;

//Collision with zombie is in zombie objects

// Bullet out of range
if point_distance(xstart, ystart, x, y) > max_dist
{
    destroy = true;
}