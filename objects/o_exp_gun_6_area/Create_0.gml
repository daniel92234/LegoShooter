player = "Neutral";
explosion_scale = 0.85;
image_xscale = explosion_scale;
image_yscale = explosion_scale;
color_blend = make_colour_rgb(255, 175, 0);
with instance_create_layer(x,y,"Game_Objects",o_exp){
    image_xscale = other.explosion_scale;
    image_yscale = other.explosion_scale;
    image_blend = other.color_blend;
}
outer_damage_min = 20;
outer_damage_max = 40;
outer_knockback_min = 4;
outer_knockback_max = 5;
middle_damage_min = 41;
middle_damage_max = 57;
middle_knockback_min = 5;
middle_knockback_max = 7;
inner_damage_min = 58;
inner_damage_max = 80;
inner_knockback_min = 8;
inner_knockback_max = 10.3;

