if (hp <= 0) {
	scr_create_splinter(x, y, splinter_object, destroy_number_of_splinters);
    choice = choose(1,2,3,4)
    if choice == 1{
        instance_create_layer(x,y,"Game_Objects",o_walk_up);
    }
    else if choice == 2{
        instance_create_layer(x,y,"Game_Objects",o_jump_up);
    }
    else if choice == 3{
        if irandom(8) == 1{
            instance_create_layer(x,y,"Game_Objects",o_damage_up_tier_2);
        }
        else{
            instance_create_layer(x,y,"Game_Objects",o_damage_up);
        }
    }
    else if choice == 4{
        if irandom(8) == 1{
            instance_create_layer(x,y,"Game_Objects",o_shield_up_tier_2);
        }
        else{
            instance_create_layer(x,y,"Game_Objects",o_shield_up);
        }
    }
instance_destroy();
}

