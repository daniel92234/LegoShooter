//if we are out of health, destroy and create lots of LEGO pieces, like in LEGO Star Wars.
if (hp <= 0) {
//normally I wouldn't write code in a horizontal list, but this time it's all similar code.
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index(sprite_get_name(other.head_sprite) + "_dead"); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_arm_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_arm_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_leg_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_leg_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_belt_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create_layer(x,y,"Game_Objects",o_bit) {sprite_index = asset_get_index("s_enemy_torso_" + other.enemy_type); hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
//the gun is created by the enemy arm, to make sure the ammo transfers over.
with my_arm {instance_destroy()} 
with my_other_arm{
    if object_index == o_enemy_arm_shield_bandit{
        with instance_create_layer(center_x, "Game_Objects", center_y, o_bit){
            sprite_index = s_shield_part1;
            direction = random_range(0, 359);
            speed = 3 + random(5)
        }
        with instance_create_layer(center_x, "Game_Objects", center_y, o_bit){
            sprite_index = s_shield_part2;
            direction = random_range(0, 359);
            speed = 3 + random(5)
        }
        with instance_create_layer(center_x, "Game_Objects", center_y, o_bit){
            sprite_index = s_shield_part3;
            direction = random_range(0, 359);
            speed = 3 + random(5)
        }
    }
    instance_destroy()
} 
with my_head {instance_destroy()} 
instance_destroy() 
}
