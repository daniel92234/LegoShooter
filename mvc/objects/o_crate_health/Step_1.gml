if (hp <= 0) {
    repeat(30+random(5)) {
        with instance_create(x,y,o_splinter_light_grey) {
        direction = 160 - random(140);
        speed = 3 + random(5);
        }
    }
    instance_create(x,y,o_heart_l);
    instance_destroy();
}

