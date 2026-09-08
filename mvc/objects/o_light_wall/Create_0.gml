if instance_exists(o_bkg_lighting_night){
    with instance_create(x,y,o_light){
        image_xscale = 1.65;
        image_yscale = 1.65;
        image_blend = c_white;
        image_alpha = 0.4;
    }
}

