if instance_exists(o_bkg_lighting_night){
    draw_set_blend_mode(bm_add);
    draw_self();
    draw_set_blend_mode(bm_normal);
    depth = -100025
}
else{
    draw_self();
}

