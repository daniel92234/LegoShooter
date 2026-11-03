ps = part_system_create(particles);
if global_space{
	part_system_global_space(ps, true);
}
part_system_automatic_draw(ps, false);
