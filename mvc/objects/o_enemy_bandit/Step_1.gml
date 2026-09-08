//if we are out of health, destroy and create lots of LEGO pieces, like in LEGO Star Wars.
if (hp <= 0) {
//normally I wouldn't write code in a horizontal list, but this time it's all similar code.
if head_sprite == s_enemy_head_bandit{
    with instance_create(x,y,o_bit) {sprite_index = s_enemy_head_bandit_dead; hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
}
else if head_sprite == s_enemy2_head_bandit{
    with instance_create(x,y,o_bit) {sprite_index = s_enemy2_head_bandit_dead; hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
}
else if head_sprite == s_enemy3_head_bandit{
    with instance_create(x,y,o_bit) {sprite_index = s_enemy3_head_bandit_dead; hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
}
with instance_create(x,y,o_bit) {sprite_index = s_enemy_arm_bandit; hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create(x,y,o_bit) {sprite_index = s_enemy_arm_bandit; hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create(x,y,o_bit) {sprite_index = s_enemy_leg_bandit; hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create(x,y,o_bit) {sprite_index = s_enemy_leg_bandit; hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
with instance_create(x,y,o_bit) {sprite_index = s_enemy_belt_bandit; hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
if enemy_var == "Normal"{
    with instance_create(x,y,o_bit) {sprite_index = s_enemy_torso_bandit; hspeed = -4+random(8); vspeed = -4-random(2); direction = random(360)}
}
//the gun is created by the enemy arm, to make sure the ammo transfers over.
with my_arm {instance_destroy()} 
with my_other_arm{
    if object_index == o_enemy_arm_shield_bandit{
        with instance_create(center_x, center_y, o_bit){
            sprite_index = s_shield_part1;
            direction = random_range(0, 359);
            speed = 3 + random(5)
        }
        with instance_create(center_x, center_y, o_bit){
            sprite_index = s_shield_part2;
            direction = random_range(0, 359);
            speed = 3 + random(5)
        }
        with instance_create(center_x, center_y, o_bit){
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

