var _facing = (aim_dir < 90 or aim_dir > 270);
if(_facing == 0)
	_facing = -1;
facing = _facing;
	
aim_dir = point_direction(x, y, mouse_x, mouse_y);
//my_bow.image_angle = aim_dir;
	
my_knife.image_angle = aim_dir;
knifeRota = my_knife.image_angle;