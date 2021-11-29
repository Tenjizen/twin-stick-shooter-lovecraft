

if (nb_pad == 1)
{
	var _facing = (aim_dir < 90 or aim_dir > 270);
	if(_facing == 0)
		_facing = -1;
	facing = _facing;
	
	if(aim_x >= 0.01 || aim_x <= -0.01)
		old_aim_x = aim_x;
	if(aim_y >= 0.01 ||	 aim_y <= -0.01)
		old_aim_y = aim_y;
	aim_x = gamepad_axis_value(1, gp_axisrh);
	aim_y = gamepad_axis_value(1, gp_axisrv);
	//aim_dir = point_direction(x, y, aim_x, aim_y);
	aim_dir = point_direction(x, y, old_aim_x+x, old_aim_y+y); 
	
	my_knife.image_angle = aim_dir;
	knifeRota1 = my_knife.image_angle;

}