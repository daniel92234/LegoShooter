/// @description  Light Effect
if instance_exists(o_bkg_lighting_night){
    with instance_create(x, y, o_light_fade){
        image_alpha = 0.4
        fade_rate = 0.015;
        image_blend = make_colour_rgb(155, 0, 255);
        image_xscale = 0.15;
        image_yscale = 0.15;
    }
}

