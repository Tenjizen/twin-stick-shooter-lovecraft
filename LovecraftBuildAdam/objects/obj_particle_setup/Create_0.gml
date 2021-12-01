particle_System = part_system_create();

particles_Dust = part_type_create();

//part_type_shape(particle_Dust, pt_shape_moke);
part_type_sprite(particles_Dust, spr_Dust, 0, 0, 1);
part_type_size(particles_Dust, 1,1.5, 0.001, 0);

part_type_direction(particles_Dust, 0, 359, 0, 1);
part_type_speed(particles_Dust, 0.1, 0.2, -0.004, 0);

part_type_life(particles_Dust, 50, 70);
part_type_orientation(particles_Dust, 0, 359, 0.1, 1, 0);

part_type_alpha3(particles_Dust, 0.1, 0.2, 0.01);
