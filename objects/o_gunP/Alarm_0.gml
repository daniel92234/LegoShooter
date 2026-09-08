if state == "Active" or state == "Inactive"{
	reload_state = "Ready";
	if (total_ammo >= clip_size) or ((total_ammo < clip_size) and (clip_size - ammo < total_ammo)){
	    total_ammo -= (clip_size - ammo);
	    ammo = clip_size;
	}
	else if total_ammo < clip_size and !(clip_size - ammo < total_ammo){
	    ammo += total_ammo;
	    total_ammo = 0;
	}
	sprite_index = gun_spr;
	image_speed = 0;
	image_index = 0;
}