function scr_shell_enemy(argument0, argument1, argument2, argument3) {
	x_clip = x + lengthdir_x(argument0, image_angle) - lengthdir_y(argument1 * sign(image_yscale), image_angle);
	y_clip = y + lengthdir_y(argument0, image_angle) + lengthdir_x(argument1 * sign(image_yscale), image_angle);
	with instance_create_layer(x_clip, y_clip, "Game_Objects",o_bit){
	    depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_GUN_CASINGS;
	    sprite_index = argument2;
	    image_speed = 0;
	    if other.image_yscale == 1{
	        image_angle = other.image_angle;
	        motion_add(other.image_angle + 90 * other.image_xscale, argument3);
	    //motion_add(other.image_angle,other.speed);
	    }
	    else if other.image_yscale == -1{
	        image_angle = other.image_angle;
	        motion_add(other.image_angle - 90 * other.image_xscale, argument3);
	    //motion_add(other.image_angle,other.speed);
	    }
	}



}
