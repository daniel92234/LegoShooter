/// @description Light Impact Effect
with instance_create_layer(x,y,"Game_Objects",o_light_overlay_fade) {
	image_xscale = 0.275;
	image_yscale = 0.275;
	image_blend = make_colour_rgb(0,255,0);
	light = true;
}
