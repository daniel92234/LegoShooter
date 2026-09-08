if (hp <= 0) {
	scr_create_splinter(x, y, splinter_object, destroy_number_of_splinters);
    instance_create_layer(x,y,"Game_Objects",o_heart_l);
    instance_destroy();
}

