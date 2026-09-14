event_inherited();
target = noone;
damage = irandom_range(17, 25);

if instance_exists(o_bkg_lighting){
	my_light = instance_create_layer(x,y,"Game_Objects",o_light_overlay);
	with my_light{
		image_blend = make_colour_rgb(255,30,30);
		image_xscale = 0.27;
		image_yscale = 0.27;
		image_angle = other.image_angle;
	}
}
