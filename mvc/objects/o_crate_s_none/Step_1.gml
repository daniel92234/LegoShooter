if (hp <= 0) {
    repeat(10+random(3)) {
        with instance_create(x,y,o_splinter) {
        direction = 160 - random(140);
        speed = 3 + random(5);
        }
    }
instance_destroy();
}

