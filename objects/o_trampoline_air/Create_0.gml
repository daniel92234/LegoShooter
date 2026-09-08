prop = instance_create_layer(x - 2, y, "Game_Objects", o_propeller);
with prop {
    image_speed = 0.3;
	depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_BACKGROUND_OBJECTS;
}
image_speed = 0;
depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_BACKGROUND_OBJECTS;
