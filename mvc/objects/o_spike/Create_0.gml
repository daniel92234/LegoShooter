if (image_angle == 0 and image_yscale == 1) or (image_angle == 180 and image_yscale == -1){
    sprite_index = s_spike_up;
    image_xscale = 1;
    image_yscale = 1;
    image_angle = 0;
}
else if (image_angle == 180 and image_yscale == 1) or (image_angle == 0 and image_yscale == -1){
    sprite_index = s_spike_down;
    image_xscale = 1;
    image_yscale = 1;
    image_angle = 0;
}
else if (image_angle == 90 and image_xscale == 1) or (image_angle == 270 and image_xscale == -1){
    sprite_index = s_spike_right;
    image_xscale = 1;
    image_yscale = 1;
    image_angle = 0;
}
else if (image_angle == 270 and image_xscale == 1) or (image_angle == 90 and image_xscale == -1){
    sprite_index = s_spike_left;
    image_xscale = 1;
    image_yscale = 1;
    image_angle = 0;
}

