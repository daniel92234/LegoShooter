function scr_ai_line_guarding() {
	//this is for the script that moves the enemy
	if equip2 == "None" or equip2 == "Shield"{
	    if object_exists(o_hostageP){
	        if distance_to_object(o_hostageP) < 100{
	            guard = true;
	            exit;
	        }
	    }
	}
	if instance_exists(o_player){
	    //if state = 0 is if we are not guarding a human
	    if guard == false{ //if we start off being able to see the player
	        if collision_line(x, y - 16, o_player.x, o_player.y, o_blockP, false, true){
	            alert = false; 
	            alarm[0] = game_get_speed(gamespeed_fps) * 4 + random(60);
	        }
	        //if we start off not able to see the player
	        else if !collision_line(x, y - 16, o_player.x, o_player.y, o_blockP, false, true){
	            alert = true; 
	            alarm[0] = game_get_speed(gamespeed_fps) * 4 + random(60);
	        }
	    }
	}



}
