if hp <= 0 {
	scr_create_splinter(x, y, splinter_object, destroy_number_of_splinters);
    with instance_create(x,y,o_exp_crate_area){
        player = other.player_exp;
        alarm[0] = 2;
    }
    instance_destroy();
}

