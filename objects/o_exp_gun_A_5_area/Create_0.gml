player = "Neutral";
explosion_scale = 1;
image_xscale = explosion_scale;
image_yscale = explosion_scale;
color_blend = make_colour_rgb(50, 255, 255);
with instance_create_layer(x,y,"Game_Objects",o_exp){
    image_xscale = other.explosion_scale;
    image_yscale = other.explosion_scale;
    image_blend = other.color_blend;
}
if instance_exists(o_bkg_lighting){
	with instance_create_layer(x,y,"Game_Objects",o_light_overlay_fade) {
		image_xscale = other.explosion_scale * 1.5;
		image_yscale = other.explosion_scale * 1.5;
		image_blend = other.color_blend;
	}
}
damage_min = 22
damage_max = 68
random_factor = 0.05
knockback_min = 2
knockback_max = 6.75
