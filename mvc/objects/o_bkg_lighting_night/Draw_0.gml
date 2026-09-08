var color;
if surface_exists(global.surf){
    color = make_colour_rgb(0, 0, 0);
    surface_set_target(global.surf);
    draw_clear_alpha(color, 150 / 255);
    draw_set_blend_mode(bm_subtract);
    with o_light{
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    with o_light_fade{
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    draw_set_blend_mode(bm_normal);
    surface_reset_target();
    draw_surface_ext(global.surf, 0, 0, 1, 1, 0, c_white, 1);
}
else{
    global.surf = surface_create(room_width, room_height);
}

