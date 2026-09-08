if (hp <= 0) {
	scr_create_splinter(x, y, splinter_object, destroy_number_of_splinters);
    choice = choose(4,5,6,8,9)
    if choice == 4{
        instance_create_layer(x,y,"Game_Objects",o_gun_4);
    }
    else if choice == 5{
        instance_create_layer(x,y,"Game_Objects",o_gun_5);
    }
    else if choice == 6{
        instance_create_layer(x,y,"Game_Objects",o_gun_6);
    }
    else if choice == 8{
        instance_create_layer(x,y,"Game_Objects",o_gun_8);
    }
    else if choice == 9{
        instance_create_layer(x,y,"Game_Objects",o_gun_9);
    }
	instance_destroy();
}

