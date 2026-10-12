if (hp <= 0) {
	scr_create_splinter(x, y, splinter_object, destroy_number_of_splinters);
    instance_create_layer(x,y,"Game_Objects",weapons[irandom(array_length(weapons)-1)]);
	instance_destroy();
}
