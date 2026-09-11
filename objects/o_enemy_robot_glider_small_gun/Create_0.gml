//setting variables
event_inherited();
fire_rate = 60 + random(60);
hp = max_hp;
image_speed = 0;
inView = false;
start_path = false;
my_gun = instance_create_layer(x + 1, y + 20, "Game_Objects", o_enemy_robot_air_small_gun_gun);
gun_x = 0;
gun_y = 10;
with my_gun{
    parent = other.id;
    sprite_index = s_enemy_robot_air_small_part6;
	fire_rate = other.fire_rate;
	range_min = other.range_min;
	range_max =  other.range_max;
	shoot_angle_offset =  other.shoot_angle_offset;
}

