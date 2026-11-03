if instance_exists(o_bkg_lighting){
	shader_set_uniform_f(o_bkg_lighting.u_emissive, 1.0);
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,image_angle,image_blend,image_alpha);

if instance_exists(o_bkg_lighting){
	shader_set_uniform_f(o_bkg_lighting.u_emissive, 0.0);
}
