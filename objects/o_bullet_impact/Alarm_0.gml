ps = part_system_create_layer("Game_Objects",false,particles);
part_system_position(ps, x, y);
part_system_colour(ps, color, 1);
if global_space{
	part_system_global_space(ps, true);
}
