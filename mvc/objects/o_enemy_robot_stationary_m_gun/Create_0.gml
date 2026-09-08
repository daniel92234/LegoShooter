//setting variables
player = "Enemy";
max_hp = 45;
hp = max_hp;
image_speed = 0;
my_head = instance_create(x, y - 12, o_enemy_robot_stationary_head_m_gun);
with my_head {
    sprite_index = s_enemy_robot_stationary_m_gun;
}

