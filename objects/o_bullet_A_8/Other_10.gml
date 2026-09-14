/// @description  Smoke Effect
with instance_create_layer(cx,cy,"Game_Objects",o_bullet_impact) {
	particles = p_bullet_impact_1;
	color = make_colour_rgb(255,25,25);
	light = true;
}
