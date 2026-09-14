event_inherited();
damage = irandom_range(10, 14);

if instance_exists(o_bkg_lighting){
	my_light = instance_create_layer(x,y,"Game_Objects",o_light_overlay);
	with my_light{
		image_blend = make_colour_rgb(70,255,255);
		image_xscale = 0.22;
		image_yscale = 0.15;
		image_angle = other.image_angle;
	}
}
