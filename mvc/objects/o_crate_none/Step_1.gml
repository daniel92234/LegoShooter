if (hp <= 0) {
    repeat(30+random(5)) {
        with instance_create(x,y,o_splinter) {
        direction = 160 - random(140);
        speed = 3 + random(5);
        }
    }
instance_destroy();
}

