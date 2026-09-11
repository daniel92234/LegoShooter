depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_WEATHER;
speed = random_range(1, 2);
direction = random_range(45, 135);

while (!place_free(x,y) or place_meeting(x,y,o_water)){
	y--
}