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
outer_damage_min = 10;
outer_damage_max = 20;
outer_knockback_min = 3.5;
outer_knockback_max = 4;
middle_damage_min = 21;
middle_damage_max = 45;
middle_knockback_min = 5;
middle_knockback_max = 6.5;
inner_damage_min = 46;
inner_damage_max = 70;
inner_knockback_min = 7;
inner_knockback_max = 8.2;

