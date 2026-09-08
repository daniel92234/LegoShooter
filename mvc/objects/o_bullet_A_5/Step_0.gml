image_angle = direction;
if instance_exists(o_bkg_lighting_night){
    light_id.x = x;
    light_id.y = y;
    light_id.speed = speed;
    light_id.direction = direction;
    light_id.image_angle = image_angle;
}
if create_smoke == true{
    effect_create_above(ef_smoke,x,y,0.6,make_colour_rgb(50, 255, 255));
    alarm[0] = 1;
    create_smoke = false;
}

