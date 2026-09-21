player = "Neutral";
explosion_scale = 0.8;
image_xscale = explosion_scale;
image_yscale = explosion_scale;
color_blend = make_colour_rgb(255, 175, 0);
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
damage_min = 15
damage_max = 62
random_factor = 0.05
knockback_min = 2
knockback_max = 5.5
