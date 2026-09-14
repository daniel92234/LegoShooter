event_inherited();
damage = irandom_range(6, 12);

if instance_exists(o_bkg_lighting){
	my_light = instance_create_layer(x,y,"Game_Objects",o_light_overlay);
	with my_light{
		image_blend = make_colour_rgb(0,255,0);
		image_xscale = 0.225;
		image_yscale = 0.225;
	}
}
