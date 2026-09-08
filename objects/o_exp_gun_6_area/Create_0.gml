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

