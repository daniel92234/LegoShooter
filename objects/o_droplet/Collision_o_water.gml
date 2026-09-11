depth = layer_get_depth("Game_Objects") + DEPTH_OFFSET_WEATHER;
instance_create_layer(x, y + 9, "Game_Objects", o_drip);
instance_destroy();
