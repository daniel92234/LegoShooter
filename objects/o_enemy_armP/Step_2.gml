if instance_exists(o_player) {
	image_yscale = parent.image_xscale;
	if !collision_line(x, y, o_player.x,o_player.y, o_blockP, 0, 1){
	    image_angle = point_direction(x, y, o_player.x, o_player.y) + offset;
	}
}
