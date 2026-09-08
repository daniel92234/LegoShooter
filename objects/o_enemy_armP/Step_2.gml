if instance_exists(o_player) {
	if o_player.x < x and !collision_line(x, y, o_player.x, o_player.y, o_blockP, 0, 1) or parent.vspeed < 0{
	    image_yscale = -1;
	}
	else if o_player.x > x and !collision_line(x, y, o_player.x, o_player.y, o_blockP, 0, 1) or parent.vspeed > 0{
	    image_yscale = 1;
	}
	if !collision_line(x, y, o_player.x,o_player.y, o_blockP, 0, 1){
	    image_angle = point_direction(x, y, o_player.x, o_player.y) + offset;
	}
}
