player = "Neutral";
explosion_scale = 0.75;
image_xscale = explosion_scale;
image_yscale = explosion_scale;
color_blend = make_colour_rgb(0, 0, 255);
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
outer_damage_min = 17;
outer_damage_max = 27;
outer_knockback_min = 3;
outer_knockback_max = 4;
middle_damage_min = 28;
middle_damage_max = 40;
middle_knockback_min = 4;
middle_knockback_max = 5.5;
inner_damage_min = 41;
inner_damage_max = 58;
inner_knockback_min = 7;
inner_knockback_max = 9;

