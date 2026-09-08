//setting variables
event_inherited();
fire_rate = 50 + random(20);
hp = max_hp;
inView = false;
start_path = false;
view_player = true;
use_path = false;
my_gun = instance_create_layer(x, y, "Game_Objects", o_enemy_robot_air_small_gun_gun);
gun_x = 0;
gun_y = 10;
with my_gun{
    parent = other.id;
    sprite_index = s_enemy_robot_air_small_part6;
	fire_rate = other.fire_rate;
}

