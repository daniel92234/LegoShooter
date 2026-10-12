if damage > 0{
	if instance_exists(hit){
		scr_create_splinter(hit.x, hit.y, splinter_object, (3 + random(1)));
	}
    hp -= damage;
}

