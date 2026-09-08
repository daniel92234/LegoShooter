if (hp <= 0) {
    repeat(10+random(3)) {
        with instance_create(x,y,o_splinter) {
        direction = 160 - random(140);
        speed = 3 + random(5);
        }
    }
    choice = choose(1,2,3,4)
    if choice == 1{
        instance_create(x,y,o_heart_s);
    }
    else if choice == 2{
        instance_create(x,y,o_ammobox_s);
    }
    else if choice == 3{
        instance_create(x,y,o_grenadeG);
    }
    else if choice == 4{
        event_user(1);
    }
    instance_destroy();
}

