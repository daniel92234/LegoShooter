if (hp <= 0) {
    repeat(20){
        with instance_create_layer(x,y,"Game_Objects",o_bit){
            sprite_index = s_brick_part;
            direction = random_range(0, 359);
            speed = 3 + random(5);
        }
    }
    event_user(1);
    instance_destroy();
}

