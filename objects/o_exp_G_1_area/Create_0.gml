player = "Neutral";
explosion_scale = 0.85;
image_xscale = explosion_scale;
image_yscale = explosion_scale;
color_blend = make_colour_rgb(255, 175, 0);
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

