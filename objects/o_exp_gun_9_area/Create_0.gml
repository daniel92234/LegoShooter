player = "Neutral";
explosion_scale = 0.9;
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
outer_damage_min = 18;
outer_damage_max = 30;
outer_knockback_min = 4;
outer_knockback_max = 5;
middle_damage_min = 31;
middle_damage_max = 54;
middle_knockback_min = 5;
middle_knockback_max = 6.8;
inner_damage_min = 55;
inner_damage_max = 73;
inner_knockback_min = 7;
inner_knockback_max = 9;

