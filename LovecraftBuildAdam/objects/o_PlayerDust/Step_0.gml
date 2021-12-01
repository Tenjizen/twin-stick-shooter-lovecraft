//dusting
if ((xprevious != x or yprevious != y) and canDust == true)
{
	canDust = false;
	var randomTime = irandom_range(-1,2);
	alarm_set(0,8 + randomTime);
	
	part_particles_create(obj_particle_setup.particle_System, x, y, obj_particle_setup.particles_Dust, 7 );
	
	

}


