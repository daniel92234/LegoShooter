if face_player == true{
    if instance_exists(o_player) {
		if rotate_with_direction == true{
			image_angle = point_direction(x, y, o_player.x, o_player.y)
			if o_player.x < x and !collision_line(x, y, o_player.x, o_player.y, o_blockP, 0, 1){
				image_yscale = -1;
		    }
		    else if o_player.x > x and !collision_line(x, y, o_player.x, o_player.y, o_blockP, 0, 1){
		        image_yscale = 1;
		    }
		}
		else{
			if o_player.x < x and !collision_line(x, y, o_player.x, o_player.y, o_blockP, 0, 1){
				image_xscale = -1;
		    }
		    else if o_player.x > x and !collision_line(x, y, o_player.x, o_player.y, o_blockP, 0, 1){
		        image_xscale = 1;
		    }
		}
    }
}
else{
	if rotate_with_direction == true{
	    if x > xprevious{
	        image_yscale = 1;
	    }
	    else if x < xprevious{
	        image_yscale = -1;
	    }
		image_angle = direction;
	}
	else{
		if x > xprevious{
			image_xscale = 1;
		}
		else if x < xprevious{
			image_xscale = -1;
		}
	}
}
