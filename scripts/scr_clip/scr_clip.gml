function scr_clip(argument0, argument1, argument2) {
	x_clip = x + lengthdir_x(argument0, image_angle) - lengthdir_y(argument1 * sign(image_yscale), image_angle);
	y_clip = y + lengthdir_y(argument0, image_angle) + lengthdir_x(argument1 * sign(image_yscale), image_angle);
	with instance_create_layer(x_clip, y_clip, "Game_Objects",o_bit){
	    depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_GUN_CILPS;
	    sprite_index = argument2;
	    image_speed = 0;
	    if global.facing == 1{
	        image_angle = other.image_angle;
	        motion_add(other.image_angle - 90 * other.image_xscale, random_range(1, 3));
	    //motion_add(other.direction,other.speed);
	    }
	    else if global.facing == -1{
	        image_angle = other.image_angle;
	        motion_add(other.image_angle + 90 * other.image_xscale, random_range(1, 3));
	    //motion_add(other.direction,other.speed);
	    }
	}



}
