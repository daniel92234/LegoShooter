move_contact_all(direction,speed);
speed = 0;
effect_create_depth(layer_get_depth("Game_Objects") + DEPTH_OFFSET_EFFECTS, ef_smokeup,x,y,0,c_orange);
instance_destroy();

