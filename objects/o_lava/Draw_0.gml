if instance_exists(o_bkg_lighting){
	shader_set_uniform_f(o_bkg_lighting.u_emissive, 1.0);
}

var full_width = width_units - (width_units mod 2);
var half_width = (width_units != full_width);

for (var i = 0; i < height_units; i += 2){
    var draw_y = y + i * 16;
    var top = (i == 0);
    var half_height = (height_units - i == 1);

    var spr = half_height ? s_lava_half_h : s_lava;
    var sprite_half = half_height ? s_lava_quarter : s_lava_half_v;

    var sprite_edge = half_height ? s_lava_half_h_edge : s_lava_edge;
    var sprite_half_edge = half_height ? s_lava_quarter_edge : s_lava_half_v_edge;

    for (var j = 0; j < full_width; j += 2){
        var draw_x = x + j * 16;
        var draw_spr = spr;

        if top and collision_line(draw_x,y-1,draw_x+31,y-1,o_lava,0,1) == noone{
            draw_spr = sprite_edge;
        }

        draw_sprite_ext(draw_spr,image_index,draw_x, draw_y,1,1,0,image_blend,image_alpha);
    }

    if half_width{
        var draw_x = x + full_width * 16;
        var draw_spr = sprite_half;

        if top and collision_line(draw_x,y-1,draw_x+15,y-1,o_lava,0,1) == noone {
            draw_spr = sprite_half_edge;
        }

        draw_sprite_ext(draw_spr,image_index,draw_x,draw_y,1,1,0,image_blend,image_alpha);
    }
}

if instance_exists(o_bkg_lighting){
	shader_set_uniform_f(o_bkg_lighting.u_emissive, 0.0);
}
