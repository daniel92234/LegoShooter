if activation_blueP.active == true{
    image_index = 0;
    if instance_exists(o_bkg_lighting_night){
        if create_light == true{
            with instance_create(x+21,y+13,o_light){
                image_xscale = 0.5;
                image_yscale = 0.5;
                image_blend = make_colour_rgb(0, 0, 255);
                image_alpha = 0.4;
            }
        create_light = false;
        }
    }
}
else{
    image_index = 1;
}

