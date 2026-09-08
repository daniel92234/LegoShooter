if (hp <= 0) {
    repeat(30+random(5)) {
        with instance_create(x,y,o_splinter) {
        direction = 160 - random(140);
        speed = 3 + random(5);
        }
    }
    choice = choose(4,5,6,8,9)
    if choice == 4{
        instance_create(x,y,o_gun_4);
    }
    else if choice == 5{
        instance_create(x,y,o_gun_5);
    }
    else if choice == 6{
        instance_create(x,y,o_gun_6);
    }
    else if choice == 8{
        instance_create(x,y,o_gun_8);
    }
    else if choice == 9{
        instance_create(x,y,o_gun_9);
    }
instance_destroy();
}

