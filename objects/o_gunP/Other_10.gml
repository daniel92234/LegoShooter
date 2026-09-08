sprite_index = gun_spr_reload;
image_speed = sprite_get_number(sprite_index) / reload_speed;
alarm[0] = reload_speed;
reload_state = "Reloading";
