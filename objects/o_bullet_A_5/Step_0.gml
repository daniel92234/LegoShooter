event_inherited();
if create_smoke == true{
    effect_create_depth(layer_get_depth("Game_Objects") + DEPTH_OFFSET_EFFECTS, ef_smoke,x,y,0.6,make_colour_rgb(50, 255, 255));
    alarm[0] = 1;
    create_smoke = false;
}

