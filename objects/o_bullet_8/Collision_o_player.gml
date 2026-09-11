if player == "Neutral" or player == "Enemy"{
    with instance_create_layer(x,y,"Game_Objects",o_exp_gun_8_area){
        alarm[0] = 2;
        player = other.player;
    }
    instance_destroy();
}

