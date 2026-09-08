draw_set_blend_mode(bm_add);
draw_self();
draw_set_blend_mode(bm_normal);
image_alpha -= fade_rate;
if image_alpha <= 0{
    instance_destroy();
}

