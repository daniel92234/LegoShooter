//throwing the grenade
if state = "Active" and hold_grenade == "Holding"{
	if global.grenades > 0{
	    image_speed = 0.5;
	    with instance_create_layer(x,y,"Game_Objects",o_grenadeT){
	        speed = 15;
	        direction = point_direction(x, y, mouse_x, mouse_y);
	        player = "Player";
	    }
		global.grenades -= 1;
		alarm[4] = 30;
		hold_grenade = "Rest";
		sprite_index = gun_spr;
	}
}