if instance_exists(o_bkg_lighting_night){
    draw_set_blend_mode(bm_max);
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,direction,image_blend,alpha);
    draw_set_blend_mode(bm_normal);
    depth = -100025
}
else{
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,direction,image_blend,alpha);
}

