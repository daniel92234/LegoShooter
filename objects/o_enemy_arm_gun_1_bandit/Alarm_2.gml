if instance_exists(o_player){
	for (var i = 0; i < array_length(bullet_x_real); i++) {
	    with instance_create(bullet_x_offset[i], bullet_y_offset[i], o_bullet_1){
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
    scr_shell_enemy(25, -5, s_shell_1, random_range(5, 7));
    scr_shell_enemy(25, -3, s_shell_1, random_range(3, 5));
    image_speed = 1;
}

