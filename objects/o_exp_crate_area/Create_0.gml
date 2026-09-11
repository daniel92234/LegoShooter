player = "Neutral";
explosion_scale = 2;
image_xscale = explosion_scale;
image_yscale = explosion_scale;
color_blend = make_colour_rgb(255, 100, 0);
with instance_create_layer(x,y,"Game_Objects",o_exp){
    image_xscale = other.explosion_scale;
    image_yscale = other.explosion_scale;
    image_blend = other.color_blend;
}
outer_damage_min = 50;
outer_damage_max = 51;
outer_knockback_min = 6;
outer_knockback_max = 7;
middle_damage_min = 52;
middle_damage_max = 110;
middle_knockback_min = 8;
middle_knockback_max = 10;
inner_damage_min = 111;
inner_damage_max = 160;
inner_knockback_min = 12;
inner_knockback_max = 14;
