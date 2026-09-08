player = "Neutral";
explosion_scale = 1.05;
image_xscale = explosion_scale;
image_yscale = explosion_scale;
color_blend = make_colour_rgb(50, 255, 255);
with instance_create(x, y, o_exp){
    image_xscale = other.explosion_scale;
    image_yscale = other.explosion_scale;
    image_blend = other.color_blend;
}
if instance_exists(o_bkg_lighting_night){
    with instance_create(x,y,o_light_fade){
        image_xscale = other.explosion_scale * 2;
        image_yscale = other.explosion_scale * 2;
        image_blend = other.color_blend;
        image_alpha = 0.5;
        fade_rate = 0.035;
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
damage_type = "Explosion"

