/// @description Light Impact Effect
if instance_exists(o_bkg_lighting){
	with instance_create_layer(cx,cy,"Game_Objects",o_light_overlay_fade) {
		image_xscale = 0.25;
		image_yscale = 0.25;
		image_blend = make_colour_rgb(255,25,25);
	}
}
