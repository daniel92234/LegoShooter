if part_system_exists(ps){
	if part_particles_count(ps) <= 0 and !instance_exists(owner){
	    instance_destroy();
	}
}
