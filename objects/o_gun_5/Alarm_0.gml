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
