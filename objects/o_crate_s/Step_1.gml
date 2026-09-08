if (hp <= 0) {
	scr_create_splinter(x, y, splinter_object, destroy_number_of_splinters);
    choice = choose(1,2,3,4)
    if choice == 1{
        instance_create_layer(x,y,"Game_Objects",o_heart_s);
    }
    else if choice == 2{
        instance_create_layer(x,y,"Game_Objects",o_ammobox_s);
    }
    else if choice == 3{
        instance_create_layer(x,y,"Game_Objects",o_grenadeG);
    }
    else if choice == 4{
        event_user(1);
    }
    instance_destroy();
}

