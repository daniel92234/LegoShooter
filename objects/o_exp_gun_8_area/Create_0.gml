player = "Neutral";
explosion_scale = 0.7;
image_xscale = explosion_scale;
image_yscale = explosion_scale;
color_blend = make_colour_rgb(255, 175, 0);
with instance_create_layer(x,y,"Game_Objects",o_exp){
    image_xscale = other.explosion_scale;
    image_yscale = other.explosion_scale;
    image_blend = other.color_blend;
}
outer_damage_min = 15;
outer_damage_max = 29;
outer_knockback_min = 3.5;
outer_knockback_max = 4.6;
middle_damage_min = 30;
middle_damage_max = 49;
middle_knockback_min = 4.2;
middle_knockback_max = 6.4;
inner_damage_min = 50;
inner_damage_max = 65;
inner_knockback_min = 7;
inner_knockback_max = 9.5;

