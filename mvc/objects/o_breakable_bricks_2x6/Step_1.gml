if (hp <= 0) {
    repeat(14){
        with instance_create(x,y,o_bit){
            sprite_index = s_brick_part;
            direction = random_range(0, 359);
            speed = 3 + random(5);
        }
    }
    event_user(1);
    instance_destroy();
}

