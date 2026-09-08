//setting variables
player = "Enemy";
max_hp = 100;
hp = max_hp;
image_speed = 0;
can_jump = true;
can_swim = true;
guard = false;
guarding = noone;
alert = false;
walk_speed = 2;
jump_power = 6;
my_head = instance_create(x, y - 7, o_enemy_head);
with my_head {
sprite_index = choose(s_enemy_head_major, s_enemy2_head_major, s_enemy3_head_major);
parent = other.id;
}
head_sprite = my_head.sprite_index;
if place_meeting(x,y,o_hold_jetpack_A_1){
    enemy_var = "Jetpack";
    my_arm = instance_create(x,y,o_enemy_arm_A_1_major);
    my_other_arm = noone;
    jetpacking = false;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_jetpack_A_3){
    enemy_var = "Jetpack";
    my_arm = instance_create(x,y,o_enemy_arm_A_3_major);
    my_other_arm = noone;
    jetpacking = false;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_jetpack_A_4){
    enemy_var = "Jetpack";
    my_arm = instance_create(x,y,o_enemy_arm_A_4_major);
    my_other_arm = noone;
    jetpacking = false;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_jetpack_A_7){
    enemy_var = "Jetpack";
    my_arm = instance_create(x,y,o_enemy_arm_A_7_major);
    my_other_arm = noone;
    jetpacking = false;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_jetpack_A_8){
    enemy_var = "Jetpack";
    my_arm = instance_create(x,y,o_enemy_arm_A_8_major);
    my_other_arm = noone;
    jetpacking = false;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_A_2){
    enemy_var = "Normal";
    my_arm = instance_create(x,y,o_enemy_arm_A_2_major);
    my_other_arm = noone;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_A_3){
    enemy_var = "Normal";
    my_arm = instance_create(x,y,o_enemy_arm_A_3_major);
    my_other_arm = noone;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_A_4){
    enemy_var = "Normal";
    my_arm = instance_create(x,y,o_enemy_arm_A_4_major);
    my_other_arm = noone;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_A_7){
    enemy_var = "Normal";
    my_arm = instance_create(x,y,o_enemy_arm_A_7_major);
    my_other_arm = noone;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_A_8){
    enemy_var = "Normal";
    my_arm = instance_create(x,y,o_enemy_arm_A_7_major);
    my_other_arm = noone;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_shield_A_1){
    enemy_var = "Shield";
    my_arm = instance_create(x,y,o_enemy_arm_A_1_major);
    my_other_arm = instance_create(x,y,o_enemy_arm_shield_major);
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_shield_A_4){
    enemy_var = "Shield";
    my_arm = instance_create(x,y,o_enemy_arm_A_4_major);
    my_other_arm = instance_create(x,y,o_enemy_arm_shield_major);
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
else if place_meeting(x,y,o_hold_shield_A_8){
    enemy_var = "Shield";
    my_arm = instance_create(x,y,o_enemy_arm_A_8_major);
    my_other_arm = instance_create(x,y,o_enemy_arm_shield_major);
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
} 
else{
    enemy_var = "Normal";
    my_arm = instance_create(x,y,o_enemy_arm_A_1_major);
    my_other_arm = noone;
    with my_arm {
    parent = other.id;
    }
    with my_other_arm {
    parent = other.id;
    }
}
scr_ai_line_guarding(50, 600);

