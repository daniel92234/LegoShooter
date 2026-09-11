if total_ammo > ammo_max{
	total_ammo = ammo_max;
}
if ammo == 0 and sprite_index == gun_spr{
	reload_state = "Out";
}
if state == "Ground"{
	if ammo == 0 and total_ammo == 0{
	    with instance_create_layer(x,y,"Game_Objects",o_bit){
	        sprite_index = other.ground_spr;
	    }
	instance_destroy();
	}
	sprite_index = ground_spr;
	image_angle = 0;
	image_yscale = 1;
	if place_free(x, y + 1){
	    if !place_meeting(x, y, o_water){
	        gravity = global.world_gravity;
	    }
	    else if place_meeting(x, y, o_water){
	        gravity = global.world_gravity * (2 / 5);
	    }
	gravity_direction = 270;
	}
exit;
}
else if state == "Active" or state == "Inactive"{
	direction = point_direction(x, y, mouse_x, mouse_y);
	x = o_player.x
	y = o_player.y
	exit;
}