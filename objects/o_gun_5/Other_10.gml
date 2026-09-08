sprite_index = gun_spr_reload;
image_speed = sprite_get_number(sprite_index) / reload_speed_per_ammo;
alarm[0] = reload_speed_per_ammo;
reload_state = "Reloading";
