if (hp <= max_hp / 2){
    amount = hp / (max_hp / 2);
    color = merge_colour(make_colour_rgb(10, 10, 10), make_colour_rgb(150, 150, 150), amount);
    effect_create_depth(layer_get_depth("Game_Objects") + DEPTH_OFFSET_EFFECTS, ef_smokeup, x, y, 0.5, color);
}
//if we are out of health, destroy and create lots of LEGO pieces, like in LEGO Star Wars.
if (hp <= 0) {
//normally I wouldn't write code in a horizontal list, but this time it's all similar code.
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = s_enemy_robot_air_small_part3; image_index = 0; image_speed = 0; speed = random_range(1, 3); direction = random_range(0, 359)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = s_enemy_robot_air_small_part4; image_index = 0; image_speed = 0; speed = random_range(1, 3); direction = random_range(0, 359)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = s_enemy_robot_air_small_part5; image_index = 0; image_speed = 0; speed = random_range(1, 3); direction = random_range(0, 359)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = s_enemy_robot_air_small_part6; image_index = 0; image_speed = 0; speed = random_range(1, 3); direction = random_range(0, 359)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = s_enemy_robot_air_small_part7; image_index = 0; image_speed = 0; speed = random_range(1, 3); direction = random_range(0, 359)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = s_enemy_robot_glider_small_part1; image_index = 0; image_speed = 0; speed = random_range(1, 3); direction = random_range(0, 359)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = s_enemy_robot_glider_small_part2; image_index = 0; image_speed = 0; speed = random_range(1, 3); direction = random_range(0, 359)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = s_enemy_robot_glider_small_part3; image_index = 0; image_speed = 0; speed = random_range(1, 3); direction = random_range(0, 359)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = s_enemy_robot_glider_small_part3; image_index = 0; image_speed = 0; speed = random_range(1, 3); direction = random_range(0, 359)}
with instance_create_layer(x,y,"Game_Objects",o_exp){
    explosion_scale = 0.5;
    image_xscale = explosion_scale;
    image_yscale = explosion_scale;
    image_blend = make_colour_rgb(50, 255, 50);
}
//the gun is created by the enemy arm, to make sure the ammo transfers over.
with my_gun {instance_destroy()}
instance_destroy() 
}

