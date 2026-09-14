event_inherited();
bounces = 2;
damage = irandom_range(12, 16);

if instance_exists(o_bkg_lighting){
	my_light = instance_create_layer(x,y,"Game_Objects",o_light_overlay);
	with my_light{
		image_blend = make_colour_rgb(155,0,255);
		image_xscale = 0.16;
		image_yscale = 0.11;
		image_angle = other.image_angle;
	}
}
