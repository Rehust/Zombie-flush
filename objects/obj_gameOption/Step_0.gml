if collision_point(mouse_x, mouse_y, object_index, true, false)
{
	//When mouse hover it wouldn't run unncessarily
	if (!mouse_over)
	{
		mouse_over = true;
		spr_color = c_red;
	}
}
else
{
	mouse_over = false;	
	spr_color = c_white;
}