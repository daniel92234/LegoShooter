//pulling out a grenade
if state = "Active" and hit == false and hold_grenade == "Ready" and (reload_state == "Ready" or reload_state == "Reloading" or reload_state == "Out"){
	if global.grenades > 0{
	    sprite_index = s_arm_G1;
	    image_speed = 0;
	    hold_grenade = "Holding";
	    if reload_state == "Reloading"{
	        alarm[0] = -1;
	        reload_state = "Ready";
	    }
	}
}