gpu_set_blendmode(bm_add);
draw_self();
gpu_set_blendmode(bm_normal);
image_alpha -= fade_rate;
if image_alpha <= 0{
    instance_destroy();
}

