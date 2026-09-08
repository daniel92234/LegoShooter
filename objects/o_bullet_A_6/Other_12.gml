/// @description  Light Effect
if instance_exists(o_bkg_lighting_night){
    with instance_create(x, y, o_light_fade){
        image_alpha = 0.4;
        fade_rate = 0.01;
        image_blend = make_colour_rgb(255, 30, 30);
        image_xscale = 0.4;
        image_yscale = 0.4;
    }
}

