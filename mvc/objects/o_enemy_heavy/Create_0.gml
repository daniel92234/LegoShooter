//setting variables
player = "Enemy";
max_hp = 120;
hp = max_hp;
image_speed = 0;
can_jump = true;
can_swim = true;
guard = false;
guarding = noone;
alert = false;
walk_speed = 2;
jump_power = 6;
my_head = instance_create(x,y-7,o_enemy_head);
with my_head {
sprite_index = choose(s_enemy_head_heavy, s_enemy2_head_heavy, s_enemy3_head_heavy);
parent = other.id;
}
head_sprite = my_head.sprite_index;
if place_meeting(x,y,o_hold_A_2){
    enemy_var = "Normal";
    my_arm = instance_create(x,y,o_enemy_arm_A_2_heavy);
    my_other_arm = noone;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_A_6){
    enemy_var = "Normal";
    my_arm = instance_create(x,y,o_enemy_arm_A_6_heavy);
    my_other_arm = noone;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
} 
else{
    enemy_var = "Normal";
    my_arm = instance_create(x,y,o_enemy_arm_A_5_heavy);
    my_other_arm = noone;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
scr_ai_line_guarding(200, 620);

