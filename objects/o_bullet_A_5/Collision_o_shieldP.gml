if player == "Player" or player == "Neutral"{
    explosion = instance_create_layer(x,y,"Game_Objects",o_exp_gun_A_5_area);
    with explosion{
        alarm[0] = 2;
        player = other.player;
    }
    instance_destroy();
}

