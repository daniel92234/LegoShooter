if instance_exists(o_bkg_lighting_night){
    gpu_set_blendmode(bm_add);
    draw_self();
    gpu_set_blendmode(bm_normal);
    depth = -100025
}
else{
    draw_self();
}

