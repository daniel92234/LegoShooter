event_inherited();
if damage > 0{
	with instance_create_layer(x+random_range(-4,4),y+random_range(-4,4),"Game_Objects",o_bullet_impact) {
		particles = p_alien_blood;
	}
}
