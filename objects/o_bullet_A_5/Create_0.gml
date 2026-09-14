event_inherited();
smoke_real_x = -1; // edit this for x offset
smoke_real_y = 0; // edit this for y offset

if instance_exists(o_bkg_lighting){
	my_light = instance_create_layer(x,y,"Game_Objects",o_light_overlay);
	with my_light{
		image_blend = make_colour_rgb(70,255,255);
		image_xscale = 0.4;
		image_yscale = 0.4;
		image_angle = other.image_angle;
	}
}

my_trail = instance_create_layer(x,y,"Game_Objects",o_bullet_trail);
with my_trail{
	particles = p_bullet_trail_1;
	color = make_colour_rgb(70,255,255);
	light = true;
	global_space = true;
	owner = other.id
}
