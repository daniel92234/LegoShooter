if instance_exists(o_player){
    flash = instance_create_layer(flash_x_offset,flash_y_offset,"Game_Objects",o_flash);
    with flash{
        sprite_index = s_flash_A_4;
        image_speed = 0.4;
        image_angle = other.image_angle;
        if other.image_yscale == 1{
            image_yscale = 1;
        }
        else if other.image_yscale == -1{
            image_yscale = -1;
        }
        owner = other.id
    }
	for (var i = 0; i < array_length(bullet_x_real); i++) {
	    with instance_create_layer(bullet_x_offset[i], bullet_y_offset[i], "Game_Objects", o_bullet_A_4){
	        speed = 10;
	        direction = other.image_angle;
	        image_angle = direction;
	        if other.image_yscale == 1{
	            image_yscale = 1;
	        }
	        else if other.image_yscale == -1{
	            image_yscale = -1;
	        }
	        player = "Enemy";
	    }
	}
    image_speed = 1;
}

