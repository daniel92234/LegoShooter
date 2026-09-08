if state == "Active" and hit == false and (hold_grenade == "Ready" or hold_grenade == "Rest"){
//shooting
    if reload_state == "Ready" and ammo > 0{
        flash = instance_create(flash_x_offset, flash_y_offset,o_flash);
        with flash{
            sprite_index = s_flash_A_4;
            image_speed = 0.4;
            image_angle = other.image_angle;
            if global.facing == 1{
                image_yscale = 1;
            }
            else if global.facing == -1{
                image_yscale = -1;
            }
            owner = other.id
        }
		for (var i = 0; i < array_length(bullet_x_real); i++) {
	        with instance_create(bullet_x_offset[i], bullet_y_offset[i], o_bullet_A_4){
	            speed = 20;
	            direction = other.image_angle;
	            image_angle = direction;
	            if global.facing == 1{
	                image_yscale = 1;
	            }
	            else if global.facing == -1{
	                image_yscale = -1;
	            }
	            player = "Player";
	        }
		}
        reload_state = "Rest";
        alarm[2] = 17;
        image_speed = 1;
        ammo -= 1;
    }
}
