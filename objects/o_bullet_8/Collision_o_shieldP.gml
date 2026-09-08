if player == "Player" or player == "Neutral"{
    explosion = instance_create(x, y, o_exp_gun_8_area);
    with explosion{
        alarm[0] = 2;
        player = other.player;
    }
    instance_destroy();
}

