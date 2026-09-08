/// @description  Trail Effect
repeat(7 + random(3)) {
    with instance_create(x,y,o_trail_A_7) {
        direction = other.direction + 180+30-random(60);
        speed = 3 + random(2);
    }
}

