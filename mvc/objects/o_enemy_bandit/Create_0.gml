//setting variables
player = "Enemy";
max_hp = 75;
hp = max_hp;
image_speed  = 0;
can_jump = true;
can_swim = true;
guard = false;
alert = false;
walk_speed = 2;
jump_power = 6;
hurt_col = c_white;
my_head = instance_create(x, y - 7, o_enemy_head);
with my_head{
    sprite_index = choose(s_enemy_head_bandit, s_enemy2_head_bandit, s_enemy3_head_bandit);
    parent = other.id;
}
head_sprite = my_head.sprite_index;
if place_meeting(x, y, o_hold_2){
    enemy_var = "Normal";
    my_arm = instance_create(x, y, o_enemy_arm_2_bandit);
    my_other_arm = noone;
    with my_arm{
        parent = other.id;
    }
    with my_other_arm{
        parent = other.id;
    }
}
else if place_meeting(x, y, o_hold_3){
    enemy_var = "Normal";
    my_arm = instance_create(x, y, o_enemy_arm_3_bandit);
    my_other_arm = noone;
    with my_arm{
        parent = other.id;
    }
    with my_other_arm{
        parent = other.id;
    }
}
else if place_meeting(x, y, o_hold_5){
    enemy_var = "Normal";
    my_arm = instance_create(x, y, o_enemy_arm_5_bandit);
    my_other_arm = noone;
    with my_arm{
        parent = other.id;
    }
    with my_other_arm{
        parent = other.id;
    }
}
else if place_meeting(x, y, o_hold_6){
    enemy_var = "Normal";
    my_arm = instance_create(x, y, o_enemy_arm_6_bandit);
    my_other_arm = noone;
    with my_arm{
        parent = other.id;
    }
    with my_other_arm{
        parent = other.id;
    }
}
else if place_meeting(x, y, o_hold_8){
    enemy_var = "Normal";
    my_arm = instance_create(x, y, o_enemy_arm_8_bandit);
    my_other_arm = noone;
    with my_arm{
        parent = other.id;
    }
    with my_other_arm{
        parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_shield_1){
    enemy_var = "Shield";
    my_arm = instance_create(x,y,o_enemy_arm_1_bandit);
    my_other_arm = instance_create(x,y,o_enemy_arm_shield_bandit);
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_shield_3){
    enemy_var = "Shield";
    my_arm = instance_create(x,y,o_enemy_arm_3_bandit);
    my_other_arm = instance_create(x,y,o_enemy_arm_shield_bandit);
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else{
    enemy_var = "Normal";
    my_arm = instance_create(x, y, o_enemy_arm_1_bandit);
    my_other_arm = noone;
    with my_arm{
        parent = other.id;
    }
    with my_other_arm{
        parent = other.id;
    }
}
scr_ai_line_guarding(70, 600);

