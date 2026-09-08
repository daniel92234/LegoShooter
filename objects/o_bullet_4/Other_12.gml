/// @description  Light Effect
if instance_exists(o_bkg_lighting_night){
    with instance_create(x, y, o_light_fade){
        image_alpha = 0.4
        fade_rate = 0.015;
        image_blend = make_colour_rgb(70, 255, 255);
        image_xscale = 0.25;
        image_yscale = 0.25;
    }
}

