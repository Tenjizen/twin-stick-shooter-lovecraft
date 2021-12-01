if(variable == 0)
{
	//can_create = true;
	with(o_creatWall) instance_destroy();
	use_power = true;
}
if (variable == 1)
{
	walk_spd = 1.5;
	use_power = true;
}
if (variable == 2)
{
	alpha_coloration = 1;
	use_power = true;
}
if (variable == 3)
{
	with(o_slow) instance_destroy();
	walk_spd = 1.5;
	use_power = true;
}