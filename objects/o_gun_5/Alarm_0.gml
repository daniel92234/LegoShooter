if state == "Active" or state == "Inactive"{
	if ammo < clip_size and total_ammo > 0{
		ammo += 1;
		total_ammo -= 1;
		event_user(0)
		if ammo == clip_size or total_ammo == 0{
			reload_state = "Ready";
			sprite_index = gun_spr;
			image_index = 7;
			image_speed = 0.2;
		}
	}
}

//if state == "Active" or state == "Inactive"{
//	    reload_state = "Ready";
//	    if (total_ammo >= clip_size) or ((total_ammo < clip_size) and (clip_size - ammo < total_ammo)){
//	        total_ammo -= (clip_size - ammo);
//	        ammo = clip_size;
//	    }
//	    else if total_ammo < clip_size and !(clip_size - ammo < total_ammo){
//	        ammo += total_ammo;
//	        total_ammo = 0;
//	    }
//	    sprite_index = gun_spr;
//	    image_speed = 0;
//	    image_index = 0;
//	}