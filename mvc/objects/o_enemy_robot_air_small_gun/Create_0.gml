//setting variables
player = "Enemy";
max_hp = 15;
hp = max_hp;
image_speed = 0;
inView = false;
start_path = false;
view_player = true;
use_path = false;
my_gun = instance_create(x, y, o_enemy_robot_air_small_gun_gun);
gun_x = 0;
gun_y = 10;
with my_gun{
    parent = other.id;
    sprite_index = s_enemy_robot_air_small_part6;
}

