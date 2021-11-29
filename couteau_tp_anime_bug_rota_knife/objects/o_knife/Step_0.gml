var _facing = (aim_dir < 90 or aim_dir > 270);
if(_facing == 0)
	_facing = -1;
facing = _facing;
	
//aim_dir = point_direction(x, y, mouse_x, mouse_y);
//my_bow.image_angle = aim_dir;
	
//my_knife.image_angle = aim_dir;
//knifeRota = my_knife.image_angle;

aim_x = x+gamepad_axis_value(nb_pad, gp_axisrh);
aim_y = y+gamepad_axis_value(nb_pad, gp_axisrv);
aim_dir = point_direction(x, y, aim_x, aim_y);
	
my_knife.image_angle = aim_dir;
knifeRota = my_knife.image_angle;