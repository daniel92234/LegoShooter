if state != "Ground"{
	depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_PLAYER_GUN;
}
else{
	depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_GUN_GROUND;
}
if state == "Active"{
	x = o_player.x;
	y = o_player.y;
	if hit == false{
	    image_angle = point_direction(x, y, mouse_x, mouse_y);
	}
	if global.facing == 1 {
	    image_yscale = 1;
	}
	else if global.facing == -1 {
	    image_yscale = -1;
	}
}
else if state == "Inactive"{
	x = o_player.x;
	y = o_player.y;
}