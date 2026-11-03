if (part_system_exists(ps)){
	part_system_depth(ps, depth);
	part_system_position(ps, x, y);
    if instance_exists(o_bkg_lighting){
		shader_set_uniform_f(o_bkg_lighting.u_emissive, 1.0);
	}

	part_system_drawit(ps);

	if instance_exists(o_bkg_lighting){
		shader_set_uniform_f(o_bkg_lighting.u_emissive, 0.0);
	}
}
