if random(100) >= 70
	if random(100) >= 33{
		repeat(5){
			with instance_create_layer(x + 32,y + 15,"Game_Objects",o_stud_silver){ gravity_bound = true; hspeed = -2.5+random(5); vspeed = -4-random(2.3); direction = random(360); depth=layer_get_depth("Game_Objects")+ITEM_DEPTH_OFFSETS; }
		}
	}
	else{
	   with instance_create_layer(x + 32,y + 15,"Game_Objects",o_stud_blue){ gravity_bound = true; hspeed = -2.5+random(5); vspeed = -4-random(2.3); direction = random(360); depth=layer_get_depth("Game_Objects")+ITEM_DEPTH_OFFSETS; }
	}
