if bounces > 0{
    move_bounce_all(false);
    bounces -= 1;
}
else if bounces == 0{
        explosion = instance_create(x, y, o_exp_gun_9_area);
        with explosion{
        alarm[0] = 2;
        player = other.player;
    }
    instance_destroy();
}

