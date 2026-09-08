image_speed = 0.1;
if !(place_meeting(x, y - 1, o_lava) or
place_meeting(x, y - 1, o_upP) or
place_meeting(x, y - 1, o_ground) or
place_meeting(x, y - 1, o_ground_plate)){
    if image_xscale == 1 and image_yscale == 1{
        sprite_index = s_lava_edge;
        image_xscale = 1;
        image_yscale = 1;
    }
    else if image_xscale == 1 and image_yscale == 0.5{
        sprite_index = s_lava_half_h_edge;
        image_xscale = 1;
        image_yscale = 1;
    }
    else if image_xscale == 0.5 and image_yscale == 1{
        sprite_index = s_lava_half_v_edge;
        image_xscale = 1;
        image_yscale = 1;
    }
    else if image_xscale == 0.5 and image_yscale == 0.5{
        sprite_index = s_lava_quarter_edge;
        image_xscale = 1;
        image_yscale = 1;
    }
}
else{
    if image_xscale == 1 and image_yscale == 1{
        sprite_index = s_lava;
        image_xscale = 1;
        image_yscale = 1;
    }
    else if image_xscale == 1 and image_yscale == 0.5{
        sprite_index = s_lava_half_h;
        image_xscale = 1;
        image_yscale = 1;
    }
    else if image_xscale == 0.5 and image_yscale == 1{
        sprite_index = s_lava_half_v;
        image_xscale = 1;
        image_yscale = 1;
    }
    else if image_xscale == 0.5 and image_yscale == 0.5{
        sprite_index = s_lava_quarter;
        image_xscale = 1;
        image_yscale = 1;
    }
}

