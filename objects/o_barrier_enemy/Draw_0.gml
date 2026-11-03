if instance_exists(o_bkg_lighting){
	shader_set_uniform_f(o_bkg_lighting.u_emissive, 1.0);
}

draw_self();

if instance_exists(o_bkg_lighting){
	shader_set_uniform_f(o_bkg_lighting.u_emissive, 0.0);
}

image_alpha -= 0.085;
if image_alpha <= 0{
    image_alpha = 1;
}
