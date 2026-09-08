function scr_shell(argument0, argument1, argument2, argument3) {
	x_shell = x + lengthdir_x(argument0, image_angle) - lengthdir_y(argument1 * sign(image_yscale), image_angle);
	y_shell = y + lengthdir_y(argument0, image_angle) + lengthdir_x(argument1 * sign(image_yscale), image_angle);
	with instance_create_layer(x_shell, y_shell, "Game_Objects", o_bit){
	    depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_GUN_CASINGS;
	    sprite_index = argument2;
	    image_speed = 0;
	    if global.facing == 1{
	        image_angle = other.image_angle;
	        motion_add(other.image_angle + 90 * other.image_xscale, argument3);
	    //motion_add(other.image_angle,other.speed);
	    }
	    else if global.facing == -1{
	        image_angle = other.image_angle;
	        motion_add(other.image_angle - 90 * other.image_xscale, argument3);
	    //motion_add(other.image_angle,other.speed);
	    }
	}



}
