function scr_create_splinter(argument0, argument1, argument2, argument3){
	repeat(argument3){
	    with instance_create_layer(argument0, argument1, "Game_Objects", argument2){
	        direction = 160 - random(140);
	        speed = 3 + random(5);
	    }
	}
}
