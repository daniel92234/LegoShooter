/// @description  Light Effect
if instance_exists(o_bkg_lighting_night){
    with instance_create(cx, cy, o_light_fade){
        image_alpha = 0.4;
        fade_rate = 0.015;
        image_blend = make_colour_rgb(255, 30, 30);
        image_xscale = 0.2;
        image_yscale = 0.2;
    }
}

