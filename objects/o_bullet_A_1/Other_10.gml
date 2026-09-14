/// @description  Smoke Effect
with instance_create_layer(x,y,"Game_Objects",o_bullet_impact) {
	particles = p_bullet_impact_1;
	color = make_colour_rgb(0,255,0);
	light = true;
}
