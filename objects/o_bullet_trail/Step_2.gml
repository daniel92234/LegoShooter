if part_system_exists(ps){
	part_system_position(ps, x, y);
	if !instance_exists(owner){
		part_emitter_destroy_all(ps);
	}
}