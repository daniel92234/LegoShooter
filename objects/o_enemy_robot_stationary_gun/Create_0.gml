//setting variables
event_inherited();
fire_rate = 60 + random(60);
hp = max_hp;
my_head = instance_create_layer(x, y - 12, "Game_Objects", o_enemy_robot_stationary_head_gun);
with my_head {
    sprite_index = s_enemy_robot_stationary_gun;
	fire_rate = other.fire_rate;
	range_min = other.range_min;
	range_max =  other.range_max;
	shoot_angle_offset =  other.shoot_angle_offset;
}
