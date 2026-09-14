player = "Neutral";
explosion_scale = 1.05;
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
outer_damage_min = 23;
outer_damage_max = 37;
outer_knockback_min = 4.5;
outer_knockback_max = 5.5;
middle_damage_min = 38;
middle_damage_max = 53;
middle_knockback_min = 6;
middle_knockback_max = 8;
inner_damage_min = 54;
inner_damage_max = 86;
inner_knockback_min = 9;
inner_knockback_max = 11.5;
