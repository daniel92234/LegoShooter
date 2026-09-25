//move around
if instance_exists(o_player){
	if equip2 == "None" or equip2 == "Shield"{
		var _walking = false
	    if guard == false and alert == true{
	        if distance_to_object(o_player) > walk_away_range + 5 and distance_to_object(o_player) < view_range{
				_walking = true
	            scr_ai_move();
	        }
	        else if distance_to_object(o_player) < walk_away_range - 5{
				_walking = true
	            scr_ai_away();
	        }
	        else{
	            hspeed = 0;
	            sprite_index = asset_get_index("s_enemy_stand_" + enemy_type);
				if can_swim == true and place_meeting(x, y, o_water){
					if distance_to_object(o_player) >= walk_away_range - 5 and distance_to_object(o_player) <= walk_away_range + 5{
						if o_player.y < y - 3 or
						(collision_line(x, y, x, y + 150, o_hazardP, false, true) or
						!collision_line(x, y, x, y + 500, o_blockP, false, true)){
							vspeed -= jump_power / 2;
				            alarm[1] = 25;
				            can_swim = false;
						}
			        }
					else{
						if collision_line(x, y, x, y + 150, o_hazardP, false, true) or
						!collision_line(x, y, x, y + 500, o_blockP, false, true){
							vspeed -= jump_power / 2;
				            alarm[1] = 25;
				            can_swim = false;
						}
					}
				}
	        }
	    }
	    if vspeed > 12 {
	        vspeed = 12;
	    }
	    if !place_meeting(x, y, o_water){
	        if hspeed > 0{
	            hspeed -= 0.5
	        }
	        else if hspeed < 0{
	            hspeed += 0.5
	        }
	    }
	    else{
	        if hspeed > 0{
	            hspeed -= 1.5
	        }
	        else if hspeed < 0{
	            hspeed += 1.5
	        }
	    }
	    gravity_direction = 270;
	    if place_free(x, y + 1){
	        if !place_meeting(x, y, o_water){
	            gravity = global.world_gravity;
	        }
	        else if place_meeting(x, y, o_water){
	            gravity = global.world_gravity * global.water_gravity_multiplier;
	        }
	        gravity_direction = 270; 
	        sprite_index = asset_get_index("s_enemy_jump_" + enemy_type);
	    }
	    else{
	        gravity = 0;
			if !_walking{
				sprite_index = asset_get_index("s_enemy_stand_" + enemy_type);
			}
			else{
				sprite_index = asset_get_index("s_enemy_run_" + enemy_type)
			}
	    }
	    if alert == false{
	        hspeed = 0; 
	        image_speed = 0; 
	        image_index = 0; 
	        sprite_index = asset_get_index("s_enemy_stand_" + enemy_type);
	    }
	    with my_arm{
	        x = other.x;
	        y = other.y;
	    }
	    with my_other_arm{
	        x = other.x; 
	        y = other.y;
	    }
	}
	if equip2 == "Jetpack"{
	    if alert == true and jetpacking == false{
	        jetpacking = true;
			jetpack_y_offset = random_range(-50, 50);
			jetpack_x_offset = random_range(-300, 300);
	    }
	    if jetpacking == true{
			jetpack_y_offset = (jetpack_y_offset+pi/90) % (2*pi);
			jetpack_x_offset = (jetpack_x_offset+pi/180) % (2*pi);
	        sprite_index = asset_get_index("s_enemy_jump_jetpack_" + enemy_type);
	        gravity = 0
	        mp_potential_settings(30, 10, 10, true);
	        mp_potential_step(o_player.x + 300 * cos(jetpack_x_offset), (o_player.y - 300) + 50 * cos(jetpack_y_offset), 3, false);
	    }
	    if jetpacking == false{
	        if vspeed > 12 {
	            vspeed = 12;
	        }
	        gravity_direction = 270;
	        if place_free(x, y + 1){
	            if !place_meeting(x, y, o_water){
	                gravity = global.world_gravity;
	            }
	            else if place_meeting(x, y, o_water){
	                gravity = global.world_gravity * global.water_gravity_multiplier;
	            }
	            gravity_direction = 270; 
	        }
	        else{
	            gravity = 0;
	        }
	        sprite_index = asset_get_index("s_enemy_stand_jetpack_" + enemy_type);
	    }
	    with my_arm{
	        x = other.x; 
	        y = other.y;
	    }
	    with my_other_arm{
	        x = other.x; 
	        y = other.y;
	    }
	}
}
