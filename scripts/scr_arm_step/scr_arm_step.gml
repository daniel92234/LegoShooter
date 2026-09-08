function scr_arm_step(argument0, argument1) {
	if instance_exists(o_player){
	    if distance_to_object(o_player) < argument0 and can_shoot == true{
	        door = collision_line(x, y, o_player.x, o_player.y, o_doorP, false, true);
	        door_is_opened = false;
	        if door != noone{
	            if door.opened == true{
	                door_is_opened = true;
	            }
	            else{
	                door_is_opened = false;
	            }
	        }
	        else{
	            door_is_opened = true;
	        }
	        if !collision_line(x, y, o_player.x, o_player.y, o_blockP, false, true) and door_is_opened = true{
	            alarm[2] = 1;
	            alarm[0] = argument1;
	            can_shoot = false;
	        }
	    }
	}
}
