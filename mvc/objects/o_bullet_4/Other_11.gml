/// @description  Trail Effect
repeat(10 + random(5)) {
    with instance_create(x,y,o_trail_4) {
        direction = other.direction + 180+30-random(60);
        speed = 3 + random(2);
    }
}

