move_contact_solid(direction,speed);
speed = 0;
effect_create_depth(layer_get_depth("Game_Objects") + DEPTH_OFFSET_EFFECTS, ef_smokeup,x,y,0,c_orange);
event_user(0);
event_user(1);
instance_destroy();

