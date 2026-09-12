function scr_ai_away() {
	if instance_exists(o_player){
		
		var _facing = 0
		if o_player.x > x
			_facing = -1
		else if o_player.x < x
			_facing = 1
		
	    if !place_meeting(x, y, o_water){
	        if !place_free(x, y + walk_speed + 1){
	            if place_free(x + walk_speed * _facing, y + walk_speed){ //down a slope of 1
	                x += walk_speed * _facing;
	                y += walk_speed; 
	                image_speed = 0.25;
	            }
	            else if place_free(x + walk_speed * _facing, y + walk_speed / 2){ //down a slope of 1/2
	                x += walk_speed * _facing;
	                y += walk_speed / 2; 
	                image_speed = 0.25;
	            }
	            else if place_free(x + walk_speed * _facing, y){ //forward
	                x += walk_speed * _facing;
	                image_speed = 0.25;
	            }
	            else if place_free(x + walk_speed * _facing, y - walk_speed / 2){ //up a slope of 1
	                x += walk_speed * _facing;
	                y -= walk_speed / 2; 
	                image_speed = 0.25;
	            }
	            else if place_free(x + walk_speed * _facing, y - walk_speed){ //up a slope of 1/2
	                x += walk_speed * _facing;
	                y -= walk_speed;
	                image_speed = 0.25;
	            }
	            else if place_free(x + walk_speed * _facing, y){   //though this seems unneeded, the player sometimes gets stuck if it is not there.
	                x += walk_speed * _facing;
	            }
	        }
	    }
	    else {
	        if place_free(x + walk_speed * (5 / 8) * _facing, y + walk_speed * (5 / 8)){ //down a slope of 1
	            x += walk_speed * (5 / 8) * _facing;
	            y += walk_speed * (5 / 8); 
	            image_speed = 0.125;
	        }
	        else if place_free(x + walk_speed * (5 / 8) * _facing, y + (walk_speed * (5 / 8)) / 2){ //down a slope of 1/2
	            x += walk_speed * (5 / 8) * _facing;
	            y += (walk_speed * (5 / 8)) / 2; 
	            image_speed = 0.125;
	        }
	        else if place_free(x + walk_speed * (5 / 8) * _facing, y){ //forward
	            x += walk_speed * (5 / 8) * _facing;
	            image_speed = 0.125;
	        }
	        else if place_free(x + walk_speed * (5 / 8) * _facing, y - (walk_speed * (5 / 8)) / 2){ //up a slope of 1
	            x += walk_speed * (5 / 8) * _facing;
	            y -= (walk_speed * (5 / 8)) / 2; 
	            image_speed = 0.125;
	        }
	        else if place_free(x + walk_speed * (5 / 8) * _facing, y - walk_speed * (5 / 8)){ //up a slope of 1/2
	            x += walk_speed * (5 / 8) * _facing;
	            y -= walk_speed * (5 / 8);
	            image_speed = 0.125;
	        }
	        if can_swim == true{
				if o_player.y < y - 3 or
				(distance_to_object(o_blockP) > distance_to_object(o_hazardP) and collision_line(x, y, x, y + 150, o_hazardP, false, true)) or
				!collision_line(x, y, x, y + 500, o_blockP, false, true){
					vspeed -= jump_power / 2;
		            alarm[1] = 25;
		            can_swim = false;
				}
	        }
	    }
	}
}
