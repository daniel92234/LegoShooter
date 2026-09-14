event_inherited();
create_smoke = true;
smoke_real_x = -3; // edit this for x offset
smoke_real_y = 0; // edit this for y offset

my_trail = instance_create_layer(x,y,"Game_Objects",o_bullet_trail);
with my_trail{
	particles = p_bullet_trail_2;
	color = c_gray;
	light = false;
	global_space = true;
	owner = other.id
}

