if instance_exists(o_bkg_lighting_night){
    depth = -100030;
}
draw_set_blend_mode(bm_max);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_set_blend_mode(bm_normal);

